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
(declare-sort T@Field_5797_53 0)
(declare-sort T@Field_5810_5811 0)
(declare-sort T@Field_11865_11866 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_11818_3010 0)
(declare-sort T@Field_5797_11866 0)
(declare-sort T@Field_5797_11883 0)
(declare-sort T@Field_11865_53 0)
(declare-sort T@Field_11865_5811 0)
(declare-sort T@Field_11865_3010 0)
(declare-sort T@Field_11878_11883 0)
(declare-datatypes ((T@PolymorphicMapType_5758 0)) (((PolymorphicMapType_5758 (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| (Array T@Ref T@Field_11818_3010 Real)) (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| (Array T@Ref T@Field_11865_11866 Real)) (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| (Array T@Ref T@Field_5797_11866 Real)) (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| (Array T@Ref T@Field_5797_53 Real)) (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| (Array T@Ref T@Field_5810_5811 Real)) (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| (Array T@Ref T@Field_5797_11883 Real)) (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| (Array T@Ref T@Field_11865_3010 Real)) (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| (Array T@Ref T@Field_11865_53 Real)) (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| (Array T@Ref T@Field_11865_5811 Real)) (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| (Array T@Ref T@Field_11878_11883 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6286 0)) (((PolymorphicMapType_6286 (|PolymorphicMapType_6286_5797_53#PolymorphicMapType_6286| (Array T@Ref T@Field_5797_53 Bool)) (|PolymorphicMapType_6286_5797_5811#PolymorphicMapType_6286| (Array T@Ref T@Field_5810_5811 Bool)) (|PolymorphicMapType_6286_5797_3010#PolymorphicMapType_6286| (Array T@Ref T@Field_11818_3010 Bool)) (|PolymorphicMapType_6286_5797_11866#PolymorphicMapType_6286| (Array T@Ref T@Field_5797_11866 Bool)) (|PolymorphicMapType_6286_5797_17923#PolymorphicMapType_6286| (Array T@Ref T@Field_5797_11883 Bool)) (|PolymorphicMapType_6286_11865_53#PolymorphicMapType_6286| (Array T@Ref T@Field_11865_53 Bool)) (|PolymorphicMapType_6286_11865_5811#PolymorphicMapType_6286| (Array T@Ref T@Field_11865_5811 Bool)) (|PolymorphicMapType_6286_11865_3010#PolymorphicMapType_6286| (Array T@Ref T@Field_11865_3010 Bool)) (|PolymorphicMapType_6286_11865_11866#PolymorphicMapType_6286| (Array T@Ref T@Field_11865_11866 Bool)) (|PolymorphicMapType_6286_11865_18971#PolymorphicMapType_6286| (Array T@Ref T@Field_11878_11883 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5737 0)) (((PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| (Array T@Ref T@Field_5797_53 Bool)) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| (Array T@Ref T@Field_5810_5811 T@Ref)) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| (Array T@Ref T@Field_11865_11866 T@FrameType)) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| (Array T@Ref T@Field_11818_3010 Int)) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| (Array T@Ref T@Field_5797_11866 T@FrameType)) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| (Array T@Ref T@Field_5797_11883 T@PolymorphicMapType_6286)) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| (Array T@Ref T@Field_11865_53 Bool)) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| (Array T@Ref T@Field_11865_5811 T@Ref)) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| (Array T@Ref T@Field_11865_3010 Int)) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| (Array T@Ref T@Field_11878_11883 T@PolymorphicMapType_6286)) ) ) ))
(declare-fun $allocated () T@Field_5797_53)
(declare-fun f_7 () T@Field_11818_3010)
(declare-sort T@Seq_12801 0)
(declare-fun |Seq#Length_12801| (T@Seq_12801) Int)
(declare-fun |Seq#Drop_12801| (T@Seq_12801 Int) T@Seq_12801)
(declare-sort T@Seq_2888 0)
(declare-fun |Seq#Length_2888| (T@Seq_2888) Int)
(declare-fun |Seq#Drop_2888| (T@Seq_2888 Int) T@Seq_2888)
(declare-fun succHeap (T@PolymorphicMapType_5737 T@PolymorphicMapType_5737) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5737 T@PolymorphicMapType_5737) Bool)
(declare-fun state (T@PolymorphicMapType_5737 T@PolymorphicMapType_5758) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5758) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6286)
(declare-fun |Seq#Index_12801| (T@Seq_12801 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2888| (T@Seq_2888 Int) Int)
(declare-fun |Seq#Empty_12801| () T@Seq_12801)
(declare-fun |Seq#Empty_2888| () T@Seq_2888)
(declare-fun inv (T@Ref) T@Field_11865_11866)
(declare-fun IsPredicateField_3798_3799 (T@Field_11865_11866) Bool)
(declare-fun |inv#trigger_3798| (T@PolymorphicMapType_5737 T@Field_11865_11866) Bool)
(declare-fun |inv#everUsed_3798| (T@Field_11865_11866) Bool)
(declare-fun |Seq#Update_12801| (T@Seq_12801 Int T@Ref) T@Seq_12801)
(declare-fun |Seq#Update_2888| (T@Seq_2888 Int Int) T@Seq_2888)
(declare-fun |Seq#Take_12801| (T@Seq_12801 Int) T@Seq_12801)
(declare-fun |Seq#Take_2888| (T@Seq_2888 Int) T@Seq_2888)
(declare-fun |Seq#Contains_2888| (T@Seq_2888 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2888)
(declare-fun |Seq#Contains_3824| (T@Seq_12801 T@Ref) Bool)
(declare-fun |Seq#Skolem_3824| (T@Seq_12801 T@Ref) Int)
(declare-fun |Seq#Skolem_2888| (T@Seq_2888 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5737 T@PolymorphicMapType_5737 T@PolymorphicMapType_5758) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3798 (T@Field_11865_11866) T@Field_11878_11883)
(declare-fun HasDirectPerm_11865_11866 (T@PolymorphicMapType_5758 T@Ref T@Field_11865_11866) Bool)
(declare-fun IsPredicateField_5797_16439 (T@Field_5797_11866) Bool)
(declare-fun PredicateMaskField_5797 (T@Field_5797_11866) T@Field_5797_11883)
(declare-fun HasDirectPerm_5797_11866 (T@PolymorphicMapType_5758 T@Ref T@Field_5797_11866) Bool)
(declare-fun IsWandField_11865_20136 (T@Field_11865_11866) Bool)
(declare-fun WandMaskField_11865 (T@Field_11865_11866) T@Field_11878_11883)
(declare-fun IsWandField_5797_19779 (T@Field_5797_11866) Bool)
(declare-fun WandMaskField_5797 (T@Field_5797_11866) T@Field_5797_11883)
(declare-fun |Seq#Singleton_12801| (T@Ref) T@Seq_12801)
(declare-fun |Seq#Singleton_2888| (Int) T@Seq_2888)
(declare-fun |inv#sm| (T@Ref) T@Field_11878_11883)
(declare-fun |Seq#Append_12801| (T@Seq_12801 T@Seq_12801) T@Seq_12801)
(declare-fun |Seq#Append_2888| (T@Seq_2888 T@Seq_2888) T@Seq_2888)
(declare-fun dummyHeap () T@PolymorphicMapType_5737)
(declare-fun ZeroMask () T@PolymorphicMapType_5758)
(declare-fun InsidePredicate_11865_11865 (T@Field_11865_11866 T@FrameType T@Field_11865_11866 T@FrameType) Bool)
(declare-fun InsidePredicate_5797_5797 (T@Field_5797_11866 T@FrameType T@Field_5797_11866 T@FrameType) Bool)
(declare-fun IsPredicateField_3795_3010 (T@Field_11818_3010) Bool)
(declare-fun IsWandField_3795_3010 (T@Field_11818_3010) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3798_27068 (T@Field_11878_11883) Bool)
(declare-fun IsWandField_3798_27084 (T@Field_11878_11883) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3798_5811 (T@Field_11865_5811) Bool)
(declare-fun IsWandField_3798_5811 (T@Field_11865_5811) Bool)
(declare-fun IsPredicateField_3798_53 (T@Field_11865_53) Bool)
(declare-fun IsWandField_3798_53 (T@Field_11865_53) Bool)
(declare-fun IsPredicateField_3798_3010 (T@Field_11865_3010) Bool)
(declare-fun IsWandField_3798_3010 (T@Field_11865_3010) Bool)
(declare-fun IsPredicateField_3795_26237 (T@Field_5797_11883) Bool)
(declare-fun IsWandField_3795_26253 (T@Field_5797_11883) Bool)
(declare-fun IsPredicateField_3795_5811 (T@Field_5810_5811) Bool)
(declare-fun IsWandField_3795_5811 (T@Field_5810_5811) Bool)
(declare-fun IsPredicateField_3795_53 (T@Field_5797_53) Bool)
(declare-fun IsWandField_3795_53 (T@Field_5797_53) Bool)
(declare-fun HasDirectPerm_11865_16151 (T@PolymorphicMapType_5758 T@Ref T@Field_11878_11883) Bool)
(declare-fun HasDirectPerm_11865_3010 (T@PolymorphicMapType_5758 T@Ref T@Field_11865_3010) Bool)
(declare-fun HasDirectPerm_11865_5811 (T@PolymorphicMapType_5758 T@Ref T@Field_11865_5811) Bool)
(declare-fun HasDirectPerm_11865_53 (T@PolymorphicMapType_5758 T@Ref T@Field_11865_53) Bool)
(declare-fun HasDirectPerm_5797_14990 (T@PolymorphicMapType_5758 T@Ref T@Field_5797_11883) Bool)
(declare-fun HasDirectPerm_5797_3010 (T@PolymorphicMapType_5758 T@Ref T@Field_11818_3010) Bool)
(declare-fun HasDirectPerm_5797_5811 (T@PolymorphicMapType_5758 T@Ref T@Field_5810_5811) Bool)
(declare-fun HasDirectPerm_5797_53 (T@PolymorphicMapType_5758 T@Ref T@Field_5797_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5758 T@PolymorphicMapType_5758 T@PolymorphicMapType_5758) Bool)
(declare-fun |Seq#Equal_12801| (T@Seq_12801 T@Seq_12801) Bool)
(declare-fun |Seq#Equal_2888| (T@Seq_2888 T@Seq_2888) Bool)
(declare-fun |Seq#ContainsTrigger_3824| (T@Seq_12801 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2888| (T@Seq_2888 Int) Bool)
(declare-fun getPredWandId_3798_3799 (T@Field_11865_11866) Int)
(declare-fun |Seq#SkolemDiff_12801| (T@Seq_12801 T@Seq_12801) Int)
(declare-fun |Seq#SkolemDiff_2888| (T@Seq_2888 T@Seq_2888) Int)
(declare-fun InsidePredicate_11865_5797 (T@Field_11865_11866 T@FrameType T@Field_5797_11866 T@FrameType) Bool)
(declare-fun InsidePredicate_5797_11865 (T@Field_5797_11866 T@FrameType T@Field_11865_11866 T@FrameType) Bool)
(assert (forall ((s T@Seq_12801) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_12801| s)) (= (|Seq#Length_12801| (|Seq#Drop_12801| s n)) (- (|Seq#Length_12801| s) n))) (=> (< (|Seq#Length_12801| s) n) (= (|Seq#Length_12801| (|Seq#Drop_12801| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_12801| (|Seq#Drop_12801| s n)) (|Seq#Length_12801| s))))
 :qid |stdinbpl.288:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_12801| (|Seq#Drop_12801| s n)))
 :pattern ( (|Seq#Length_12801| s) (|Seq#Drop_12801| s n))
)))
(assert (forall ((s@@0 T@Seq_2888) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2888| s@@0)) (= (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)) (- (|Seq#Length_2888| s@@0) n@@0))) (=> (< (|Seq#Length_2888| s@@0) n@@0) (= (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)) (|Seq#Length_2888| s@@0))))
 :qid |stdinbpl.288:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2888| s@@0) (|Seq#Drop_2888| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_5737) (Heap1 T@PolymorphicMapType_5737) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5737) (Mask T@PolymorphicMapType_5758) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5737) (Heap1@@0 T@PolymorphicMapType_5737) (Heap2 T@PolymorphicMapType_5737) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11878_11883) ) (!  (not (select (|PolymorphicMapType_6286_11865_18971#PolymorphicMapType_6286| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6286_11865_18971#PolymorphicMapType_6286| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11865_11866) ) (!  (not (select (|PolymorphicMapType_6286_11865_11866#PolymorphicMapType_6286| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6286_11865_11866#PolymorphicMapType_6286| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11865_3010) ) (!  (not (select (|PolymorphicMapType_6286_11865_3010#PolymorphicMapType_6286| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6286_11865_3010#PolymorphicMapType_6286| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11865_5811) ) (!  (not (select (|PolymorphicMapType_6286_11865_5811#PolymorphicMapType_6286| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6286_11865_5811#PolymorphicMapType_6286| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11865_53) ) (!  (not (select (|PolymorphicMapType_6286_11865_53#PolymorphicMapType_6286| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6286_11865_53#PolymorphicMapType_6286| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5797_11883) ) (!  (not (select (|PolymorphicMapType_6286_5797_17923#PolymorphicMapType_6286| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6286_5797_17923#PolymorphicMapType_6286| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5797_11866) ) (!  (not (select (|PolymorphicMapType_6286_5797_11866#PolymorphicMapType_6286| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6286_5797_11866#PolymorphicMapType_6286| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11818_3010) ) (!  (not (select (|PolymorphicMapType_6286_5797_3010#PolymorphicMapType_6286| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6286_5797_3010#PolymorphicMapType_6286| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_5810_5811) ) (!  (not (select (|PolymorphicMapType_6286_5797_5811#PolymorphicMapType_6286| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6286_5797_5811#PolymorphicMapType_6286| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_5797_53) ) (!  (not (select (|PolymorphicMapType_6286_5797_53#PolymorphicMapType_6286| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6286_5797_53#PolymorphicMapType_6286| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((s@@1 T@Seq_12801) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_12801| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_12801| (|Seq#Drop_12801| s@@1 n@@1) j) (|Seq#Index_12801| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.309:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_12801| (|Seq#Drop_12801| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2888) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2888| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2888| (|Seq#Drop_2888| s@@2 n@@2) j@@0) (|Seq#Index_2888| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.309:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2888| (|Seq#Drop_2888| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_12801| |Seq#Empty_12801|) 0))
(assert (= (|Seq#Length_2888| |Seq#Empty_2888|) 0))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_3798_3799 (inv this))
 :qid |stdinbpl.574:15|
 :skolemid |59|
 :pattern ( (inv this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5737) (this@@0 T@Ref) ) (! (|inv#everUsed_3798| (inv this@@0))
 :qid |stdinbpl.593:15|
 :skolemid |63|
 :pattern ( (|inv#trigger_3798| Heap@@0 (inv this@@0)))
)))
(assert (forall ((s@@3 T@Seq_12801) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_12801| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_12801| (|Seq#Update_12801| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_12801| (|Seq#Update_12801| s@@3 i v) n@@3) (|Seq#Index_12801| s@@3 n@@3)))))
 :qid |stdinbpl.264:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_12801| (|Seq#Update_12801| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_12801| s@@3 n@@3) (|Seq#Update_12801| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2888) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2888| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2888| (|Seq#Update_2888| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2888| (|Seq#Update_2888| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2888| s@@4 n@@4)))))
 :qid |stdinbpl.264:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2888| (|Seq#Update_2888| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2888| s@@4 n@@4) (|Seq#Update_2888| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_12801) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_12801| s@@5)) (= (|Seq#Length_12801| (|Seq#Take_12801| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_12801| s@@5) n@@5) (= (|Seq#Length_12801| (|Seq#Take_12801| s@@5 n@@5)) (|Seq#Length_12801| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_12801| (|Seq#Take_12801| s@@5 n@@5)) 0)))
 :qid |stdinbpl.275:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_12801| (|Seq#Take_12801| s@@5 n@@5)))
 :pattern ( (|Seq#Take_12801| s@@5 n@@5) (|Seq#Length_12801| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2888) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2888| s@@6)) (= (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2888| s@@6) n@@6) (= (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)) (|Seq#Length_2888| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)) 0)))
 :qid |stdinbpl.275:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2888| s@@6 n@@6) (|Seq#Length_2888| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2888| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.549:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2888| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_12801) (x T@Ref) ) (!  (=> (|Seq#Contains_3824| s@@7 x) (and (and (<= 0 (|Seq#Skolem_3824| s@@7 x)) (< (|Seq#Skolem_3824| s@@7 x) (|Seq#Length_12801| s@@7))) (= (|Seq#Index_12801| s@@7 (|Seq#Skolem_3824| s@@7 x)) x)))
 :qid |stdinbpl.407:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3824| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2888) (x@@0 Int) ) (!  (=> (|Seq#Contains_2888| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2888| s@@8 x@@0)) (< (|Seq#Skolem_2888| s@@8 x@@0) (|Seq#Length_2888| s@@8))) (= (|Seq#Index_2888| s@@8 (|Seq#Skolem_2888| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.407:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2888| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_12801) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_12801| s@@9 n@@7) s@@9))
 :qid |stdinbpl.391:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_12801| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2888) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2888| s@@10 n@@8) s@@10))
 :qid |stdinbpl.391:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2888| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.244:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.242:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5737) (ExhaleHeap T@PolymorphicMapType_5737) (Mask@@0 T@PolymorphicMapType_5758) (pm_f_2 T@Field_11865_11866) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11865_11866 Mask@@0 null pm_f_2) (IsPredicateField_3798_3799 pm_f_2)) (= (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@1) null (PredicateMaskField_3798 pm_f_2)) (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap) null (PredicateMaskField_3798 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_3798_3799 pm_f_2) (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap) null (PredicateMaskField_3798 pm_f_2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5737) (ExhaleHeap@@0 T@PolymorphicMapType_5737) (Mask@@1 T@PolymorphicMapType_5758) (pm_f_2@@0 T@Field_5797_11866) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5797_11866 Mask@@1 null pm_f_2@@0) (IsPredicateField_5797_16439 pm_f_2@@0)) (= (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@2) null (PredicateMaskField_5797 pm_f_2@@0)) (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@0) null (PredicateMaskField_5797 pm_f_2@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5797_16439 pm_f_2@@0) (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@0) null (PredicateMaskField_5797 pm_f_2@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5737) (ExhaleHeap@@1 T@PolymorphicMapType_5737) (Mask@@2 T@PolymorphicMapType_5758) (pm_f_2@@1 T@Field_11865_11866) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11865_11866 Mask@@2 null pm_f_2@@1) (IsWandField_11865_20136 pm_f_2@@1)) (= (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@3) null (WandMaskField_11865 pm_f_2@@1)) (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@1) null (WandMaskField_11865 pm_f_2@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_11865_20136 pm_f_2@@1) (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@1) null (WandMaskField_11865 pm_f_2@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5737) (ExhaleHeap@@2 T@PolymorphicMapType_5737) (Mask@@3 T@PolymorphicMapType_5758) (pm_f_2@@2 T@Field_5797_11866) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5797_11866 Mask@@3 null pm_f_2@@2) (IsWandField_5797_19779 pm_f_2@@2)) (= (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@4) null (WandMaskField_5797 pm_f_2@@2)) (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@2) null (WandMaskField_5797 pm_f_2@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_5797_19779 pm_f_2@@2) (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@2) null (WandMaskField_5797 pm_f_2@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_3824| (|Seq#Singleton_12801| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.532:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3824| (|Seq#Singleton_12801| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2888| (|Seq#Singleton_2888| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.532:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2888| (|Seq#Singleton_2888| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_12801) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_12801| s@@11))) (= (|Seq#Index_12801| (|Seq#Take_12801| s@@11 n@@9) j@@3) (|Seq#Index_12801| s@@11 j@@3)))
 :qid |stdinbpl.283:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_12801| (|Seq#Take_12801| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_12801| s@@11 j@@3) (|Seq#Take_12801| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2888) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2888| s@@12))) (= (|Seq#Index_2888| (|Seq#Take_2888| s@@12 n@@10) j@@4) (|Seq#Index_2888| s@@12 j@@4)))
 :qid |stdinbpl.283:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2888| (|Seq#Take_2888| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2888| s@@12 j@@4) (|Seq#Take_2888| s@@12 n@@10))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (inv this@@1) (inv this2)) (= this@@1 this2))
 :qid |stdinbpl.584:15|
 :skolemid |61|
 :pattern ( (inv this@@1) (inv this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|inv#sm| this@@2) (|inv#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.588:15|
 :skolemid |62|
 :pattern ( (|inv#sm| this@@2) (|inv#sm| this2@@0))
)))
(assert (forall ((s@@13 T@Seq_12801) (t T@Seq_12801) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_12801| s@@13))) (< n@@11 (|Seq#Length_12801| (|Seq#Append_12801| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_12801| s@@13)) (|Seq#Length_12801| s@@13)) n@@11) (= (|Seq#Take_12801| (|Seq#Append_12801| s@@13 t) n@@11) (|Seq#Append_12801| s@@13 (|Seq#Take_12801| t (|Seq#Sub| n@@11 (|Seq#Length_12801| s@@13)))))))
 :qid |stdinbpl.368:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_12801| (|Seq#Append_12801| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2888) (t@@0 T@Seq_2888) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2888| s@@14))) (< n@@12 (|Seq#Length_2888| (|Seq#Append_2888| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2888| s@@14)) (|Seq#Length_2888| s@@14)) n@@12) (= (|Seq#Take_2888| (|Seq#Append_2888| s@@14 t@@0) n@@12) (|Seq#Append_2888| s@@14 (|Seq#Take_2888| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2888| s@@14)))))))
 :qid |stdinbpl.368:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2888| (|Seq#Append_2888| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5737) (ExhaleHeap@@3 T@PolymorphicMapType_5737) (Mask@@4 T@PolymorphicMapType_5758) (pm_f_2@@3 T@Field_11865_11866) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11865_11866 Mask@@4 null pm_f_2@@3) (IsPredicateField_3798_3799 pm_f_2@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_5797_53) ) (!  (=> (select (|PolymorphicMapType_6286_5797_53#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@5) null (PredicateMaskField_3798 pm_f_2@@3))) o2_2 f_9) (= (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@5) o2_2 f_9) (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_5810_5811) ) (!  (=> (select (|PolymorphicMapType_6286_5797_5811#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@5) null (PredicateMaskField_3798 pm_f_2@@3))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@5) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_11818_3010) ) (!  (=> (select (|PolymorphicMapType_6286_5797_3010#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@5) null (PredicateMaskField_3798 pm_f_2@@3))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@5) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_5797_11866) ) (!  (=> (select (|PolymorphicMapType_6286_5797_11866#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@5) null (PredicateMaskField_3798 pm_f_2@@3))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@5) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_5797_11883) ) (!  (=> (select (|PolymorphicMapType_6286_5797_17923#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@5) null (PredicateMaskField_3798 pm_f_2@@3))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@5) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@3 f_9@@3))
))) (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_11865_53) ) (!  (=> (select (|PolymorphicMapType_6286_11865_53#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@5) null (PredicateMaskField_3798 pm_f_2@@3))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@5) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@4 f_9@@4))
))) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_11865_5811) ) (!  (=> (select (|PolymorphicMapType_6286_11865_5811#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@5) null (PredicateMaskField_3798 pm_f_2@@3))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@5) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_11865_3010) ) (!  (=> (select (|PolymorphicMapType_6286_11865_3010#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@5) null (PredicateMaskField_3798 pm_f_2@@3))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@5) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@6 f_9@@6))
))) (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_11865_11866) ) (!  (=> (select (|PolymorphicMapType_6286_11865_11866#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@5) null (PredicateMaskField_3798 pm_f_2@@3))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@5) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@7 f_9@@7))
))) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_11878_11883) ) (!  (=> (select (|PolymorphicMapType_6286_11865_18971#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@5) null (PredicateMaskField_3798 pm_f_2@@3))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@5) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@3) o2_2@@8 f_9@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3798_3799 pm_f_2@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5737) (ExhaleHeap@@4 T@PolymorphicMapType_5737) (Mask@@5 T@PolymorphicMapType_5758) (pm_f_2@@4 T@Field_5797_11866) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5797_11866 Mask@@5 null pm_f_2@@4) (IsPredicateField_5797_16439 pm_f_2@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@9 T@Ref) (f_9@@9 T@Field_5797_53) ) (!  (=> (select (|PolymorphicMapType_6286_5797_53#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@6) null (PredicateMaskField_5797 pm_f_2@@4))) o2_2@@9 f_9@@9) (= (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@6) o2_2@@9 f_9@@9) (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@9 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@9 f_9@@9))
)) (forall ((o2_2@@10 T@Ref) (f_9@@10 T@Field_5810_5811) ) (!  (=> (select (|PolymorphicMapType_6286_5797_5811#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@6) null (PredicateMaskField_5797 pm_f_2@@4))) o2_2@@10 f_9@@10) (= (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@6) o2_2@@10 f_9@@10) (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@10 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@10 f_9@@10))
))) (forall ((o2_2@@11 T@Ref) (f_9@@11 T@Field_11818_3010) ) (!  (=> (select (|PolymorphicMapType_6286_5797_3010#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@6) null (PredicateMaskField_5797 pm_f_2@@4))) o2_2@@11 f_9@@11) (= (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@6) o2_2@@11 f_9@@11) (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@11 f_9@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@11 f_9@@11))
))) (forall ((o2_2@@12 T@Ref) (f_9@@12 T@Field_5797_11866) ) (!  (=> (select (|PolymorphicMapType_6286_5797_11866#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@6) null (PredicateMaskField_5797 pm_f_2@@4))) o2_2@@12 f_9@@12) (= (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@6) o2_2@@12 f_9@@12) (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@12 f_9@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@12 f_9@@12))
))) (forall ((o2_2@@13 T@Ref) (f_9@@13 T@Field_5797_11883) ) (!  (=> (select (|PolymorphicMapType_6286_5797_17923#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@6) null (PredicateMaskField_5797 pm_f_2@@4))) o2_2@@13 f_9@@13) (= (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@6) o2_2@@13 f_9@@13) (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@13 f_9@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@13 f_9@@13))
))) (forall ((o2_2@@14 T@Ref) (f_9@@14 T@Field_11865_53) ) (!  (=> (select (|PolymorphicMapType_6286_11865_53#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@6) null (PredicateMaskField_5797 pm_f_2@@4))) o2_2@@14 f_9@@14) (= (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@6) o2_2@@14 f_9@@14) (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@14 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@14 f_9@@14))
))) (forall ((o2_2@@15 T@Ref) (f_9@@15 T@Field_11865_5811) ) (!  (=> (select (|PolymorphicMapType_6286_11865_5811#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@6) null (PredicateMaskField_5797 pm_f_2@@4))) o2_2@@15 f_9@@15) (= (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@6) o2_2@@15 f_9@@15) (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@15 f_9@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@15 f_9@@15))
))) (forall ((o2_2@@16 T@Ref) (f_9@@16 T@Field_11865_3010) ) (!  (=> (select (|PolymorphicMapType_6286_11865_3010#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@6) null (PredicateMaskField_5797 pm_f_2@@4))) o2_2@@16 f_9@@16) (= (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@6) o2_2@@16 f_9@@16) (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@16 f_9@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@16 f_9@@16))
))) (forall ((o2_2@@17 T@Ref) (f_9@@17 T@Field_11865_11866) ) (!  (=> (select (|PolymorphicMapType_6286_11865_11866#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@6) null (PredicateMaskField_5797 pm_f_2@@4))) o2_2@@17 f_9@@17) (= (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@6) o2_2@@17 f_9@@17) (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@17 f_9@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@17 f_9@@17))
))) (forall ((o2_2@@18 T@Ref) (f_9@@18 T@Field_11878_11883) ) (!  (=> (select (|PolymorphicMapType_6286_11865_18971#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@6) null (PredicateMaskField_5797 pm_f_2@@4))) o2_2@@18 f_9@@18) (= (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@6) o2_2@@18 f_9@@18) (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@18 f_9@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@4) o2_2@@18 f_9@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5797_16439 pm_f_2@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5737) (ExhaleHeap@@5 T@PolymorphicMapType_5737) (Mask@@6 T@PolymorphicMapType_5758) (pm_f_2@@5 T@Field_11865_11866) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11865_11866 Mask@@6 null pm_f_2@@5) (IsWandField_11865_20136 pm_f_2@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@19 T@Ref) (f_9@@19 T@Field_5797_53) ) (!  (=> (select (|PolymorphicMapType_6286_5797_53#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@7) null (WandMaskField_11865 pm_f_2@@5))) o2_2@@19 f_9@@19) (= (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@7) o2_2@@19 f_9@@19) (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@19 f_9@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@19 f_9@@19))
)) (forall ((o2_2@@20 T@Ref) (f_9@@20 T@Field_5810_5811) ) (!  (=> (select (|PolymorphicMapType_6286_5797_5811#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@7) null (WandMaskField_11865 pm_f_2@@5))) o2_2@@20 f_9@@20) (= (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@7) o2_2@@20 f_9@@20) (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@20 f_9@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@20 f_9@@20))
))) (forall ((o2_2@@21 T@Ref) (f_9@@21 T@Field_11818_3010) ) (!  (=> (select (|PolymorphicMapType_6286_5797_3010#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@7) null (WandMaskField_11865 pm_f_2@@5))) o2_2@@21 f_9@@21) (= (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@7) o2_2@@21 f_9@@21) (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@21 f_9@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@21 f_9@@21))
))) (forall ((o2_2@@22 T@Ref) (f_9@@22 T@Field_5797_11866) ) (!  (=> (select (|PolymorphicMapType_6286_5797_11866#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@7) null (WandMaskField_11865 pm_f_2@@5))) o2_2@@22 f_9@@22) (= (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@7) o2_2@@22 f_9@@22) (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@22 f_9@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@22 f_9@@22))
))) (forall ((o2_2@@23 T@Ref) (f_9@@23 T@Field_5797_11883) ) (!  (=> (select (|PolymorphicMapType_6286_5797_17923#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@7) null (WandMaskField_11865 pm_f_2@@5))) o2_2@@23 f_9@@23) (= (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@7) o2_2@@23 f_9@@23) (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@23 f_9@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@23 f_9@@23))
))) (forall ((o2_2@@24 T@Ref) (f_9@@24 T@Field_11865_53) ) (!  (=> (select (|PolymorphicMapType_6286_11865_53#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@7) null (WandMaskField_11865 pm_f_2@@5))) o2_2@@24 f_9@@24) (= (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@7) o2_2@@24 f_9@@24) (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@24 f_9@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@24 f_9@@24))
))) (forall ((o2_2@@25 T@Ref) (f_9@@25 T@Field_11865_5811) ) (!  (=> (select (|PolymorphicMapType_6286_11865_5811#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@7) null (WandMaskField_11865 pm_f_2@@5))) o2_2@@25 f_9@@25) (= (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@7) o2_2@@25 f_9@@25) (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@25 f_9@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@25 f_9@@25))
))) (forall ((o2_2@@26 T@Ref) (f_9@@26 T@Field_11865_3010) ) (!  (=> (select (|PolymorphicMapType_6286_11865_3010#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@7) null (WandMaskField_11865 pm_f_2@@5))) o2_2@@26 f_9@@26) (= (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@7) o2_2@@26 f_9@@26) (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@26 f_9@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@26 f_9@@26))
))) (forall ((o2_2@@27 T@Ref) (f_9@@27 T@Field_11865_11866) ) (!  (=> (select (|PolymorphicMapType_6286_11865_11866#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@7) null (WandMaskField_11865 pm_f_2@@5))) o2_2@@27 f_9@@27) (= (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@7) o2_2@@27 f_9@@27) (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@27 f_9@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@27 f_9@@27))
))) (forall ((o2_2@@28 T@Ref) (f_9@@28 T@Field_11878_11883) ) (!  (=> (select (|PolymorphicMapType_6286_11865_18971#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@7) null (WandMaskField_11865 pm_f_2@@5))) o2_2@@28 f_9@@28) (= (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@7) o2_2@@28 f_9@@28) (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@28 f_9@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@5) o2_2@@28 f_9@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_11865_20136 pm_f_2@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5737) (ExhaleHeap@@6 T@PolymorphicMapType_5737) (Mask@@7 T@PolymorphicMapType_5758) (pm_f_2@@6 T@Field_5797_11866) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5797_11866 Mask@@7 null pm_f_2@@6) (IsWandField_5797_19779 pm_f_2@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@29 T@Ref) (f_9@@29 T@Field_5797_53) ) (!  (=> (select (|PolymorphicMapType_6286_5797_53#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@8) null (WandMaskField_5797 pm_f_2@@6))) o2_2@@29 f_9@@29) (= (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@8) o2_2@@29 f_9@@29) (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@29 f_9@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@29 f_9@@29))
)) (forall ((o2_2@@30 T@Ref) (f_9@@30 T@Field_5810_5811) ) (!  (=> (select (|PolymorphicMapType_6286_5797_5811#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@8) null (WandMaskField_5797 pm_f_2@@6))) o2_2@@30 f_9@@30) (= (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@8) o2_2@@30 f_9@@30) (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@30 f_9@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@30 f_9@@30))
))) (forall ((o2_2@@31 T@Ref) (f_9@@31 T@Field_11818_3010) ) (!  (=> (select (|PolymorphicMapType_6286_5797_3010#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@8) null (WandMaskField_5797 pm_f_2@@6))) o2_2@@31 f_9@@31) (= (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@8) o2_2@@31 f_9@@31) (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@31 f_9@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@31 f_9@@31))
))) (forall ((o2_2@@32 T@Ref) (f_9@@32 T@Field_5797_11866) ) (!  (=> (select (|PolymorphicMapType_6286_5797_11866#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@8) null (WandMaskField_5797 pm_f_2@@6))) o2_2@@32 f_9@@32) (= (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@8) o2_2@@32 f_9@@32) (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@32 f_9@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@32 f_9@@32))
))) (forall ((o2_2@@33 T@Ref) (f_9@@33 T@Field_5797_11883) ) (!  (=> (select (|PolymorphicMapType_6286_5797_17923#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@8) null (WandMaskField_5797 pm_f_2@@6))) o2_2@@33 f_9@@33) (= (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@8) o2_2@@33 f_9@@33) (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@33 f_9@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@33 f_9@@33))
))) (forall ((o2_2@@34 T@Ref) (f_9@@34 T@Field_11865_53) ) (!  (=> (select (|PolymorphicMapType_6286_11865_53#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@8) null (WandMaskField_5797 pm_f_2@@6))) o2_2@@34 f_9@@34) (= (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@8) o2_2@@34 f_9@@34) (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@34 f_9@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@34 f_9@@34))
))) (forall ((o2_2@@35 T@Ref) (f_9@@35 T@Field_11865_5811) ) (!  (=> (select (|PolymorphicMapType_6286_11865_5811#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@8) null (WandMaskField_5797 pm_f_2@@6))) o2_2@@35 f_9@@35) (= (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@8) o2_2@@35 f_9@@35) (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@35 f_9@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@35 f_9@@35))
))) (forall ((o2_2@@36 T@Ref) (f_9@@36 T@Field_11865_3010) ) (!  (=> (select (|PolymorphicMapType_6286_11865_3010#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@8) null (WandMaskField_5797 pm_f_2@@6))) o2_2@@36 f_9@@36) (= (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@8) o2_2@@36 f_9@@36) (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@36 f_9@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@36 f_9@@36))
))) (forall ((o2_2@@37 T@Ref) (f_9@@37 T@Field_11865_11866) ) (!  (=> (select (|PolymorphicMapType_6286_11865_11866#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@8) null (WandMaskField_5797 pm_f_2@@6))) o2_2@@37 f_9@@37) (= (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@8) o2_2@@37 f_9@@37) (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@37 f_9@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@37 f_9@@37))
))) (forall ((o2_2@@38 T@Ref) (f_9@@38 T@Field_11878_11883) ) (!  (=> (select (|PolymorphicMapType_6286_11865_18971#PolymorphicMapType_6286| (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@8) null (WandMaskField_5797 pm_f_2@@6))) o2_2@@38 f_9@@38) (= (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@8) o2_2@@38 f_9@@38) (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@38 f_9@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@6) o2_2@@38 f_9@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_5797_19779 pm_f_2@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5737) (ExhaleHeap@@7 T@PolymorphicMapType_5737) (Mask@@8 T@PolymorphicMapType_5758) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@9) o_6 $allocated) (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@7) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@7) o_6 $allocated))
)))
(assert (forall ((p T@Field_11865_11866) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11865_11865 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11865_11865 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5797_11866) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_5797_5797 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5797_5797 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_12801) (s1 T@Seq_12801) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12801|)) (not (= s1 |Seq#Empty_12801|))) (<= (|Seq#Length_12801| s0) n@@13)) (< n@@13 (|Seq#Length_12801| (|Seq#Append_12801| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_12801| s0)) (|Seq#Length_12801| s0)) n@@13) (= (|Seq#Index_12801| (|Seq#Append_12801| s0 s1) n@@13) (|Seq#Index_12801| s1 (|Seq#Sub| n@@13 (|Seq#Length_12801| s0))))))
 :qid |stdinbpl.255:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_12801| (|Seq#Append_12801| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2888) (s1@@0 T@Seq_2888) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2888|)) (not (= s1@@0 |Seq#Empty_2888|))) (<= (|Seq#Length_2888| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2888| (|Seq#Append_2888| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2888| s0@@0)) (|Seq#Length_2888| s0@@0)) n@@14) (= (|Seq#Index_2888| (|Seq#Append_2888| s0@@0 s1@@0) n@@14) (|Seq#Index_2888| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2888| s0@@0))))))
 :qid |stdinbpl.255:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2888| (|Seq#Append_2888| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_3795_3010 f_7)))
(assert  (not (IsWandField_3795_3010 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5737) (ExhaleHeap@@8 T@PolymorphicMapType_5737) (Mask@@9 T@PolymorphicMapType_5758) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5758) (o_2@@9 T@Ref) (f_4@@9 T@Field_11878_11883) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3798_27068 f_4@@9))) (not (IsWandField_3798_27084 f_4@@9))) (<= (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5758) (o_2@@10 T@Ref) (f_4@@10 T@Field_11865_5811) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3798_5811 f_4@@10))) (not (IsWandField_3798_5811 f_4@@10))) (<= (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5758) (o_2@@11 T@Ref) (f_4@@11 T@Field_11865_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3798_53 f_4@@11))) (not (IsWandField_3798_53 f_4@@11))) (<= (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5758) (o_2@@12 T@Ref) (f_4@@12 T@Field_11865_11866) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3798_3799 f_4@@12))) (not (IsWandField_11865_20136 f_4@@12))) (<= (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5758) (o_2@@13 T@Ref) (f_4@@13 T@Field_11865_3010) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3798_3010 f_4@@13))) (not (IsWandField_3798_3010 f_4@@13))) (<= (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5758) (o_2@@14 T@Ref) (f_4@@14 T@Field_5797_11883) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3795_26237 f_4@@14))) (not (IsWandField_3795_26253 f_4@@14))) (<= (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5758) (o_2@@15 T@Ref) (f_4@@15 T@Field_5810_5811) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3795_5811 f_4@@15))) (not (IsWandField_3795_5811 f_4@@15))) (<= (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5758) (o_2@@16 T@Ref) (f_4@@16 T@Field_5797_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3795_53 f_4@@16))) (not (IsWandField_3795_53 f_4@@16))) (<= (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5758) (o_2@@17 T@Ref) (f_4@@17 T@Field_5797_11866) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5797_16439 f_4@@17))) (not (IsWandField_5797_19779 f_4@@17))) (<= (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5758) (o_2@@18 T@Ref) (f_4@@18 T@Field_11818_3010) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3795_3010 f_4@@18))) (not (IsWandField_3795_3010 f_4@@18))) (<= (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5758) (o_2@@19 T@Ref) (f_4@@19 T@Field_11878_11883) ) (! (= (HasDirectPerm_11865_16151 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11865_16151 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5758) (o_2@@20 T@Ref) (f_4@@20 T@Field_11865_11866) ) (! (= (HasDirectPerm_11865_11866 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11865_11866 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5758) (o_2@@21 T@Ref) (f_4@@21 T@Field_11865_3010) ) (! (= (HasDirectPerm_11865_3010 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11865_3010 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5758) (o_2@@22 T@Ref) (f_4@@22 T@Field_11865_5811) ) (! (= (HasDirectPerm_11865_5811 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11865_5811 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5758) (o_2@@23 T@Ref) (f_4@@23 T@Field_11865_53) ) (! (= (HasDirectPerm_11865_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11865_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5758) (o_2@@24 T@Ref) (f_4@@24 T@Field_5797_11883) ) (! (= (HasDirectPerm_5797_14990 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5797_14990 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5758) (o_2@@25 T@Ref) (f_4@@25 T@Field_5797_11866) ) (! (= (HasDirectPerm_5797_11866 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5797_11866 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_5758) (o_2@@26 T@Ref) (f_4@@26 T@Field_11818_3010) ) (! (= (HasDirectPerm_5797_3010 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5797_3010 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_5758) (o_2@@27 T@Ref) (f_4@@27 T@Field_5810_5811) ) (! (= (HasDirectPerm_5797_5811 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5797_5811 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_5758) (o_2@@28 T@Ref) (f_4@@28 T@Field_5797_53) ) (! (= (HasDirectPerm_5797_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5797_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2888| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.547:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2888| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5737) (ExhaleHeap@@9 T@PolymorphicMapType_5737) (Mask@@30 T@PolymorphicMapType_5758) (o_6@@0 T@Ref) (f_9@@39 T@Field_11878_11883) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_11865_16151 Mask@@30 o_6@@0 f_9@@39) (= (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@11) o_6@@0 f_9@@39) (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@9) o_6@@0 f_9@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| ExhaleHeap@@9) o_6@@0 f_9@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5737) (ExhaleHeap@@10 T@PolymorphicMapType_5737) (Mask@@31 T@PolymorphicMapType_5758) (o_6@@1 T@Ref) (f_9@@40 T@Field_11865_11866) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_11865_11866 Mask@@31 o_6@@1 f_9@@40) (= (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@12) o_6@@1 f_9@@40) (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| ExhaleHeap@@10) o_6@@1 f_9@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| ExhaleHeap@@10) o_6@@1 f_9@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5737) (ExhaleHeap@@11 T@PolymorphicMapType_5737) (Mask@@32 T@PolymorphicMapType_5758) (o_6@@2 T@Ref) (f_9@@41 T@Field_11865_3010) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_11865_3010 Mask@@32 o_6@@2 f_9@@41) (= (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@13) o_6@@2 f_9@@41) (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| ExhaleHeap@@11) o_6@@2 f_9@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| ExhaleHeap@@11) o_6@@2 f_9@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5737) (ExhaleHeap@@12 T@PolymorphicMapType_5737) (Mask@@33 T@PolymorphicMapType_5758) (o_6@@3 T@Ref) (f_9@@42 T@Field_11865_5811) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_11865_5811 Mask@@33 o_6@@3 f_9@@42) (= (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@14) o_6@@3 f_9@@42) (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| ExhaleHeap@@12) o_6@@3 f_9@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| ExhaleHeap@@12) o_6@@3 f_9@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5737) (ExhaleHeap@@13 T@PolymorphicMapType_5737) (Mask@@34 T@PolymorphicMapType_5758) (o_6@@4 T@Ref) (f_9@@43 T@Field_11865_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_11865_53 Mask@@34 o_6@@4 f_9@@43) (= (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@15) o_6@@4 f_9@@43) (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| ExhaleHeap@@13) o_6@@4 f_9@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| ExhaleHeap@@13) o_6@@4 f_9@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5737) (ExhaleHeap@@14 T@PolymorphicMapType_5737) (Mask@@35 T@PolymorphicMapType_5758) (o_6@@5 T@Ref) (f_9@@44 T@Field_5797_11883) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_5797_14990 Mask@@35 o_6@@5 f_9@@44) (= (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@16) o_6@@5 f_9@@44) (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@14) o_6@@5 f_9@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| ExhaleHeap@@14) o_6@@5 f_9@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5737) (ExhaleHeap@@15 T@PolymorphicMapType_5737) (Mask@@36 T@PolymorphicMapType_5758) (o_6@@6 T@Ref) (f_9@@45 T@Field_5797_11866) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_5797_11866 Mask@@36 o_6@@6 f_9@@45) (= (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@17) o_6@@6 f_9@@45) (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| ExhaleHeap@@15) o_6@@6 f_9@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| ExhaleHeap@@15) o_6@@6 f_9@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5737) (ExhaleHeap@@16 T@PolymorphicMapType_5737) (Mask@@37 T@PolymorphicMapType_5758) (o_6@@7 T@Ref) (f_9@@46 T@Field_11818_3010) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_5797_3010 Mask@@37 o_6@@7 f_9@@46) (= (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@18) o_6@@7 f_9@@46) (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| ExhaleHeap@@16) o_6@@7 f_9@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| ExhaleHeap@@16) o_6@@7 f_9@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5737) (ExhaleHeap@@17 T@PolymorphicMapType_5737) (Mask@@38 T@PolymorphicMapType_5758) (o_6@@8 T@Ref) (f_9@@47 T@Field_5810_5811) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_5797_5811 Mask@@38 o_6@@8 f_9@@47) (= (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@19) o_6@@8 f_9@@47) (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| ExhaleHeap@@17) o_6@@8 f_9@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| ExhaleHeap@@17) o_6@@8 f_9@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5737) (ExhaleHeap@@18 T@PolymorphicMapType_5737) (Mask@@39 T@PolymorphicMapType_5758) (o_6@@9 T@Ref) (f_9@@48 T@Field_5797_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_5797_53 Mask@@39 o_6@@9 f_9@@48) (= (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@20) o_6@@9 f_9@@48) (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@18) o_6@@9 f_9@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| ExhaleHeap@@18) o_6@@9 f_9@@48))
)))
(assert (forall ((s0@@1 T@Seq_12801) (s1@@1 T@Seq_12801) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_12801|)) (not (= s1@@1 |Seq#Empty_12801|))) (= (|Seq#Length_12801| (|Seq#Append_12801| s0@@1 s1@@1)) (+ (|Seq#Length_12801| s0@@1) (|Seq#Length_12801| s1@@1))))
 :qid |stdinbpl.224:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_12801| (|Seq#Append_12801| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2888) (s1@@2 T@Seq_2888) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2888|)) (not (= s1@@2 |Seq#Empty_2888|))) (= (|Seq#Length_2888| (|Seq#Append_2888| s0@@2 s1@@2)) (+ (|Seq#Length_2888| s0@@2) (|Seq#Length_2888| s1@@2))))
 :qid |stdinbpl.224:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2888| (|Seq#Append_2888| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_11878_11883) ) (! (= (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_11865_5811) ) (! (= (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_11865_53) ) (! (= (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_11865_11866) ) (! (= (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_11865_3010) ) (! (= (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_5797_11883) ) (! (= (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_5810_5811) ) (! (= (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_5797_53) ) (! (= (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5797_11866) ) (! (= (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_11818_3010) ) (! (= (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_12801) (t@@1 T@Seq_12801) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_12801| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_12801| s@@15)) (|Seq#Length_12801| s@@15)) n@@15) (= (|Seq#Drop_12801| (|Seq#Append_12801| s@@15 t@@1) n@@15) (|Seq#Drop_12801| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_12801| s@@15))))))
 :qid |stdinbpl.381:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_12801| (|Seq#Append_12801| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2888) (t@@2 T@Seq_2888) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2888| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2888| s@@16)) (|Seq#Length_2888| s@@16)) n@@16) (= (|Seq#Drop_2888| (|Seq#Append_2888| s@@16 t@@2) n@@16) (|Seq#Drop_2888| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2888| s@@16))))))
 :qid |stdinbpl.381:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2888| (|Seq#Append_2888| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5758) (SummandMask1 T@PolymorphicMapType_5758) (SummandMask2 T@PolymorphicMapType_5758) (o_2@@39 T@Ref) (f_4@@39 T@Field_11878_11883) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5758_3798_24776#PolymorphicMapType_5758| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5758) (SummandMask1@@0 T@PolymorphicMapType_5758) (SummandMask2@@0 T@PolymorphicMapType_5758) (o_2@@40 T@Ref) (f_4@@40 T@Field_11865_5811) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5758_3798_5811#PolymorphicMapType_5758| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5758) (SummandMask1@@1 T@PolymorphicMapType_5758) (SummandMask2@@1 T@PolymorphicMapType_5758) (o_2@@41 T@Ref) (f_4@@41 T@Field_11865_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5758_3798_53#PolymorphicMapType_5758| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5758) (SummandMask1@@2 T@PolymorphicMapType_5758) (SummandMask2@@2 T@PolymorphicMapType_5758) (o_2@@42 T@Ref) (f_4@@42 T@Field_11865_11866) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5758_3798_3799#PolymorphicMapType_5758| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5758) (SummandMask1@@3 T@PolymorphicMapType_5758) (SummandMask2@@3 T@PolymorphicMapType_5758) (o_2@@43 T@Ref) (f_4@@43 T@Field_11865_3010) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5758_3798_3010#PolymorphicMapType_5758| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5758) (SummandMask1@@4 T@PolymorphicMapType_5758) (SummandMask2@@4 T@PolymorphicMapType_5758) (o_2@@44 T@Ref) (f_4@@44 T@Field_5797_11883) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5758_3795_24365#PolymorphicMapType_5758| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5758) (SummandMask1@@5 T@PolymorphicMapType_5758) (SummandMask2@@5 T@PolymorphicMapType_5758) (o_2@@45 T@Ref) (f_4@@45 T@Field_5810_5811) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5758_3795_5811#PolymorphicMapType_5758| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5758) (SummandMask1@@6 T@PolymorphicMapType_5758) (SummandMask2@@6 T@PolymorphicMapType_5758) (o_2@@46 T@Ref) (f_4@@46 T@Field_5797_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5758_3795_53#PolymorphicMapType_5758| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_5758) (SummandMask1@@7 T@PolymorphicMapType_5758) (SummandMask2@@7 T@PolymorphicMapType_5758) (o_2@@47 T@Ref) (f_4@@47 T@Field_5797_11866) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5758_3795_3799#PolymorphicMapType_5758| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_5758) (SummandMask1@@8 T@PolymorphicMapType_5758) (SummandMask2@@8 T@PolymorphicMapType_5758) (o_2@@48 T@Ref) (f_4@@48 T@Field_11818_3010) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5758_3795_3010#PolymorphicMapType_5758| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2888| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2888| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.546:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2888| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_12801) (b T@Seq_12801) ) (!  (=> (|Seq#Equal_12801| a b) (= a b))
 :qid |stdinbpl.519:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_12801| a b))
)))
(assert (forall ((a@@0 T@Seq_2888) (b@@0 T@Seq_2888) ) (!  (=> (|Seq#Equal_2888| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.519:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2888| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_12801) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_12801| s@@17))) (|Seq#ContainsTrigger_3824| s@@17 (|Seq#Index_12801| s@@17 i@@3)))
 :qid |stdinbpl.412:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_12801| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2888) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2888| s@@18))) (|Seq#ContainsTrigger_2888| s@@18 (|Seq#Index_2888| s@@18 i@@4)))
 :qid |stdinbpl.412:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2888| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_12801) (s1@@3 T@Seq_12801) ) (!  (and (=> (= s0@@3 |Seq#Empty_12801|) (= (|Seq#Append_12801| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_12801|) (= (|Seq#Append_12801| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.230:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_12801| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2888) (s1@@4 T@Seq_2888) ) (!  (and (=> (= s0@@4 |Seq#Empty_2888|) (= (|Seq#Append_2888| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2888|) (= (|Seq#Append_2888| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.230:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2888| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_12801| (|Seq#Singleton_12801| t@@3) 0) t@@3)
 :qid |stdinbpl.234:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_12801| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2888| (|Seq#Singleton_2888| t@@4) 0) t@@4)
 :qid |stdinbpl.234:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2888| t@@4))
)))
(assert (forall ((s@@19 T@Seq_12801) ) (! (<= 0 (|Seq#Length_12801| s@@19))
 :qid |stdinbpl.213:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_12801| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2888) ) (! (<= 0 (|Seq#Length_2888| s@@20))
 :qid |stdinbpl.213:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2888| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_12801) (s1@@5 T@Seq_12801) ) (!  (=> (|Seq#Equal_12801| s0@@5 s1@@5) (and (= (|Seq#Length_12801| s0@@5) (|Seq#Length_12801| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_12801| s0@@5))) (= (|Seq#Index_12801| s0@@5 j@@6) (|Seq#Index_12801| s1@@5 j@@6)))
 :qid |stdinbpl.509:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_12801| s0@@5 j@@6))
 :pattern ( (|Seq#Index_12801| s1@@5 j@@6))
))))
 :qid |stdinbpl.506:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_12801| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2888) (s1@@6 T@Seq_2888) ) (!  (=> (|Seq#Equal_2888| s0@@6 s1@@6) (and (= (|Seq#Length_2888| s0@@6) (|Seq#Length_2888| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2888| s0@@6))) (= (|Seq#Index_2888| s0@@6 j@@7) (|Seq#Index_2888| s1@@6 j@@7)))
 :qid |stdinbpl.509:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2888| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2888| s1@@6 j@@7))
))))
 :qid |stdinbpl.506:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2888| s0@@6 s1@@6))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_3798_3799 (inv this@@3)) 0)
 :qid |stdinbpl.578:15|
 :skolemid |60|
 :pattern ( (inv this@@3))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_12801| (|Seq#Singleton_12801| t@@5)) 1)
 :qid |stdinbpl.221:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_12801| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2888| (|Seq#Singleton_2888| t@@6)) 1)
 :qid |stdinbpl.221:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2888| t@@6))
)))
(assert (forall ((s@@21 T@Seq_12801) (t@@7 T@Seq_12801) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_12801| s@@21))) (= (|Seq#Take_12801| (|Seq#Append_12801| s@@21 t@@7) n@@17) (|Seq#Take_12801| s@@21 n@@17)))
 :qid |stdinbpl.363:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_12801| (|Seq#Append_12801| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2888) (t@@8 T@Seq_2888) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2888| s@@22))) (= (|Seq#Take_2888| (|Seq#Append_2888| s@@22 t@@8) n@@18) (|Seq#Take_2888| s@@22 n@@18)))
 :qid |stdinbpl.363:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2888| (|Seq#Append_2888| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_12801) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_12801| s@@23))) (= (|Seq#Length_12801| (|Seq#Update_12801| s@@23 i@@5 v@@2)) (|Seq#Length_12801| s@@23)))
 :qid |stdinbpl.262:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_12801| (|Seq#Update_12801| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_12801| s@@23) (|Seq#Update_12801| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2888) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2888| s@@24))) (= (|Seq#Length_2888| (|Seq#Update_2888| s@@24 i@@6 v@@3)) (|Seq#Length_2888| s@@24)))
 :qid |stdinbpl.262:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2888| (|Seq#Update_2888| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2888| s@@24) (|Seq#Update_2888| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5737) (o_5 T@Ref) (f_10 T@Field_11878_11883) (v@@4 T@PolymorphicMapType_6286) ) (! (succHeap Heap@@21 (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@21) (store (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@21) o_5 f_10 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@21) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@21) (store (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@21) o_5 f_10 v@@4)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5737) (o_5@@0 T@Ref) (f_10@@0 T@Field_11865_3010) (v@@5 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@22) (store (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@22) o_5@@0 f_10@@0 v@@5) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@22) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@22) (store (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@22) o_5@@0 f_10@@0 v@@5) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5737) (o_5@@1 T@Ref) (f_10@@1 T@Field_11865_11866) (v@@6 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@23) (store (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@23) o_5@@1 f_10@@1 v@@6) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@23) (store (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@23) o_5@@1 f_10@@1 v@@6) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@23) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5737) (o_5@@2 T@Ref) (f_10@@2 T@Field_11865_5811) (v@@7 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@24) (store (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@24) o_5@@2 f_10@@2 v@@7) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@24) (store (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@24) o_5@@2 f_10@@2 v@@7) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@24) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5737) (o_5@@3 T@Ref) (f_10@@3 T@Field_11865_53) (v@@8 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@25) (store (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@25) o_5@@3 f_10@@3 v@@8) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@25) (store (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@25) o_5@@3 f_10@@3 v@@8) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@25) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5737) (o_5@@4 T@Ref) (f_10@@4 T@Field_5797_11883) (v@@9 T@PolymorphicMapType_6286) ) (! (succHeap Heap@@26 (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@26) (store (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@26) o_5@@4 f_10@@4 v@@9) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@26) (store (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@26) o_5@@4 f_10@@4 v@@9) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@26) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5737) (o_5@@5 T@Ref) (f_10@@5 T@Field_11818_3010) (v@@10 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@27) (store (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@27) o_5@@5 f_10@@5 v@@10) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@27) (store (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@27) o_5@@5 f_10@@5 v@@10) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@27) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5737) (o_5@@6 T@Ref) (f_10@@6 T@Field_5797_11866) (v@@11 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@28) (store (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@28) o_5@@6 f_10@@6 v@@11) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@28) (store (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@28) o_5@@6 f_10@@6 v@@11) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@28) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5737) (o_5@@7 T@Ref) (f_10@@7 T@Field_5810_5811) (v@@12 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@29) (store (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@29) o_5@@7 f_10@@7 v@@12) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5737 (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@29) (store (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@29) o_5@@7 f_10@@7 v@@12) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@29) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5737) (o_5@@8 T@Ref) (f_10@@8 T@Field_5797_53) (v@@13 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_5737 (store (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@30) o_5@@8 f_10@@8 v@@13) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5737 (store (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@30) o_5@@8 f_10@@8 v@@13) (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_3798_3799#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_5797_3010#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_5797_11866#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_5797_15032#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_11865_53#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_11865_5811#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_11865_3010#PolymorphicMapType_5737| Heap@@30) (|PolymorphicMapType_5737_11865_16193#PolymorphicMapType_5737| Heap@@30)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_3798 (inv this@@4)) (|inv#sm| this@@4))
 :qid |stdinbpl.570:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_3798 (inv this@@4)))
)))
(assert (forall ((s@@25 T@Seq_12801) (t@@9 T@Seq_12801) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_12801| s@@25))) (= (|Seq#Drop_12801| (|Seq#Append_12801| s@@25 t@@9) n@@19) (|Seq#Append_12801| (|Seq#Drop_12801| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.377:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_12801| (|Seq#Append_12801| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2888) (t@@10 T@Seq_2888) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2888| s@@26))) (= (|Seq#Drop_2888| (|Seq#Append_2888| s@@26 t@@10) n@@20) (|Seq#Append_2888| (|Seq#Drop_2888| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.377:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2888| (|Seq#Append_2888| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_12801) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_12801| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_12801| (|Seq#Drop_12801| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_12801| s@@27 i@@7))))
 :qid |stdinbpl.313:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_12801| s@@27 n@@21) (|Seq#Index_12801| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2888) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2888| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2888| (|Seq#Drop_2888| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2888| s@@28 i@@8))))
 :qid |stdinbpl.313:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2888| s@@28 n@@22) (|Seq#Index_2888| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_12801) (s1@@7 T@Seq_12801) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_12801|)) (not (= s1@@7 |Seq#Empty_12801|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_12801| s0@@7))) (= (|Seq#Index_12801| (|Seq#Append_12801| s0@@7 s1@@7) n@@23) (|Seq#Index_12801| s0@@7 n@@23)))
 :qid |stdinbpl.253:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_12801| (|Seq#Append_12801| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_12801| s0@@7 n@@23) (|Seq#Append_12801| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2888) (s1@@8 T@Seq_2888) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2888|)) (not (= s1@@8 |Seq#Empty_2888|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2888| s0@@8))) (= (|Seq#Index_2888| (|Seq#Append_2888| s0@@8 s1@@8) n@@24) (|Seq#Index_2888| s0@@8 n@@24)))
 :qid |stdinbpl.253:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2888| (|Seq#Append_2888| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2888| s0@@8 n@@24) (|Seq#Append_2888| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_12801) (s1@@9 T@Seq_12801) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_12801|)) (not (= s1@@9 |Seq#Empty_12801|))) (<= 0 m)) (< m (|Seq#Length_12801| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_12801| s0@@9)) (|Seq#Length_12801| s0@@9)) m) (= (|Seq#Index_12801| (|Seq#Append_12801| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_12801| s0@@9))) (|Seq#Index_12801| s1@@9 m))))
 :qid |stdinbpl.258:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_12801| s1@@9 m) (|Seq#Append_12801| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2888) (s1@@10 T@Seq_2888) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2888|)) (not (= s1@@10 |Seq#Empty_2888|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2888| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2888| s0@@10)) (|Seq#Length_2888| s0@@10)) m@@0) (= (|Seq#Index_2888| (|Seq#Append_2888| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2888| s0@@10))) (|Seq#Index_2888| s1@@10 m@@0))))
 :qid |stdinbpl.258:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2888| s1@@10 m@@0) (|Seq#Append_2888| s0@@10 s1@@10))
)))
(assert (forall ((o_5@@9 T@Ref) (f_3 T@Field_5810_5811) (Heap@@31 T@PolymorphicMapType_5737) ) (!  (=> (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@31) o_5@@9 $allocated) (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@31) (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@31) o_5@@9 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5737_3606_3607#PolymorphicMapType_5737| Heap@@31) o_5@@9 f_3))
)))
(assert (forall ((s@@29 T@Seq_12801) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_12801| s@@29))) (= (|Seq#Index_12801| s@@29 i@@9) x@@3)) (|Seq#Contains_3824| s@@29 x@@3))
 :qid |stdinbpl.410:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3824| s@@29 x@@3) (|Seq#Index_12801| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2888) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2888| s@@30))) (= (|Seq#Index_2888| s@@30 i@@10) x@@4)) (|Seq#Contains_2888| s@@30 x@@4))
 :qid |stdinbpl.410:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2888| s@@30 x@@4) (|Seq#Index_2888| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_12801) (s1@@11 T@Seq_12801) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_12801| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_12801| s0@@11 s1@@11))) (not (= (|Seq#Length_12801| s0@@11) (|Seq#Length_12801| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_12801| s0@@11 s1@@11))) (= (|Seq#Length_12801| s0@@11) (|Seq#Length_12801| s1@@11))) (= (|Seq#SkolemDiff_12801| s0@@11 s1@@11) (|Seq#SkolemDiff_12801| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_12801| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_12801| s0@@11 s1@@11) (|Seq#Length_12801| s0@@11))) (not (= (|Seq#Index_12801| s0@@11 (|Seq#SkolemDiff_12801| s0@@11 s1@@11)) (|Seq#Index_12801| s1@@11 (|Seq#SkolemDiff_12801| s0@@11 s1@@11))))))
 :qid |stdinbpl.514:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_12801| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2888) (s1@@12 T@Seq_2888) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2888| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2888| s0@@12 s1@@12))) (not (= (|Seq#Length_2888| s0@@12) (|Seq#Length_2888| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2888| s0@@12 s1@@12))) (= (|Seq#Length_2888| s0@@12) (|Seq#Length_2888| s1@@12))) (= (|Seq#SkolemDiff_2888| s0@@12 s1@@12) (|Seq#SkolemDiff_2888| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2888| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2888| s0@@12 s1@@12) (|Seq#Length_2888| s0@@12))) (not (= (|Seq#Index_2888| s0@@12 (|Seq#SkolemDiff_2888| s0@@12 s1@@12)) (|Seq#Index_2888| s1@@12 (|Seq#SkolemDiff_2888| s0@@12 s1@@12))))))
 :qid |stdinbpl.514:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2888| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_11865_11866) (v_1@@1 T@FrameType) (q T@Field_11865_11866) (w@@1 T@FrameType) (r T@Field_11865_11866) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11865_11865 p@@2 v_1@@1 q w@@1) (InsidePredicate_11865_11865 q w@@1 r u)) (InsidePredicate_11865_11865 p@@2 v_1@@1 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11865_11865 p@@2 v_1@@1 q w@@1) (InsidePredicate_11865_11865 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_11865_11866) (v_1@@2 T@FrameType) (q@@0 T@Field_11865_11866) (w@@2 T@FrameType) (r@@0 T@Field_5797_11866) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11865_11865 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11865_5797 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_11865_5797 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11865_11865 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11865_5797 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_11865_11866) (v_1@@3 T@FrameType) (q@@1 T@Field_5797_11866) (w@@3 T@FrameType) (r@@1 T@Field_11865_11866) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11865_5797 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5797_11865 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_11865_11865 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11865_5797 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5797_11865 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_11865_11866) (v_1@@4 T@FrameType) (q@@2 T@Field_5797_11866) (w@@4 T@FrameType) (r@@2 T@Field_5797_11866) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11865_5797 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5797_5797 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_11865_5797 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11865_5797 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5797_5797 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5797_11866) (v_1@@5 T@FrameType) (q@@3 T@Field_11865_11866) (w@@5 T@FrameType) (r@@3 T@Field_11865_11866) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_5797_11865 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11865_11865 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_5797_11865 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5797_11865 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11865_11865 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5797_11866) (v_1@@6 T@FrameType) (q@@4 T@Field_11865_11866) (w@@6 T@FrameType) (r@@4 T@Field_5797_11866) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_5797_11865 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11865_5797 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_5797_5797 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5797_11865 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11865_5797 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5797_11866) (v_1@@7 T@FrameType) (q@@5 T@Field_5797_11866) (w@@7 T@FrameType) (r@@5 T@Field_11865_11866) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_5797_5797 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5797_11865 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_5797_11865 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5797_5797 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5797_11865 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5797_11866) (v_1@@8 T@FrameType) (q@@6 T@Field_5797_11866) (w@@8 T@FrameType) (r@@6 T@Field_5797_11866) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_5797_5797 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5797_5797 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_5797_5797 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5797_5797 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5797_5797 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_12801) ) (!  (=> (= (|Seq#Length_12801| s@@31) 0) (= s@@31 |Seq#Empty_12801|))
 :qid |stdinbpl.217:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_12801| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2888) ) (!  (=> (= (|Seq#Length_2888| s@@32) 0) (= s@@32 |Seq#Empty_2888|))
 :qid |stdinbpl.217:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2888| s@@32))
)))
(assert (forall ((s@@33 T@Seq_12801) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_12801| s@@33 n@@25) |Seq#Empty_12801|))
 :qid |stdinbpl.393:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_12801| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2888) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2888| s@@34 n@@26) |Seq#Empty_2888|))
 :qid |stdinbpl.393:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2888| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_5737)
(declare-fun this@@5 () T@Ref)
(declare-fun perm@0 () Real)
(set-info :boogie-vc-id |inv#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_5737_3603_53#PolymorphicMapType_5737| Heap@@32) this@@5 $allocated)) (and (= perm@0 (/ (to_real 1) (to_real 2))) (= (ControlFlow 0 2) (- 0 1)))) (>= perm@0 NoPerm)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
