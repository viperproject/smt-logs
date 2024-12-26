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
(declare-sort T@Field_8743_53 0)
(declare-sort T@Field_8756_8757 0)
(declare-sort T@Field_15747_15748 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14780_3130 0)
(declare-sort T@Field_8743_14828 0)
(declare-sort T@Field_8743_14845 0)
(declare-sort T@Field_14827_53 0)
(declare-sort T@Field_14827_8757 0)
(declare-sort T@Field_14827_3130 0)
(declare-sort T@Field_14827_14828 0)
(declare-sort T@Field_14840_14845 0)
(declare-sort T@Field_15747_53 0)
(declare-sort T@Field_15747_8757 0)
(declare-sort T@Field_15747_3130 0)
(declare-sort T@Field_15760_15765 0)
(declare-datatypes ((T@PolymorphicMapType_8704 0)) (((PolymorphicMapType_8704 (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| (Array T@Ref T@Field_14780_3130 Real)) (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| (Array T@Ref T@Field_14827_14828 Real)) (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| (Array T@Ref T@Field_15747_15748 Real)) (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| (Array T@Ref T@Field_8743_14828 Real)) (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| (Array T@Ref T@Field_8743_53 Real)) (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| (Array T@Ref T@Field_8756_8757 Real)) (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| (Array T@Ref T@Field_8743_14845 Real)) (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| (Array T@Ref T@Field_14827_3130 Real)) (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| (Array T@Ref T@Field_14827_53 Real)) (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| (Array T@Ref T@Field_14827_8757 Real)) (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| (Array T@Ref T@Field_14840_14845 Real)) (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| (Array T@Ref T@Field_15747_3130 Real)) (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| (Array T@Ref T@Field_15747_53 Real)) (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| (Array T@Ref T@Field_15747_8757 Real)) (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| (Array T@Ref T@Field_15760_15765 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9232 0)) (((PolymorphicMapType_9232 (|PolymorphicMapType_9232_8743_53#PolymorphicMapType_9232| (Array T@Ref T@Field_8743_53 Bool)) (|PolymorphicMapType_9232_8743_8757#PolymorphicMapType_9232| (Array T@Ref T@Field_8756_8757 Bool)) (|PolymorphicMapType_9232_8743_3130#PolymorphicMapType_9232| (Array T@Ref T@Field_14780_3130 Bool)) (|PolymorphicMapType_9232_8743_14828#PolymorphicMapType_9232| (Array T@Ref T@Field_8743_14828 Bool)) (|PolymorphicMapType_9232_8743_28830#PolymorphicMapType_9232| (Array T@Ref T@Field_8743_14845 Bool)) (|PolymorphicMapType_9232_14827_53#PolymorphicMapType_9232| (Array T@Ref T@Field_14827_53 Bool)) (|PolymorphicMapType_9232_14827_8757#PolymorphicMapType_9232| (Array T@Ref T@Field_14827_8757 Bool)) (|PolymorphicMapType_9232_14827_3130#PolymorphicMapType_9232| (Array T@Ref T@Field_14827_3130 Bool)) (|PolymorphicMapType_9232_14827_14828#PolymorphicMapType_9232| (Array T@Ref T@Field_14827_14828 Bool)) (|PolymorphicMapType_9232_14827_29878#PolymorphicMapType_9232| (Array T@Ref T@Field_14840_14845 Bool)) (|PolymorphicMapType_9232_15747_53#PolymorphicMapType_9232| (Array T@Ref T@Field_15747_53 Bool)) (|PolymorphicMapType_9232_15747_8757#PolymorphicMapType_9232| (Array T@Ref T@Field_15747_8757 Bool)) (|PolymorphicMapType_9232_15747_3130#PolymorphicMapType_9232| (Array T@Ref T@Field_15747_3130 Bool)) (|PolymorphicMapType_9232_15747_14828#PolymorphicMapType_9232| (Array T@Ref T@Field_15747_15748 Bool)) (|PolymorphicMapType_9232_15747_30926#PolymorphicMapType_9232| (Array T@Ref T@Field_15760_15765 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8683 0)) (((PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| (Array T@Ref T@Field_8743_53 Bool)) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| (Array T@Ref T@Field_8756_8757 T@Ref)) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| (Array T@Ref T@Field_15747_15748 T@FrameType)) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| (Array T@Ref T@Field_14780_3130 Int)) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| (Array T@Ref T@Field_8743_14828 T@FrameType)) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| (Array T@Ref T@Field_8743_14845 T@PolymorphicMapType_9232)) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| (Array T@Ref T@Field_14827_53 Bool)) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| (Array T@Ref T@Field_14827_8757 T@Ref)) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| (Array T@Ref T@Field_14827_3130 Int)) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| (Array T@Ref T@Field_14827_14828 T@FrameType)) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| (Array T@Ref T@Field_14840_14845 T@PolymorphicMapType_9232)) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| (Array T@Ref T@Field_15747_53 Bool)) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| (Array T@Ref T@Field_15747_8757 T@Ref)) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| (Array T@Ref T@Field_15747_3130 Int)) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| (Array T@Ref T@Field_15760_15765 T@PolymorphicMapType_9232)) ) ) ))
(declare-fun $allocated () T@Field_8743_53)
(declare-fun f_7 () T@Field_14780_3130)
(declare-sort T@Seq_16719 0)
(declare-fun |Seq#Length_16719| (T@Seq_16719) Int)
(declare-fun |Seq#Drop_16719| (T@Seq_16719 Int) T@Seq_16719)
(declare-sort T@Seq_3008 0)
(declare-fun |Seq#Length_3008| (T@Seq_3008) Int)
(declare-fun |Seq#Drop_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun succHeap (T@PolymorphicMapType_8683 T@PolymorphicMapType_8683) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8683 T@PolymorphicMapType_8683) Bool)
(declare-fun state (T@PolymorphicMapType_8683 T@PolymorphicMapType_8704) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8704) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9232)
(declare-fun pred2 (T@Ref Int) T@Field_15747_15748)
(declare-fun IsPredicateField_5765_5766 (T@Field_15747_15748) Bool)
(declare-fun |pred2#trigger_5765| (T@PolymorphicMapType_8683 T@Field_15747_15748) Bool)
(declare-fun |pred2#everUsed_5765| (T@Field_15747_15748) Bool)
(declare-fun |Seq#Index_16719| (T@Seq_16719 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3008| (T@Seq_3008 Int) Int)
(declare-fun |Seq#Empty_16719| () T@Seq_16719)
(declare-fun |Seq#Empty_3008| () T@Seq_3008)
(declare-fun pred1 (T@Ref) T@Field_14827_14828)
(declare-fun IsPredicateField_5740_5741 (T@Field_14827_14828) Bool)
(declare-fun |pred1#trigger_5740| (T@PolymorphicMapType_8683 T@Field_14827_14828) Bool)
(declare-fun |pred1#everUsed_5740| (T@Field_14827_14828) Bool)
(declare-fun |Seq#Update_16719| (T@Seq_16719 Int T@Ref) T@Seq_16719)
(declare-fun |Seq#Update_3008| (T@Seq_3008 Int Int) T@Seq_3008)
(declare-fun |Seq#Take_16719| (T@Seq_16719 Int) T@Seq_16719)
(declare-fun |Seq#Take_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun |Seq#Contains_3008| (T@Seq_3008 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3008)
(declare-fun |Seq#Contains_5792| (T@Seq_16719 T@Ref) Bool)
(declare-fun |Seq#Skolem_5792| (T@Seq_16719 T@Ref) Int)
(declare-fun |Seq#Skolem_3008| (T@Seq_3008 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8683 T@PolymorphicMapType_8683 T@PolymorphicMapType_8704) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5765 (T@Field_15747_15748) T@Field_15760_15765)
(declare-fun HasDirectPerm_15747_14828 (T@PolymorphicMapType_8704 T@Ref T@Field_15747_15748) Bool)
(declare-fun PredicateMaskField_5740 (T@Field_14827_14828) T@Field_14840_14845)
(declare-fun HasDirectPerm_14827_14828 (T@PolymorphicMapType_8704 T@Ref T@Field_14827_14828) Bool)
(declare-fun IsPredicateField_8743_27021 (T@Field_8743_14828) Bool)
(declare-fun PredicateMaskField_8743 (T@Field_8743_14828) T@Field_8743_14845)
(declare-fun HasDirectPerm_8743_14828 (T@PolymorphicMapType_8704 T@Ref T@Field_8743_14828) Bool)
(declare-fun IsWandField_15747_32729 (T@Field_15747_15748) Bool)
(declare-fun WandMaskField_15747 (T@Field_15747_15748) T@Field_15760_15765)
(declare-fun IsWandField_14827_32372 (T@Field_14827_14828) Bool)
(declare-fun WandMaskField_14827 (T@Field_14827_14828) T@Field_14840_14845)
(declare-fun IsWandField_8743_32015 (T@Field_8743_14828) Bool)
(declare-fun WandMaskField_8743 (T@Field_8743_14828) T@Field_8743_14845)
(declare-fun |Seq#Singleton_16719| (T@Ref) T@Seq_16719)
(declare-fun |Seq#Singleton_3008| (Int) T@Seq_3008)
(declare-fun |pred2#sm| (T@Ref Int) T@Field_15760_15765)
(declare-fun |pred1#sm| (T@Ref) T@Field_14840_14845)
(declare-fun |Seq#Append_16719| (T@Seq_16719 T@Seq_16719) T@Seq_16719)
(declare-fun |Seq#Append_3008| (T@Seq_3008 T@Seq_3008) T@Seq_3008)
(declare-fun dummyHeap () T@PolymorphicMapType_8683)
(declare-fun ZeroMask () T@PolymorphicMapType_8704)
(declare-fun InsidePredicate_15747_15747 (T@Field_15747_15748 T@FrameType T@Field_15747_15748 T@FrameType) Bool)
(declare-fun InsidePredicate_14827_14827 (T@Field_14827_14828 T@FrameType T@Field_14827_14828 T@FrameType) Bool)
(declare-fun InsidePredicate_8743_8743 (T@Field_8743_14828 T@FrameType T@Field_8743_14828 T@FrameType) Bool)
(declare-fun IsPredicateField_5737_3130 (T@Field_14780_3130) Bool)
(declare-fun IsWandField_5737_3130 (T@Field_14780_3130) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5765_43047 (T@Field_15760_15765) Bool)
(declare-fun IsWandField_5765_43063 (T@Field_15760_15765) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5765_8757 (T@Field_15747_8757) Bool)
(declare-fun IsWandField_5765_8757 (T@Field_15747_8757) Bool)
(declare-fun IsPredicateField_5765_53 (T@Field_15747_53) Bool)
(declare-fun IsWandField_5765_53 (T@Field_15747_53) Bool)
(declare-fun IsPredicateField_5765_3130 (T@Field_15747_3130) Bool)
(declare-fun IsWandField_5765_3130 (T@Field_15747_3130) Bool)
(declare-fun IsPredicateField_5740_42216 (T@Field_14840_14845) Bool)
(declare-fun IsWandField_5740_42232 (T@Field_14840_14845) Bool)
(declare-fun IsPredicateField_5740_8757 (T@Field_14827_8757) Bool)
(declare-fun IsWandField_5740_8757 (T@Field_14827_8757) Bool)
(declare-fun IsPredicateField_5740_53 (T@Field_14827_53) Bool)
(declare-fun IsWandField_5740_53 (T@Field_14827_53) Bool)
(declare-fun IsPredicateField_5740_3130 (T@Field_14827_3130) Bool)
(declare-fun IsWandField_5740_3130 (T@Field_14827_3130) Bool)
(declare-fun IsPredicateField_5737_41385 (T@Field_8743_14845) Bool)
(declare-fun IsWandField_5737_41401 (T@Field_8743_14845) Bool)
(declare-fun IsPredicateField_5737_8757 (T@Field_8756_8757) Bool)
(declare-fun IsWandField_5737_8757 (T@Field_8756_8757) Bool)
(declare-fun IsPredicateField_5737_53 (T@Field_8743_53) Bool)
(declare-fun IsWandField_5737_53 (T@Field_8743_53) Bool)
(declare-fun HasDirectPerm_15747_26733 (T@PolymorphicMapType_8704 T@Ref T@Field_15760_15765) Bool)
(declare-fun HasDirectPerm_15747_3130 (T@PolymorphicMapType_8704 T@Ref T@Field_15747_3130) Bool)
(declare-fun HasDirectPerm_15747_8757 (T@PolymorphicMapType_8704 T@Ref T@Field_15747_8757) Bool)
(declare-fun HasDirectPerm_15747_53 (T@PolymorphicMapType_8704 T@Ref T@Field_15747_53) Bool)
(declare-fun HasDirectPerm_14827_25572 (T@PolymorphicMapType_8704 T@Ref T@Field_14840_14845) Bool)
(declare-fun HasDirectPerm_14827_3130 (T@PolymorphicMapType_8704 T@Ref T@Field_14827_3130) Bool)
(declare-fun HasDirectPerm_14827_8757 (T@PolymorphicMapType_8704 T@Ref T@Field_14827_8757) Bool)
(declare-fun HasDirectPerm_14827_53 (T@PolymorphicMapType_8704 T@Ref T@Field_14827_53) Bool)
(declare-fun HasDirectPerm_8743_24394 (T@PolymorphicMapType_8704 T@Ref T@Field_8743_14845) Bool)
(declare-fun HasDirectPerm_8743_3130 (T@PolymorphicMapType_8704 T@Ref T@Field_14780_3130) Bool)
(declare-fun HasDirectPerm_8743_8757 (T@PolymorphicMapType_8704 T@Ref T@Field_8756_8757) Bool)
(declare-fun HasDirectPerm_8743_53 (T@PolymorphicMapType_8704 T@Ref T@Field_8743_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8704 T@PolymorphicMapType_8704 T@PolymorphicMapType_8704) Bool)
(declare-fun |Seq#Equal_16719| (T@Seq_16719 T@Seq_16719) Bool)
(declare-fun |Seq#Equal_3008| (T@Seq_3008 T@Seq_3008) Bool)
(declare-fun |Seq#ContainsTrigger_5792| (T@Seq_16719 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3008| (T@Seq_3008 Int) Bool)
(declare-fun getPredWandId_5765_5766 (T@Field_15747_15748) Int)
(declare-fun getPredWandId_5740_5741 (T@Field_14827_14828) Int)
(declare-fun |Seq#SkolemDiff_16719| (T@Seq_16719 T@Seq_16719) Int)
(declare-fun |Seq#SkolemDiff_3008| (T@Seq_3008 T@Seq_3008) Int)
(declare-fun InsidePredicate_15747_14827 (T@Field_15747_15748 T@FrameType T@Field_14827_14828 T@FrameType) Bool)
(declare-fun InsidePredicate_15747_8743 (T@Field_15747_15748 T@FrameType T@Field_8743_14828 T@FrameType) Bool)
(declare-fun InsidePredicate_14827_15747 (T@Field_14827_14828 T@FrameType T@Field_15747_15748 T@FrameType) Bool)
(declare-fun InsidePredicate_14827_8743 (T@Field_14827_14828 T@FrameType T@Field_8743_14828 T@FrameType) Bool)
(declare-fun InsidePredicate_8743_15747 (T@Field_8743_14828 T@FrameType T@Field_15747_15748 T@FrameType) Bool)
(declare-fun InsidePredicate_8743_14827 (T@Field_8743_14828 T@FrameType T@Field_14827_14828 T@FrameType) Bool)
(assert (forall ((s T@Seq_16719) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_16719| s)) (= (|Seq#Length_16719| (|Seq#Drop_16719| s n)) (- (|Seq#Length_16719| s) n))) (=> (< (|Seq#Length_16719| s) n) (= (|Seq#Length_16719| (|Seq#Drop_16719| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_16719| (|Seq#Drop_16719| s n)) (|Seq#Length_16719| s))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_16719| (|Seq#Drop_16719| s n)))
 :pattern ( (|Seq#Length_16719| s) (|Seq#Drop_16719| s n))
)))
(assert (forall ((s@@0 T@Seq_3008) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3008| s@@0)) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) (- (|Seq#Length_3008| s@@0) n@@0))) (=> (< (|Seq#Length_3008| s@@0) n@@0) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) (|Seq#Length_3008| s@@0))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3008| s@@0) (|Seq#Drop_3008| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8683) (Heap1 T@PolymorphicMapType_8683) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8683) (Mask T@PolymorphicMapType_8704) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8683) (Heap1@@0 T@PolymorphicMapType_8683) (Heap2 T@PolymorphicMapType_8683) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15760_15765) ) (!  (not (select (|PolymorphicMapType_9232_15747_30926#PolymorphicMapType_9232| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_15747_30926#PolymorphicMapType_9232| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_15747_15748) ) (!  (not (select (|PolymorphicMapType_9232_15747_14828#PolymorphicMapType_9232| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_15747_14828#PolymorphicMapType_9232| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15747_3130) ) (!  (not (select (|PolymorphicMapType_9232_15747_3130#PolymorphicMapType_9232| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_15747_3130#PolymorphicMapType_9232| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_15747_8757) ) (!  (not (select (|PolymorphicMapType_9232_15747_8757#PolymorphicMapType_9232| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_15747_8757#PolymorphicMapType_9232| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_15747_53) ) (!  (not (select (|PolymorphicMapType_9232_15747_53#PolymorphicMapType_9232| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_15747_53#PolymorphicMapType_9232| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_14840_14845) ) (!  (not (select (|PolymorphicMapType_9232_14827_29878#PolymorphicMapType_9232| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_14827_29878#PolymorphicMapType_9232| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_14827_14828) ) (!  (not (select (|PolymorphicMapType_9232_14827_14828#PolymorphicMapType_9232| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_14827_14828#PolymorphicMapType_9232| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_14827_3130) ) (!  (not (select (|PolymorphicMapType_9232_14827_3130#PolymorphicMapType_9232| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_14827_3130#PolymorphicMapType_9232| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_14827_8757) ) (!  (not (select (|PolymorphicMapType_9232_14827_8757#PolymorphicMapType_9232| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_14827_8757#PolymorphicMapType_9232| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_14827_53) ) (!  (not (select (|PolymorphicMapType_9232_14827_53#PolymorphicMapType_9232| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_14827_53#PolymorphicMapType_9232| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8743_14845) ) (!  (not (select (|PolymorphicMapType_9232_8743_28830#PolymorphicMapType_9232| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_8743_28830#PolymorphicMapType_9232| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8743_14828) ) (!  (not (select (|PolymorphicMapType_9232_8743_14828#PolymorphicMapType_9232| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_8743_14828#PolymorphicMapType_9232| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_14780_3130) ) (!  (not (select (|PolymorphicMapType_9232_8743_3130#PolymorphicMapType_9232| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_8743_3130#PolymorphicMapType_9232| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_8756_8757) ) (!  (not (select (|PolymorphicMapType_9232_8743_8757#PolymorphicMapType_9232| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_8743_8757#PolymorphicMapType_9232| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8743_53) ) (!  (not (select (|PolymorphicMapType_9232_8743_53#PolymorphicMapType_9232| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9232_8743_53#PolymorphicMapType_9232| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((a_2 T@Ref) (i Int) ) (! (IsPredicateField_5765_5766 (pred2 a_2 i))
 :qid |stdinbpl.640:15|
 :skolemid |65|
 :pattern ( (pred2 a_2 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8683) (a_2@@0 T@Ref) (i@@0 Int) ) (! (|pred2#everUsed_5765| (pred2 a_2@@0 i@@0))
 :qid |stdinbpl.659:15|
 :skolemid |69|
 :pattern ( (|pred2#trigger_5765| Heap@@0 (pred2 a_2@@0 i@@0)))
)))
(assert (forall ((s@@1 T@Seq_16719) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_16719| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_16719| (|Seq#Drop_16719| s@@1 n@@1) j) (|Seq#Index_16719| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_16719| (|Seq#Drop_16719| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3008) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3008| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@2 n@@2) j@@0) (|Seq#Index_3008| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3008| (|Seq#Drop_3008| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_16719| |Seq#Empty_16719|) 0))
(assert (= (|Seq#Length_3008| |Seq#Empty_3008|) 0))
(assert (forall ((a_2@@1 T@Ref) ) (! (IsPredicateField_5740_5741 (pred1 a_2@@1))
 :qid |stdinbpl.586:15|
 :skolemid |59|
 :pattern ( (pred1 a_2@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8683) (a_2@@2 T@Ref) ) (! (|pred1#everUsed_5740| (pred1 a_2@@2))
 :qid |stdinbpl.605:15|
 :skolemid |63|
 :pattern ( (|pred1#trigger_5740| Heap@@1 (pred1 a_2@@2)))
)))
(assert (forall ((s@@3 T@Seq_16719) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_16719| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_16719| (|Seq#Update_16719| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_16719| (|Seq#Update_16719| s@@3 i@@1 v) n@@3) (|Seq#Index_16719| s@@3 n@@3)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_16719| (|Seq#Update_16719| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_16719| s@@3 n@@3) (|Seq#Update_16719| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3008) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3008| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3008| s@@4 n@@4)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3008| s@@4 n@@4) (|Seq#Update_3008| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_16719) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_16719| s@@5)) (= (|Seq#Length_16719| (|Seq#Take_16719| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_16719| s@@5) n@@5) (= (|Seq#Length_16719| (|Seq#Take_16719| s@@5 n@@5)) (|Seq#Length_16719| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_16719| (|Seq#Take_16719| s@@5 n@@5)) 0)))
 :qid |stdinbpl.287:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_16719| (|Seq#Take_16719| s@@5 n@@5)))
 :pattern ( (|Seq#Take_16719| s@@5 n@@5) (|Seq#Length_16719| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3008) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3008| s@@6)) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3008| s@@6) n@@6) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)) (|Seq#Length_3008| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)) 0)))
 :qid |stdinbpl.287:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3008| s@@6 n@@6) (|Seq#Length_3008| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3008| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.561:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_16719) (x T@Ref) ) (!  (=> (|Seq#Contains_5792| s@@7 x) (and (and (<= 0 (|Seq#Skolem_5792| s@@7 x)) (< (|Seq#Skolem_5792| s@@7 x) (|Seq#Length_16719| s@@7))) (= (|Seq#Index_16719| s@@7 (|Seq#Skolem_5792| s@@7 x)) x)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_5792| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3008) (x@@0 Int) ) (!  (=> (|Seq#Contains_3008| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3008| s@@8 x@@0)) (< (|Seq#Skolem_3008| s@@8 x@@0) (|Seq#Length_3008| s@@8))) (= (|Seq#Index_3008| s@@8 (|Seq#Skolem_3008| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3008| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_16719) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_16719| s@@9 n@@7) s@@9))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_16719| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3008) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3008| s@@10 n@@8) s@@10))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3008| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.256:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.254:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8683) (ExhaleHeap T@PolymorphicMapType_8683) (Mask@@0 T@PolymorphicMapType_8704) (pm_f_9 T@Field_15747_15748) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_15747_14828 Mask@@0 null pm_f_9) (IsPredicateField_5765_5766 pm_f_9)) (= (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@2) null (PredicateMaskField_5765 pm_f_9)) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap) null (PredicateMaskField_5765 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_5765_5766 pm_f_9) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap) null (PredicateMaskField_5765 pm_f_9)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8683) (ExhaleHeap@@0 T@PolymorphicMapType_8683) (Mask@@1 T@PolymorphicMapType_8704) (pm_f_9@@0 T@Field_14827_14828) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_14827_14828 Mask@@1 null pm_f_9@@0) (IsPredicateField_5740_5741 pm_f_9@@0)) (= (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@3) null (PredicateMaskField_5740 pm_f_9@@0)) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@0) null (PredicateMaskField_5740 pm_f_9@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5740_5741 pm_f_9@@0) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@0) null (PredicateMaskField_5740 pm_f_9@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8683) (ExhaleHeap@@1 T@PolymorphicMapType_8683) (Mask@@2 T@PolymorphicMapType_8704) (pm_f_9@@1 T@Field_8743_14828) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8743_14828 Mask@@2 null pm_f_9@@1) (IsPredicateField_8743_27021 pm_f_9@@1)) (= (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@4) null (PredicateMaskField_8743 pm_f_9@@1)) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@1) null (PredicateMaskField_8743 pm_f_9@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_8743_27021 pm_f_9@@1) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@1) null (PredicateMaskField_8743 pm_f_9@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8683) (ExhaleHeap@@2 T@PolymorphicMapType_8683) (Mask@@3 T@PolymorphicMapType_8704) (pm_f_9@@2 T@Field_15747_15748) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_15747_14828 Mask@@3 null pm_f_9@@2) (IsWandField_15747_32729 pm_f_9@@2)) (= (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@5) null (WandMaskField_15747 pm_f_9@@2)) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@2) null (WandMaskField_15747 pm_f_9@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_15747_32729 pm_f_9@@2) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@2) null (WandMaskField_15747 pm_f_9@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8683) (ExhaleHeap@@3 T@PolymorphicMapType_8683) (Mask@@4 T@PolymorphicMapType_8704) (pm_f_9@@3 T@Field_14827_14828) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_14827_14828 Mask@@4 null pm_f_9@@3) (IsWandField_14827_32372 pm_f_9@@3)) (= (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@6) null (WandMaskField_14827 pm_f_9@@3)) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@3) null (WandMaskField_14827 pm_f_9@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_14827_32372 pm_f_9@@3) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@3) null (WandMaskField_14827 pm_f_9@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8683) (ExhaleHeap@@4 T@PolymorphicMapType_8683) (Mask@@5 T@PolymorphicMapType_8704) (pm_f_9@@4 T@Field_8743_14828) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8743_14828 Mask@@5 null pm_f_9@@4) (IsWandField_8743_32015 pm_f_9@@4)) (= (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@7) null (WandMaskField_8743 pm_f_9@@4)) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@4) null (WandMaskField_8743 pm_f_9@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_8743_32015 pm_f_9@@4) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@4) null (WandMaskField_8743 pm_f_9@@4)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_5792| (|Seq#Singleton_16719| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_5792| (|Seq#Singleton_16719| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@2) y@@0))
)))
(assert (forall ((a_2@@3 T@Ref) (i@@5 Int) (a2 T@Ref) (i2_1 Int) ) (!  (=> (= (pred2 a_2@@3 i@@5) (pred2 a2 i2_1)) (and (= a_2@@3 a2) (= i@@5 i2_1)))
 :qid |stdinbpl.650:15|
 :skolemid |67|
 :pattern ( (pred2 a_2@@3 i@@5) (pred2 a2 i2_1))
)))
(assert (forall ((a_2@@4 T@Ref) (i@@6 Int) (a2@@0 T@Ref) (i2_1@@0 Int) ) (!  (=> (= (|pred2#sm| a_2@@4 i@@6) (|pred2#sm| a2@@0 i2_1@@0)) (and (= a_2@@4 a2@@0) (= i@@6 i2_1@@0)))
 :qid |stdinbpl.654:15|
 :skolemid |68|
 :pattern ( (|pred2#sm| a_2@@4 i@@6) (|pred2#sm| a2@@0 i2_1@@0))
)))
(assert (forall ((s@@11 T@Seq_16719) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_16719| s@@11))) (= (|Seq#Index_16719| (|Seq#Take_16719| s@@11 n@@9) j@@3) (|Seq#Index_16719| s@@11 j@@3)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_16719| (|Seq#Take_16719| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_16719| s@@11 j@@3) (|Seq#Take_16719| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3008) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3008| s@@12))) (= (|Seq#Index_3008| (|Seq#Take_3008| s@@12 n@@10) j@@4) (|Seq#Index_3008| s@@12 j@@4)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3008| (|Seq#Take_3008| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3008| s@@12 j@@4) (|Seq#Take_3008| s@@12 n@@10))
)))
(assert (forall ((a_2@@5 T@Ref) (a2@@1 T@Ref) ) (!  (=> (= (pred1 a_2@@5) (pred1 a2@@1)) (= a_2@@5 a2@@1))
 :qid |stdinbpl.596:15|
 :skolemid |61|
 :pattern ( (pred1 a_2@@5) (pred1 a2@@1))
)))
(assert (forall ((a_2@@6 T@Ref) (a2@@2 T@Ref) ) (!  (=> (= (|pred1#sm| a_2@@6) (|pred1#sm| a2@@2)) (= a_2@@6 a2@@2))
 :qid |stdinbpl.600:15|
 :skolemid |62|
 :pattern ( (|pred1#sm| a_2@@6) (|pred1#sm| a2@@2))
)))
(assert (forall ((s@@13 T@Seq_16719) (t T@Seq_16719) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_16719| s@@13))) (< n@@11 (|Seq#Length_16719| (|Seq#Append_16719| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_16719| s@@13)) (|Seq#Length_16719| s@@13)) n@@11) (= (|Seq#Take_16719| (|Seq#Append_16719| s@@13 t) n@@11) (|Seq#Append_16719| s@@13 (|Seq#Take_16719| t (|Seq#Sub| n@@11 (|Seq#Length_16719| s@@13)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_16719| (|Seq#Append_16719| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3008) (t@@0 T@Seq_3008) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3008| s@@14))) (< n@@12 (|Seq#Length_3008| (|Seq#Append_3008| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3008| s@@14)) (|Seq#Length_3008| s@@14)) n@@12) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@14 t@@0) n@@12) (|Seq#Append_3008| s@@14 (|Seq#Take_3008| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3008| s@@14)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8683) (ExhaleHeap@@5 T@PolymorphicMapType_8683) (Mask@@6 T@PolymorphicMapType_8704) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@8) o_27 $allocated) (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@5) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@5) o_27 $allocated))
)))
(assert (forall ((p T@Field_15747_15748) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15747_15747 p v_1 p w))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15747_15747 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14827_14828) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_14827_14827 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14827_14827 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_8743_14828) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_8743_8743 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8743_8743 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_16719) (s1 T@Seq_16719) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_16719|)) (not (= s1 |Seq#Empty_16719|))) (<= (|Seq#Length_16719| s0) n@@13)) (< n@@13 (|Seq#Length_16719| (|Seq#Append_16719| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_16719| s0)) (|Seq#Length_16719| s0)) n@@13) (= (|Seq#Index_16719| (|Seq#Append_16719| s0 s1) n@@13) (|Seq#Index_16719| s1 (|Seq#Sub| n@@13 (|Seq#Length_16719| s0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_16719| (|Seq#Append_16719| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3008) (s1@@0 T@Seq_3008) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3008|)) (not (= s1@@0 |Seq#Empty_3008|))) (<= (|Seq#Length_3008| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3008| (|Seq#Append_3008| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3008| s0@@0)) (|Seq#Length_3008| s0@@0)) n@@14) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@0 s1@@0) n@@14) (|Seq#Index_3008| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3008| s0@@0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_5737_3130 f_7)))
(assert  (not (IsWandField_5737_3130 f_7)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8683) (ExhaleHeap@@6 T@PolymorphicMapType_8683) (Mask@@7 T@PolymorphicMapType_8704) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8704) (o_2@@14 T@Ref) (f_4@@14 T@Field_15760_15765) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5765_43047 f_4@@14))) (not (IsWandField_5765_43063 f_4@@14))) (<= (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8704) (o_2@@15 T@Ref) (f_4@@15 T@Field_15747_8757) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5765_8757 f_4@@15))) (not (IsWandField_5765_8757 f_4@@15))) (<= (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8704) (o_2@@16 T@Ref) (f_4@@16 T@Field_15747_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5765_53 f_4@@16))) (not (IsWandField_5765_53 f_4@@16))) (<= (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8704) (o_2@@17 T@Ref) (f_4@@17 T@Field_15747_15748) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5765_5766 f_4@@17))) (not (IsWandField_15747_32729 f_4@@17))) (<= (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8704) (o_2@@18 T@Ref) (f_4@@18 T@Field_15747_3130) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5765_3130 f_4@@18))) (not (IsWandField_5765_3130 f_4@@18))) (<= (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8704) (o_2@@19 T@Ref) (f_4@@19 T@Field_14840_14845) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5740_42216 f_4@@19))) (not (IsWandField_5740_42232 f_4@@19))) (<= (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8704) (o_2@@20 T@Ref) (f_4@@20 T@Field_14827_8757) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5740_8757 f_4@@20))) (not (IsWandField_5740_8757 f_4@@20))) (<= (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8704) (o_2@@21 T@Ref) (f_4@@21 T@Field_14827_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5740_53 f_4@@21))) (not (IsWandField_5740_53 f_4@@21))) (<= (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8704) (o_2@@22 T@Ref) (f_4@@22 T@Field_14827_14828) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5740_5741 f_4@@22))) (not (IsWandField_14827_32372 f_4@@22))) (<= (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8704) (o_2@@23 T@Ref) (f_4@@23 T@Field_14827_3130) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5740_3130 f_4@@23))) (not (IsWandField_5740_3130 f_4@@23))) (<= (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8704) (o_2@@24 T@Ref) (f_4@@24 T@Field_8743_14845) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5737_41385 f_4@@24))) (not (IsWandField_5737_41401 f_4@@24))) (<= (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8704) (o_2@@25 T@Ref) (f_4@@25 T@Field_8756_8757) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5737_8757 f_4@@25))) (not (IsWandField_5737_8757 f_4@@25))) (<= (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8704) (o_2@@26 T@Ref) (f_4@@26 T@Field_8743_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5737_53 f_4@@26))) (not (IsWandField_5737_53 f_4@@26))) (<= (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8704) (o_2@@27 T@Ref) (f_4@@27 T@Field_8743_14828) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8743_27021 f_4@@27))) (not (IsWandField_8743_32015 f_4@@27))) (<= (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8704) (o_2@@28 T@Ref) (f_4@@28 T@Field_14780_3130) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5737_3130 f_4@@28))) (not (IsWandField_5737_3130 f_4@@28))) (<= (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8704) (o_2@@29 T@Ref) (f_4@@29 T@Field_15760_15765) ) (! (= (HasDirectPerm_15747_26733 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15747_26733 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8704) (o_2@@30 T@Ref) (f_4@@30 T@Field_15747_15748) ) (! (= (HasDirectPerm_15747_14828 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15747_14828 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8704) (o_2@@31 T@Ref) (f_4@@31 T@Field_15747_3130) ) (! (= (HasDirectPerm_15747_3130 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15747_3130 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8704) (o_2@@32 T@Ref) (f_4@@32 T@Field_15747_8757) ) (! (= (HasDirectPerm_15747_8757 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15747_8757 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8704) (o_2@@33 T@Ref) (f_4@@33 T@Field_15747_53) ) (! (= (HasDirectPerm_15747_53 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15747_53 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8704) (o_2@@34 T@Ref) (f_4@@34 T@Field_14840_14845) ) (! (= (HasDirectPerm_14827_25572 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14827_25572 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8704) (o_2@@35 T@Ref) (f_4@@35 T@Field_14827_14828) ) (! (= (HasDirectPerm_14827_14828 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14827_14828 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8704) (o_2@@36 T@Ref) (f_4@@36 T@Field_14827_3130) ) (! (= (HasDirectPerm_14827_3130 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14827_3130 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_8704) (o_2@@37 T@Ref) (f_4@@37 T@Field_14827_8757) ) (! (= (HasDirectPerm_14827_8757 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14827_8757 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_8704) (o_2@@38 T@Ref) (f_4@@38 T@Field_14827_53) ) (! (= (HasDirectPerm_14827_53 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14827_53 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_8704) (o_2@@39 T@Ref) (f_4@@39 T@Field_8743_14845) ) (! (= (HasDirectPerm_8743_24394 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8743_24394 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_8704) (o_2@@40 T@Ref) (f_4@@40 T@Field_8743_14828) ) (! (= (HasDirectPerm_8743_14828 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8743_14828 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_8704) (o_2@@41 T@Ref) (f_4@@41 T@Field_14780_3130) ) (! (= (HasDirectPerm_8743_3130 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8743_3130 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_8704) (o_2@@42 T@Ref) (f_4@@42 T@Field_8756_8757) ) (! (= (HasDirectPerm_8743_8757 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8743_8757 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_8704) (o_2@@43 T@Ref) (f_4@@43 T@Field_8743_53) ) (! (= (HasDirectPerm_8743_53 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8743_53 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.186:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3008| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.559:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3008| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8683) (ExhaleHeap@@7 T@PolymorphicMapType_8683) (Mask@@38 T@PolymorphicMapType_8704) (o_27@@0 T@Ref) (f_24 T@Field_15760_15765) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_15747_26733 Mask@@38 o_27@@0 f_24) (= (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@10) o_27@@0 f_24) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@7) o_27@@0 f_24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@7) o_27@@0 f_24))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8683) (ExhaleHeap@@8 T@PolymorphicMapType_8683) (Mask@@39 T@PolymorphicMapType_8704) (o_27@@1 T@Ref) (f_24@@0 T@Field_15747_15748) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_15747_14828 Mask@@39 o_27@@1 f_24@@0) (= (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@11) o_27@@1 f_24@@0) (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@8) o_27@@1 f_24@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@8) o_27@@1 f_24@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8683) (ExhaleHeap@@9 T@PolymorphicMapType_8683) (Mask@@40 T@PolymorphicMapType_8704) (o_27@@2 T@Ref) (f_24@@1 T@Field_15747_3130) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_15747_3130 Mask@@40 o_27@@2 f_24@@1) (= (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@12) o_27@@2 f_24@@1) (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@9) o_27@@2 f_24@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@9) o_27@@2 f_24@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8683) (ExhaleHeap@@10 T@PolymorphicMapType_8683) (Mask@@41 T@PolymorphicMapType_8704) (o_27@@3 T@Ref) (f_24@@2 T@Field_15747_8757) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_15747_8757 Mask@@41 o_27@@3 f_24@@2) (= (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@13) o_27@@3 f_24@@2) (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@10) o_27@@3 f_24@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@10) o_27@@3 f_24@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8683) (ExhaleHeap@@11 T@PolymorphicMapType_8683) (Mask@@42 T@PolymorphicMapType_8704) (o_27@@4 T@Ref) (f_24@@3 T@Field_15747_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_15747_53 Mask@@42 o_27@@4 f_24@@3) (= (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@14) o_27@@4 f_24@@3) (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@11) o_27@@4 f_24@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@11) o_27@@4 f_24@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8683) (ExhaleHeap@@12 T@PolymorphicMapType_8683) (Mask@@43 T@PolymorphicMapType_8704) (o_27@@5 T@Ref) (f_24@@4 T@Field_14840_14845) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_14827_25572 Mask@@43 o_27@@5 f_24@@4) (= (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@15) o_27@@5 f_24@@4) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@12) o_27@@5 f_24@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@12) o_27@@5 f_24@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8683) (ExhaleHeap@@13 T@PolymorphicMapType_8683) (Mask@@44 T@PolymorphicMapType_8704) (o_27@@6 T@Ref) (f_24@@5 T@Field_14827_14828) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_14827_14828 Mask@@44 o_27@@6 f_24@@5) (= (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@16) o_27@@6 f_24@@5) (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@13) o_27@@6 f_24@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@13) o_27@@6 f_24@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8683) (ExhaleHeap@@14 T@PolymorphicMapType_8683) (Mask@@45 T@PolymorphicMapType_8704) (o_27@@7 T@Ref) (f_24@@6 T@Field_14827_3130) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_14827_3130 Mask@@45 o_27@@7 f_24@@6) (= (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@17) o_27@@7 f_24@@6) (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@14) o_27@@7 f_24@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@14) o_27@@7 f_24@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8683) (ExhaleHeap@@15 T@PolymorphicMapType_8683) (Mask@@46 T@PolymorphicMapType_8704) (o_27@@8 T@Ref) (f_24@@7 T@Field_14827_8757) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_14827_8757 Mask@@46 o_27@@8 f_24@@7) (= (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@18) o_27@@8 f_24@@7) (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@15) o_27@@8 f_24@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@15) o_27@@8 f_24@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8683) (ExhaleHeap@@16 T@PolymorphicMapType_8683) (Mask@@47 T@PolymorphicMapType_8704) (o_27@@9 T@Ref) (f_24@@8 T@Field_14827_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_14827_53 Mask@@47 o_27@@9 f_24@@8) (= (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@19) o_27@@9 f_24@@8) (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@16) o_27@@9 f_24@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@16) o_27@@9 f_24@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8683) (ExhaleHeap@@17 T@PolymorphicMapType_8683) (Mask@@48 T@PolymorphicMapType_8704) (o_27@@10 T@Ref) (f_24@@9 T@Field_8743_14845) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_8743_24394 Mask@@48 o_27@@10 f_24@@9) (= (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@20) o_27@@10 f_24@@9) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@17) o_27@@10 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@17) o_27@@10 f_24@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8683) (ExhaleHeap@@18 T@PolymorphicMapType_8683) (Mask@@49 T@PolymorphicMapType_8704) (o_27@@11 T@Ref) (f_24@@10 T@Field_8743_14828) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_8743_14828 Mask@@49 o_27@@11 f_24@@10) (= (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@21) o_27@@11 f_24@@10) (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@18) o_27@@11 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@18) o_27@@11 f_24@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8683) (ExhaleHeap@@19 T@PolymorphicMapType_8683) (Mask@@50 T@PolymorphicMapType_8704) (o_27@@12 T@Ref) (f_24@@11 T@Field_14780_3130) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_8743_3130 Mask@@50 o_27@@12 f_24@@11) (= (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@22) o_27@@12 f_24@@11) (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@19) o_27@@12 f_24@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@19) o_27@@12 f_24@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8683) (ExhaleHeap@@20 T@PolymorphicMapType_8683) (Mask@@51 T@PolymorphicMapType_8704) (o_27@@13 T@Ref) (f_24@@12 T@Field_8756_8757) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_8743_8757 Mask@@51 o_27@@13 f_24@@12) (= (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@23) o_27@@13 f_24@@12) (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@20) o_27@@13 f_24@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@20) o_27@@13 f_24@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8683) (ExhaleHeap@@21 T@PolymorphicMapType_8683) (Mask@@52 T@PolymorphicMapType_8704) (o_27@@14 T@Ref) (f_24@@13 T@Field_8743_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_8743_53 Mask@@52 o_27@@14 f_24@@13) (= (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@24) o_27@@14 f_24@@13) (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@21) o_27@@14 f_24@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@21) o_27@@14 f_24@@13))
)))
(assert (forall ((s0@@1 T@Seq_16719) (s1@@1 T@Seq_16719) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_16719|)) (not (= s1@@1 |Seq#Empty_16719|))) (= (|Seq#Length_16719| (|Seq#Append_16719| s0@@1 s1@@1)) (+ (|Seq#Length_16719| s0@@1) (|Seq#Length_16719| s1@@1))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_16719| (|Seq#Append_16719| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3008) (s1@@2 T@Seq_3008) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3008|)) (not (= s1@@2 |Seq#Empty_3008|))) (= (|Seq#Length_3008| (|Seq#Append_3008| s0@@2 s1@@2)) (+ (|Seq#Length_3008| s0@@2) (|Seq#Length_3008| s1@@2))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3008| (|Seq#Append_3008| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_15760_15765) ) (! (= (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_15747_8757) ) (! (= (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_15747_53) ) (! (= (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_15747_15748) ) (! (= (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_15747_3130) ) (! (= (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_14840_14845) ) (! (= (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_14827_8757) ) (! (= (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_14827_53) ) (! (= (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_14827_14828) ) (! (= (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_14827_3130) ) (! (= (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_8743_14845) ) (! (= (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_8756_8757) ) (! (= (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_8743_53) ) (! (= (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_8743_14828) ) (! (= (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_14780_3130) ) (! (= (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@15 T@Seq_16719) (t@@1 T@Seq_16719) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_16719| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_16719| s@@15)) (|Seq#Length_16719| s@@15)) n@@15) (= (|Seq#Drop_16719| (|Seq#Append_16719| s@@15 t@@1) n@@15) (|Seq#Drop_16719| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_16719| s@@15))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_16719| (|Seq#Append_16719| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3008) (t@@2 T@Seq_3008) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3008| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3008| s@@16)) (|Seq#Length_3008| s@@16)) n@@16) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@16 t@@2) n@@16) (|Seq#Drop_3008| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3008| s@@16))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8704) (SummandMask1 T@PolymorphicMapType_8704) (SummandMask2 T@PolymorphicMapType_8704) (o_2@@59 T@Ref) (f_4@@59 T@Field_15760_15765) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8704) (SummandMask1@@0 T@PolymorphicMapType_8704) (SummandMask2@@0 T@PolymorphicMapType_8704) (o_2@@60 T@Ref) (f_4@@60 T@Field_15747_8757) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8704) (SummandMask1@@1 T@PolymorphicMapType_8704) (SummandMask2@@1 T@PolymorphicMapType_8704) (o_2@@61 T@Ref) (f_4@@61 T@Field_15747_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8704) (SummandMask1@@2 T@PolymorphicMapType_8704) (SummandMask2@@2 T@PolymorphicMapType_8704) (o_2@@62 T@Ref) (f_4@@62 T@Field_15747_15748) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8704) (SummandMask1@@3 T@PolymorphicMapType_8704) (SummandMask2@@3 T@PolymorphicMapType_8704) (o_2@@63 T@Ref) (f_4@@63 T@Field_15747_3130) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8704) (SummandMask1@@4 T@PolymorphicMapType_8704) (SummandMask2@@4 T@PolymorphicMapType_8704) (o_2@@64 T@Ref) (f_4@@64 T@Field_14840_14845) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8704) (SummandMask1@@5 T@PolymorphicMapType_8704) (SummandMask2@@5 T@PolymorphicMapType_8704) (o_2@@65 T@Ref) (f_4@@65 T@Field_14827_8757) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8704) (SummandMask1@@6 T@PolymorphicMapType_8704) (SummandMask2@@6 T@PolymorphicMapType_8704) (o_2@@66 T@Ref) (f_4@@66 T@Field_14827_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8704) (SummandMask1@@7 T@PolymorphicMapType_8704) (SummandMask2@@7 T@PolymorphicMapType_8704) (o_2@@67 T@Ref) (f_4@@67 T@Field_14827_14828) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8704) (SummandMask1@@8 T@PolymorphicMapType_8704) (SummandMask2@@8 T@PolymorphicMapType_8704) (o_2@@68 T@Ref) (f_4@@68 T@Field_14827_3130) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_8704) (SummandMask1@@9 T@PolymorphicMapType_8704) (SummandMask2@@9 T@PolymorphicMapType_8704) (o_2@@69 T@Ref) (f_4@@69 T@Field_8743_14845) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_8704) (SummandMask1@@10 T@PolymorphicMapType_8704) (SummandMask2@@10 T@PolymorphicMapType_8704) (o_2@@70 T@Ref) (f_4@@70 T@Field_8756_8757) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_8704) (SummandMask1@@11 T@PolymorphicMapType_8704) (SummandMask2@@11 T@PolymorphicMapType_8704) (o_2@@71 T@Ref) (f_4@@71 T@Field_8743_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_8704) (SummandMask1@@12 T@PolymorphicMapType_8704) (SummandMask2@@12 T@PolymorphicMapType_8704) (o_2@@72 T@Ref) (f_4@@72 T@Field_8743_14828) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_8704) (SummandMask1@@13 T@PolymorphicMapType_8704) (SummandMask2@@13 T@PolymorphicMapType_8704) (o_2@@73 T@Ref) (f_4@@73 T@Field_14780_3130) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8683) (ExhaleHeap@@22 T@PolymorphicMapType_8683) (Mask@@53 T@PolymorphicMapType_8704) (pm_f_9@@5 T@Field_15747_15748) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_15747_14828 Mask@@53 null pm_f_9@@5) (IsPredicateField_5765_5766 pm_f_9@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24@@14 T@Field_8743_53) ) (!  (=> (select (|PolymorphicMapType_9232_8743_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9 f_24@@14) (= (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@25) o2_9 f_24@@14) (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9 f_24@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9 f_24@@14))
)) (forall ((o2_9@@0 T@Ref) (f_24@@15 T@Field_8756_8757) ) (!  (=> (select (|PolymorphicMapType_9232_8743_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@0 f_24@@15) (= (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@25) o2_9@@0 f_24@@15) (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@0 f_24@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@0 f_24@@15))
))) (forall ((o2_9@@1 T@Ref) (f_24@@16 T@Field_14780_3130) ) (!  (=> (select (|PolymorphicMapType_9232_8743_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@1 f_24@@16) (= (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@25) o2_9@@1 f_24@@16) (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@1 f_24@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@1 f_24@@16))
))) (forall ((o2_9@@2 T@Ref) (f_24@@17 T@Field_8743_14828) ) (!  (=> (select (|PolymorphicMapType_9232_8743_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@2 f_24@@17) (= (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@25) o2_9@@2 f_24@@17) (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@2 f_24@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@2 f_24@@17))
))) (forall ((o2_9@@3 T@Ref) (f_24@@18 T@Field_8743_14845) ) (!  (=> (select (|PolymorphicMapType_9232_8743_28830#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@3 f_24@@18) (= (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@25) o2_9@@3 f_24@@18) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@3 f_24@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@3 f_24@@18))
))) (forall ((o2_9@@4 T@Ref) (f_24@@19 T@Field_14827_53) ) (!  (=> (select (|PolymorphicMapType_9232_14827_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@4 f_24@@19) (= (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@25) o2_9@@4 f_24@@19) (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@4 f_24@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@4 f_24@@19))
))) (forall ((o2_9@@5 T@Ref) (f_24@@20 T@Field_14827_8757) ) (!  (=> (select (|PolymorphicMapType_9232_14827_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@5 f_24@@20) (= (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@25) o2_9@@5 f_24@@20) (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@5 f_24@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@5 f_24@@20))
))) (forall ((o2_9@@6 T@Ref) (f_24@@21 T@Field_14827_3130) ) (!  (=> (select (|PolymorphicMapType_9232_14827_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@6 f_24@@21) (= (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@25) o2_9@@6 f_24@@21) (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@6 f_24@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@6 f_24@@21))
))) (forall ((o2_9@@7 T@Ref) (f_24@@22 T@Field_14827_14828) ) (!  (=> (select (|PolymorphicMapType_9232_14827_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@7 f_24@@22) (= (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@25) o2_9@@7 f_24@@22) (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@7 f_24@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@7 f_24@@22))
))) (forall ((o2_9@@8 T@Ref) (f_24@@23 T@Field_14840_14845) ) (!  (=> (select (|PolymorphicMapType_9232_14827_29878#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@8 f_24@@23) (= (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@25) o2_9@@8 f_24@@23) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@8 f_24@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@8 f_24@@23))
))) (forall ((o2_9@@9 T@Ref) (f_24@@24 T@Field_15747_53) ) (!  (=> (select (|PolymorphicMapType_9232_15747_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@9 f_24@@24) (= (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@25) o2_9@@9 f_24@@24) (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@9 f_24@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@9 f_24@@24))
))) (forall ((o2_9@@10 T@Ref) (f_24@@25 T@Field_15747_8757) ) (!  (=> (select (|PolymorphicMapType_9232_15747_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@10 f_24@@25) (= (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@25) o2_9@@10 f_24@@25) (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@10 f_24@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@10 f_24@@25))
))) (forall ((o2_9@@11 T@Ref) (f_24@@26 T@Field_15747_3130) ) (!  (=> (select (|PolymorphicMapType_9232_15747_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@11 f_24@@26) (= (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@25) o2_9@@11 f_24@@26) (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@11 f_24@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@11 f_24@@26))
))) (forall ((o2_9@@12 T@Ref) (f_24@@27 T@Field_15747_15748) ) (!  (=> (select (|PolymorphicMapType_9232_15747_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@12 f_24@@27) (= (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@25) o2_9@@12 f_24@@27) (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@12 f_24@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@12 f_24@@27))
))) (forall ((o2_9@@13 T@Ref) (f_24@@28 T@Field_15760_15765) ) (!  (=> (select (|PolymorphicMapType_9232_15747_30926#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) null (PredicateMaskField_5765 pm_f_9@@5))) o2_9@@13 f_24@@28) (= (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@25) o2_9@@13 f_24@@28) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@13 f_24@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@22) o2_9@@13 f_24@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (IsPredicateField_5765_5766 pm_f_9@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8683) (ExhaleHeap@@23 T@PolymorphicMapType_8683) (Mask@@54 T@PolymorphicMapType_8704) (pm_f_9@@6 T@Field_14827_14828) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_14827_14828 Mask@@54 null pm_f_9@@6) (IsPredicateField_5740_5741 pm_f_9@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@14 T@Ref) (f_24@@29 T@Field_8743_53) ) (!  (=> (select (|PolymorphicMapType_9232_8743_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@14 f_24@@29) (= (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@26) o2_9@@14 f_24@@29) (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@14 f_24@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@14 f_24@@29))
)) (forall ((o2_9@@15 T@Ref) (f_24@@30 T@Field_8756_8757) ) (!  (=> (select (|PolymorphicMapType_9232_8743_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@15 f_24@@30) (= (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@26) o2_9@@15 f_24@@30) (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@15 f_24@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@15 f_24@@30))
))) (forall ((o2_9@@16 T@Ref) (f_24@@31 T@Field_14780_3130) ) (!  (=> (select (|PolymorphicMapType_9232_8743_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@16 f_24@@31) (= (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@26) o2_9@@16 f_24@@31) (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@16 f_24@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@16 f_24@@31))
))) (forall ((o2_9@@17 T@Ref) (f_24@@32 T@Field_8743_14828) ) (!  (=> (select (|PolymorphicMapType_9232_8743_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@17 f_24@@32) (= (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@26) o2_9@@17 f_24@@32) (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@17 f_24@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@17 f_24@@32))
))) (forall ((o2_9@@18 T@Ref) (f_24@@33 T@Field_8743_14845) ) (!  (=> (select (|PolymorphicMapType_9232_8743_28830#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@18 f_24@@33) (= (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@26) o2_9@@18 f_24@@33) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@18 f_24@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@18 f_24@@33))
))) (forall ((o2_9@@19 T@Ref) (f_24@@34 T@Field_14827_53) ) (!  (=> (select (|PolymorphicMapType_9232_14827_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@19 f_24@@34) (= (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@26) o2_9@@19 f_24@@34) (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@19 f_24@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@19 f_24@@34))
))) (forall ((o2_9@@20 T@Ref) (f_24@@35 T@Field_14827_8757) ) (!  (=> (select (|PolymorphicMapType_9232_14827_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@20 f_24@@35) (= (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@26) o2_9@@20 f_24@@35) (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@20 f_24@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@20 f_24@@35))
))) (forall ((o2_9@@21 T@Ref) (f_24@@36 T@Field_14827_3130) ) (!  (=> (select (|PolymorphicMapType_9232_14827_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@21 f_24@@36) (= (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@26) o2_9@@21 f_24@@36) (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@21 f_24@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@21 f_24@@36))
))) (forall ((o2_9@@22 T@Ref) (f_24@@37 T@Field_14827_14828) ) (!  (=> (select (|PolymorphicMapType_9232_14827_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@22 f_24@@37) (= (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@26) o2_9@@22 f_24@@37) (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@22 f_24@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@22 f_24@@37))
))) (forall ((o2_9@@23 T@Ref) (f_24@@38 T@Field_14840_14845) ) (!  (=> (select (|PolymorphicMapType_9232_14827_29878#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@23 f_24@@38) (= (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) o2_9@@23 f_24@@38) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@23 f_24@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@23 f_24@@38))
))) (forall ((o2_9@@24 T@Ref) (f_24@@39 T@Field_15747_53) ) (!  (=> (select (|PolymorphicMapType_9232_15747_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@24 f_24@@39) (= (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@26) o2_9@@24 f_24@@39) (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@24 f_24@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@24 f_24@@39))
))) (forall ((o2_9@@25 T@Ref) (f_24@@40 T@Field_15747_8757) ) (!  (=> (select (|PolymorphicMapType_9232_15747_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@25 f_24@@40) (= (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@26) o2_9@@25 f_24@@40) (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@25 f_24@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@25 f_24@@40))
))) (forall ((o2_9@@26 T@Ref) (f_24@@41 T@Field_15747_3130) ) (!  (=> (select (|PolymorphicMapType_9232_15747_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@26 f_24@@41) (= (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@26) o2_9@@26 f_24@@41) (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@26 f_24@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@26 f_24@@41))
))) (forall ((o2_9@@27 T@Ref) (f_24@@42 T@Field_15747_15748) ) (!  (=> (select (|PolymorphicMapType_9232_15747_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@27 f_24@@42) (= (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@26) o2_9@@27 f_24@@42) (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@27 f_24@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@27 f_24@@42))
))) (forall ((o2_9@@28 T@Ref) (f_24@@43 T@Field_15760_15765) ) (!  (=> (select (|PolymorphicMapType_9232_15747_30926#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@26) null (PredicateMaskField_5740 pm_f_9@@6))) o2_9@@28 f_24@@43) (= (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@26) o2_9@@28 f_24@@43) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@28 f_24@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@23) o2_9@@28 f_24@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (IsPredicateField_5740_5741 pm_f_9@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8683) (ExhaleHeap@@24 T@PolymorphicMapType_8683) (Mask@@55 T@PolymorphicMapType_8704) (pm_f_9@@7 T@Field_8743_14828) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_8743_14828 Mask@@55 null pm_f_9@@7) (IsPredicateField_8743_27021 pm_f_9@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@29 T@Ref) (f_24@@44 T@Field_8743_53) ) (!  (=> (select (|PolymorphicMapType_9232_8743_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@29 f_24@@44) (= (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@27) o2_9@@29 f_24@@44) (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@29 f_24@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@29 f_24@@44))
)) (forall ((o2_9@@30 T@Ref) (f_24@@45 T@Field_8756_8757) ) (!  (=> (select (|PolymorphicMapType_9232_8743_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@30 f_24@@45) (= (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@27) o2_9@@30 f_24@@45) (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@30 f_24@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@30 f_24@@45))
))) (forall ((o2_9@@31 T@Ref) (f_24@@46 T@Field_14780_3130) ) (!  (=> (select (|PolymorphicMapType_9232_8743_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@31 f_24@@46) (= (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@27) o2_9@@31 f_24@@46) (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@31 f_24@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@31 f_24@@46))
))) (forall ((o2_9@@32 T@Ref) (f_24@@47 T@Field_8743_14828) ) (!  (=> (select (|PolymorphicMapType_9232_8743_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@32 f_24@@47) (= (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@27) o2_9@@32 f_24@@47) (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@32 f_24@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@32 f_24@@47))
))) (forall ((o2_9@@33 T@Ref) (f_24@@48 T@Field_8743_14845) ) (!  (=> (select (|PolymorphicMapType_9232_8743_28830#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@33 f_24@@48) (= (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) o2_9@@33 f_24@@48) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@33 f_24@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@33 f_24@@48))
))) (forall ((o2_9@@34 T@Ref) (f_24@@49 T@Field_14827_53) ) (!  (=> (select (|PolymorphicMapType_9232_14827_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@34 f_24@@49) (= (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@27) o2_9@@34 f_24@@49) (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@34 f_24@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@34 f_24@@49))
))) (forall ((o2_9@@35 T@Ref) (f_24@@50 T@Field_14827_8757) ) (!  (=> (select (|PolymorphicMapType_9232_14827_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@35 f_24@@50) (= (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@27) o2_9@@35 f_24@@50) (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@35 f_24@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@35 f_24@@50))
))) (forall ((o2_9@@36 T@Ref) (f_24@@51 T@Field_14827_3130) ) (!  (=> (select (|PolymorphicMapType_9232_14827_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@36 f_24@@51) (= (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@27) o2_9@@36 f_24@@51) (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@36 f_24@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@36 f_24@@51))
))) (forall ((o2_9@@37 T@Ref) (f_24@@52 T@Field_14827_14828) ) (!  (=> (select (|PolymorphicMapType_9232_14827_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@37 f_24@@52) (= (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@27) o2_9@@37 f_24@@52) (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@37 f_24@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@37 f_24@@52))
))) (forall ((o2_9@@38 T@Ref) (f_24@@53 T@Field_14840_14845) ) (!  (=> (select (|PolymorphicMapType_9232_14827_29878#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@38 f_24@@53) (= (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@27) o2_9@@38 f_24@@53) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@38 f_24@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@38 f_24@@53))
))) (forall ((o2_9@@39 T@Ref) (f_24@@54 T@Field_15747_53) ) (!  (=> (select (|PolymorphicMapType_9232_15747_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@39 f_24@@54) (= (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@27) o2_9@@39 f_24@@54) (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@39 f_24@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@39 f_24@@54))
))) (forall ((o2_9@@40 T@Ref) (f_24@@55 T@Field_15747_8757) ) (!  (=> (select (|PolymorphicMapType_9232_15747_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@40 f_24@@55) (= (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@27) o2_9@@40 f_24@@55) (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@40 f_24@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@40 f_24@@55))
))) (forall ((o2_9@@41 T@Ref) (f_24@@56 T@Field_15747_3130) ) (!  (=> (select (|PolymorphicMapType_9232_15747_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@41 f_24@@56) (= (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@27) o2_9@@41 f_24@@56) (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@41 f_24@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@41 f_24@@56))
))) (forall ((o2_9@@42 T@Ref) (f_24@@57 T@Field_15747_15748) ) (!  (=> (select (|PolymorphicMapType_9232_15747_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@42 f_24@@57) (= (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@27) o2_9@@42 f_24@@57) (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@42 f_24@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@42 f_24@@57))
))) (forall ((o2_9@@43 T@Ref) (f_24@@58 T@Field_15760_15765) ) (!  (=> (select (|PolymorphicMapType_9232_15747_30926#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@27) null (PredicateMaskField_8743 pm_f_9@@7))) o2_9@@43 f_24@@58) (= (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@27) o2_9@@43 f_24@@58) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@43 f_24@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@24) o2_9@@43 f_24@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (IsPredicateField_8743_27021 pm_f_9@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8683) (ExhaleHeap@@25 T@PolymorphicMapType_8683) (Mask@@56 T@PolymorphicMapType_8704) (pm_f_9@@8 T@Field_15747_15748) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_15747_14828 Mask@@56 null pm_f_9@@8) (IsWandField_15747_32729 pm_f_9@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@44 T@Ref) (f_24@@59 T@Field_8743_53) ) (!  (=> (select (|PolymorphicMapType_9232_8743_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@44 f_24@@59) (= (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@28) o2_9@@44 f_24@@59) (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@44 f_24@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@44 f_24@@59))
)) (forall ((o2_9@@45 T@Ref) (f_24@@60 T@Field_8756_8757) ) (!  (=> (select (|PolymorphicMapType_9232_8743_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@45 f_24@@60) (= (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@28) o2_9@@45 f_24@@60) (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@45 f_24@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@45 f_24@@60))
))) (forall ((o2_9@@46 T@Ref) (f_24@@61 T@Field_14780_3130) ) (!  (=> (select (|PolymorphicMapType_9232_8743_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@46 f_24@@61) (= (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@28) o2_9@@46 f_24@@61) (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@46 f_24@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@46 f_24@@61))
))) (forall ((o2_9@@47 T@Ref) (f_24@@62 T@Field_8743_14828) ) (!  (=> (select (|PolymorphicMapType_9232_8743_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@47 f_24@@62) (= (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@28) o2_9@@47 f_24@@62) (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@47 f_24@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@47 f_24@@62))
))) (forall ((o2_9@@48 T@Ref) (f_24@@63 T@Field_8743_14845) ) (!  (=> (select (|PolymorphicMapType_9232_8743_28830#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@48 f_24@@63) (= (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@28) o2_9@@48 f_24@@63) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@48 f_24@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@48 f_24@@63))
))) (forall ((o2_9@@49 T@Ref) (f_24@@64 T@Field_14827_53) ) (!  (=> (select (|PolymorphicMapType_9232_14827_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@49 f_24@@64) (= (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@28) o2_9@@49 f_24@@64) (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@49 f_24@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@49 f_24@@64))
))) (forall ((o2_9@@50 T@Ref) (f_24@@65 T@Field_14827_8757) ) (!  (=> (select (|PolymorphicMapType_9232_14827_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@50 f_24@@65) (= (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@28) o2_9@@50 f_24@@65) (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@50 f_24@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@50 f_24@@65))
))) (forall ((o2_9@@51 T@Ref) (f_24@@66 T@Field_14827_3130) ) (!  (=> (select (|PolymorphicMapType_9232_14827_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@51 f_24@@66) (= (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@28) o2_9@@51 f_24@@66) (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@51 f_24@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@51 f_24@@66))
))) (forall ((o2_9@@52 T@Ref) (f_24@@67 T@Field_14827_14828) ) (!  (=> (select (|PolymorphicMapType_9232_14827_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@52 f_24@@67) (= (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@28) o2_9@@52 f_24@@67) (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@52 f_24@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@52 f_24@@67))
))) (forall ((o2_9@@53 T@Ref) (f_24@@68 T@Field_14840_14845) ) (!  (=> (select (|PolymorphicMapType_9232_14827_29878#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@53 f_24@@68) (= (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@28) o2_9@@53 f_24@@68) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@53 f_24@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@53 f_24@@68))
))) (forall ((o2_9@@54 T@Ref) (f_24@@69 T@Field_15747_53) ) (!  (=> (select (|PolymorphicMapType_9232_15747_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@54 f_24@@69) (= (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@28) o2_9@@54 f_24@@69) (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@54 f_24@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@54 f_24@@69))
))) (forall ((o2_9@@55 T@Ref) (f_24@@70 T@Field_15747_8757) ) (!  (=> (select (|PolymorphicMapType_9232_15747_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@55 f_24@@70) (= (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@28) o2_9@@55 f_24@@70) (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@55 f_24@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@55 f_24@@70))
))) (forall ((o2_9@@56 T@Ref) (f_24@@71 T@Field_15747_3130) ) (!  (=> (select (|PolymorphicMapType_9232_15747_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@56 f_24@@71) (= (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@28) o2_9@@56 f_24@@71) (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@56 f_24@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@56 f_24@@71))
))) (forall ((o2_9@@57 T@Ref) (f_24@@72 T@Field_15747_15748) ) (!  (=> (select (|PolymorphicMapType_9232_15747_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@57 f_24@@72) (= (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@28) o2_9@@57 f_24@@72) (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@57 f_24@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@57 f_24@@72))
))) (forall ((o2_9@@58 T@Ref) (f_24@@73 T@Field_15760_15765) ) (!  (=> (select (|PolymorphicMapType_9232_15747_30926#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) null (WandMaskField_15747 pm_f_9@@8))) o2_9@@58 f_24@@73) (= (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@28) o2_9@@58 f_24@@73) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@58 f_24@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@25) o2_9@@58 f_24@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (IsWandField_15747_32729 pm_f_9@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8683) (ExhaleHeap@@26 T@PolymorphicMapType_8683) (Mask@@57 T@PolymorphicMapType_8704) (pm_f_9@@9 T@Field_14827_14828) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_14827_14828 Mask@@57 null pm_f_9@@9) (IsWandField_14827_32372 pm_f_9@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@59 T@Ref) (f_24@@74 T@Field_8743_53) ) (!  (=> (select (|PolymorphicMapType_9232_8743_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@59 f_24@@74) (= (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@29) o2_9@@59 f_24@@74) (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@59 f_24@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@59 f_24@@74))
)) (forall ((o2_9@@60 T@Ref) (f_24@@75 T@Field_8756_8757) ) (!  (=> (select (|PolymorphicMapType_9232_8743_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@60 f_24@@75) (= (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@29) o2_9@@60 f_24@@75) (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@60 f_24@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@60 f_24@@75))
))) (forall ((o2_9@@61 T@Ref) (f_24@@76 T@Field_14780_3130) ) (!  (=> (select (|PolymorphicMapType_9232_8743_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@61 f_24@@76) (= (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@29) o2_9@@61 f_24@@76) (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@61 f_24@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@61 f_24@@76))
))) (forall ((o2_9@@62 T@Ref) (f_24@@77 T@Field_8743_14828) ) (!  (=> (select (|PolymorphicMapType_9232_8743_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@62 f_24@@77) (= (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@29) o2_9@@62 f_24@@77) (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@62 f_24@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@62 f_24@@77))
))) (forall ((o2_9@@63 T@Ref) (f_24@@78 T@Field_8743_14845) ) (!  (=> (select (|PolymorphicMapType_9232_8743_28830#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@63 f_24@@78) (= (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@29) o2_9@@63 f_24@@78) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@63 f_24@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@63 f_24@@78))
))) (forall ((o2_9@@64 T@Ref) (f_24@@79 T@Field_14827_53) ) (!  (=> (select (|PolymorphicMapType_9232_14827_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@64 f_24@@79) (= (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@29) o2_9@@64 f_24@@79) (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@64 f_24@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@64 f_24@@79))
))) (forall ((o2_9@@65 T@Ref) (f_24@@80 T@Field_14827_8757) ) (!  (=> (select (|PolymorphicMapType_9232_14827_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@65 f_24@@80) (= (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@29) o2_9@@65 f_24@@80) (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@65 f_24@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@65 f_24@@80))
))) (forall ((o2_9@@66 T@Ref) (f_24@@81 T@Field_14827_3130) ) (!  (=> (select (|PolymorphicMapType_9232_14827_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@66 f_24@@81) (= (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@29) o2_9@@66 f_24@@81) (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@66 f_24@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@66 f_24@@81))
))) (forall ((o2_9@@67 T@Ref) (f_24@@82 T@Field_14827_14828) ) (!  (=> (select (|PolymorphicMapType_9232_14827_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@67 f_24@@82) (= (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@29) o2_9@@67 f_24@@82) (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@67 f_24@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@67 f_24@@82))
))) (forall ((o2_9@@68 T@Ref) (f_24@@83 T@Field_14840_14845) ) (!  (=> (select (|PolymorphicMapType_9232_14827_29878#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@68 f_24@@83) (= (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) o2_9@@68 f_24@@83) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@68 f_24@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@68 f_24@@83))
))) (forall ((o2_9@@69 T@Ref) (f_24@@84 T@Field_15747_53) ) (!  (=> (select (|PolymorphicMapType_9232_15747_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@69 f_24@@84) (= (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@29) o2_9@@69 f_24@@84) (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@69 f_24@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@69 f_24@@84))
))) (forall ((o2_9@@70 T@Ref) (f_24@@85 T@Field_15747_8757) ) (!  (=> (select (|PolymorphicMapType_9232_15747_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@70 f_24@@85) (= (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@29) o2_9@@70 f_24@@85) (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@70 f_24@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@70 f_24@@85))
))) (forall ((o2_9@@71 T@Ref) (f_24@@86 T@Field_15747_3130) ) (!  (=> (select (|PolymorphicMapType_9232_15747_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@71 f_24@@86) (= (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@29) o2_9@@71 f_24@@86) (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@71 f_24@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@71 f_24@@86))
))) (forall ((o2_9@@72 T@Ref) (f_24@@87 T@Field_15747_15748) ) (!  (=> (select (|PolymorphicMapType_9232_15747_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@72 f_24@@87) (= (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@29) o2_9@@72 f_24@@87) (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@72 f_24@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@72 f_24@@87))
))) (forall ((o2_9@@73 T@Ref) (f_24@@88 T@Field_15760_15765) ) (!  (=> (select (|PolymorphicMapType_9232_15747_30926#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@29) null (WandMaskField_14827 pm_f_9@@9))) o2_9@@73 f_24@@88) (= (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@29) o2_9@@73 f_24@@88) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@73 f_24@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@26) o2_9@@73 f_24@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (IsWandField_14827_32372 pm_f_9@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8683) (ExhaleHeap@@27 T@PolymorphicMapType_8683) (Mask@@58 T@PolymorphicMapType_8704) (pm_f_9@@10 T@Field_8743_14828) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_8743_14828 Mask@@58 null pm_f_9@@10) (IsWandField_8743_32015 pm_f_9@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@74 T@Ref) (f_24@@89 T@Field_8743_53) ) (!  (=> (select (|PolymorphicMapType_9232_8743_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@74 f_24@@89) (= (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@30) o2_9@@74 f_24@@89) (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@74 f_24@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@74 f_24@@89))
)) (forall ((o2_9@@75 T@Ref) (f_24@@90 T@Field_8756_8757) ) (!  (=> (select (|PolymorphicMapType_9232_8743_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@75 f_24@@90) (= (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@30) o2_9@@75 f_24@@90) (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@75 f_24@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@75 f_24@@90))
))) (forall ((o2_9@@76 T@Ref) (f_24@@91 T@Field_14780_3130) ) (!  (=> (select (|PolymorphicMapType_9232_8743_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@76 f_24@@91) (= (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@30) o2_9@@76 f_24@@91) (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@76 f_24@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@76 f_24@@91))
))) (forall ((o2_9@@77 T@Ref) (f_24@@92 T@Field_8743_14828) ) (!  (=> (select (|PolymorphicMapType_9232_8743_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@77 f_24@@92) (= (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@30) o2_9@@77 f_24@@92) (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@77 f_24@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@77 f_24@@92))
))) (forall ((o2_9@@78 T@Ref) (f_24@@93 T@Field_8743_14845) ) (!  (=> (select (|PolymorphicMapType_9232_8743_28830#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@78 f_24@@93) (= (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) o2_9@@78 f_24@@93) (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@78 f_24@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@78 f_24@@93))
))) (forall ((o2_9@@79 T@Ref) (f_24@@94 T@Field_14827_53) ) (!  (=> (select (|PolymorphicMapType_9232_14827_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@79 f_24@@94) (= (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@30) o2_9@@79 f_24@@94) (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@79 f_24@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@79 f_24@@94))
))) (forall ((o2_9@@80 T@Ref) (f_24@@95 T@Field_14827_8757) ) (!  (=> (select (|PolymorphicMapType_9232_14827_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@80 f_24@@95) (= (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@30) o2_9@@80 f_24@@95) (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@80 f_24@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@80 f_24@@95))
))) (forall ((o2_9@@81 T@Ref) (f_24@@96 T@Field_14827_3130) ) (!  (=> (select (|PolymorphicMapType_9232_14827_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@81 f_24@@96) (= (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@30) o2_9@@81 f_24@@96) (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@81 f_24@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@81 f_24@@96))
))) (forall ((o2_9@@82 T@Ref) (f_24@@97 T@Field_14827_14828) ) (!  (=> (select (|PolymorphicMapType_9232_14827_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@82 f_24@@97) (= (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@30) o2_9@@82 f_24@@97) (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@82 f_24@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@82 f_24@@97))
))) (forall ((o2_9@@83 T@Ref) (f_24@@98 T@Field_14840_14845) ) (!  (=> (select (|PolymorphicMapType_9232_14827_29878#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@83 f_24@@98) (= (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@30) o2_9@@83 f_24@@98) (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@83 f_24@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@83 f_24@@98))
))) (forall ((o2_9@@84 T@Ref) (f_24@@99 T@Field_15747_53) ) (!  (=> (select (|PolymorphicMapType_9232_15747_53#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@84 f_24@@99) (= (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@30) o2_9@@84 f_24@@99) (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@84 f_24@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@84 f_24@@99))
))) (forall ((o2_9@@85 T@Ref) (f_24@@100 T@Field_15747_8757) ) (!  (=> (select (|PolymorphicMapType_9232_15747_8757#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@85 f_24@@100) (= (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@30) o2_9@@85 f_24@@100) (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@85 f_24@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@85 f_24@@100))
))) (forall ((o2_9@@86 T@Ref) (f_24@@101 T@Field_15747_3130) ) (!  (=> (select (|PolymorphicMapType_9232_15747_3130#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@86 f_24@@101) (= (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@30) o2_9@@86 f_24@@101) (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@86 f_24@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@86 f_24@@101))
))) (forall ((o2_9@@87 T@Ref) (f_24@@102 T@Field_15747_15748) ) (!  (=> (select (|PolymorphicMapType_9232_15747_14828#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@87 f_24@@102) (= (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@30) o2_9@@87 f_24@@102) (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@87 f_24@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@87 f_24@@102))
))) (forall ((o2_9@@88 T@Ref) (f_24@@103 T@Field_15760_15765) ) (!  (=> (select (|PolymorphicMapType_9232_15747_30926#PolymorphicMapType_9232| (select (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@30) null (WandMaskField_8743 pm_f_9@@10))) o2_9@@88 f_24@@103) (= (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@30) o2_9@@88 f_24@@103) (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@88 f_24@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| ExhaleHeap@@27) o2_9@@88 f_24@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (IsWandField_8743_32015 pm_f_9@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.558:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_16719) (b T@Seq_16719) ) (!  (=> (|Seq#Equal_16719| a b) (= a b))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16719| a b))
)))
(assert (forall ((a@@0 T@Seq_3008) (b@@0 T@Seq_3008) ) (!  (=> (|Seq#Equal_3008| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3008| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_16719) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_16719| s@@17))) (|Seq#ContainsTrigger_5792| s@@17 (|Seq#Index_16719| s@@17 i@@7)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_16719| s@@17 i@@7))
)))
(assert (forall ((s@@18 T@Seq_3008) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_3008| s@@18))) (|Seq#ContainsTrigger_3008| s@@18 (|Seq#Index_3008| s@@18 i@@8)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3008| s@@18 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_16719) (s1@@3 T@Seq_16719) ) (!  (and (=> (= s0@@3 |Seq#Empty_16719|) (= (|Seq#Append_16719| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_16719|) (= (|Seq#Append_16719| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_16719| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3008) (s1@@4 T@Seq_3008) ) (!  (and (=> (= s0@@4 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3008| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_16719| (|Seq#Singleton_16719| t@@3) 0) t@@3)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_16719| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3008| (|Seq#Singleton_3008| t@@4) 0) t@@4)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3008| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16719) ) (! (<= 0 (|Seq#Length_16719| s@@19))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_16719| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3008) ) (! (<= 0 (|Seq#Length_3008| s@@20))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3008| s@@20))
)))
(assert (forall ((a_2@@7 T@Ref) (i@@9 Int) ) (! (= (getPredWandId_5765_5766 (pred2 a_2@@7 i@@9)) 1)
 :qid |stdinbpl.644:15|
 :skolemid |66|
 :pattern ( (pred2 a_2@@7 i@@9))
)))
(assert (forall ((s0@@5 T@Seq_16719) (s1@@5 T@Seq_16719) ) (!  (=> (|Seq#Equal_16719| s0@@5 s1@@5) (and (= (|Seq#Length_16719| s0@@5) (|Seq#Length_16719| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_16719| s0@@5))) (= (|Seq#Index_16719| s0@@5 j@@6) (|Seq#Index_16719| s1@@5 j@@6)))
 :qid |stdinbpl.521:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_16719| s0@@5 j@@6))
 :pattern ( (|Seq#Index_16719| s1@@5 j@@6))
))))
 :qid |stdinbpl.518:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16719| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3008) (s1@@6 T@Seq_3008) ) (!  (=> (|Seq#Equal_3008| s0@@6 s1@@6) (and (= (|Seq#Length_3008| s0@@6) (|Seq#Length_3008| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3008| s0@@6))) (= (|Seq#Index_3008| s0@@6 j@@7) (|Seq#Index_3008| s1@@6 j@@7)))
 :qid |stdinbpl.521:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3008| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3008| s1@@6 j@@7))
))))
 :qid |stdinbpl.518:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3008| s0@@6 s1@@6))
)))
(assert (forall ((a_2@@8 T@Ref) ) (! (= (getPredWandId_5740_5741 (pred1 a_2@@8)) 0)
 :qid |stdinbpl.590:15|
 :skolemid |60|
 :pattern ( (pred1 a_2@@8))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_16719| (|Seq#Singleton_16719| t@@5)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_16719| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3008| (|Seq#Singleton_3008| t@@6)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3008| t@@6))
)))
(assert (forall ((a_2@@9 T@Ref) (i@@10 Int) ) (! (= (PredicateMaskField_5765 (pred2 a_2@@9 i@@10)) (|pred2#sm| a_2@@9 i@@10))
 :qid |stdinbpl.636:15|
 :skolemid |64|
 :pattern ( (PredicateMaskField_5765 (pred2 a_2@@9 i@@10)))
)))
(assert (forall ((s@@21 T@Seq_16719) (t@@7 T@Seq_16719) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_16719| s@@21))) (= (|Seq#Take_16719| (|Seq#Append_16719| s@@21 t@@7) n@@17) (|Seq#Take_16719| s@@21 n@@17)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_16719| (|Seq#Append_16719| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3008) (t@@8 T@Seq_3008) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3008| s@@22))) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@22 t@@8) n@@18) (|Seq#Take_3008| s@@22 n@@18)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_16719) (i@@11 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length_16719| s@@23))) (= (|Seq#Length_16719| (|Seq#Update_16719| s@@23 i@@11 v@@2)) (|Seq#Length_16719| s@@23)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_16719| (|Seq#Update_16719| s@@23 i@@11 v@@2)))
 :pattern ( (|Seq#Length_16719| s@@23) (|Seq#Update_16719| s@@23 i@@11 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3008) (i@@12 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length_3008| s@@24))) (= (|Seq#Length_3008| (|Seq#Update_3008| s@@24 i@@12 v@@3)) (|Seq#Length_3008| s@@24)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3008| (|Seq#Update_3008| s@@24 i@@12 v@@3)))
 :pattern ( (|Seq#Length_3008| s@@24) (|Seq#Update_3008| s@@24 i@@12 v@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8683) (o_20 T@Ref) (f_31 T@Field_14840_14845) (v@@4 T@PolymorphicMapType_9232) ) (! (succHeap Heap@@31 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@31) (store (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@31) o_20 f_31 v@@4) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@31) (store (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@31) o_20 f_31 v@@4) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@31) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8683) (o_20@@0 T@Ref) (f_31@@0 T@Field_14827_3130) (v@@5 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@32) (store (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@32) o_20@@0 f_31@@0 v@@5) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@32) (store (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@32) o_20@@0 f_31@@0 v@@5) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@32) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8683) (o_20@@1 T@Ref) (f_31@@1 T@Field_14827_14828) (v@@6 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@33) (store (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@33) o_20@@1 f_31@@1 v@@6) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@33) (store (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@33) o_20@@1 f_31@@1 v@@6) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@33) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8683) (o_20@@2 T@Ref) (f_31@@2 T@Field_14827_8757) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@34) (store (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@34) o_20@@2 f_31@@2 v@@7) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@34) (store (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@34) o_20@@2 f_31@@2 v@@7) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@34) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8683) (o_20@@3 T@Ref) (f_31@@3 T@Field_14827_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@35) (store (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@35) o_20@@3 f_31@@3 v@@8) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@35) (store (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@35) o_20@@3 f_31@@3 v@@8) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@35) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8683) (o_20@@4 T@Ref) (f_31@@4 T@Field_15760_15765) (v@@9 T@PolymorphicMapType_9232) ) (! (succHeap Heap@@36 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@36) (store (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@36) o_20@@4 f_31@@4 v@@9)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@36) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@36) (store (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@36) o_20@@4 f_31@@4 v@@9)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_8683) (o_20@@5 T@Ref) (f_31@@5 T@Field_15747_3130) (v@@10 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@37) (store (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@37) o_20@@5 f_31@@5 v@@10) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@37) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@37) (store (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@37) o_20@@5 f_31@@5 v@@10) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8683) (o_20@@6 T@Ref) (f_31@@6 T@Field_15747_15748) (v@@11 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@38) (store (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@38) o_20@@6 f_31@@6 v@@11) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@38) (store (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@38) o_20@@6 f_31@@6 v@@11) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@38) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_8683) (o_20@@7 T@Ref) (f_31@@7 T@Field_15747_8757) (v@@12 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@39) (store (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@39) o_20@@7 f_31@@7 v@@12) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@39) (store (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@39) o_20@@7 f_31@@7 v@@12) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@39) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_8683) (o_20@@8 T@Ref) (f_31@@8 T@Field_15747_53) (v@@13 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@40) (store (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@40) o_20@@8 f_31@@8 v@@13) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@40) (store (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@40) o_20@@8 f_31@@8 v@@13) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@40) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_8683) (o_20@@9 T@Ref) (f_31@@9 T@Field_8743_14845) (v@@14 T@PolymorphicMapType_9232) ) (! (succHeap Heap@@41 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@41) (store (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@41) o_20@@9 f_31@@9 v@@14) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@41) (store (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@41) o_20@@9 f_31@@9 v@@14) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@41) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_8683) (o_20@@10 T@Ref) (f_31@@10 T@Field_14780_3130) (v@@15 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@42) (store (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@42) o_20@@10 f_31@@10 v@@15) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@42) (store (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@42) o_20@@10 f_31@@10 v@@15) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@42) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_8683) (o_20@@11 T@Ref) (f_31@@11 T@Field_8743_14828) (v@@16 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@43) (store (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@43) o_20@@11 f_31@@11 v@@16) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@43) (store (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@43) o_20@@11 f_31@@11 v@@16) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@43) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_8683) (o_20@@12 T@Ref) (f_31@@12 T@Field_8756_8757) (v@@17 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@44) (store (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@44) o_20@@12 f_31@@12 v@@17) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@44) (store (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@44) o_20@@12 f_31@@12 v@@17) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@44) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_8683) (o_20@@13 T@Ref) (f_31@@13 T@Field_8743_53) (v@@18 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_8683 (store (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@45) o_20@@13 f_31@@13 v@@18) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8683 (store (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@45) o_20@@13 f_31@@13 v@@18) (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_5765_5766#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_8743_3130#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_8743_14828#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_8743_24436#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_14827_53#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_14827_8757#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_14827_3130#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_14827_14828#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_14827_25614#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_15747_53#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_15747_8757#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_15747_3130#PolymorphicMapType_8683| Heap@@45) (|PolymorphicMapType_8683_15747_26775#PolymorphicMapType_8683| Heap@@45)))
)))
(assert (forall ((a_2@@10 T@Ref) ) (! (= (PredicateMaskField_5740 (pred1 a_2@@10)) (|pred1#sm| a_2@@10))
 :qid |stdinbpl.582:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_5740 (pred1 a_2@@10)))
)))
(assert (forall ((s@@25 T@Seq_16719) (t@@9 T@Seq_16719) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_16719| s@@25))) (= (|Seq#Drop_16719| (|Seq#Append_16719| s@@25 t@@9) n@@19) (|Seq#Append_16719| (|Seq#Drop_16719| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_16719| (|Seq#Append_16719| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3008) (t@@10 T@Seq_3008) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3008| s@@26))) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@26 t@@10) n@@20) (|Seq#Append_3008| (|Seq#Drop_3008| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16719) (n@@21 Int) (i@@13 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@13)) (< i@@13 (|Seq#Length_16719| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@13 n@@21) n@@21) i@@13) (= (|Seq#Index_16719| (|Seq#Drop_16719| s@@27 n@@21) (|Seq#Sub| i@@13 n@@21)) (|Seq#Index_16719| s@@27 i@@13))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_16719| s@@27 n@@21) (|Seq#Index_16719| s@@27 i@@13))
)))
(assert (forall ((s@@28 T@Seq_3008) (n@@22 Int) (i@@14 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@14)) (< i@@14 (|Seq#Length_3008| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@14 n@@22) n@@22) i@@14) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@28 n@@22) (|Seq#Sub| i@@14 n@@22)) (|Seq#Index_3008| s@@28 i@@14))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3008| s@@28 n@@22) (|Seq#Index_3008| s@@28 i@@14))
)))
(assert (forall ((s0@@7 T@Seq_16719) (s1@@7 T@Seq_16719) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_16719|)) (not (= s1@@7 |Seq#Empty_16719|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_16719| s0@@7))) (= (|Seq#Index_16719| (|Seq#Append_16719| s0@@7 s1@@7) n@@23) (|Seq#Index_16719| s0@@7 n@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_16719| (|Seq#Append_16719| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_16719| s0@@7 n@@23) (|Seq#Append_16719| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3008) (s1@@8 T@Seq_3008) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3008|)) (not (= s1@@8 |Seq#Empty_3008|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3008| s0@@8))) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@8 s1@@8) n@@24) (|Seq#Index_3008| s0@@8 n@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3008| s0@@8 n@@24) (|Seq#Append_3008| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16719) (s1@@9 T@Seq_16719) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_16719|)) (not (= s1@@9 |Seq#Empty_16719|))) (<= 0 m)) (< m (|Seq#Length_16719| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_16719| s0@@9)) (|Seq#Length_16719| s0@@9)) m) (= (|Seq#Index_16719| (|Seq#Append_16719| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_16719| s0@@9))) (|Seq#Index_16719| s1@@9 m))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_16719| s1@@9 m) (|Seq#Append_16719| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3008) (s1@@10 T@Seq_3008) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3008|)) (not (= s1@@10 |Seq#Empty_3008|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3008| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3008| s0@@10)) (|Seq#Length_3008| s0@@10)) m@@0) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3008| s0@@10))) (|Seq#Index_3008| s1@@10 m@@0))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3008| s1@@10 m@@0) (|Seq#Append_3008| s0@@10 s1@@10))
)))
(assert (forall ((o_20@@14 T@Ref) (f_17 T@Field_8756_8757) (Heap@@46 T@PolymorphicMapType_8683) ) (!  (=> (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@46) o_20@@14 $allocated) (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@46) (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@46) o_20@@14 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8683_5532_5533#PolymorphicMapType_8683| Heap@@46) o_20@@14 f_17))
)))
(assert (forall ((s@@29 T@Seq_16719) (x@@3 T@Ref) (i@@15 Int) ) (!  (=> (and (and (<= 0 i@@15) (< i@@15 (|Seq#Length_16719| s@@29))) (= (|Seq#Index_16719| s@@29 i@@15) x@@3)) (|Seq#Contains_5792| s@@29 x@@3))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_5792| s@@29 x@@3) (|Seq#Index_16719| s@@29 i@@15))
)))
(assert (forall ((s@@30 T@Seq_3008) (x@@4 Int) (i@@16 Int) ) (!  (=> (and (and (<= 0 i@@16) (< i@@16 (|Seq#Length_3008| s@@30))) (= (|Seq#Index_3008| s@@30 i@@16) x@@4)) (|Seq#Contains_3008| s@@30 x@@4))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3008| s@@30 x@@4) (|Seq#Index_3008| s@@30 i@@16))
)))
(assert (forall ((s0@@11 T@Seq_16719) (s1@@11 T@Seq_16719) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16719| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16719| s0@@11 s1@@11))) (not (= (|Seq#Length_16719| s0@@11) (|Seq#Length_16719| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16719| s0@@11 s1@@11))) (= (|Seq#Length_16719| s0@@11) (|Seq#Length_16719| s1@@11))) (= (|Seq#SkolemDiff_16719| s0@@11 s1@@11) (|Seq#SkolemDiff_16719| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16719| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16719| s0@@11 s1@@11) (|Seq#Length_16719| s0@@11))) (not (= (|Seq#Index_16719| s0@@11 (|Seq#SkolemDiff_16719| s0@@11 s1@@11)) (|Seq#Index_16719| s1@@11 (|Seq#SkolemDiff_16719| s0@@11 s1@@11))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16719| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3008) (s1@@12 T@Seq_3008) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3008| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3008| s0@@12 s1@@12))) (not (= (|Seq#Length_3008| s0@@12) (|Seq#Length_3008| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3008| s0@@12 s1@@12))) (= (|Seq#Length_3008| s0@@12) (|Seq#Length_3008| s1@@12))) (= (|Seq#SkolemDiff_3008| s0@@12 s1@@12) (|Seq#SkolemDiff_3008| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3008| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3008| s0@@12 s1@@12) (|Seq#Length_3008| s0@@12))) (not (= (|Seq#Index_3008| s0@@12 (|Seq#SkolemDiff_3008| s0@@12 s1@@12)) (|Seq#Index_3008| s1@@12 (|Seq#SkolemDiff_3008| s0@@12 s1@@12))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3008| s0@@12 s1@@12))
)))
(assert (forall ((p@@3 T@Field_15747_15748) (v_1@@2 T@FrameType) (q T@Field_15747_15748) (w@@2 T@FrameType) (r T@Field_15747_15748) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15747_15747 p@@3 v_1@@2 q w@@2) (InsidePredicate_15747_15747 q w@@2 r u)) (InsidePredicate_15747_15747 p@@3 v_1@@2 r u))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15747_15747 p@@3 v_1@@2 q w@@2) (InsidePredicate_15747_15747 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_15747_15748) (v_1@@3 T@FrameType) (q@@0 T@Field_15747_15748) (w@@3 T@FrameType) (r@@0 T@Field_14827_14828) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_15747_15747 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15747_14827 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_15747_14827 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15747_15747 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15747_14827 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_15747_15748) (v_1@@4 T@FrameType) (q@@1 T@Field_15747_15748) (w@@4 T@FrameType) (r@@1 T@Field_8743_14828) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_15747_15747 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15747_8743 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_15747_8743 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15747_15747 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15747_8743 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_15747_15748) (v_1@@5 T@FrameType) (q@@2 T@Field_14827_14828) (w@@5 T@FrameType) (r@@2 T@Field_15747_15748) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_15747_14827 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_14827_15747 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_15747_15747 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15747_14827 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_14827_15747 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_15747_15748) (v_1@@6 T@FrameType) (q@@3 T@Field_14827_14828) (w@@6 T@FrameType) (r@@3 T@Field_14827_14828) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_15747_14827 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_14827_14827 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_15747_14827 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15747_14827 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_14827_14827 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_15747_15748) (v_1@@7 T@FrameType) (q@@4 T@Field_14827_14828) (w@@7 T@FrameType) (r@@4 T@Field_8743_14828) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_15747_14827 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_14827_8743 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_15747_8743 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15747_14827 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_14827_8743 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_15747_15748) (v_1@@8 T@FrameType) (q@@5 T@Field_8743_14828) (w@@8 T@FrameType) (r@@5 T@Field_15747_15748) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_15747_8743 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8743_15747 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_15747_15747 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15747_8743 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8743_15747 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_15747_15748) (v_1@@9 T@FrameType) (q@@6 T@Field_8743_14828) (w@@9 T@FrameType) (r@@6 T@Field_14827_14828) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_15747_8743 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8743_14827 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_15747_14827 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15747_8743 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8743_14827 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_15747_15748) (v_1@@10 T@FrameType) (q@@7 T@Field_8743_14828) (w@@10 T@FrameType) (r@@7 T@Field_8743_14828) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_15747_8743 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8743_8743 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_15747_8743 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15747_8743 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8743_8743 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_14827_14828) (v_1@@11 T@FrameType) (q@@8 T@Field_15747_15748) (w@@11 T@FrameType) (r@@8 T@Field_15747_15748) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_14827_15747 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15747_15747 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_14827_15747 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14827_15747 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15747_15747 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_14827_14828) (v_1@@12 T@FrameType) (q@@9 T@Field_15747_15748) (w@@12 T@FrameType) (r@@9 T@Field_14827_14828) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_14827_15747 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15747_14827 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_14827_14827 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14827_15747 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15747_14827 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_14827_14828) (v_1@@13 T@FrameType) (q@@10 T@Field_15747_15748) (w@@13 T@FrameType) (r@@10 T@Field_8743_14828) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_14827_15747 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15747_8743 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_14827_8743 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14827_15747 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15747_8743 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_14827_14828) (v_1@@14 T@FrameType) (q@@11 T@Field_14827_14828) (w@@14 T@FrameType) (r@@11 T@Field_15747_15748) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_14827_14827 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_14827_15747 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_14827_15747 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14827_14827 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_14827_15747 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_14827_14828) (v_1@@15 T@FrameType) (q@@12 T@Field_14827_14828) (w@@15 T@FrameType) (r@@12 T@Field_14827_14828) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_14827_14827 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_14827_14827 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_14827_14827 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14827_14827 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_14827_14827 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_14827_14828) (v_1@@16 T@FrameType) (q@@13 T@Field_14827_14828) (w@@16 T@FrameType) (r@@13 T@Field_8743_14828) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_14827_14827 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_14827_8743 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_14827_8743 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14827_14827 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_14827_8743 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_14827_14828) (v_1@@17 T@FrameType) (q@@14 T@Field_8743_14828) (w@@17 T@FrameType) (r@@14 T@Field_15747_15748) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_14827_8743 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8743_15747 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_14827_15747 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14827_8743 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8743_15747 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_14827_14828) (v_1@@18 T@FrameType) (q@@15 T@Field_8743_14828) (w@@18 T@FrameType) (r@@15 T@Field_14827_14828) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_14827_8743 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8743_14827 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_14827_14827 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14827_8743 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8743_14827 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_14827_14828) (v_1@@19 T@FrameType) (q@@16 T@Field_8743_14828) (w@@19 T@FrameType) (r@@16 T@Field_8743_14828) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_14827_8743 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8743_8743 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_14827_8743 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14827_8743 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8743_8743 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_8743_14828) (v_1@@20 T@FrameType) (q@@17 T@Field_15747_15748) (w@@20 T@FrameType) (r@@17 T@Field_15747_15748) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_8743_15747 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15747_15747 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_8743_15747 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8743_15747 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15747_15747 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_8743_14828) (v_1@@21 T@FrameType) (q@@18 T@Field_15747_15748) (w@@21 T@FrameType) (r@@18 T@Field_14827_14828) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_8743_15747 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15747_14827 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_8743_14827 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8743_15747 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15747_14827 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_8743_14828) (v_1@@22 T@FrameType) (q@@19 T@Field_15747_15748) (w@@22 T@FrameType) (r@@19 T@Field_8743_14828) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_8743_15747 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15747_8743 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_8743_8743 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8743_15747 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15747_8743 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_8743_14828) (v_1@@23 T@FrameType) (q@@20 T@Field_14827_14828) (w@@23 T@FrameType) (r@@20 T@Field_15747_15748) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_8743_14827 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_14827_15747 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_8743_15747 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8743_14827 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_14827_15747 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_8743_14828) (v_1@@24 T@FrameType) (q@@21 T@Field_14827_14828) (w@@24 T@FrameType) (r@@21 T@Field_14827_14828) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_8743_14827 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_14827_14827 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_8743_14827 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8743_14827 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_14827_14827 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_8743_14828) (v_1@@25 T@FrameType) (q@@22 T@Field_14827_14828) (w@@25 T@FrameType) (r@@22 T@Field_8743_14828) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_8743_14827 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_14827_8743 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_8743_8743 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8743_14827 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_14827_8743 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_8743_14828) (v_1@@26 T@FrameType) (q@@23 T@Field_8743_14828) (w@@26 T@FrameType) (r@@23 T@Field_15747_15748) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_8743_8743 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8743_15747 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_8743_15747 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8743_8743 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8743_15747 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_8743_14828) (v_1@@27 T@FrameType) (q@@24 T@Field_8743_14828) (w@@27 T@FrameType) (r@@24 T@Field_14827_14828) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_8743_8743 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8743_14827 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_8743_14827 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8743_8743 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8743_14827 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_8743_14828) (v_1@@28 T@FrameType) (q@@25 T@Field_8743_14828) (w@@28 T@FrameType) (r@@25 T@Field_8743_14828) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_8743_8743 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8743_8743 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_8743_8743 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8743_8743 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8743_8743 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@31 T@Seq_16719) ) (!  (=> (= (|Seq#Length_16719| s@@31) 0) (= s@@31 |Seq#Empty_16719|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_16719| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3008) ) (!  (=> (= (|Seq#Length_3008| s@@32) 0) (= s@@32 |Seq#Empty_3008|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3008| s@@32))
)))
(assert (forall ((s@@33 T@Seq_16719) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_16719| s@@33 n@@25) |Seq#Empty_16719|))
 :qid |stdinbpl.405:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_16719| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3008) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3008| s@@34 n@@26) |Seq#Empty_3008|))
 :qid |stdinbpl.405:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3008| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered1 (T@Ref) Bool)
(declare-fun xs () T@Seq_16719)
(declare-fun y@@1 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_8683)
(declare-fun neverTriggered2 (T@Ref) Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_8704)
(declare-fun Heap@@47 () T@PolymorphicMapType_8683)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon6_Else_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (|Seq#Contains_5792| xs x_1)) (|Seq#Contains_5792| xs x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= y@@1 y@@1)))
 :qid |stdinbpl.733:17|
 :skolemid |70|
 :pattern ( (neverTriggered1 x_1) (neverTriggered1 x_1_1))
)))))
(let ((anon6_Then_correct true))
(let ((anon5_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 7) 4) anon6_Then_correct) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct)))))
(let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((x_3 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3 x_3_1)) (|Seq#Contains_5792| xs x_3)) (|Seq#Contains_5792| xs x_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= y@@1 y@@1)))
 :qid |stdinbpl.780:17|
 :skolemid |76|
 :pattern ( (neverTriggered2 x_3) (neverTriggered2 x_3_1))
))) (=> (forall ((x_3@@0 T@Ref) (x_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@0 x_3_1@@0)) (|Seq#Contains_5792| xs x_3@@0)) (|Seq#Contains_5792| xs x_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= y@@1 y@@1)))
 :qid |stdinbpl.780:17|
 :skolemid |76|
 :pattern ( (neverTriggered2 x_3@@0) (neverTriggered2 x_3_1@@0))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((x_3@@1 T@Ref) ) (!  (=> (|Seq#Contains_5792| xs x_3@@1) (>= (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| Mask@0) null (pred1 y@@1)) FullPerm))
 :qid |stdinbpl.787:17|
 :skolemid |77|
 :pattern ( (|Seq#ContainsTrigger_5792| xs x_3@@1))
 :pattern ( (|Seq#Contains_5792| xs x_3@@1))
)))))))
(let ((anon0_correct  (=> (and (state Heap@@47 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_8683_5529_53#PolymorphicMapType_8683| Heap@@47) y@@1 $allocated) (= Mask@0 (PolymorphicMapType_8704 (|PolymorphicMapType_8704_5737_3130#PolymorphicMapType_8704| ZeroMask) (store (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| ZeroMask) null (pred1 y@@1) (+ (select (|PolymorphicMapType_8704_5740_5741#PolymorphicMapType_8704| ZeroMask) null (pred1 y@@1)) FullPerm)) (|PolymorphicMapType_8704_5765_5766#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5737_5741#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5737_53#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5737_8757#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5737_38770#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5740_3130#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5740_53#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5740_8757#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5740_39181#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5765_3130#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5765_53#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5765_8757#PolymorphicMapType_8704| ZeroMask) (|PolymorphicMapType_8704_5765_39592#PolymorphicMapType_8704| ZeroMask)))) (and (state Heap@@47 Mask@0) (state Heap@@47 Mask@0))) (and (=> (= (ControlFlow 0 8) 7) anon5_Then_correct) (=> (= (ControlFlow 0 8) 2) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
