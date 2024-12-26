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
(declare-sort T@Field_17805_53 0)
(declare-sort T@Field_17818_17819 0)
(declare-sort T@Field_27344_5549 0)
(declare-sort T@Field_26702_5244 0)
(declare-sort T@Field_26715_26720 0)
(declare-sort T@Field_27391_27392 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_27404_27409 0)
(declare-sort T@Field_11195_11199 0)
(declare-sort T@Field_11195_26720 0)
(declare-sort T@Field_11198_5549 0)
(declare-sort T@Field_11198_53 0)
(declare-sort T@Field_11198_17819 0)
(declare-sort T@Field_26731_26732 0)
(declare-sort T@Field_26702_53 0)
(declare-sort T@Field_26702_17819 0)
(declare-datatypes ((T@PolymorphicMapType_17766 0)) (((PolymorphicMapType_17766 (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| (Array T@Ref T@Field_27344_5549 Real)) (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| (Array T@Ref T@Field_26702_5244 Real)) (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| (Array T@Ref T@Field_27391_27392 Real)) (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| (Array T@Ref T@Field_11195_11199 Real)) (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| (Array T@Ref T@Field_17805_53 Real)) (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| (Array T@Ref T@Field_17818_17819 Real)) (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| (Array T@Ref T@Field_11195_26720 Real)) (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| (Array T@Ref T@Field_26731_26732 Real)) (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| (Array T@Ref T@Field_26702_53 Real)) (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| (Array T@Ref T@Field_26702_17819 Real)) (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| (Array T@Ref T@Field_26715_26720 Real)) (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| (Array T@Ref T@Field_11198_5549 Real)) (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| (Array T@Ref T@Field_11198_53 Real)) (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| (Array T@Ref T@Field_11198_17819 Real)) (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| (Array T@Ref T@Field_27404_27409 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18294 0)) (((PolymorphicMapType_18294 (|PolymorphicMapType_18294_11195_5549#PolymorphicMapType_18294| (Array T@Ref T@Field_27344_5549 Bool)) (|PolymorphicMapType_18294_11195_53#PolymorphicMapType_18294| (Array T@Ref T@Field_17805_53 Bool)) (|PolymorphicMapType_18294_11195_17819#PolymorphicMapType_18294| (Array T@Ref T@Field_17818_17819 Bool)) (|PolymorphicMapType_18294_11195_53800#PolymorphicMapType_18294| (Array T@Ref T@Field_11195_26720 Bool)) (|PolymorphicMapType_18294_11195_26732#PolymorphicMapType_18294| (Array T@Ref T@Field_11195_11199 Bool)) (|PolymorphicMapType_18294_26702_5549#PolymorphicMapType_18294| (Array T@Ref T@Field_26702_5244 Bool)) (|PolymorphicMapType_18294_26702_53#PolymorphicMapType_18294| (Array T@Ref T@Field_26702_53 Bool)) (|PolymorphicMapType_18294_26702_17819#PolymorphicMapType_18294| (Array T@Ref T@Field_26702_17819 Bool)) (|PolymorphicMapType_18294_26702_54848#PolymorphicMapType_18294| (Array T@Ref T@Field_26715_26720 Bool)) (|PolymorphicMapType_18294_26702_26732#PolymorphicMapType_18294| (Array T@Ref T@Field_26731_26732 Bool)) (|PolymorphicMapType_18294_27391_5549#PolymorphicMapType_18294| (Array T@Ref T@Field_11198_5549 Bool)) (|PolymorphicMapType_18294_27391_53#PolymorphicMapType_18294| (Array T@Ref T@Field_11198_53 Bool)) (|PolymorphicMapType_18294_27391_17819#PolymorphicMapType_18294| (Array T@Ref T@Field_11198_17819 Bool)) (|PolymorphicMapType_18294_27391_55896#PolymorphicMapType_18294| (Array T@Ref T@Field_27404_27409 Bool)) (|PolymorphicMapType_18294_27391_26732#PolymorphicMapType_18294| (Array T@Ref T@Field_27391_27392 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17745 0)) (((PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| (Array T@Ref T@Field_17805_53 Bool)) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| (Array T@Ref T@Field_17818_17819 T@Ref)) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| (Array T@Ref T@Field_27344_5549 Int)) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| (Array T@Ref T@Field_26702_5244 Int)) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| (Array T@Ref T@Field_26715_26720 T@PolymorphicMapType_18294)) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| (Array T@Ref T@Field_27391_27392 T@FrameType)) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| (Array T@Ref T@Field_27404_27409 T@PolymorphicMapType_18294)) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| (Array T@Ref T@Field_11195_11199 T@FrameType)) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| (Array T@Ref T@Field_11195_26720 T@PolymorphicMapType_18294)) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| (Array T@Ref T@Field_11198_5549 Int)) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| (Array T@Ref T@Field_11198_53 Bool)) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| (Array T@Ref T@Field_11198_17819 T@Ref)) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| (Array T@Ref T@Field_26731_26732 T@FrameType)) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| (Array T@Ref T@Field_26702_53 Bool)) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| (Array T@Ref T@Field_26702_17819 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_17805_53)
(declare-fun f_7 () T@Field_27344_5549)
(declare-sort T@Seq_28412 0)
(declare-fun |Seq#Length_28412| (T@Seq_28412) Int)
(declare-fun |Seq#Drop_28412| (T@Seq_28412 Int) T@Seq_28412)
(declare-sort T@Seq_3104 0)
(declare-fun |Seq#Length_3104| (T@Seq_3104) Int)
(declare-fun |Seq#Drop_3104| (T@Seq_3104 Int) T@Seq_3104)
(declare-fun succHeap (T@PolymorphicMapType_17745 T@PolymorphicMapType_17745) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_17745 T@PolymorphicMapType_17745) Bool)
(declare-fun wand (T@Ref Real T@Ref Real) T@Field_26702_5244)
(declare-fun getPredWandId_11147_5244 (T@Field_26702_5244) Int)
(declare-fun state (T@PolymorphicMapType_17745 T@PolymorphicMapType_17766) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_17766) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_18294)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_28412| (T@Seq_28412 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3104| (T@Seq_3104 Int) Int)
(declare-fun |Seq#Empty_28412| () T@Seq_28412)
(declare-fun |Seq#Empty_3104| () T@Seq_3104)
(declare-fun p1 (T@Ref) T@Field_27391_27392)
(declare-fun IsPredicateField_11198_11199 (T@Field_27391_27392) Bool)
(declare-fun |p1#trigger_11198| (T@PolymorphicMapType_17745 T@Field_27391_27392) Bool)
(declare-fun |p1#everUsed_11198| (T@Field_27391_27392) Bool)
(declare-fun |Seq#Update_28412| (T@Seq_28412 Int T@Ref) T@Seq_28412)
(declare-fun |Seq#Update_3104| (T@Seq_3104 Int Int) T@Seq_3104)
(declare-fun |Seq#Take_28412| (T@Seq_28412 Int) T@Seq_28412)
(declare-fun |Seq#Take_3104| (T@Seq_3104 Int) T@Seq_3104)
(declare-fun |Seq#Contains_3104| (T@Seq_3104 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3104)
(declare-fun |Seq#Contains_11232| (T@Seq_28412 T@Ref) Bool)
(declare-fun |Seq#Skolem_11232| (T@Seq_28412 T@Ref) Int)
(declare-fun |Seq#Skolem_3104| (T@Seq_3104 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_17745 T@PolymorphicMapType_17745 T@PolymorphicMapType_17766) Bool)
(declare-fun IsPredicateField_11160_11161 (T@Field_26731_26732) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_26702 (T@Field_26731_26732) T@Field_26715_26720)
(declare-fun HasDirectPerm_26702_11199 (T@PolymorphicMapType_17766 T@Ref T@Field_26731_26732) Bool)
(declare-fun PredicateMaskField_11198 (T@Field_27391_27392) T@Field_27404_27409)
(declare-fun HasDirectPerm_11198_11199 (T@PolymorphicMapType_17766 T@Ref T@Field_27391_27392) Bool)
(declare-fun IsPredicateField_11195_52182 (T@Field_11195_11199) Bool)
(declare-fun PredicateMaskField_11195 (T@Field_11195_11199) T@Field_11195_26720)
(declare-fun HasDirectPerm_11195_11199 (T@PolymorphicMapType_17766 T@Ref T@Field_11195_11199) Bool)
(declare-fun IsWandField_11160_11161 (T@Field_26731_26732) Bool)
(declare-fun WandMaskField_11160 (T@Field_26731_26732) T@Field_26715_26720)
(declare-fun IsWandField_11198_57546 (T@Field_27391_27392) Bool)
(declare-fun WandMaskField_11198 (T@Field_27391_27392) T@Field_27404_27409)
(declare-fun IsWandField_11195_57189 (T@Field_11195_11199) Bool)
(declare-fun WandMaskField_11195 (T@Field_11195_11199) T@Field_11195_26720)
(declare-fun |Seq#Singleton_28412| (T@Ref) T@Seq_28412)
(declare-fun |Seq#Singleton_3104| (Int) T@Seq_3104)
(declare-fun |p1#sm| (T@Ref) T@Field_27404_27409)
(declare-fun |Seq#Append_28412| (T@Seq_28412 T@Seq_28412) T@Seq_28412)
(declare-fun |Seq#Append_3104| (T@Seq_3104 T@Seq_3104) T@Seq_3104)
(declare-fun dummyHeap () T@PolymorphicMapType_17745)
(declare-fun ZeroMask () T@PolymorphicMapType_17766)
(declare-fun InsidePredicate_27391_27391 (T@Field_27391_27392 T@FrameType T@Field_27391_27392 T@FrameType) Bool)
(declare-fun InsidePredicate_26702_26702 (T@Field_26731_26732 T@FrameType T@Field_26731_26732 T@FrameType) Bool)
(declare-fun InsidePredicate_17805_17805 (T@Field_11195_11199 T@FrameType T@Field_11195_11199 T@FrameType) Bool)
(declare-fun IsPredicateField_11195_5549 (T@Field_27344_5549) Bool)
(declare-fun IsWandField_11195_5549 (T@Field_27344_5549) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11198_68178 (T@Field_27404_27409) Bool)
(declare-fun IsWandField_11198_68194 (T@Field_27404_27409) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11198_17819 (T@Field_11198_17819) Bool)
(declare-fun IsWandField_11198_17819 (T@Field_11198_17819) Bool)
(declare-fun IsPredicateField_11198_53 (T@Field_11198_53) Bool)
(declare-fun IsWandField_11198_53 (T@Field_11198_53) Bool)
(declare-fun IsPredicateField_11198_5549 (T@Field_11198_5549) Bool)
(declare-fun IsWandField_11198_5549 (T@Field_11198_5549) Bool)
(declare-fun IsPredicateField_11147_67347 (T@Field_26715_26720) Bool)
(declare-fun IsWandField_11147_67363 (T@Field_26715_26720) Bool)
(declare-fun IsPredicateField_11147_17819 (T@Field_26702_17819) Bool)
(declare-fun IsWandField_11147_17819 (T@Field_26702_17819) Bool)
(declare-fun IsPredicateField_11147_53 (T@Field_26702_53) Bool)
(declare-fun IsWandField_11147_53 (T@Field_26702_53) Bool)
(declare-fun IsPredicateField_11147_5244 (T@Field_26702_5244) Bool)
(declare-fun IsWandField_11147_5244 (T@Field_26702_5244) Bool)
(declare-fun IsPredicateField_11195_66530 (T@Field_11195_26720) Bool)
(declare-fun IsWandField_11195_66546 (T@Field_11195_26720) Bool)
(declare-fun IsPredicateField_11195_17819 (T@Field_17818_17819) Bool)
(declare-fun IsWandField_11195_17819 (T@Field_17818_17819) Bool)
(declare-fun IsPredicateField_11195_53 (T@Field_17805_53) Bool)
(declare-fun IsWandField_11195_53 (T@Field_17805_53) Bool)
(declare-fun HasDirectPerm_26702_51937 (T@PolymorphicMapType_17766 T@Ref T@Field_26715_26720) Bool)
(declare-fun HasDirectPerm_26702_17819 (T@PolymorphicMapType_17766 T@Ref T@Field_26702_17819) Bool)
(declare-fun HasDirectPerm_26702_53 (T@PolymorphicMapType_17766 T@Ref T@Field_26702_53) Bool)
(declare-fun HasDirectPerm_26702_5549 (T@PolymorphicMapType_17766 T@Ref T@Field_26702_5244) Bool)
(declare-fun HasDirectPerm_11198_50815 (T@PolymorphicMapType_17766 T@Ref T@Field_27404_27409) Bool)
(declare-fun HasDirectPerm_11198_17819 (T@PolymorphicMapType_17766 T@Ref T@Field_11198_17819) Bool)
(declare-fun HasDirectPerm_11198_53 (T@PolymorphicMapType_17766 T@Ref T@Field_11198_53) Bool)
(declare-fun HasDirectPerm_11198_5549 (T@PolymorphicMapType_17766 T@Ref T@Field_11198_5549) Bool)
(declare-fun HasDirectPerm_11195_49674 (T@PolymorphicMapType_17766 T@Ref T@Field_11195_26720) Bool)
(declare-fun HasDirectPerm_11195_17819 (T@PolymorphicMapType_17766 T@Ref T@Field_17818_17819) Bool)
(declare-fun HasDirectPerm_11195_53 (T@PolymorphicMapType_17766 T@Ref T@Field_17805_53) Bool)
(declare-fun HasDirectPerm_11195_5549 (T@PolymorphicMapType_17766 T@Ref T@Field_27344_5549) Bool)
(declare-fun |wand#ft| (T@Ref Real T@Ref Real) T@Field_26731_26732)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (T@Ref Real T@Ref Real) T@Field_26715_26720)
(declare-fun sumMask (T@PolymorphicMapType_17766 T@PolymorphicMapType_17766 T@PolymorphicMapType_17766) Bool)
(declare-fun |Seq#Equal_28412| (T@Seq_28412 T@Seq_28412) Bool)
(declare-fun |Seq#Equal_3104| (T@Seq_3104 T@Seq_3104) Bool)
(declare-fun |Seq#ContainsTrigger_28412| (T@Seq_28412 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3104| (T@Seq_3104 Int) Bool)
(declare-fun getPredWandId_11198_11199 (T@Field_27391_27392) Int)
(declare-fun |Seq#SkolemDiff_28412| (T@Seq_28412 T@Seq_28412) Int)
(declare-fun |Seq#SkolemDiff_3104| (T@Seq_3104 T@Seq_3104) Int)
(declare-fun InsidePredicate_27391_26702 (T@Field_27391_27392 T@FrameType T@Field_26731_26732 T@FrameType) Bool)
(declare-fun InsidePredicate_27391_17805 (T@Field_27391_27392 T@FrameType T@Field_11195_11199 T@FrameType) Bool)
(declare-fun InsidePredicate_26702_27391 (T@Field_26731_26732 T@FrameType T@Field_27391_27392 T@FrameType) Bool)
(declare-fun InsidePredicate_26702_17805 (T@Field_26731_26732 T@FrameType T@Field_11195_11199 T@FrameType) Bool)
(declare-fun InsidePredicate_17805_27391 (T@Field_11195_11199 T@FrameType T@Field_27391_27392 T@FrameType) Bool)
(declare-fun InsidePredicate_17805_26702 (T@Field_11195_11199 T@FrameType T@Field_26731_26732 T@FrameType) Bool)
(assert (forall ((s T@Seq_28412) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_28412| s)) (= (|Seq#Length_28412| (|Seq#Drop_28412| s n)) (- (|Seq#Length_28412| s) n))) (=> (< (|Seq#Length_28412| s) n) (= (|Seq#Length_28412| (|Seq#Drop_28412| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_28412| (|Seq#Drop_28412| s n)) (|Seq#Length_28412| s))))
 :qid |stdinbpl.309:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_28412| (|Seq#Drop_28412| s n)))
 :pattern ( (|Seq#Length_28412| s) (|Seq#Drop_28412| s n))
)))
(assert (forall ((s@@0 T@Seq_3104) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3104| s@@0)) (= (|Seq#Length_3104| (|Seq#Drop_3104| s@@0 n@@0)) (- (|Seq#Length_3104| s@@0) n@@0))) (=> (< (|Seq#Length_3104| s@@0) n@@0) (= (|Seq#Length_3104| (|Seq#Drop_3104| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3104| (|Seq#Drop_3104| s@@0 n@@0)) (|Seq#Length_3104| s@@0))))
 :qid |stdinbpl.309:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3104| (|Seq#Drop_3104| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3104| s@@0) (|Seq#Drop_3104| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_17745) (Heap1 T@PolymorphicMapType_17745) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Real) ) (! (= (getPredWandId_11147_5244 (wand arg1 arg2 arg3 arg4)) 1)
 :qid |stdinbpl.795:15|
 :skolemid |123|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((Heap T@PolymorphicMapType_17745) (Mask T@PolymorphicMapType_17766) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_17745) (Heap1@@0 T@PolymorphicMapType_17745) (Heap2 T@PolymorphicMapType_17745) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_27391_27392) ) (!  (not (select (|PolymorphicMapType_18294_27391_26732#PolymorphicMapType_18294| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_27391_26732#PolymorphicMapType_18294| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_27404_27409) ) (!  (not (select (|PolymorphicMapType_18294_27391_55896#PolymorphicMapType_18294| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_27391_55896#PolymorphicMapType_18294| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11198_17819) ) (!  (not (select (|PolymorphicMapType_18294_27391_17819#PolymorphicMapType_18294| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_27391_17819#PolymorphicMapType_18294| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11198_53) ) (!  (not (select (|PolymorphicMapType_18294_27391_53#PolymorphicMapType_18294| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_27391_53#PolymorphicMapType_18294| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11198_5549) ) (!  (not (select (|PolymorphicMapType_18294_27391_5549#PolymorphicMapType_18294| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_27391_5549#PolymorphicMapType_18294| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_26731_26732) ) (!  (not (select (|PolymorphicMapType_18294_26702_26732#PolymorphicMapType_18294| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_26702_26732#PolymorphicMapType_18294| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_26715_26720) ) (!  (not (select (|PolymorphicMapType_18294_26702_54848#PolymorphicMapType_18294| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_26702_54848#PolymorphicMapType_18294| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_26702_17819) ) (!  (not (select (|PolymorphicMapType_18294_26702_17819#PolymorphicMapType_18294| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_26702_17819#PolymorphicMapType_18294| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_26702_53) ) (!  (not (select (|PolymorphicMapType_18294_26702_53#PolymorphicMapType_18294| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_26702_53#PolymorphicMapType_18294| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_26702_5244) ) (!  (not (select (|PolymorphicMapType_18294_26702_5549#PolymorphicMapType_18294| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_26702_5549#PolymorphicMapType_18294| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_11195_11199) ) (!  (not (select (|PolymorphicMapType_18294_11195_26732#PolymorphicMapType_18294| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_11195_26732#PolymorphicMapType_18294| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_11195_26720) ) (!  (not (select (|PolymorphicMapType_18294_11195_53800#PolymorphicMapType_18294| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_11195_53800#PolymorphicMapType_18294| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_17818_17819) ) (!  (not (select (|PolymorphicMapType_18294_11195_17819#PolymorphicMapType_18294| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_11195_17819#PolymorphicMapType_18294| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_17805_53) ) (!  (not (select (|PolymorphicMapType_18294_11195_53#PolymorphicMapType_18294| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_11195_53#PolymorphicMapType_18294| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_27344_5549) ) (!  (not (select (|PolymorphicMapType_18294_11195_5549#PolymorphicMapType_18294| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18294_11195_5549#PolymorphicMapType_18294| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.673:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_28412) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_28412| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_28412| (|Seq#Drop_28412| s@@1 n@@1) j) (|Seq#Index_28412| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.330:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_28412| (|Seq#Drop_28412| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3104) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3104| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3104| (|Seq#Drop_3104| s@@2 n@@2) j@@0) (|Seq#Index_3104| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.330:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3104| (|Seq#Drop_3104| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_28412| |Seq#Empty_28412|) 0))
(assert (= (|Seq#Length_3104| |Seq#Empty_3104|) 0))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_11198_11199 (p1 x))
 :qid |stdinbpl.823:15|
 :skolemid |126|
 :pattern ( (p1 x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_17745) (x@@0 T@Ref) ) (! (|p1#everUsed_11198| (p1 x@@0))
 :qid |stdinbpl.842:15|
 :skolemid |130|
 :pattern ( (|p1#trigger_11198| Heap@@0 (p1 x@@0)))
)))
(assert (forall ((s@@3 T@Seq_28412) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_28412| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_28412| (|Seq#Update_28412| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_28412| (|Seq#Update_28412| s@@3 i v) n@@3) (|Seq#Index_28412| s@@3 n@@3)))))
 :qid |stdinbpl.285:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_28412| (|Seq#Update_28412| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_28412| s@@3 n@@3) (|Seq#Update_28412| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3104) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3104| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3104| (|Seq#Update_3104| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3104| (|Seq#Update_3104| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3104| s@@4 n@@4)))))
 :qid |stdinbpl.285:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3104| (|Seq#Update_3104| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3104| s@@4 n@@4) (|Seq#Update_3104| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_28412) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_28412| s@@5)) (= (|Seq#Length_28412| (|Seq#Take_28412| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_28412| s@@5) n@@5) (= (|Seq#Length_28412| (|Seq#Take_28412| s@@5 n@@5)) (|Seq#Length_28412| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_28412| (|Seq#Take_28412| s@@5 n@@5)) 0)))
 :qid |stdinbpl.296:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_28412| (|Seq#Take_28412| s@@5 n@@5)))
 :pattern ( (|Seq#Take_28412| s@@5 n@@5) (|Seq#Length_28412| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3104) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3104| s@@6)) (= (|Seq#Length_3104| (|Seq#Take_3104| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3104| s@@6) n@@6) (= (|Seq#Length_3104| (|Seq#Take_3104| s@@6 n@@6)) (|Seq#Length_3104| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3104| (|Seq#Take_3104| s@@6 n@@6)) 0)))
 :qid |stdinbpl.296:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3104| (|Seq#Take_3104| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3104| s@@6 n@@6) (|Seq#Length_3104| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3104| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.570:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3104| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_28412) (x@@1 T@Ref) ) (!  (=> (|Seq#Contains_11232| s@@7 x@@1) (and (and (<= 0 (|Seq#Skolem_11232| s@@7 x@@1)) (< (|Seq#Skolem_11232| s@@7 x@@1) (|Seq#Length_28412| s@@7))) (= (|Seq#Index_28412| s@@7 (|Seq#Skolem_11232| s@@7 x@@1)) x@@1)))
 :qid |stdinbpl.428:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_11232| s@@7 x@@1))
)))
(assert (forall ((s@@8 T@Seq_3104) (x@@2 Int) ) (!  (=> (|Seq#Contains_3104| s@@8 x@@2) (and (and (<= 0 (|Seq#Skolem_3104| s@@8 x@@2)) (< (|Seq#Skolem_3104| s@@8 x@@2) (|Seq#Length_3104| s@@8))) (= (|Seq#Index_3104| s@@8 (|Seq#Skolem_3104| s@@8 x@@2)) x@@2)))
 :qid |stdinbpl.428:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3104| s@@8 x@@2))
)))
(assert (forall ((s@@9 T@Seq_28412) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_28412| s@@9 n@@7) s@@9))
 :qid |stdinbpl.412:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_28412| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3104) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3104| s@@10 n@@8) s@@10))
 :qid |stdinbpl.412:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3104| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.265:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.263:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.676:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_17745) (ExhaleHeap T@PolymorphicMapType_17745) (Mask@@0 T@PolymorphicMapType_17766) (pm_f_16 T@Field_26731_26732) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_26702_11199 Mask@@0 null pm_f_16) (IsPredicateField_11160_11161 pm_f_16)) (= (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@1) null (PredicateMaskField_26702 pm_f_16)) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap) null (PredicateMaskField_26702 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_11160_11161 pm_f_16) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap) null (PredicateMaskField_26702 pm_f_16)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_17745) (ExhaleHeap@@0 T@PolymorphicMapType_17745) (Mask@@1 T@PolymorphicMapType_17766) (pm_f_16@@0 T@Field_27391_27392) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11198_11199 Mask@@1 null pm_f_16@@0) (IsPredicateField_11198_11199 pm_f_16@@0)) (= (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@2) null (PredicateMaskField_11198 pm_f_16@@0)) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@0) null (PredicateMaskField_11198 pm_f_16@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_11198_11199 pm_f_16@@0) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@0) null (PredicateMaskField_11198 pm_f_16@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_17745) (ExhaleHeap@@1 T@PolymorphicMapType_17745) (Mask@@2 T@PolymorphicMapType_17766) (pm_f_16@@1 T@Field_11195_11199) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11195_11199 Mask@@2 null pm_f_16@@1) (IsPredicateField_11195_52182 pm_f_16@@1)) (= (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@3) null (PredicateMaskField_11195 pm_f_16@@1)) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@1) null (PredicateMaskField_11195 pm_f_16@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_11195_52182 pm_f_16@@1) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@1) null (PredicateMaskField_11195 pm_f_16@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_17745) (ExhaleHeap@@2 T@PolymorphicMapType_17745) (Mask@@3 T@PolymorphicMapType_17766) (pm_f_16@@2 T@Field_26731_26732) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_26702_11199 Mask@@3 null pm_f_16@@2) (IsWandField_11160_11161 pm_f_16@@2)) (= (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@4) null (WandMaskField_11160 pm_f_16@@2)) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@2) null (WandMaskField_11160 pm_f_16@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_11160_11161 pm_f_16@@2) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@2) null (WandMaskField_11160 pm_f_16@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_17745) (ExhaleHeap@@3 T@PolymorphicMapType_17745) (Mask@@4 T@PolymorphicMapType_17766) (pm_f_16@@3 T@Field_27391_27392) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11198_11199 Mask@@4 null pm_f_16@@3) (IsWandField_11198_57546 pm_f_16@@3)) (= (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@5) null (WandMaskField_11198 pm_f_16@@3)) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@3) null (WandMaskField_11198 pm_f_16@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsWandField_11198_57546 pm_f_16@@3) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@3) null (WandMaskField_11198 pm_f_16@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_17745) (ExhaleHeap@@4 T@PolymorphicMapType_17745) (Mask@@5 T@PolymorphicMapType_17766) (pm_f_16@@4 T@Field_11195_11199) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_11195_11199 Mask@@5 null pm_f_16@@4) (IsWandField_11195_57189 pm_f_16@@4)) (= (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@6) null (WandMaskField_11195 pm_f_16@@4)) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@4) null (WandMaskField_11195 pm_f_16@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_11195_57189 pm_f_16@@4) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@4) null (WandMaskField_11195 pm_f_16@@4)))
)))
(assert (forall ((x@@3 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_11232| (|Seq#Singleton_28412| x@@3) y) (= x@@3 y))
 :qid |stdinbpl.553:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_11232| (|Seq#Singleton_28412| x@@3) y))
)))
(assert (forall ((x@@4 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3104| (|Seq#Singleton_3104| x@@4) y@@0) (= x@@4 y@@0))
 :qid |stdinbpl.553:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3104| (|Seq#Singleton_3104| x@@4) y@@0))
)))
(assert (forall ((s@@11 T@Seq_28412) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_28412| s@@11))) (= (|Seq#Index_28412| (|Seq#Take_28412| s@@11 n@@9) j@@3) (|Seq#Index_28412| s@@11 j@@3)))
 :qid |stdinbpl.304:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_28412| (|Seq#Take_28412| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_28412| s@@11 j@@3) (|Seq#Take_28412| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3104) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3104| s@@12))) (= (|Seq#Index_3104| (|Seq#Take_3104| s@@12 n@@10) j@@4) (|Seq#Index_3104| s@@12 j@@4)))
 :qid |stdinbpl.304:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3104| (|Seq#Take_3104| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3104| s@@12 j@@4) (|Seq#Take_3104| s@@12 n@@10))
)))
(assert (forall ((x@@5 T@Ref) (x2 T@Ref) ) (!  (=> (= (p1 x@@5) (p1 x2)) (= x@@5 x2))
 :qid |stdinbpl.833:15|
 :skolemid |128|
 :pattern ( (p1 x@@5) (p1 x2))
)))
(assert (forall ((x@@6 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|p1#sm| x@@6) (|p1#sm| x2@@0)) (= x@@6 x2@@0))
 :qid |stdinbpl.837:15|
 :skolemid |129|
 :pattern ( (|p1#sm| x@@6) (|p1#sm| x2@@0))
)))
(assert (forall ((s@@13 T@Seq_28412) (t T@Seq_28412) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_28412| s@@13))) (< n@@11 (|Seq#Length_28412| (|Seq#Append_28412| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_28412| s@@13)) (|Seq#Length_28412| s@@13)) n@@11) (= (|Seq#Take_28412| (|Seq#Append_28412| s@@13 t) n@@11) (|Seq#Append_28412| s@@13 (|Seq#Take_28412| t (|Seq#Sub| n@@11 (|Seq#Length_28412| s@@13)))))))
 :qid |stdinbpl.389:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_28412| (|Seq#Append_28412| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3104) (t@@0 T@Seq_3104) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3104| s@@14))) (< n@@12 (|Seq#Length_3104| (|Seq#Append_3104| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3104| s@@14)) (|Seq#Length_3104| s@@14)) n@@12) (= (|Seq#Take_3104| (|Seq#Append_3104| s@@14 t@@0) n@@12) (|Seq#Append_3104| s@@14 (|Seq#Take_3104| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3104| s@@14)))))))
 :qid |stdinbpl.389:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3104| (|Seq#Append_3104| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_17745) (ExhaleHeap@@5 T@PolymorphicMapType_17745) (Mask@@6 T@PolymorphicMapType_17766) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@7) o_34 $allocated) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@5) o_34 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@5) o_34 $allocated))
)))
(assert (forall ((p T@Field_27391_27392) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_27391_27391 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27391_27391 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_26731_26732) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_26702_26702 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26702_26702 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_11195_11199) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_17805_17805 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17805_17805 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_28412) (s1 T@Seq_28412) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_28412|)) (not (= s1 |Seq#Empty_28412|))) (<= (|Seq#Length_28412| s0) n@@13)) (< n@@13 (|Seq#Length_28412| (|Seq#Append_28412| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_28412| s0)) (|Seq#Length_28412| s0)) n@@13) (= (|Seq#Index_28412| (|Seq#Append_28412| s0 s1) n@@13) (|Seq#Index_28412| s1 (|Seq#Sub| n@@13 (|Seq#Length_28412| s0))))))
 :qid |stdinbpl.276:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_28412| (|Seq#Append_28412| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3104) (s1@@0 T@Seq_3104) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3104|)) (not (= s1@@0 |Seq#Empty_3104|))) (<= (|Seq#Length_3104| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3104| (|Seq#Append_3104| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3104| s0@@0)) (|Seq#Length_3104| s0@@0)) n@@14) (= (|Seq#Index_3104| (|Seq#Append_3104| s0@@0 s1@@0) n@@14) (|Seq#Index_3104| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3104| s0@@0))))))
 :qid |stdinbpl.276:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3104| (|Seq#Append_3104| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_11195_5549 f_7)))
(assert  (not (IsWandField_11195_5549 f_7)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_17745) (ExhaleHeap@@6 T@PolymorphicMapType_17745) (Mask@@7 T@PolymorphicMapType_17766) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@8 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_17766) (o_2@@14 T@Ref) (f_4@@14 T@Field_27404_27409) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11198_68178 f_4@@14))) (not (IsWandField_11198_68194 f_4@@14))) (<= (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_17766) (o_2@@15 T@Ref) (f_4@@15 T@Field_11198_17819) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_11198_17819 f_4@@15))) (not (IsWandField_11198_17819 f_4@@15))) (<= (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_17766) (o_2@@16 T@Ref) (f_4@@16 T@Field_11198_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_11198_53 f_4@@16))) (not (IsWandField_11198_53 f_4@@16))) (<= (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_17766) (o_2@@17 T@Ref) (f_4@@17 T@Field_27391_27392) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_11198_11199 f_4@@17))) (not (IsWandField_11198_57546 f_4@@17))) (<= (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_17766) (o_2@@18 T@Ref) (f_4@@18 T@Field_11198_5549) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_11198_5549 f_4@@18))) (not (IsWandField_11198_5549 f_4@@18))) (<= (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_17766) (o_2@@19 T@Ref) (f_4@@19 T@Field_26715_26720) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_11147_67347 f_4@@19))) (not (IsWandField_11147_67363 f_4@@19))) (<= (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_17766) (o_2@@20 T@Ref) (f_4@@20 T@Field_26702_17819) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_11147_17819 f_4@@20))) (not (IsWandField_11147_17819 f_4@@20))) (<= (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_17766) (o_2@@21 T@Ref) (f_4@@21 T@Field_26702_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_11147_53 f_4@@21))) (not (IsWandField_11147_53 f_4@@21))) (<= (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_17766) (o_2@@22 T@Ref) (f_4@@22 T@Field_26731_26732) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_11160_11161 f_4@@22))) (not (IsWandField_11160_11161 f_4@@22))) (<= (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_17766) (o_2@@23 T@Ref) (f_4@@23 T@Field_26702_5244) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_11147_5244 f_4@@23))) (not (IsWandField_11147_5244 f_4@@23))) (<= (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_17766) (o_2@@24 T@Ref) (f_4@@24 T@Field_11195_26720) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_11195_66530 f_4@@24))) (not (IsWandField_11195_66546 f_4@@24))) (<= (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_17766) (o_2@@25 T@Ref) (f_4@@25 T@Field_17818_17819) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_11195_17819 f_4@@25))) (not (IsWandField_11195_17819 f_4@@25))) (<= (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_17766) (o_2@@26 T@Ref) (f_4@@26 T@Field_17805_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_11195_53 f_4@@26))) (not (IsWandField_11195_53 f_4@@26))) (<= (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_17766) (o_2@@27 T@Ref) (f_4@@27 T@Field_11195_11199) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_11195_52182 f_4@@27))) (not (IsWandField_11195_57189 f_4@@27))) (<= (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_17766) (o_2@@28 T@Ref) (f_4@@28 T@Field_27344_5549) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_11195_5549 f_4@@28))) (not (IsWandField_11195_5549 f_4@@28))) (<= (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_17766) (o_2@@29 T@Ref) (f_4@@29 T@Field_26715_26720) ) (! (= (HasDirectPerm_26702_51937 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26702_51937 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_17766) (o_2@@30 T@Ref) (f_4@@30 T@Field_26702_17819) ) (! (= (HasDirectPerm_26702_17819 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26702_17819 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_17766) (o_2@@31 T@Ref) (f_4@@31 T@Field_26702_53) ) (! (= (HasDirectPerm_26702_53 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26702_53 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_17766) (o_2@@32 T@Ref) (f_4@@32 T@Field_26731_26732) ) (! (= (HasDirectPerm_26702_11199 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26702_11199 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_17766) (o_2@@33 T@Ref) (f_4@@33 T@Field_26702_5244) ) (! (= (HasDirectPerm_26702_5549 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26702_5549 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_17766) (o_2@@34 T@Ref) (f_4@@34 T@Field_27404_27409) ) (! (= (HasDirectPerm_11198_50815 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11198_50815 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_17766) (o_2@@35 T@Ref) (f_4@@35 T@Field_11198_17819) ) (! (= (HasDirectPerm_11198_17819 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11198_17819 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_17766) (o_2@@36 T@Ref) (f_4@@36 T@Field_11198_53) ) (! (= (HasDirectPerm_11198_53 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11198_53 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_17766) (o_2@@37 T@Ref) (f_4@@37 T@Field_27391_27392) ) (! (= (HasDirectPerm_11198_11199 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11198_11199 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_17766) (o_2@@38 T@Ref) (f_4@@38 T@Field_11198_5549) ) (! (= (HasDirectPerm_11198_5549 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11198_5549 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_17766) (o_2@@39 T@Ref) (f_4@@39 T@Field_11195_26720) ) (! (= (HasDirectPerm_11195_49674 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11195_49674 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_17766) (o_2@@40 T@Ref) (f_4@@40 T@Field_17818_17819) ) (! (= (HasDirectPerm_11195_17819 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11195_17819 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_17766) (o_2@@41 T@Ref) (f_4@@41 T@Field_17805_53) ) (! (= (HasDirectPerm_11195_53 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11195_53 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_17766) (o_2@@42 T@Ref) (f_4@@42 T@Field_11195_11199) ) (! (= (HasDirectPerm_11195_11199 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11195_11199 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_17766) (o_2@@43 T@Ref) (f_4@@43 T@Field_27344_5549) ) (! (= (HasDirectPerm_11195_5549 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11195_5549 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 Real) ) (! (IsWandField_11147_5244 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
 :qid |stdinbpl.775:15|
 :skolemid |118|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 Real) ) (! (IsWandField_11160_11161 (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
 :qid |stdinbpl.779:15|
 :skolemid |119|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3104| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.568:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3104| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_17745) (ExhaleHeap@@7 T@PolymorphicMapType_17745) (Mask@@38 T@PolymorphicMapType_17766) (o_34@@0 T@Ref) (f_40 T@Field_26715_26720) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_26702_51937 Mask@@38 o_34@@0 f_40) (= (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@9) o_34@@0 f_40) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@7) o_34@@0 f_40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@7) o_34@@0 f_40))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_17745) (ExhaleHeap@@8 T@PolymorphicMapType_17745) (Mask@@39 T@PolymorphicMapType_17766) (o_34@@1 T@Ref) (f_40@@0 T@Field_26702_17819) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_26702_17819 Mask@@39 o_34@@1 f_40@@0) (= (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@10) o_34@@1 f_40@@0) (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@8) o_34@@1 f_40@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@8) o_34@@1 f_40@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_17745) (ExhaleHeap@@9 T@PolymorphicMapType_17745) (Mask@@40 T@PolymorphicMapType_17766) (o_34@@2 T@Ref) (f_40@@1 T@Field_26702_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_26702_53 Mask@@40 o_34@@2 f_40@@1) (= (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@11) o_34@@2 f_40@@1) (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@9) o_34@@2 f_40@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@9) o_34@@2 f_40@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_17745) (ExhaleHeap@@10 T@PolymorphicMapType_17745) (Mask@@41 T@PolymorphicMapType_17766) (o_34@@3 T@Ref) (f_40@@2 T@Field_26731_26732) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_26702_11199 Mask@@41 o_34@@3 f_40@@2) (= (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@12) o_34@@3 f_40@@2) (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@10) o_34@@3 f_40@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@10) o_34@@3 f_40@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_17745) (ExhaleHeap@@11 T@PolymorphicMapType_17745) (Mask@@42 T@PolymorphicMapType_17766) (o_34@@4 T@Ref) (f_40@@3 T@Field_26702_5244) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_26702_5549 Mask@@42 o_34@@4 f_40@@3) (= (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@13) o_34@@4 f_40@@3) (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@11) o_34@@4 f_40@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@11) o_34@@4 f_40@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_17745) (ExhaleHeap@@12 T@PolymorphicMapType_17745) (Mask@@43 T@PolymorphicMapType_17766) (o_34@@5 T@Ref) (f_40@@4 T@Field_27404_27409) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_11198_50815 Mask@@43 o_34@@5 f_40@@4) (= (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@14) o_34@@5 f_40@@4) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@12) o_34@@5 f_40@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@12) o_34@@5 f_40@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_17745) (ExhaleHeap@@13 T@PolymorphicMapType_17745) (Mask@@44 T@PolymorphicMapType_17766) (o_34@@6 T@Ref) (f_40@@5 T@Field_11198_17819) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_11198_17819 Mask@@44 o_34@@6 f_40@@5) (= (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@15) o_34@@6 f_40@@5) (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@13) o_34@@6 f_40@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@13) o_34@@6 f_40@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_17745) (ExhaleHeap@@14 T@PolymorphicMapType_17745) (Mask@@45 T@PolymorphicMapType_17766) (o_34@@7 T@Ref) (f_40@@6 T@Field_11198_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_11198_53 Mask@@45 o_34@@7 f_40@@6) (= (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@16) o_34@@7 f_40@@6) (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@14) o_34@@7 f_40@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@14) o_34@@7 f_40@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_17745) (ExhaleHeap@@15 T@PolymorphicMapType_17745) (Mask@@46 T@PolymorphicMapType_17766) (o_34@@8 T@Ref) (f_40@@7 T@Field_27391_27392) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_11198_11199 Mask@@46 o_34@@8 f_40@@7) (= (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@17) o_34@@8 f_40@@7) (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@15) o_34@@8 f_40@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@15) o_34@@8 f_40@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_17745) (ExhaleHeap@@16 T@PolymorphicMapType_17745) (Mask@@47 T@PolymorphicMapType_17766) (o_34@@9 T@Ref) (f_40@@8 T@Field_11198_5549) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_11198_5549 Mask@@47 o_34@@9 f_40@@8) (= (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@18) o_34@@9 f_40@@8) (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@16) o_34@@9 f_40@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@16) o_34@@9 f_40@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_17745) (ExhaleHeap@@17 T@PolymorphicMapType_17745) (Mask@@48 T@PolymorphicMapType_17766) (o_34@@10 T@Ref) (f_40@@9 T@Field_11195_26720) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_11195_49674 Mask@@48 o_34@@10 f_40@@9) (= (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@19) o_34@@10 f_40@@9) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@17) o_34@@10 f_40@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@17) o_34@@10 f_40@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_17745) (ExhaleHeap@@18 T@PolymorphicMapType_17745) (Mask@@49 T@PolymorphicMapType_17766) (o_34@@11 T@Ref) (f_40@@10 T@Field_17818_17819) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_11195_17819 Mask@@49 o_34@@11 f_40@@10) (= (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@20) o_34@@11 f_40@@10) (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@18) o_34@@11 f_40@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@18) o_34@@11 f_40@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_17745) (ExhaleHeap@@19 T@PolymorphicMapType_17745) (Mask@@50 T@PolymorphicMapType_17766) (o_34@@12 T@Ref) (f_40@@11 T@Field_17805_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_11195_53 Mask@@50 o_34@@12 f_40@@11) (= (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@21) o_34@@12 f_40@@11) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@19) o_34@@12 f_40@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@19) o_34@@12 f_40@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_17745) (ExhaleHeap@@20 T@PolymorphicMapType_17745) (Mask@@51 T@PolymorphicMapType_17766) (o_34@@13 T@Ref) (f_40@@12 T@Field_11195_11199) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_11195_11199 Mask@@51 o_34@@13 f_40@@12) (= (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@22) o_34@@13 f_40@@12) (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@20) o_34@@13 f_40@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@20) o_34@@13 f_40@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_17745) (ExhaleHeap@@21 T@PolymorphicMapType_17745) (Mask@@52 T@PolymorphicMapType_17766) (o_34@@14 T@Ref) (f_40@@13 T@Field_27344_5549) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_11195_5549 Mask@@52 o_34@@14 f_40@@13) (= (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@23) o_34@@14 f_40@@13) (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@21) o_34@@14 f_40@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@21) o_34@@14 f_40@@13))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Real) ) (!  (not (IsPredicateField_11147_5244 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2)))
 :qid |stdinbpl.783:15|
 :skolemid |120|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 Real) ) (!  (not (IsPredicateField_11160_11161 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3)))
 :qid |stdinbpl.787:15|
 :skolemid |121|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3))
)))
(assert (forall ((s0@@1 T@Seq_28412) (s1@@1 T@Seq_28412) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_28412|)) (not (= s1@@1 |Seq#Empty_28412|))) (= (|Seq#Length_28412| (|Seq#Append_28412| s0@@1 s1@@1)) (+ (|Seq#Length_28412| s0@@1) (|Seq#Length_28412| s1@@1))))
 :qid |stdinbpl.245:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_28412| (|Seq#Append_28412| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3104) (s1@@2 T@Seq_3104) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3104|)) (not (= s1@@2 |Seq#Empty_3104|))) (= (|Seq#Length_3104| (|Seq#Append_3104| s0@@2 s1@@2)) (+ (|Seq#Length_3104| s0@@2) (|Seq#Length_3104| s1@@2))))
 :qid |stdinbpl.245:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3104| (|Seq#Append_3104| s0@@2 s1@@2)))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 Real) ) (! (= (|wand#sm| arg1@@4 arg2@@4 arg3@@4 arg4@@4) (WandMaskField_11160 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
 :qid |stdinbpl.791:15|
 :skolemid |122|
 :pattern ( (WandMaskField_11160 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_27404_27409) ) (! (= (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_11198_17819) ) (! (= (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_11198_53) ) (! (= (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_27391_27392) ) (! (= (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_11198_5549) ) (! (= (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_26715_26720) ) (! (= (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_26702_17819) ) (! (= (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_26702_53) ) (! (= (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_26731_26732) ) (! (= (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_26702_5244) ) (! (= (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_11195_26720) ) (! (= (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_17818_17819) ) (! (= (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_17805_53) ) (! (= (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_11195_11199) ) (! (= (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_27344_5549) ) (! (= (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@15 T@Seq_28412) (t@@1 T@Seq_28412) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_28412| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_28412| s@@15)) (|Seq#Length_28412| s@@15)) n@@15) (= (|Seq#Drop_28412| (|Seq#Append_28412| s@@15 t@@1) n@@15) (|Seq#Drop_28412| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_28412| s@@15))))))
 :qid |stdinbpl.402:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_28412| (|Seq#Append_28412| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3104) (t@@2 T@Seq_3104) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3104| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3104| s@@16)) (|Seq#Length_3104| s@@16)) n@@16) (= (|Seq#Drop_3104| (|Seq#Append_3104| s@@16 t@@2) n@@16) (|Seq#Drop_3104| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3104| s@@16))))))
 :qid |stdinbpl.402:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3104| (|Seq#Append_3104| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_17766) (SummandMask1 T@PolymorphicMapType_17766) (SummandMask2 T@PolymorphicMapType_17766) (o_2@@59 T@Ref) (f_4@@59 T@Field_27404_27409) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_17766) (SummandMask1@@0 T@PolymorphicMapType_17766) (SummandMask2@@0 T@PolymorphicMapType_17766) (o_2@@60 T@Ref) (f_4@@60 T@Field_11198_17819) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_17766) (SummandMask1@@1 T@PolymorphicMapType_17766) (SummandMask2@@1 T@PolymorphicMapType_17766) (o_2@@61 T@Ref) (f_4@@61 T@Field_11198_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_17766) (SummandMask1@@2 T@PolymorphicMapType_17766) (SummandMask2@@2 T@PolymorphicMapType_17766) (o_2@@62 T@Ref) (f_4@@62 T@Field_27391_27392) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_17766) (SummandMask1@@3 T@PolymorphicMapType_17766) (SummandMask2@@3 T@PolymorphicMapType_17766) (o_2@@63 T@Ref) (f_4@@63 T@Field_11198_5549) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_17766) (SummandMask1@@4 T@PolymorphicMapType_17766) (SummandMask2@@4 T@PolymorphicMapType_17766) (o_2@@64 T@Ref) (f_4@@64 T@Field_26715_26720) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_17766) (SummandMask1@@5 T@PolymorphicMapType_17766) (SummandMask2@@5 T@PolymorphicMapType_17766) (o_2@@65 T@Ref) (f_4@@65 T@Field_26702_17819) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_17766) (SummandMask1@@6 T@PolymorphicMapType_17766) (SummandMask2@@6 T@PolymorphicMapType_17766) (o_2@@66 T@Ref) (f_4@@66 T@Field_26702_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_17766) (SummandMask1@@7 T@PolymorphicMapType_17766) (SummandMask2@@7 T@PolymorphicMapType_17766) (o_2@@67 T@Ref) (f_4@@67 T@Field_26731_26732) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_17766) (SummandMask1@@8 T@PolymorphicMapType_17766) (SummandMask2@@8 T@PolymorphicMapType_17766) (o_2@@68 T@Ref) (f_4@@68 T@Field_26702_5244) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_17766) (SummandMask1@@9 T@PolymorphicMapType_17766) (SummandMask2@@9 T@PolymorphicMapType_17766) (o_2@@69 T@Ref) (f_4@@69 T@Field_11195_26720) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_17766) (SummandMask1@@10 T@PolymorphicMapType_17766) (SummandMask2@@10 T@PolymorphicMapType_17766) (o_2@@70 T@Ref) (f_4@@70 T@Field_17818_17819) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_17766) (SummandMask1@@11 T@PolymorphicMapType_17766) (SummandMask2@@11 T@PolymorphicMapType_17766) (o_2@@71 T@Ref) (f_4@@71 T@Field_17805_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_17766) (SummandMask1@@12 T@PolymorphicMapType_17766) (SummandMask2@@12 T@PolymorphicMapType_17766) (o_2@@72 T@Ref) (f_4@@72 T@Field_11195_11199) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_17766) (SummandMask1@@13 T@PolymorphicMapType_17766) (SummandMask2@@13 T@PolymorphicMapType_17766) (o_2@@73 T@Ref) (f_4@@73 T@Field_27344_5549) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_17745) (ExhaleHeap@@22 T@PolymorphicMapType_17745) (Mask@@53 T@PolymorphicMapType_17766) (pm_f_16@@5 T@Field_26731_26732) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_26702_11199 Mask@@53 null pm_f_16@@5) (IsPredicateField_11160_11161 pm_f_16@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16 T@Ref) (f_40@@14 T@Field_27344_5549) ) (!  (=> (select (|PolymorphicMapType_18294_11195_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16 f_40@@14) (= (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@24) o2_16 f_40@@14) (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16 f_40@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16 f_40@@14))
)) (forall ((o2_16@@0 T@Ref) (f_40@@15 T@Field_17805_53) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@0 f_40@@15) (= (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@24) o2_16@@0 f_40@@15) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@0 f_40@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@0 f_40@@15))
))) (forall ((o2_16@@1 T@Ref) (f_40@@16 T@Field_17818_17819) ) (!  (=> (select (|PolymorphicMapType_18294_11195_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@1 f_40@@16) (= (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@24) o2_16@@1 f_40@@16) (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@1 f_40@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@1 f_40@@16))
))) (forall ((o2_16@@2 T@Ref) (f_40@@17 T@Field_11195_26720) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53800#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@2 f_40@@17) (= (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@24) o2_16@@2 f_40@@17) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@2 f_40@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@2 f_40@@17))
))) (forall ((o2_16@@3 T@Ref) (f_40@@18 T@Field_11195_11199) ) (!  (=> (select (|PolymorphicMapType_18294_11195_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@3 f_40@@18) (= (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@24) o2_16@@3 f_40@@18) (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@3 f_40@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@3 f_40@@18))
))) (forall ((o2_16@@4 T@Ref) (f_40@@19 T@Field_26702_5244) ) (!  (=> (select (|PolymorphicMapType_18294_26702_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@4 f_40@@19) (= (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@24) o2_16@@4 f_40@@19) (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@4 f_40@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@4 f_40@@19))
))) (forall ((o2_16@@5 T@Ref) (f_40@@20 T@Field_26702_53) ) (!  (=> (select (|PolymorphicMapType_18294_26702_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@5 f_40@@20) (= (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@24) o2_16@@5 f_40@@20) (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@5 f_40@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@5 f_40@@20))
))) (forall ((o2_16@@6 T@Ref) (f_40@@21 T@Field_26702_17819) ) (!  (=> (select (|PolymorphicMapType_18294_26702_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@6 f_40@@21) (= (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@24) o2_16@@6 f_40@@21) (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@6 f_40@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@6 f_40@@21))
))) (forall ((o2_16@@7 T@Ref) (f_40@@22 T@Field_26715_26720) ) (!  (=> (select (|PolymorphicMapType_18294_26702_54848#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@7 f_40@@22) (= (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) o2_16@@7 f_40@@22) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@7 f_40@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@7 f_40@@22))
))) (forall ((o2_16@@8 T@Ref) (f_40@@23 T@Field_26731_26732) ) (!  (=> (select (|PolymorphicMapType_18294_26702_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@8 f_40@@23) (= (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@24) o2_16@@8 f_40@@23) (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@8 f_40@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@8 f_40@@23))
))) (forall ((o2_16@@9 T@Ref) (f_40@@24 T@Field_11198_5549) ) (!  (=> (select (|PolymorphicMapType_18294_27391_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@9 f_40@@24) (= (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@24) o2_16@@9 f_40@@24) (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@9 f_40@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@9 f_40@@24))
))) (forall ((o2_16@@10 T@Ref) (f_40@@25 T@Field_11198_53) ) (!  (=> (select (|PolymorphicMapType_18294_27391_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@10 f_40@@25) (= (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@24) o2_16@@10 f_40@@25) (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@10 f_40@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@10 f_40@@25))
))) (forall ((o2_16@@11 T@Ref) (f_40@@26 T@Field_11198_17819) ) (!  (=> (select (|PolymorphicMapType_18294_27391_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@11 f_40@@26) (= (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@24) o2_16@@11 f_40@@26) (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@11 f_40@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@11 f_40@@26))
))) (forall ((o2_16@@12 T@Ref) (f_40@@27 T@Field_27404_27409) ) (!  (=> (select (|PolymorphicMapType_18294_27391_55896#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@12 f_40@@27) (= (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@24) o2_16@@12 f_40@@27) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@12 f_40@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@12 f_40@@27))
))) (forall ((o2_16@@13 T@Ref) (f_40@@28 T@Field_27391_27392) ) (!  (=> (select (|PolymorphicMapType_18294_27391_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@24) null (PredicateMaskField_26702 pm_f_16@@5))) o2_16@@13 f_40@@28) (= (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@24) o2_16@@13 f_40@@28) (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@13 f_40@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@22) o2_16@@13 f_40@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (IsPredicateField_11160_11161 pm_f_16@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_17745) (ExhaleHeap@@23 T@PolymorphicMapType_17745) (Mask@@54 T@PolymorphicMapType_17766) (pm_f_16@@6 T@Field_27391_27392) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_11198_11199 Mask@@54 null pm_f_16@@6) (IsPredicateField_11198_11199 pm_f_16@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@14 T@Ref) (f_40@@29 T@Field_27344_5549) ) (!  (=> (select (|PolymorphicMapType_18294_11195_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@14 f_40@@29) (= (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@25) o2_16@@14 f_40@@29) (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@14 f_40@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@14 f_40@@29))
)) (forall ((o2_16@@15 T@Ref) (f_40@@30 T@Field_17805_53) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@15 f_40@@30) (= (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@25) o2_16@@15 f_40@@30) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@15 f_40@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@15 f_40@@30))
))) (forall ((o2_16@@16 T@Ref) (f_40@@31 T@Field_17818_17819) ) (!  (=> (select (|PolymorphicMapType_18294_11195_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@16 f_40@@31) (= (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@25) o2_16@@16 f_40@@31) (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@16 f_40@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@16 f_40@@31))
))) (forall ((o2_16@@17 T@Ref) (f_40@@32 T@Field_11195_26720) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53800#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@17 f_40@@32) (= (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@25) o2_16@@17 f_40@@32) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@17 f_40@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@17 f_40@@32))
))) (forall ((o2_16@@18 T@Ref) (f_40@@33 T@Field_11195_11199) ) (!  (=> (select (|PolymorphicMapType_18294_11195_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@18 f_40@@33) (= (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@25) o2_16@@18 f_40@@33) (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@18 f_40@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@18 f_40@@33))
))) (forall ((o2_16@@19 T@Ref) (f_40@@34 T@Field_26702_5244) ) (!  (=> (select (|PolymorphicMapType_18294_26702_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@19 f_40@@34) (= (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@25) o2_16@@19 f_40@@34) (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@19 f_40@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@19 f_40@@34))
))) (forall ((o2_16@@20 T@Ref) (f_40@@35 T@Field_26702_53) ) (!  (=> (select (|PolymorphicMapType_18294_26702_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@20 f_40@@35) (= (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@25) o2_16@@20 f_40@@35) (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@20 f_40@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@20 f_40@@35))
))) (forall ((o2_16@@21 T@Ref) (f_40@@36 T@Field_26702_17819) ) (!  (=> (select (|PolymorphicMapType_18294_26702_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@21 f_40@@36) (= (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@25) o2_16@@21 f_40@@36) (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@21 f_40@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@21 f_40@@36))
))) (forall ((o2_16@@22 T@Ref) (f_40@@37 T@Field_26715_26720) ) (!  (=> (select (|PolymorphicMapType_18294_26702_54848#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@22 f_40@@37) (= (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@25) o2_16@@22 f_40@@37) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@22 f_40@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@22 f_40@@37))
))) (forall ((o2_16@@23 T@Ref) (f_40@@38 T@Field_26731_26732) ) (!  (=> (select (|PolymorphicMapType_18294_26702_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@23 f_40@@38) (= (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@25) o2_16@@23 f_40@@38) (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@23 f_40@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@23 f_40@@38))
))) (forall ((o2_16@@24 T@Ref) (f_40@@39 T@Field_11198_5549) ) (!  (=> (select (|PolymorphicMapType_18294_27391_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@24 f_40@@39) (= (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@25) o2_16@@24 f_40@@39) (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@24 f_40@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@24 f_40@@39))
))) (forall ((o2_16@@25 T@Ref) (f_40@@40 T@Field_11198_53) ) (!  (=> (select (|PolymorphicMapType_18294_27391_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@25 f_40@@40) (= (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@25) o2_16@@25 f_40@@40) (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@25 f_40@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@25 f_40@@40))
))) (forall ((o2_16@@26 T@Ref) (f_40@@41 T@Field_11198_17819) ) (!  (=> (select (|PolymorphicMapType_18294_27391_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@26 f_40@@41) (= (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@25) o2_16@@26 f_40@@41) (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@26 f_40@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@26 f_40@@41))
))) (forall ((o2_16@@27 T@Ref) (f_40@@42 T@Field_27404_27409) ) (!  (=> (select (|PolymorphicMapType_18294_27391_55896#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@27 f_40@@42) (= (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) o2_16@@27 f_40@@42) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@27 f_40@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@27 f_40@@42))
))) (forall ((o2_16@@28 T@Ref) (f_40@@43 T@Field_27391_27392) ) (!  (=> (select (|PolymorphicMapType_18294_27391_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@25) null (PredicateMaskField_11198 pm_f_16@@6))) o2_16@@28 f_40@@43) (= (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@25) o2_16@@28 f_40@@43) (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@28 f_40@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@23) o2_16@@28 f_40@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (IsPredicateField_11198_11199 pm_f_16@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_17745) (ExhaleHeap@@24 T@PolymorphicMapType_17745) (Mask@@55 T@PolymorphicMapType_17766) (pm_f_16@@7 T@Field_11195_11199) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_11195_11199 Mask@@55 null pm_f_16@@7) (IsPredicateField_11195_52182 pm_f_16@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@29 T@Ref) (f_40@@44 T@Field_27344_5549) ) (!  (=> (select (|PolymorphicMapType_18294_11195_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@29 f_40@@44) (= (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@26) o2_16@@29 f_40@@44) (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@29 f_40@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@29 f_40@@44))
)) (forall ((o2_16@@30 T@Ref) (f_40@@45 T@Field_17805_53) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@30 f_40@@45) (= (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@26) o2_16@@30 f_40@@45) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@30 f_40@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@30 f_40@@45))
))) (forall ((o2_16@@31 T@Ref) (f_40@@46 T@Field_17818_17819) ) (!  (=> (select (|PolymorphicMapType_18294_11195_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@31 f_40@@46) (= (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@26) o2_16@@31 f_40@@46) (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@31 f_40@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@31 f_40@@46))
))) (forall ((o2_16@@32 T@Ref) (f_40@@47 T@Field_11195_26720) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53800#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@32 f_40@@47) (= (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) o2_16@@32 f_40@@47) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@32 f_40@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@32 f_40@@47))
))) (forall ((o2_16@@33 T@Ref) (f_40@@48 T@Field_11195_11199) ) (!  (=> (select (|PolymorphicMapType_18294_11195_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@33 f_40@@48) (= (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@26) o2_16@@33 f_40@@48) (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@33 f_40@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@33 f_40@@48))
))) (forall ((o2_16@@34 T@Ref) (f_40@@49 T@Field_26702_5244) ) (!  (=> (select (|PolymorphicMapType_18294_26702_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@34 f_40@@49) (= (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@26) o2_16@@34 f_40@@49) (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@34 f_40@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@34 f_40@@49))
))) (forall ((o2_16@@35 T@Ref) (f_40@@50 T@Field_26702_53) ) (!  (=> (select (|PolymorphicMapType_18294_26702_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@35 f_40@@50) (= (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@26) o2_16@@35 f_40@@50) (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@35 f_40@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@35 f_40@@50))
))) (forall ((o2_16@@36 T@Ref) (f_40@@51 T@Field_26702_17819) ) (!  (=> (select (|PolymorphicMapType_18294_26702_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@36 f_40@@51) (= (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@26) o2_16@@36 f_40@@51) (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@36 f_40@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@36 f_40@@51))
))) (forall ((o2_16@@37 T@Ref) (f_40@@52 T@Field_26715_26720) ) (!  (=> (select (|PolymorphicMapType_18294_26702_54848#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@37 f_40@@52) (= (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@26) o2_16@@37 f_40@@52) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@37 f_40@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@37 f_40@@52))
))) (forall ((o2_16@@38 T@Ref) (f_40@@53 T@Field_26731_26732) ) (!  (=> (select (|PolymorphicMapType_18294_26702_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@38 f_40@@53) (= (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@26) o2_16@@38 f_40@@53) (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@38 f_40@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@38 f_40@@53))
))) (forall ((o2_16@@39 T@Ref) (f_40@@54 T@Field_11198_5549) ) (!  (=> (select (|PolymorphicMapType_18294_27391_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@39 f_40@@54) (= (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@26) o2_16@@39 f_40@@54) (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@39 f_40@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@39 f_40@@54))
))) (forall ((o2_16@@40 T@Ref) (f_40@@55 T@Field_11198_53) ) (!  (=> (select (|PolymorphicMapType_18294_27391_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@40 f_40@@55) (= (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@26) o2_16@@40 f_40@@55) (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@40 f_40@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@40 f_40@@55))
))) (forall ((o2_16@@41 T@Ref) (f_40@@56 T@Field_11198_17819) ) (!  (=> (select (|PolymorphicMapType_18294_27391_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@41 f_40@@56) (= (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@26) o2_16@@41 f_40@@56) (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@41 f_40@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@41 f_40@@56))
))) (forall ((o2_16@@42 T@Ref) (f_40@@57 T@Field_27404_27409) ) (!  (=> (select (|PolymorphicMapType_18294_27391_55896#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@42 f_40@@57) (= (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@26) o2_16@@42 f_40@@57) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@42 f_40@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@42 f_40@@57))
))) (forall ((o2_16@@43 T@Ref) (f_40@@58 T@Field_27391_27392) ) (!  (=> (select (|PolymorphicMapType_18294_27391_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@26) null (PredicateMaskField_11195 pm_f_16@@7))) o2_16@@43 f_40@@58) (= (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@26) o2_16@@43 f_40@@58) (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@43 f_40@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@24) o2_16@@43 f_40@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (IsPredicateField_11195_52182 pm_f_16@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_17745) (ExhaleHeap@@25 T@PolymorphicMapType_17745) (Mask@@56 T@PolymorphicMapType_17766) (pm_f_16@@8 T@Field_26731_26732) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_26702_11199 Mask@@56 null pm_f_16@@8) (IsWandField_11160_11161 pm_f_16@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@44 T@Ref) (f_40@@59 T@Field_27344_5549) ) (!  (=> (select (|PolymorphicMapType_18294_11195_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@44 f_40@@59) (= (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@27) o2_16@@44 f_40@@59) (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@44 f_40@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@44 f_40@@59))
)) (forall ((o2_16@@45 T@Ref) (f_40@@60 T@Field_17805_53) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@45 f_40@@60) (= (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@27) o2_16@@45 f_40@@60) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@45 f_40@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@45 f_40@@60))
))) (forall ((o2_16@@46 T@Ref) (f_40@@61 T@Field_17818_17819) ) (!  (=> (select (|PolymorphicMapType_18294_11195_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@46 f_40@@61) (= (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@27) o2_16@@46 f_40@@61) (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@46 f_40@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@46 f_40@@61))
))) (forall ((o2_16@@47 T@Ref) (f_40@@62 T@Field_11195_26720) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53800#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@47 f_40@@62) (= (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@27) o2_16@@47 f_40@@62) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@47 f_40@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@47 f_40@@62))
))) (forall ((o2_16@@48 T@Ref) (f_40@@63 T@Field_11195_11199) ) (!  (=> (select (|PolymorphicMapType_18294_11195_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@48 f_40@@63) (= (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@27) o2_16@@48 f_40@@63) (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@48 f_40@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@48 f_40@@63))
))) (forall ((o2_16@@49 T@Ref) (f_40@@64 T@Field_26702_5244) ) (!  (=> (select (|PolymorphicMapType_18294_26702_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@49 f_40@@64) (= (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@27) o2_16@@49 f_40@@64) (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@49 f_40@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@49 f_40@@64))
))) (forall ((o2_16@@50 T@Ref) (f_40@@65 T@Field_26702_53) ) (!  (=> (select (|PolymorphicMapType_18294_26702_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@50 f_40@@65) (= (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@27) o2_16@@50 f_40@@65) (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@50 f_40@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@50 f_40@@65))
))) (forall ((o2_16@@51 T@Ref) (f_40@@66 T@Field_26702_17819) ) (!  (=> (select (|PolymorphicMapType_18294_26702_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@51 f_40@@66) (= (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@27) o2_16@@51 f_40@@66) (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@51 f_40@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@51 f_40@@66))
))) (forall ((o2_16@@52 T@Ref) (f_40@@67 T@Field_26715_26720) ) (!  (=> (select (|PolymorphicMapType_18294_26702_54848#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@52 f_40@@67) (= (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) o2_16@@52 f_40@@67) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@52 f_40@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@52 f_40@@67))
))) (forall ((o2_16@@53 T@Ref) (f_40@@68 T@Field_26731_26732) ) (!  (=> (select (|PolymorphicMapType_18294_26702_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@53 f_40@@68) (= (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@27) o2_16@@53 f_40@@68) (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@53 f_40@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@53 f_40@@68))
))) (forall ((o2_16@@54 T@Ref) (f_40@@69 T@Field_11198_5549) ) (!  (=> (select (|PolymorphicMapType_18294_27391_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@54 f_40@@69) (= (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@27) o2_16@@54 f_40@@69) (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@54 f_40@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@54 f_40@@69))
))) (forall ((o2_16@@55 T@Ref) (f_40@@70 T@Field_11198_53) ) (!  (=> (select (|PolymorphicMapType_18294_27391_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@55 f_40@@70) (= (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@27) o2_16@@55 f_40@@70) (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@55 f_40@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@55 f_40@@70))
))) (forall ((o2_16@@56 T@Ref) (f_40@@71 T@Field_11198_17819) ) (!  (=> (select (|PolymorphicMapType_18294_27391_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@56 f_40@@71) (= (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@27) o2_16@@56 f_40@@71) (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@56 f_40@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@56 f_40@@71))
))) (forall ((o2_16@@57 T@Ref) (f_40@@72 T@Field_27404_27409) ) (!  (=> (select (|PolymorphicMapType_18294_27391_55896#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@57 f_40@@72) (= (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@27) o2_16@@57 f_40@@72) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@57 f_40@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@57 f_40@@72))
))) (forall ((o2_16@@58 T@Ref) (f_40@@73 T@Field_27391_27392) ) (!  (=> (select (|PolymorphicMapType_18294_27391_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@27) null (WandMaskField_11160 pm_f_16@@8))) o2_16@@58 f_40@@73) (= (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@27) o2_16@@58 f_40@@73) (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@58 f_40@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@25) o2_16@@58 f_40@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (IsWandField_11160_11161 pm_f_16@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_17745) (ExhaleHeap@@26 T@PolymorphicMapType_17745) (Mask@@57 T@PolymorphicMapType_17766) (pm_f_16@@9 T@Field_27391_27392) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_11198_11199 Mask@@57 null pm_f_16@@9) (IsWandField_11198_57546 pm_f_16@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@59 T@Ref) (f_40@@74 T@Field_27344_5549) ) (!  (=> (select (|PolymorphicMapType_18294_11195_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@59 f_40@@74) (= (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@28) o2_16@@59 f_40@@74) (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@59 f_40@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@59 f_40@@74))
)) (forall ((o2_16@@60 T@Ref) (f_40@@75 T@Field_17805_53) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@60 f_40@@75) (= (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@28) o2_16@@60 f_40@@75) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@60 f_40@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@60 f_40@@75))
))) (forall ((o2_16@@61 T@Ref) (f_40@@76 T@Field_17818_17819) ) (!  (=> (select (|PolymorphicMapType_18294_11195_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@61 f_40@@76) (= (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@28) o2_16@@61 f_40@@76) (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@61 f_40@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@61 f_40@@76))
))) (forall ((o2_16@@62 T@Ref) (f_40@@77 T@Field_11195_26720) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53800#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@62 f_40@@77) (= (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@28) o2_16@@62 f_40@@77) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@62 f_40@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@62 f_40@@77))
))) (forall ((o2_16@@63 T@Ref) (f_40@@78 T@Field_11195_11199) ) (!  (=> (select (|PolymorphicMapType_18294_11195_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@63 f_40@@78) (= (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@28) o2_16@@63 f_40@@78) (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@63 f_40@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@63 f_40@@78))
))) (forall ((o2_16@@64 T@Ref) (f_40@@79 T@Field_26702_5244) ) (!  (=> (select (|PolymorphicMapType_18294_26702_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@64 f_40@@79) (= (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@28) o2_16@@64 f_40@@79) (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@64 f_40@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@64 f_40@@79))
))) (forall ((o2_16@@65 T@Ref) (f_40@@80 T@Field_26702_53) ) (!  (=> (select (|PolymorphicMapType_18294_26702_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@65 f_40@@80) (= (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@28) o2_16@@65 f_40@@80) (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@65 f_40@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@65 f_40@@80))
))) (forall ((o2_16@@66 T@Ref) (f_40@@81 T@Field_26702_17819) ) (!  (=> (select (|PolymorphicMapType_18294_26702_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@66 f_40@@81) (= (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@28) o2_16@@66 f_40@@81) (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@66 f_40@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@66 f_40@@81))
))) (forall ((o2_16@@67 T@Ref) (f_40@@82 T@Field_26715_26720) ) (!  (=> (select (|PolymorphicMapType_18294_26702_54848#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@67 f_40@@82) (= (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@28) o2_16@@67 f_40@@82) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@67 f_40@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@67 f_40@@82))
))) (forall ((o2_16@@68 T@Ref) (f_40@@83 T@Field_26731_26732) ) (!  (=> (select (|PolymorphicMapType_18294_26702_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@68 f_40@@83) (= (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@28) o2_16@@68 f_40@@83) (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@68 f_40@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@68 f_40@@83))
))) (forall ((o2_16@@69 T@Ref) (f_40@@84 T@Field_11198_5549) ) (!  (=> (select (|PolymorphicMapType_18294_27391_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@69 f_40@@84) (= (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@28) o2_16@@69 f_40@@84) (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@69 f_40@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@69 f_40@@84))
))) (forall ((o2_16@@70 T@Ref) (f_40@@85 T@Field_11198_53) ) (!  (=> (select (|PolymorphicMapType_18294_27391_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@70 f_40@@85) (= (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@28) o2_16@@70 f_40@@85) (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@70 f_40@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@70 f_40@@85))
))) (forall ((o2_16@@71 T@Ref) (f_40@@86 T@Field_11198_17819) ) (!  (=> (select (|PolymorphicMapType_18294_27391_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@71 f_40@@86) (= (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@28) o2_16@@71 f_40@@86) (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@71 f_40@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@71 f_40@@86))
))) (forall ((o2_16@@72 T@Ref) (f_40@@87 T@Field_27404_27409) ) (!  (=> (select (|PolymorphicMapType_18294_27391_55896#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@72 f_40@@87) (= (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) o2_16@@72 f_40@@87) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@72 f_40@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@72 f_40@@87))
))) (forall ((o2_16@@73 T@Ref) (f_40@@88 T@Field_27391_27392) ) (!  (=> (select (|PolymorphicMapType_18294_27391_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@28) null (WandMaskField_11198 pm_f_16@@9))) o2_16@@73 f_40@@88) (= (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@28) o2_16@@73 f_40@@88) (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@73 f_40@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@26) o2_16@@73 f_40@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (IsWandField_11198_57546 pm_f_16@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_17745) (ExhaleHeap@@27 T@PolymorphicMapType_17745) (Mask@@58 T@PolymorphicMapType_17766) (pm_f_16@@10 T@Field_11195_11199) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_11195_11199 Mask@@58 null pm_f_16@@10) (IsWandField_11195_57189 pm_f_16@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@74 T@Ref) (f_40@@89 T@Field_27344_5549) ) (!  (=> (select (|PolymorphicMapType_18294_11195_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@74 f_40@@89) (= (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@29) o2_16@@74 f_40@@89) (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@74 f_40@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@74 f_40@@89))
)) (forall ((o2_16@@75 T@Ref) (f_40@@90 T@Field_17805_53) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@75 f_40@@90) (= (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@29) o2_16@@75 f_40@@90) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@75 f_40@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@75 f_40@@90))
))) (forall ((o2_16@@76 T@Ref) (f_40@@91 T@Field_17818_17819) ) (!  (=> (select (|PolymorphicMapType_18294_11195_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@76 f_40@@91) (= (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@29) o2_16@@76 f_40@@91) (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@76 f_40@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@76 f_40@@91))
))) (forall ((o2_16@@77 T@Ref) (f_40@@92 T@Field_11195_26720) ) (!  (=> (select (|PolymorphicMapType_18294_11195_53800#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@77 f_40@@92) (= (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) o2_16@@77 f_40@@92) (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@77 f_40@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@77 f_40@@92))
))) (forall ((o2_16@@78 T@Ref) (f_40@@93 T@Field_11195_11199) ) (!  (=> (select (|PolymorphicMapType_18294_11195_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@78 f_40@@93) (= (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@29) o2_16@@78 f_40@@93) (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@78 f_40@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@78 f_40@@93))
))) (forall ((o2_16@@79 T@Ref) (f_40@@94 T@Field_26702_5244) ) (!  (=> (select (|PolymorphicMapType_18294_26702_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@79 f_40@@94) (= (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@29) o2_16@@79 f_40@@94) (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@79 f_40@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@79 f_40@@94))
))) (forall ((o2_16@@80 T@Ref) (f_40@@95 T@Field_26702_53) ) (!  (=> (select (|PolymorphicMapType_18294_26702_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@80 f_40@@95) (= (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@29) o2_16@@80 f_40@@95) (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@80 f_40@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@80 f_40@@95))
))) (forall ((o2_16@@81 T@Ref) (f_40@@96 T@Field_26702_17819) ) (!  (=> (select (|PolymorphicMapType_18294_26702_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@81 f_40@@96) (= (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@29) o2_16@@81 f_40@@96) (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@81 f_40@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@81 f_40@@96))
))) (forall ((o2_16@@82 T@Ref) (f_40@@97 T@Field_26715_26720) ) (!  (=> (select (|PolymorphicMapType_18294_26702_54848#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@82 f_40@@97) (= (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@29) o2_16@@82 f_40@@97) (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@82 f_40@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@82 f_40@@97))
))) (forall ((o2_16@@83 T@Ref) (f_40@@98 T@Field_26731_26732) ) (!  (=> (select (|PolymorphicMapType_18294_26702_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@83 f_40@@98) (= (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@29) o2_16@@83 f_40@@98) (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@83 f_40@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@83 f_40@@98))
))) (forall ((o2_16@@84 T@Ref) (f_40@@99 T@Field_11198_5549) ) (!  (=> (select (|PolymorphicMapType_18294_27391_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@84 f_40@@99) (= (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@29) o2_16@@84 f_40@@99) (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@84 f_40@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@84 f_40@@99))
))) (forall ((o2_16@@85 T@Ref) (f_40@@100 T@Field_11198_53) ) (!  (=> (select (|PolymorphicMapType_18294_27391_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@85 f_40@@100) (= (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@29) o2_16@@85 f_40@@100) (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@85 f_40@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@85 f_40@@100))
))) (forall ((o2_16@@86 T@Ref) (f_40@@101 T@Field_11198_17819) ) (!  (=> (select (|PolymorphicMapType_18294_27391_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@86 f_40@@101) (= (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@29) o2_16@@86 f_40@@101) (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@86 f_40@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@86 f_40@@101))
))) (forall ((o2_16@@87 T@Ref) (f_40@@102 T@Field_27404_27409) ) (!  (=> (select (|PolymorphicMapType_18294_27391_55896#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@87 f_40@@102) (= (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@29) o2_16@@87 f_40@@102) (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@87 f_40@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@87 f_40@@102))
))) (forall ((o2_16@@88 T@Ref) (f_40@@103 T@Field_27391_27392) ) (!  (=> (select (|PolymorphicMapType_18294_27391_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@29) null (WandMaskField_11195 pm_f_16@@10))) o2_16@@88 f_40@@103) (= (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@29) o2_16@@88 f_40@@103) (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@88 f_40@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| ExhaleHeap@@27) o2_16@@88 f_40@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (IsWandField_11195_57189 pm_f_16@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3104| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3104| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.567:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3104| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@1 T@Seq_28412) (b@@0 T@Seq_28412) ) (!  (=> (|Seq#Equal_28412| a@@1 b@@0) (= a@@1 b@@0))
 :qid |stdinbpl.540:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_28412| a@@1 b@@0))
)))
(assert (forall ((a@@2 T@Seq_3104) (b@@1 T@Seq_3104) ) (!  (=> (|Seq#Equal_3104| a@@2 b@@1) (= a@@2 b@@1))
 :qid |stdinbpl.540:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3104| a@@2 b@@1))
)))
(assert (forall ((s@@17 T@Seq_28412) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_28412| s@@17))) (|Seq#ContainsTrigger_28412| s@@17 (|Seq#Index_28412| s@@17 i@@3)))
 :qid |stdinbpl.433:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_28412| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3104) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3104| s@@18))) (|Seq#ContainsTrigger_3104| s@@18 (|Seq#Index_3104| s@@18 i@@4)))
 :qid |stdinbpl.433:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3104| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_28412) (s1@@3 T@Seq_28412) ) (!  (and (=> (= s0@@3 |Seq#Empty_28412|) (= (|Seq#Append_28412| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_28412|) (= (|Seq#Append_28412| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.251:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_28412| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3104) (s1@@4 T@Seq_3104) ) (!  (and (=> (= s0@@4 |Seq#Empty_3104|) (= (|Seq#Append_3104| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3104|) (= (|Seq#Append_3104| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.251:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3104| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_28412| (|Seq#Singleton_28412| t@@3) 0) t@@3)
 :qid |stdinbpl.255:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_28412| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3104| (|Seq#Singleton_3104| t@@4) 0) t@@4)
 :qid |stdinbpl.255:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3104| t@@4))
)))
(assert (forall ((s@@19 T@Seq_28412) ) (! (<= 0 (|Seq#Length_28412| s@@19))
 :qid |stdinbpl.234:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_28412| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3104) ) (! (<= 0 (|Seq#Length_3104| s@@20))
 :qid |stdinbpl.234:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3104| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_28412) (s1@@5 T@Seq_28412) ) (!  (=> (|Seq#Equal_28412| s0@@5 s1@@5) (and (= (|Seq#Length_28412| s0@@5) (|Seq#Length_28412| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_28412| s0@@5))) (= (|Seq#Index_28412| s0@@5 j@@6) (|Seq#Index_28412| s1@@5 j@@6)))
 :qid |stdinbpl.530:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_28412| s0@@5 j@@6))
 :pattern ( (|Seq#Index_28412| s1@@5 j@@6))
))))
 :qid |stdinbpl.527:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_28412| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3104) (s1@@6 T@Seq_3104) ) (!  (=> (|Seq#Equal_3104| s0@@6 s1@@6) (and (= (|Seq#Length_3104| s0@@6) (|Seq#Length_3104| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3104| s0@@6))) (= (|Seq#Index_3104| s0@@6 j@@7) (|Seq#Index_3104| s1@@6 j@@7)))
 :qid |stdinbpl.530:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3104| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3104| s1@@6 j@@7))
))))
 :qid |stdinbpl.527:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3104| s0@@6 s1@@6))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_11198_11199 (p1 x@@7)) 0)
 :qid |stdinbpl.827:15|
 :skolemid |127|
 :pattern ( (p1 x@@7))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_28412| (|Seq#Singleton_28412| t@@5)) 1)
 :qid |stdinbpl.242:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_28412| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3104| (|Seq#Singleton_3104| t@@6)) 1)
 :qid |stdinbpl.242:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3104| t@@6))
)))
(assert (forall ((s@@21 T@Seq_28412) (t@@7 T@Seq_28412) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_28412| s@@21))) (= (|Seq#Take_28412| (|Seq#Append_28412| s@@21 t@@7) n@@17) (|Seq#Take_28412| s@@21 n@@17)))
 :qid |stdinbpl.384:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_28412| (|Seq#Append_28412| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3104) (t@@8 T@Seq_3104) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3104| s@@22))) (= (|Seq#Take_3104| (|Seq#Append_3104| s@@22 t@@8) n@@18) (|Seq#Take_3104| s@@22 n@@18)))
 :qid |stdinbpl.384:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3104| (|Seq#Append_3104| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_28412) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_28412| s@@23))) (= (|Seq#Length_28412| (|Seq#Update_28412| s@@23 i@@5 v@@2)) (|Seq#Length_28412| s@@23)))
 :qid |stdinbpl.283:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_28412| (|Seq#Update_28412| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_28412| s@@23) (|Seq#Update_28412| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3104) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3104| s@@24))) (= (|Seq#Length_3104| (|Seq#Update_3104| s@@24 i@@6 v@@3)) (|Seq#Length_3104| s@@24)))
 :qid |stdinbpl.283:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3104| (|Seq#Update_3104| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3104| s@@24) (|Seq#Update_3104| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_17745) (o_3 T@Ref) (f_35 T@Field_27391_27392) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@30) (store (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@30) o_3 f_35 v@@4) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@30) (store (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@30) o_3 f_35 v@@4) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@30) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_17745) (o_3@@0 T@Ref) (f_35@@0 T@Field_27404_27409) (v@@5 T@PolymorphicMapType_18294) ) (! (succHeap Heap@@31 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@31) (store (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@31) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@31) (store (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@31) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@31) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_17745) (o_3@@1 T@Ref) (f_35@@1 T@Field_11198_5549) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@32) (store (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@32) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@32) (store (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@32) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@32) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_17745) (o_3@@2 T@Ref) (f_35@@2 T@Field_11198_17819) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@33) (store (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@33) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@33) (store (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@33) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@33) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_17745) (o_3@@3 T@Ref) (f_35@@3 T@Field_11198_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@34) (store (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@34) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@34) (store (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@34) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@34) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_17745) (o_3@@4 T@Ref) (f_35@@4 T@Field_26731_26732) (v@@9 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@35) (store (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@35) o_3@@4 f_35@@4 v@@9) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@35) (store (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@35) o_3@@4 f_35@@4 v@@9) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@35) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_17745) (o_3@@5 T@Ref) (f_35@@5 T@Field_26715_26720) (v@@10 T@PolymorphicMapType_18294) ) (! (succHeap Heap@@36 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@36) (store (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@36) o_3@@5 f_35@@5 v@@10) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@36) (store (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@36) o_3@@5 f_35@@5 v@@10) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@36) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_17745) (o_3@@6 T@Ref) (f_35@@6 T@Field_26702_5244) (v@@11 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@37) (store (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@37) o_3@@6 f_35@@6 v@@11) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@37) (store (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@37) o_3@@6 f_35@@6 v@@11) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@37) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_17745) (o_3@@7 T@Ref) (f_35@@7 T@Field_26702_17819) (v@@12 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@38) (store (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@38) o_3@@7 f_35@@7 v@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@38) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@38) (store (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@38) o_3@@7 f_35@@7 v@@12)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_17745) (o_3@@8 T@Ref) (f_35@@8 T@Field_26702_53) (v@@13 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@39) (store (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@39) o_3@@8 f_35@@8 v@@13) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@39) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@39) (store (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@39) o_3@@8 f_35@@8 v@@13) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_17745) (o_3@@9 T@Ref) (f_35@@9 T@Field_11195_11199) (v@@14 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@40) (store (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@40) o_3@@9 f_35@@9 v@@14) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@40) (store (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@40) o_3@@9 f_35@@9 v@@14) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@40) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_17745) (o_3@@10 T@Ref) (f_35@@10 T@Field_11195_26720) (v@@15 T@PolymorphicMapType_18294) ) (! (succHeap Heap@@41 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@41) (store (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@41) o_3@@10 f_35@@10 v@@15) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@41) (store (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@41) o_3@@10 f_35@@10 v@@15) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@41) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_17745) (o_3@@11 T@Ref) (f_35@@11 T@Field_27344_5549) (v@@16 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@42) (store (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@42) o_3@@11 f_35@@11 v@@16) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@42) (store (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@42) o_3@@11 f_35@@11 v@@16) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@42) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_17745) (o_3@@12 T@Ref) (f_35@@12 T@Field_17818_17819) (v@@17 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@43) (store (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@43) o_3@@12 f_35@@12 v@@17) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@43) (store (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@43) o_3@@12 f_35@@12 v@@17) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@43) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_17745) (o_3@@13 T@Ref) (f_35@@13 T@Field_17805_53) (v@@18 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_17745 (store (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@44) o_3@@13 f_35@@13 v@@18) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17745 (store (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@44) o_3@@13 f_35@@13 v@@18) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@44) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@44)))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (PredicateMaskField_11198 (p1 x@@8)) (|p1#sm| x@@8))
 :qid |stdinbpl.819:15|
 :skolemid |125|
 :pattern ( (PredicateMaskField_11198 (p1 x@@8)))
)))
(assert (forall ((s@@25 T@Seq_28412) (t@@9 T@Seq_28412) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_28412| s@@25))) (= (|Seq#Drop_28412| (|Seq#Append_28412| s@@25 t@@9) n@@19) (|Seq#Append_28412| (|Seq#Drop_28412| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.398:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_28412| (|Seq#Append_28412| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3104) (t@@10 T@Seq_3104) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3104| s@@26))) (= (|Seq#Drop_3104| (|Seq#Append_3104| s@@26 t@@10) n@@20) (|Seq#Append_3104| (|Seq#Drop_3104| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.398:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3104| (|Seq#Append_3104| s@@26 t@@10) n@@20))
)))
(assert (forall ((a@@3 Int) (b@@2 Int) ) (! (= (<= a@@3 b@@2) (= (|Math#min| a@@3 b@@2) a@@3))
 :qid |stdinbpl.671:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@3 b@@2))
)))
(assert (forall ((a@@4 Int) (b@@3 Int) ) (! (= (<= b@@3 a@@4) (= (|Math#min| a@@4 b@@3) b@@3))
 :qid |stdinbpl.672:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@4 b@@3))
)))
(assert (forall ((s@@27 T@Seq_28412) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_28412| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_28412| (|Seq#Drop_28412| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_28412| s@@27 i@@7))))
 :qid |stdinbpl.334:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_28412| s@@27 n@@21) (|Seq#Index_28412| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3104) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3104| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3104| (|Seq#Drop_3104| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3104| s@@28 i@@8))))
 :qid |stdinbpl.334:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3104| s@@28 n@@22) (|Seq#Index_3104| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_28412) (s1@@7 T@Seq_28412) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_28412|)) (not (= s1@@7 |Seq#Empty_28412|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_28412| s0@@7))) (= (|Seq#Index_28412| (|Seq#Append_28412| s0@@7 s1@@7) n@@23) (|Seq#Index_28412| s0@@7 n@@23)))
 :qid |stdinbpl.274:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_28412| (|Seq#Append_28412| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_28412| s0@@7 n@@23) (|Seq#Append_28412| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3104) (s1@@8 T@Seq_3104) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3104|)) (not (= s1@@8 |Seq#Empty_3104|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3104| s0@@8))) (= (|Seq#Index_3104| (|Seq#Append_3104| s0@@8 s1@@8) n@@24) (|Seq#Index_3104| s0@@8 n@@24)))
 :qid |stdinbpl.274:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3104| (|Seq#Append_3104| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3104| s0@@8 n@@24) (|Seq#Append_3104| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_28412) (s1@@9 T@Seq_28412) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_28412|)) (not (= s1@@9 |Seq#Empty_28412|))) (<= 0 m)) (< m (|Seq#Length_28412| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_28412| s0@@9)) (|Seq#Length_28412| s0@@9)) m) (= (|Seq#Index_28412| (|Seq#Append_28412| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_28412| s0@@9))) (|Seq#Index_28412| s1@@9 m))))
 :qid |stdinbpl.279:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_28412| s1@@9 m) (|Seq#Append_28412| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3104) (s1@@10 T@Seq_3104) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3104|)) (not (= s1@@10 |Seq#Empty_3104|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3104| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3104| s0@@10)) (|Seq#Length_3104| s0@@10)) m@@0) (= (|Seq#Index_3104| (|Seq#Append_3104| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3104| s0@@10))) (|Seq#Index_3104| s1@@10 m@@0))))
 :qid |stdinbpl.279:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3104| s1@@10 m@@0) (|Seq#Append_3104| s0@@10 s1@@10))
)))
(assert (forall ((o_3@@14 T@Ref) (f_8 T@Field_17818_17819) (Heap@@45 T@PolymorphicMapType_17745) ) (!  (=> (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@45) o_3@@14 $allocated) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@45) (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@45) o_3@@14 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@45) o_3@@14 f_8))
)))
(assert (forall ((s@@29 T@Seq_28412) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_28412| s@@29))) (= (|Seq#Index_28412| s@@29 i@@9) x@@9)) (|Seq#Contains_11232| s@@29 x@@9))
 :qid |stdinbpl.431:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_11232| s@@29 x@@9) (|Seq#Index_28412| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3104) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3104| s@@30))) (= (|Seq#Index_3104| s@@30 i@@10) x@@10)) (|Seq#Contains_3104| s@@30 x@@10))
 :qid |stdinbpl.431:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3104| s@@30 x@@10) (|Seq#Index_3104| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_28412) (s1@@11 T@Seq_28412) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_28412| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28412| s0@@11 s1@@11))) (not (= (|Seq#Length_28412| s0@@11) (|Seq#Length_28412| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28412| s0@@11 s1@@11))) (= (|Seq#Length_28412| s0@@11) (|Seq#Length_28412| s1@@11))) (= (|Seq#SkolemDiff_28412| s0@@11 s1@@11) (|Seq#SkolemDiff_28412| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_28412| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_28412| s0@@11 s1@@11) (|Seq#Length_28412| s0@@11))) (not (= (|Seq#Index_28412| s0@@11 (|Seq#SkolemDiff_28412| s0@@11 s1@@11)) (|Seq#Index_28412| s1@@11 (|Seq#SkolemDiff_28412| s0@@11 s1@@11))))))
 :qid |stdinbpl.535:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_28412| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3104) (s1@@12 T@Seq_3104) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3104| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3104| s0@@12 s1@@12))) (not (= (|Seq#Length_3104| s0@@12) (|Seq#Length_3104| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3104| s0@@12 s1@@12))) (= (|Seq#Length_3104| s0@@12) (|Seq#Length_3104| s1@@12))) (= (|Seq#SkolemDiff_3104| s0@@12 s1@@12) (|Seq#SkolemDiff_3104| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3104| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3104| s0@@12 s1@@12) (|Seq#Length_3104| s0@@12))) (not (= (|Seq#Index_3104| s0@@12 (|Seq#SkolemDiff_3104| s0@@12 s1@@12)) (|Seq#Index_3104| s1@@12 (|Seq#SkolemDiff_3104| s0@@12 s1@@12))))))
 :qid |stdinbpl.535:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3104| s0@@12 s1@@12))
)))
(assert (forall ((p@@3 T@Field_27391_27392) (v_1@@2 T@FrameType) (q T@Field_27391_27392) (w@@2 T@FrameType) (r T@Field_27391_27392) (u T@FrameType) ) (!  (=> (and (InsidePredicate_27391_27391 p@@3 v_1@@2 q w@@2) (InsidePredicate_27391_27391 q w@@2 r u)) (InsidePredicate_27391_27391 p@@3 v_1@@2 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27391_27391 p@@3 v_1@@2 q w@@2) (InsidePredicate_27391_27391 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_27391_27392) (v_1@@3 T@FrameType) (q@@0 T@Field_27391_27392) (w@@3 T@FrameType) (r@@0 T@Field_26731_26732) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_27391_27391 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_27391_26702 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_27391_26702 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27391_27391 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_27391_26702 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_27391_27392) (v_1@@4 T@FrameType) (q@@1 T@Field_27391_27392) (w@@4 T@FrameType) (r@@1 T@Field_11195_11199) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_27391_27391 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_27391_17805 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_27391_17805 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27391_27391 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_27391_17805 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_27391_27392) (v_1@@5 T@FrameType) (q@@2 T@Field_26731_26732) (w@@5 T@FrameType) (r@@2 T@Field_27391_27392) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_27391_26702 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_26702_27391 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_27391_27391 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27391_26702 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_26702_27391 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_27391_27392) (v_1@@6 T@FrameType) (q@@3 T@Field_26731_26732) (w@@6 T@FrameType) (r@@3 T@Field_26731_26732) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_27391_26702 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_26702_26702 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_27391_26702 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27391_26702 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_26702_26702 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_27391_27392) (v_1@@7 T@FrameType) (q@@4 T@Field_26731_26732) (w@@7 T@FrameType) (r@@4 T@Field_11195_11199) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_27391_26702 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_26702_17805 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_27391_17805 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27391_26702 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_26702_17805 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_27391_27392) (v_1@@8 T@FrameType) (q@@5 T@Field_11195_11199) (w@@8 T@FrameType) (r@@5 T@Field_27391_27392) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_27391_17805 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_17805_27391 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_27391_27391 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27391_17805 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_17805_27391 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_27391_27392) (v_1@@9 T@FrameType) (q@@6 T@Field_11195_11199) (w@@9 T@FrameType) (r@@6 T@Field_26731_26732) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_27391_17805 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_17805_26702 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_27391_26702 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27391_17805 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_17805_26702 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_27391_27392) (v_1@@10 T@FrameType) (q@@7 T@Field_11195_11199) (w@@10 T@FrameType) (r@@7 T@Field_11195_11199) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_27391_17805 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_17805_17805 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_27391_17805 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27391_17805 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_17805_17805 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_26731_26732) (v_1@@11 T@FrameType) (q@@8 T@Field_27391_27392) (w@@11 T@FrameType) (r@@8 T@Field_27391_27392) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_26702_27391 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_27391_27391 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_26702_27391 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26702_27391 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_27391_27391 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_26731_26732) (v_1@@12 T@FrameType) (q@@9 T@Field_27391_27392) (w@@12 T@FrameType) (r@@9 T@Field_26731_26732) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_26702_27391 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_27391_26702 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_26702_26702 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26702_27391 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_27391_26702 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_26731_26732) (v_1@@13 T@FrameType) (q@@10 T@Field_27391_27392) (w@@13 T@FrameType) (r@@10 T@Field_11195_11199) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_26702_27391 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_27391_17805 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_26702_17805 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26702_27391 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_27391_17805 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_26731_26732) (v_1@@14 T@FrameType) (q@@11 T@Field_26731_26732) (w@@14 T@FrameType) (r@@11 T@Field_27391_27392) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_26702_26702 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_26702_27391 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_26702_27391 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26702_26702 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_26702_27391 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_26731_26732) (v_1@@15 T@FrameType) (q@@12 T@Field_26731_26732) (w@@15 T@FrameType) (r@@12 T@Field_26731_26732) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_26702_26702 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_26702_26702 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_26702_26702 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26702_26702 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_26702_26702 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_26731_26732) (v_1@@16 T@FrameType) (q@@13 T@Field_26731_26732) (w@@16 T@FrameType) (r@@13 T@Field_11195_11199) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_26702_26702 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_26702_17805 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_26702_17805 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26702_26702 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_26702_17805 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_26731_26732) (v_1@@17 T@FrameType) (q@@14 T@Field_11195_11199) (w@@17 T@FrameType) (r@@14 T@Field_27391_27392) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_26702_17805 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_17805_27391 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_26702_27391 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26702_17805 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_17805_27391 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_26731_26732) (v_1@@18 T@FrameType) (q@@15 T@Field_11195_11199) (w@@18 T@FrameType) (r@@15 T@Field_26731_26732) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_26702_17805 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_17805_26702 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_26702_26702 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26702_17805 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_17805_26702 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_26731_26732) (v_1@@19 T@FrameType) (q@@16 T@Field_11195_11199) (w@@19 T@FrameType) (r@@16 T@Field_11195_11199) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_26702_17805 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_17805_17805 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_26702_17805 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26702_17805 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_17805_17805 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_11195_11199) (v_1@@20 T@FrameType) (q@@17 T@Field_27391_27392) (w@@20 T@FrameType) (r@@17 T@Field_27391_27392) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_17805_27391 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_27391_27391 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_17805_27391 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17805_27391 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_27391_27391 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_11195_11199) (v_1@@21 T@FrameType) (q@@18 T@Field_27391_27392) (w@@21 T@FrameType) (r@@18 T@Field_26731_26732) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_17805_27391 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_27391_26702 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_17805_26702 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17805_27391 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_27391_26702 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_11195_11199) (v_1@@22 T@FrameType) (q@@19 T@Field_27391_27392) (w@@22 T@FrameType) (r@@19 T@Field_11195_11199) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_17805_27391 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_27391_17805 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_17805_17805 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17805_27391 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_27391_17805 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_11195_11199) (v_1@@23 T@FrameType) (q@@20 T@Field_26731_26732) (w@@23 T@FrameType) (r@@20 T@Field_27391_27392) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_17805_26702 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_26702_27391 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_17805_27391 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17805_26702 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_26702_27391 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_11195_11199) (v_1@@24 T@FrameType) (q@@21 T@Field_26731_26732) (w@@24 T@FrameType) (r@@21 T@Field_26731_26732) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_17805_26702 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_26702_26702 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_17805_26702 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17805_26702 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_26702_26702 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_11195_11199) (v_1@@25 T@FrameType) (q@@22 T@Field_26731_26732) (w@@25 T@FrameType) (r@@22 T@Field_11195_11199) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_17805_26702 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_26702_17805 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_17805_17805 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17805_26702 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_26702_17805 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_11195_11199) (v_1@@26 T@FrameType) (q@@23 T@Field_11195_11199) (w@@26 T@FrameType) (r@@23 T@Field_27391_27392) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_17805_17805 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_17805_27391 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_17805_27391 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17805_17805 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_17805_27391 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_11195_11199) (v_1@@27 T@FrameType) (q@@24 T@Field_11195_11199) (w@@27 T@FrameType) (r@@24 T@Field_26731_26732) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_17805_17805 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_17805_26702 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_17805_26702 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17805_17805 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_17805_26702 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_11195_11199) (v_1@@28 T@FrameType) (q@@25 T@Field_11195_11199) (w@@28 T@FrameType) (r@@25 T@Field_11195_11199) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_17805_17805 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_17805_17805 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_17805_17805 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17805_17805 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_17805_17805 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((a@@5 Int) ) (!  (=> (< a@@5 0) (= (|Math#clip| a@@5) 0))
 :qid |stdinbpl.677:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@5))
)))
(assert (forall ((s@@31 T@Seq_28412) ) (!  (=> (= (|Seq#Length_28412| s@@31) 0) (= s@@31 |Seq#Empty_28412|))
 :qid |stdinbpl.238:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_28412| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3104) ) (!  (=> (= (|Seq#Length_3104| s@@32) 0) (= s@@32 |Seq#Empty_3104|))
 :qid |stdinbpl.238:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3104| s@@32))
)))
(assert (forall ((s@@33 T@Seq_28412) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_28412| s@@33 n@@25) |Seq#Empty_28412|))
 :qid |stdinbpl.414:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_28412| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3104) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3104| s@@34 n@@26) |Seq#Empty_3104|))
 :qid |stdinbpl.414:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3104| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 Real) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Real) ) (!  (=> (= (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2)) (and (= arg1@@5 arg1_2) (and (= arg2@@5 arg2_2) (and (= arg3@@5 arg3_2) (= arg4@@5 arg4_2)))))
 :qid |stdinbpl.799:15|
 :skolemid |124|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_17745)
(declare-fun y@@1 () T@Ref)
(declare-fun zs () T@Seq_28412)
(declare-fun Mask@2 () T@PolymorphicMapType_17766)
(declare-fun z () T@Ref)
(declare-fun b_5@5 () Bool)
(declare-fun b_6@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_3Mask@3 () T@PolymorphicMapType_17766)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_7@0 () Bool)
(declare-fun b_7@1 () Bool)
(declare-fun Result_1Heap () T@PolymorphicMapType_17745)
(declare-fun Result_1Mask () T@PolymorphicMapType_17766)
(declare-fun b_7@2 () Bool)
(declare-fun Ops_3Mask () T@PolymorphicMapType_17766)
(declare-fun b_7@3 () Bool)
(declare-fun Ops_3Heap@0 () T@PolymorphicMapType_17745)
(declare-fun Used_3Heap@0 () T@PolymorphicMapType_17745)
(declare-fun b_7@4 () Bool)
(declare-fun b_5@6 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_17766)
(declare-fun takeTransfer@1 () Real)
(declare-fun QPMask@1 () T@PolymorphicMapType_17766)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_6@3 () Bool)
(declare-fun Used_3Mask@1 () T@PolymorphicMapType_17766)
(declare-fun Heap@@46 () T@PolymorphicMapType_17745)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_3Mask@2 () T@PolymorphicMapType_17766)
(declare-fun b_6@4 () Bool)
(declare-fun b_6@5 () Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_17766)
(declare-fun Heap@0 () T@PolymorphicMapType_17745)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun b_6@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_3Mask@0 () T@PolymorphicMapType_17766)
(declare-fun b_6@1 () Bool)
(declare-fun b_6@2 () Bool)
(declare-fun Ops_3Mask@2 () T@PolymorphicMapType_17766)
(declare-fun Ops_3Mask@1 () T@PolymorphicMapType_17766)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_5@4 () Bool)
(declare-fun b_5@3 () Bool)
(declare-fun b_6 () Bool)
(declare-fun b_5@0 () Bool)
(declare-fun b_5@1 () Bool)
(declare-fun Ops_3Mask@0 () T@PolymorphicMapType_17766)
(declare-fun b_5@2 () Bool)
(declare-fun neverTriggered6 (T@Ref) Bool)
(declare-fun xs () T@Seq_28412)
(declare-fun QPMask@0 () T@PolymorphicMapType_17766)
(declare-fun invRecv6 (T@Ref Real T@Ref Real) T@Ref)
(declare-fun qpRange6 (T@Ref Real T@Ref Real) Bool)
(declare-fun getPredWandId_11147_11161 (T@Field_26731_26732) Int)
(declare-fun getPredWandId_11147_53 (T@Field_26702_53) Int)
(declare-fun getPredWandId_11147_17819 (T@Field_26702_17819) Int)
(declare-fun getPredWandId_11147_85617 (T@Field_26715_26720) Int)
(declare-fun getPredWandId_11195_5244 (T@Field_27344_5549) Int)
(declare-fun getPredWandId_11195_11161 (T@Field_11195_11199) Int)
(declare-fun getPredWandId_11195_53 (T@Field_17805_53) Int)
(declare-fun getPredWandId_11195_17819 (T@Field_17818_17819) Int)
(declare-fun getPredWandId_11195_86433 (T@Field_11195_26720) Int)
(declare-fun getPredWandId_11198_5244 (T@Field_11198_5549) Int)
(declare-fun getPredWandId_11198_53 (T@Field_11198_53) Int)
(declare-fun getPredWandId_11198_17819 (T@Field_11198_17819) Int)
(declare-fun getPredWandId_11198_87242 (T@Field_27404_27409) Int)
(declare-fun b_5 () Bool)
(declare-fun b_4@0 () Bool)
(declare-fun b_4 () Bool)
(declare-fun Used_2Heap@0 () T@PolymorphicMapType_17745)
(declare-fun x_18 () T@Ref)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(set-info :boogie-vc-id m3)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon35_Else_correct  (=> (and (and (forall ((x_6 T@Ref) ) (!  (=> (|Seq#Contains_11232| zs x_6) (not (= x_6 y@@1)))
 :qid |stdinbpl.1647:20|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@1) null (wand x_6 FullPerm y@@1 FullPerm)))
)) (state Heap@1 Mask@2)) (and (state Heap@1 Mask@2) (= (ControlFlow 0 8) (- 0 7)))) (not (= z y@@1)))))
(let ((anon35_Then_correct true))
(let ((anon21_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> (and (and b_5@5 b_5@5) b_6@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Used_3Mask@3) y@@1 f_7) initNeededTransfer@0)))) (=> (=> (and (and b_5@5 b_5@5) b_6@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Used_3Mask@3) y@@1 f_7) initNeededTransfer@0))) (=> (and (= b_7@0  (and b_5@5 b_6@6)) (= b_7@1  (and b_7@0 (state Result_1Heap Result_1Mask)))) (=> (and (and (and (= b_7@2  (and b_7@1 (sumMask Result_1Mask Ops_3Mask Used_3Mask@3))) (= b_7@3  (and (and b_7@2 (IdenticalOnKnownLocations Ops_3Heap@0 Result_1Heap Ops_3Mask)) (IdenticalOnKnownLocations Used_3Heap@0 Result_1Heap Used_3Mask@3)))) (and (= b_7@4  (and b_7@3 (state Result_1Heap Result_1Mask))) (= b_5@6  (and b_5@5 b_7@4)))) (and (and (= Mask@2 (PolymorphicMapType_17766 (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Mask@1) (store (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| Mask@1) null (wand z FullPerm y@@1 FullPerm) (+ (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| Mask@1) null (wand z FullPerm y@@1 FullPerm)) FullPerm)) (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| Mask@1) (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| Mask@1))) (state Heap@1 Mask@2)) (and (state Heap@1 Mask@2) (state Heap@1 Mask@2)))) (and (=> (= (ControlFlow 0 9) 6) anon35_Then_correct) (=> (= (ControlFlow 0 9) 8) anon35_Else_correct))))))))
(let ((anon34_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@1 QPMask@1) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_6@6 b_6@3) (= Used_3Mask@3 Used_3Mask@1)) (and (= Heap@1 Heap@@46) (= (ControlFlow 0 13) 9))) anon21_correct)))))
(let ((anon34_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_3Mask@2 (PolymorphicMapType_17766 (store (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Used_3Mask@1) y@@1 f_7 (+ (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Used_3Mask@1) y@@1 f_7) takeTransfer@1)) (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| Used_3Mask@1) (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| Used_3Mask@1)))) (and (= b_6@4  (and b_6@3 (state Used_3Heap@0 Used_3Mask@2))) (= b_6@5  (and b_6@4 (= (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@46) y@@1 f_7) (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Used_3Heap@0) y@@1 f_7)))))) (=> (and (and (and (= Mask@0 (PolymorphicMapType_17766 (store (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@1) y@@1 f_7 (- (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@1) y@@1 f_7) takeTransfer@1)) (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| QPMask@1) (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| QPMask@1))) (= Heap@0 (PolymorphicMapType_17745 (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_10753_10754#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@46) (store (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm) (PolymorphicMapType_18294 (store (|PolymorphicMapType_18294_11195_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) y@@1 f_7 true) (|PolymorphicMapType_18294_11195_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_11195_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_11195_53800#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_11195_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_26702_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_26702_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_26702_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_26702_54848#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_26702_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_27391_5549#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_27391_53#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_27391_17819#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_27391_55896#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))) (|PolymorphicMapType_18294_27391_26732#PolymorphicMapType_18294| (select (|PolymorphicMapType_17745_11153_33529#PolymorphicMapType_17745| Heap@@46) null (|wand#sm| z FullPerm y@@1 FullPerm))))) (|PolymorphicMapType_17745_11198_11199#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_11202_38066#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_11195_11199#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_11195_49716#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_11198_5549#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_11198_53#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_11198_17819#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_26702_11199#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_26702_53#PolymorphicMapType_17745| Heap@@46) (|PolymorphicMapType_17745_26702_17819#PolymorphicMapType_17745| Heap@@46)))) (and (= Mask@1 Mask@0) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_6@6 b_6@5) (= Used_3Mask@3 Used_3Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 12) 9)))) anon21_correct)))))
(let ((anon33_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 15) 12) anon34_Then_correct) (=> (= (ControlFlow 0 15) 13) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 14) 12) anon34_Then_correct) (=> (= (ControlFlow 0 14) 13) anon34_Else_correct)))))
(let ((anon32_Then_correct  (=> (and (and (and (and (and b_5@5 b_5@5) b_6@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@1) y@@1 f_7))) (and (=> (= (ControlFlow 0 16) 14) anon33_Then_correct) (=> (= (ControlFlow 0 16) 15) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (not (and (and (and (and b_5@5 b_5@5) b_6@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@1 QPMask@1) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_6@6 b_6@3) (= Used_3Mask@3 Used_3Mask@1)) (and (= Heap@1 Heap@@46) (= (ControlFlow 0 11) 9))) anon21_correct)))))
(let ((anon31_Else_correct  (=> (and (and (>= 0.0 takeTransfer@0) (= Used_3Mask@1 ZeroMask)) (and (= b_6@3 b_6@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 19) 16) anon32_Then_correct) (=> (= (ControlFlow 0 19) 11) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (and (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_3Mask@0 (PolymorphicMapType_17766 (store (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ZeroMask) y@@1 f_7 (+ (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ZeroMask) y@@1 f_7) takeTransfer@0)) (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| ZeroMask)))) (and (= b_6@1  (and b_6@0 (state Used_3Heap@0 Used_3Mask@0))) (= b_6@2  (and b_6@1 (= (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Ops_3Heap@0) y@@1 f_7) (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Used_3Heap@0) y@@1 f_7)))))) (and (and (= Ops_3Mask@2 (PolymorphicMapType_17766 (store (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Ops_3Mask@1) y@@1 f_7 (- (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Ops_3Mask@1) y@@1 f_7) takeTransfer@0)) (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| Ops_3Mask@1) (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| Ops_3Mask@1))) (= Used_3Mask@1 Used_3Mask@0)) (and (= b_6@3 b_6@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 18) 16) anon32_Then_correct) (=> (= (ControlFlow 0 18) 11) anon32_Else_correct))))))
(let ((anon30_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 21) 18) anon31_Then_correct) (=> (= (ControlFlow 0 21) 19) anon31_Else_correct)))))
(let ((anon30_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 20) 18) anon31_Then_correct) (=> (= (ControlFlow 0 20) 19) anon31_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and (and (and (and b_5@5 b_5@5) b_6@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| Ops_3Mask@1) y@@1 f_7))) (and (=> (= (ControlFlow 0 22) 20) anon30_Then_correct) (=> (= (ControlFlow 0 22) 21) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (and (not (and (and (and (and b_5@5 b_5@5) b_6@0) true) (> FullPerm 0.0))) (= Used_3Mask@1 ZeroMask)) (and (= b_6@3 b_6@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 17) 16) anon32_Then_correct) (=> (= (ControlFlow 0 17) 11) anon32_Else_correct)))))
(let ((anon9_correct  (=> (and (and (= b_5@4  (and b_5@3 (state Ops_3Heap@0 Ops_3Mask@1))) (= b_5@5  (and b_5@4 (state Ops_3Heap@0 Ops_3Mask@1)))) (and (= b_6@0  (and b_6 (state Used_3Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ZeroMask) y@@1 f_7) FullPerm)))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 23) 22) anon29_Then_correct) (=> (= (ControlFlow 0 23) 17) anon29_Else_correct)))))))
(let ((anon28_Else_correct  (=> (and (and (not b_5@0) (= Ops_3Mask@1 ZeroMask)) (and (= b_5@3 b_5@0) (= (ControlFlow 0 26) 23))) anon9_correct)))
(let ((anon28_Then_correct  (=> b_5@0 (=> (and (= b_5@1  (and b_5@0 (not (= z null)))) (= Ops_3Mask@0 (PolymorphicMapType_17766 (store (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ZeroMask) z f_7 (+ (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ZeroMask) z f_7) FullPerm)) (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| ZeroMask) (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| ZeroMask)))) (=> (and (and (= b_5@2  (and b_5@1 (state Ops_3Heap@0 Ops_3Mask@0))) (= Ops_3Mask@1 Ops_3Mask@0)) (and (= b_5@3 b_5@2) (= (ControlFlow 0 25) 23))) anon9_correct)))))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((x_3 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3 x_3_1)) (|Seq#Contains_11232| xs x_3)) (|Seq#Contains_11232| xs x_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (or (or (not (= x_3 x_3_1)) (not (= FullPerm FullPerm))) (not (= y@@1 y@@1))) (not (= FullPerm FullPerm))))
 :qid |stdinbpl.1504:17|
 :skolemid |163|
 :pattern ( (neverTriggered6 x_3) (neverTriggered6 x_3_1))
))) (=> (forall ((x_3@@0 T@Ref) (x_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@0 x_3_1@@0)) (|Seq#Contains_11232| xs x_3@@0)) (|Seq#Contains_11232| xs x_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (or (or (not (= x_3@@0 x_3_1@@0)) (not (= FullPerm FullPerm))) (not (= y@@1 y@@1))) (not (= FullPerm FullPerm))))
 :qid |stdinbpl.1504:17|
 :skolemid |163|
 :pattern ( (neverTriggered6 x_3@@0) (neverTriggered6 x_3_1@@0))
)) (=> (forall ((x_3@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_11232| xs x_3@@1) (< NoPerm FullPerm)) (and (= (invRecv6 x_3@@1 FullPerm y@@1 FullPerm) x_3@@1) (qpRange6 x_3@@1 FullPerm y@@1 FullPerm)))
 :qid |stdinbpl.1510:22|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@46) null (wand x_3@@1 FullPerm y@@1 FullPerm)))
 :pattern ( (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@0) null (wand x_3@@1 FullPerm y@@1 FullPerm)))
 :pattern ( (select (|PolymorphicMapType_17745_11147_5244#PolymorphicMapType_17745| Heap@@46) null (wand x_3@@1 FullPerm y@@1 FullPerm)))
)) (=> (and (forall ((arg_0 T@Ref) (arg_1_2 Real) (arg_2_1 T@Ref) (arg_3_1 Real) ) (!  (=> (and (and (|Seq#Contains_11232| xs (invRecv6 arg_0 arg_1_2 arg_2_1 arg_3_1)) (< NoPerm FullPerm)) (qpRange6 arg_0 arg_1_2 arg_2_1 arg_3_1)) (and (and (and (= (invRecv6 arg_0 arg_1_2 arg_2_1 arg_3_1) arg_0) (= FullPerm arg_1_2)) (= y@@1 arg_2_1)) (= FullPerm arg_3_1)))
 :qid |stdinbpl.1514:22|
 :skolemid |165|
 :pattern ( (invRecv6 arg_0 arg_1_2 arg_2_1 arg_3_1))
)) (forall ((arg_0@@0 T@Ref) (arg_1_2@@0 Real) (arg_2_1@@0 T@Ref) (arg_3_1@@0 Real) ) (!  (=> (and (and (|Seq#Contains_11232| xs (invRecv6 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) (< NoPerm FullPerm)) (qpRange6 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) (and (=> (< NoPerm FullPerm) (and (and (and (= (invRecv6 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0) arg_0@@0) (= FullPerm arg_1_2@@0)) (= y@@1 arg_2_1@@0)) (= FullPerm arg_3_1@@0))) (= (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@1) null (wand arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) (+ (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@0) null (wand arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) FullPerm))))
 :qid |stdinbpl.1520:22|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@1) null (wand arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_26702_5244) ) (!  (=> (or (or (not (= o_4 null)) (not (IsWandField_11147_5244 f_5))) (not (= (getPredWandId_11147_5244 f_5) 1))) (= (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@0) o_4 f_5) (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@1) o_4 f_5)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@0) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@1) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_26731_26732) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsWandField_11160_11161 f_5@@0))) (not (= (getPredWandId_11147_11161 f_5@@0) 1))) (= (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| QPMask@0) o_4@@0 f_5@@0) (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| QPMask@1) o_4@@0 f_5@@0)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| QPMask@0) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| QPMask@1) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_26702_53) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsWandField_11147_53 f_5@@1))) (not (= (getPredWandId_11147_53 f_5@@1) 1))) (= (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| QPMask@0) o_4@@1 f_5@@1) (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| QPMask@1) o_4@@1 f_5@@1)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| QPMask@0) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| QPMask@1) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_26702_17819) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsWandField_11147_17819 f_5@@2))) (not (= (getPredWandId_11147_17819 f_5@@2) 1))) (= (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| QPMask@0) o_4@@2 f_5@@2) (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| QPMask@1) o_4@@2 f_5@@2)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| QPMask@0) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| QPMask@1) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_26715_26720) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsWandField_11147_67363 f_5@@3))) (not (= (getPredWandId_11147_85617 f_5@@3) 1))) (= (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| QPMask@0) o_4@@3 f_5@@3) (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| QPMask@1) o_4@@3 f_5@@3)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| QPMask@0) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| QPMask@1) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_27344_5549) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsWandField_11195_5549 f_5@@4))) (not (= (getPredWandId_11195_5244 f_5@@4) 1))) (= (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@0) o_4@@4 f_5@@4) (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@1) o_4@@4 f_5@@4)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@0) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@1) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_11195_11199) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsWandField_11195_57189 f_5@@5))) (not (= (getPredWandId_11195_11161 f_5@@5) 1))) (= (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| QPMask@0) o_4@@5 f_5@@5) (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| QPMask@1) o_4@@5 f_5@@5)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| QPMask@0) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| QPMask@1) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_17805_53) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsWandField_11195_53 f_5@@6))) (not (= (getPredWandId_11195_53 f_5@@6) 1))) (= (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| QPMask@0) o_4@@6 f_5@@6) (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| QPMask@1) o_4@@6 f_5@@6)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| QPMask@0) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| QPMask@1) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_17818_17819) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsWandField_11195_17819 f_5@@7))) (not (= (getPredWandId_11195_17819 f_5@@7) 1))) (= (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| QPMask@0) o_4@@7 f_5@@7) (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| QPMask@1) o_4@@7 f_5@@7)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| QPMask@0) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| QPMask@1) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_11195_26720) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsWandField_11195_66546 f_5@@8))) (not (= (getPredWandId_11195_86433 f_5@@8) 1))) (= (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| QPMask@0) o_4@@8 f_5@@8) (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| QPMask@1) o_4@@8 f_5@@8)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| QPMask@0) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| QPMask@1) o_4@@8 f_5@@8))
))) (forall ((o_4@@9 T@Ref) (f_5@@9 T@Field_11198_5549) ) (!  (=> (or (or (not (= o_4@@9 null)) (not (IsWandField_11198_5549 f_5@@9))) (not (= (getPredWandId_11198_5244 f_5@@9) 1))) (= (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| QPMask@0) o_4@@9 f_5@@9) (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| QPMask@1) o_4@@9 f_5@@9)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| QPMask@0) o_4@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| QPMask@1) o_4@@9 f_5@@9))
))) (forall ((o_4@@10 T@Ref) (f_5@@10 T@Field_27391_27392) ) (!  (=> (or (or (not (= o_4@@10 null)) (not (IsWandField_11198_57546 f_5@@10))) (not (= (getPredWandId_11198_11199 f_5@@10) 1))) (= (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| QPMask@0) o_4@@10 f_5@@10) (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| QPMask@1) o_4@@10 f_5@@10)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| QPMask@0) o_4@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| QPMask@1) o_4@@10 f_5@@10))
))) (forall ((o_4@@11 T@Ref) (f_5@@11 T@Field_11198_53) ) (!  (=> (or (or (not (= o_4@@11 null)) (not (IsWandField_11198_53 f_5@@11))) (not (= (getPredWandId_11198_53 f_5@@11) 1))) (= (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| QPMask@0) o_4@@11 f_5@@11) (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| QPMask@1) o_4@@11 f_5@@11)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| QPMask@0) o_4@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| QPMask@1) o_4@@11 f_5@@11))
))) (forall ((o_4@@12 T@Ref) (f_5@@12 T@Field_11198_17819) ) (!  (=> (or (or (not (= o_4@@12 null)) (not (IsWandField_11198_17819 f_5@@12))) (not (= (getPredWandId_11198_17819 f_5@@12) 1))) (= (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| QPMask@0) o_4@@12 f_5@@12) (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| QPMask@1) o_4@@12 f_5@@12)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| QPMask@0) o_4@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| QPMask@1) o_4@@12 f_5@@12))
))) (forall ((o_4@@13 T@Ref) (f_5@@13 T@Field_27404_27409) ) (!  (=> (or (or (not (= o_4@@13 null)) (not (IsWandField_11198_68194 f_5@@13))) (not (= (getPredWandId_11198_87242 f_5@@13) 1))) (= (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| QPMask@0) o_4@@13 f_5@@13) (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| QPMask@1) o_4@@13 f_5@@13)))
 :qid |stdinbpl.1526:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| QPMask@0) o_4@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| QPMask@1) o_4@@13 f_5@@13))
))) (and (and (forall ((arg_0@@1 T@Ref) (arg_1_2@@1 Real) (arg_2_1@@1 T@Ref) (arg_3_1@@1 Real) ) (!  (=> (not (and (and (|Seq#Contains_11232| xs (invRecv6 arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1)) (< NoPerm FullPerm)) (qpRange6 arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1))) (= (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@1) null (wand arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1)) (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@0) null (wand arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1))))
 :qid |stdinbpl.1530:22|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@1) null (wand arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1)))
)) (state Heap@@46 QPMask@1)) (and (state Heap@@46 QPMask@1) (state Heap@@46 QPMask@1)))) (and (and (and (|Seq#Contains_11232| zs z) (state Heap@@46 QPMask@1)) (and (state Heap@@46 QPMask@1) (not (|Seq#Contains_11232| xs z)))) (and (and (state Heap@@46 QPMask@1) (state Heap@@46 QPMask@1)) (and (= b_5@0  (and b_5 (state Ops_3Heap@0 ZeroMask))) (= b_4@0  (and b_4 (state Used_2Heap@0 ZeroMask))))))) (and (=> (= (ControlFlow 0 27) 25) anon28_Then_correct) (=> (= (ControlFlow 0 27) 26) anon28_Else_correct)))))))))
(let ((anon27_Then_correct true))
(let ((anon6_correct true))
(let ((anon26_Then_correct  (=> (|Seq#Contains_11232| xs x_18) (and (=> (= (ControlFlow 0 5) 4) anon27_Then_correct) (=> (= (ControlFlow 0 5) 2) anon6_correct)))))
(let ((anon26_Else_correct  (=> (and (not (|Seq#Contains_11232| xs x_18)) (= (ControlFlow 0 3) 2)) anon6_correct)))
(let ((anon24_Else_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (= x_1 y@@1)) (= x_1_1 y@@1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.1432:15|
 :skolemid |157|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (= x_1@@0 y@@1)) (= x_1_1@@0 y@@1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.1432:15|
 :skolemid |157|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (= x_1@@1 y@@1) (< NoPerm FullPerm)) (and (qpRange5 x_1@@1) (= (invRecv5 x_1@@1) x_1@@1)))
 :qid |stdinbpl.1438:22|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@46) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@0) x_1@@1 f_7))
)) (forall ((o_4@@14 T@Ref) ) (!  (=> (and (and (= (invRecv5 o_4@@14) y@@1) (< NoPerm FullPerm)) (qpRange5 o_4@@14)) (= (invRecv5 o_4@@14) o_4@@14))
 :qid |stdinbpl.1442:22|
 :skolemid |159|
 :pattern ( (invRecv5 o_4@@14))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (= x_1@@2 y@@1) (not (= x_1@@2 null)))
 :qid |stdinbpl.1448:22|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_17745_11195_5549#PolymorphicMapType_17745| Heap@@46) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@0) x_1@@2 f_7))
)) (forall ((o_4@@15 T@Ref) ) (!  (and (=> (and (and (= (invRecv5 o_4@@15) y@@1) (< NoPerm FullPerm)) (qpRange5 o_4@@15)) (and (=> (< NoPerm FullPerm) (= (invRecv5 o_4@@15) o_4@@15)) (= (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@0) o_4@@15 f_7) (+ (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ZeroMask) o_4@@15 f_7) FullPerm)))) (=> (not (and (and (= (invRecv5 o_4@@15) y@@1) (< NoPerm FullPerm)) (qpRange5 o_4@@15))) (= (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@0) o_4@@15 f_7) (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ZeroMask) o_4@@15 f_7))))
 :qid |stdinbpl.1454:22|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@0) o_4@@15 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@16 T@Ref) (f_5@@14 T@Field_17805_53) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| ZeroMask) o_4@@16 f_5@@14) (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| QPMask@0) o_4@@16 f_5@@14)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| ZeroMask) o_4@@16 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_17766_11195_53#PolymorphicMapType_17766| QPMask@0) o_4@@16 f_5@@14))
)) (forall ((o_4@@17 T@Ref) (f_5@@15 T@Field_17818_17819) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| ZeroMask) o_4@@17 f_5@@15) (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| QPMask@0) o_4@@17 f_5@@15)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| ZeroMask) o_4@@17 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_17766_11195_17819#PolymorphicMapType_17766| QPMask@0) o_4@@17 f_5@@15))
))) (forall ((o_4@@18 T@Ref) (f_5@@16 T@Field_27344_5549) ) (!  (=> (not (= f_5@@16 f_7)) (= (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ZeroMask) o_4@@18 f_5@@16) (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@0) o_4@@18 f_5@@16)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| ZeroMask) o_4@@18 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_17766_11195_5549#PolymorphicMapType_17766| QPMask@0) o_4@@18 f_5@@16))
))) (forall ((o_4@@19 T@Ref) (f_5@@17 T@Field_11195_26720) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| ZeroMask) o_4@@19 f_5@@17) (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| QPMask@0) o_4@@19 f_5@@17)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| ZeroMask) o_4@@19 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_17766_11195_63912#PolymorphicMapType_17766| QPMask@0) o_4@@19 f_5@@17))
))) (forall ((o_4@@20 T@Ref) (f_5@@18 T@Field_11195_11199) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| ZeroMask) o_4@@20 f_5@@18) (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| QPMask@0) o_4@@20 f_5@@18)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| ZeroMask) o_4@@20 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_17766_11195_11199#PolymorphicMapType_17766| QPMask@0) o_4@@20 f_5@@18))
))) (forall ((o_4@@21 T@Ref) (f_5@@19 T@Field_26702_53) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| ZeroMask) o_4@@21 f_5@@19) (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| QPMask@0) o_4@@21 f_5@@19)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| ZeroMask) o_4@@21 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_17766_11147_53#PolymorphicMapType_17766| QPMask@0) o_4@@21 f_5@@19))
))) (forall ((o_4@@22 T@Ref) (f_5@@20 T@Field_26702_17819) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| ZeroMask) o_4@@22 f_5@@20) (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| QPMask@0) o_4@@22 f_5@@20)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| ZeroMask) o_4@@22 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_17766_11147_17819#PolymorphicMapType_17766| QPMask@0) o_4@@22 f_5@@20))
))) (forall ((o_4@@23 T@Ref) (f_5@@21 T@Field_26702_5244) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| ZeroMask) o_4@@23 f_5@@21) (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@0) o_4@@23 f_5@@21)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| ZeroMask) o_4@@23 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_17766_11147_5244#PolymorphicMapType_17766| QPMask@0) o_4@@23 f_5@@21))
))) (forall ((o_4@@24 T@Ref) (f_5@@22 T@Field_26715_26720) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| ZeroMask) o_4@@24 f_5@@22) (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| QPMask@0) o_4@@24 f_5@@22)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| ZeroMask) o_4@@24 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_17766_11147_64326#PolymorphicMapType_17766| QPMask@0) o_4@@24 f_5@@22))
))) (forall ((o_4@@25 T@Ref) (f_5@@23 T@Field_26731_26732) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| ZeroMask) o_4@@25 f_5@@23) (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| QPMask@0) o_4@@25 f_5@@23)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| ZeroMask) o_4@@25 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_17766_11147_11199#PolymorphicMapType_17766| QPMask@0) o_4@@25 f_5@@23))
))) (forall ((o_4@@26 T@Ref) (f_5@@24 T@Field_11198_53) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| ZeroMask) o_4@@26 f_5@@24) (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| QPMask@0) o_4@@26 f_5@@24)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| ZeroMask) o_4@@26 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_17766_11198_53#PolymorphicMapType_17766| QPMask@0) o_4@@26 f_5@@24))
))) (forall ((o_4@@27 T@Ref) (f_5@@25 T@Field_11198_17819) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| ZeroMask) o_4@@27 f_5@@25) (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| QPMask@0) o_4@@27 f_5@@25)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| ZeroMask) o_4@@27 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_17766_11198_17819#PolymorphicMapType_17766| QPMask@0) o_4@@27 f_5@@25))
))) (forall ((o_4@@28 T@Ref) (f_5@@26 T@Field_11198_5549) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| ZeroMask) o_4@@28 f_5@@26) (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| QPMask@0) o_4@@28 f_5@@26)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| ZeroMask) o_4@@28 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_17766_11198_5549#PolymorphicMapType_17766| QPMask@0) o_4@@28 f_5@@26))
))) (forall ((o_4@@29 T@Ref) (f_5@@27 T@Field_27404_27409) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| ZeroMask) o_4@@29 f_5@@27) (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| QPMask@0) o_4@@29 f_5@@27)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| ZeroMask) o_4@@29 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_17766_11198_64737#PolymorphicMapType_17766| QPMask@0) o_4@@29 f_5@@27))
))) (forall ((o_4@@30 T@Ref) (f_5@@28 T@Field_27391_27392) ) (!  (=> true (= (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| ZeroMask) o_4@@30 f_5@@28) (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| QPMask@0) o_4@@30 f_5@@28)))
 :qid |stdinbpl.1458:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| ZeroMask) o_4@@30 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_17766_11198_11199#PolymorphicMapType_17766| QPMask@0) o_4@@30 f_5@@28))
))) (state Heap@@46 QPMask@0)) (and (state Heap@@46 QPMask@0) (state Heap@@46 QPMask@0))) (and (and (=> (= (ControlFlow 0 29) 27) anon25_Else_correct) (=> (= (ControlFlow 0 29) 5) anon26_Then_correct)) (=> (= (ControlFlow 0 29) 3) anon26_Else_correct))))))))
(let ((anon24_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@46 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@46) y@@1 $allocated) (select (|PolymorphicMapType_17745_10750_53#PolymorphicMapType_17745| Heap@@46) z $allocated))) (and (=> (= (ControlFlow 0 31) 1) anon24_Then_correct) (=> (= (ControlFlow 0 31) 29) anon24_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 32) 31) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 7))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
