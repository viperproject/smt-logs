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
(declare-sort T@Field_27497_53 0)
(declare-sort T@Field_27510_27511 0)
(declare-sort T@Field_34318_3379 0)
(declare-sort T@Field_34867_34868 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_37623_37628 0)
(declare-sort T@Field_33538_33543 0)
(declare-sort T@Field_14956_15030 0)
(declare-sort T@Field_14956_33543 0)
(declare-sort T@Field_15029_3379 0)
(declare-sort T@Field_15029_14959 0)
(declare-sort T@Field_15029_53 0)
(declare-sort T@Field_33521_3011 0)
(declare-sort T@Field_33521_14959 0)
(declare-sort T@Field_33558_33559 0)
(declare-sort T@Field_33521_53 0)
(declare-datatypes ((T@PolymorphicMapType_27458 0)) (((PolymorphicMapType_27458 (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| (Array T@Ref T@Field_34867_34868 Real)) (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| (Array T@Ref T@Field_34318_3379 Real)) (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| (Array T@Ref T@Field_27510_27511 Real)) (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| (Array T@Ref T@Field_33521_3011 Real)) (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| (Array T@Ref T@Field_15029_3379 Real)) (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| (Array T@Ref T@Field_15029_14959 Real)) (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| (Array T@Ref T@Field_15029_53 Real)) (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| (Array T@Ref T@Field_37623_37628 Real)) (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| (Array T@Ref T@Field_14956_15030 Real)) (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| (Array T@Ref T@Field_27497_53 Real)) (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| (Array T@Ref T@Field_14956_33543 Real)) (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| (Array T@Ref T@Field_33558_33559 Real)) (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| (Array T@Ref T@Field_33521_14959 Real)) (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| (Array T@Ref T@Field_33521_53 Real)) (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| (Array T@Ref T@Field_33538_33543 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27986 0)) (((PolymorphicMapType_27986 (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| (Array T@Ref T@Field_34318_3379 Bool)) (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| (Array T@Ref T@Field_27510_27511 Bool)) (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| (Array T@Ref T@Field_27497_53 Bool)) (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| (Array T@Ref T@Field_14956_33543 Bool)) (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| (Array T@Ref T@Field_14956_15030 Bool)) (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| (Array T@Ref T@Field_33521_3011 Bool)) (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| (Array T@Ref T@Field_33521_14959 Bool)) (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| (Array T@Ref T@Field_33521_53 Bool)) (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| (Array T@Ref T@Field_33538_33543 Bool)) (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| (Array T@Ref T@Field_33558_33559 Bool)) (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| (Array T@Ref T@Field_15029_3379 Bool)) (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| (Array T@Ref T@Field_15029_14959 Bool)) (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| (Array T@Ref T@Field_15029_53 Bool)) (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| (Array T@Ref T@Field_37623_37628 Bool)) (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| (Array T@Ref T@Field_34867_34868 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27437 0)) (((PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| (Array T@Ref T@Field_27497_53 Bool)) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| (Array T@Ref T@Field_27510_27511 T@Ref)) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| (Array T@Ref T@Field_34318_3379 Int)) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| (Array T@Ref T@Field_34867_34868 T@FrameType)) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| (Array T@Ref T@Field_37623_37628 T@PolymorphicMapType_27986)) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| (Array T@Ref T@Field_33538_33543 T@PolymorphicMapType_27986)) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| (Array T@Ref T@Field_14956_15030 T@FrameType)) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| (Array T@Ref T@Field_14956_33543 T@PolymorphicMapType_27986)) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| (Array T@Ref T@Field_15029_3379 Int)) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| (Array T@Ref T@Field_15029_14959 T@Ref)) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| (Array T@Ref T@Field_15029_53 Bool)) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| (Array T@Ref T@Field_33521_3011 Int)) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| (Array T@Ref T@Field_33521_14959 T@Ref)) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| (Array T@Ref T@Field_33558_33559 T@FrameType)) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| (Array T@Ref T@Field_33521_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_27497_53)
(declare-fun val () T@Field_34318_3379)
(declare-fun next () T@Field_27510_27511)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_3416| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_27437 T@PolymorphicMapType_27437) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_27437 T@PolymorphicMapType_27437) Bool)
(declare-fun state (T@PolymorphicMapType_27437 T@PolymorphicMapType_27458) Bool)
(declare-fun head_3 (T@PolymorphicMapType_27437 T@Ref) Int)
(declare-fun |head#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_15029| (T@PolymorphicMapType_27437 T@Field_34867_34868) Bool)
(declare-fun List (T@Ref) T@Field_34867_34868)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_27458) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_27986)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3539| () T@Seq_2867)
(declare-fun IsPredicateField_15029_15030 (T@Field_34867_34868) Bool)
(declare-fun |elems'| (T@PolymorphicMapType_27437 T@Ref) T@Seq_2867)
(declare-fun dummyFunction_34493 (T@Seq_2867) Bool)
(declare-fun |elems#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |head'| (T@PolymorphicMapType_27437 T@Ref) Int)
(declare-fun dummyFunction_4389 (Int) Bool)
(declare-fun |List#everUsed_15029| (T@Field_34867_34868) Bool)
(declare-fun wand (T@Ref T@Ref T@Ref T@Seq_2867 T@Ref) T@Field_33521_3011)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_3416| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun elems_1 (T@PolymorphicMapType_27437 T@Ref) T@Seq_2867)
(declare-fun getPredWandId_14898_3011 (T@Field_33521_3011) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_27437 T@PolymorphicMapType_27437 T@PolymorphicMapType_27458) Bool)
(declare-fun IsPredicateField_14913_14914 (T@Field_33558_33559) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_33521 (T@Field_33558_33559) T@Field_33538_33543)
(declare-fun HasDirectPerm_33521_15030 (T@PolymorphicMapType_27458 T@Ref T@Field_33558_33559) Bool)
(declare-fun PredicateMaskField_15029 (T@Field_34867_34868) T@Field_37623_37628)
(declare-fun HasDirectPerm_15029_15030 (T@PolymorphicMapType_27458 T@Ref T@Field_34867_34868) Bool)
(declare-fun IsPredicateField_14956_92467 (T@Field_14956_15030) Bool)
(declare-fun PredicateMaskField_14956 (T@Field_14956_15030) T@Field_14956_33543)
(declare-fun HasDirectPerm_14956_15030 (T@PolymorphicMapType_27458 T@Ref T@Field_14956_15030) Bool)
(declare-fun IsWandField_14913_14914 (T@Field_33558_33559) Bool)
(declare-fun WandMaskField_14913 (T@Field_33558_33559) T@Field_33538_33543)
(declare-fun IsWandField_15029_97816 (T@Field_34867_34868) Bool)
(declare-fun WandMaskField_15029 (T@Field_34867_34868) T@Field_37623_37628)
(declare-fun IsWandField_14956_97459 (T@Field_14956_15030) Bool)
(declare-fun WandMaskField_14956 (T@Field_14956_15030) T@Field_14956_33543)
(declare-fun |Seq#Append_3379| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun |Seq#Singleton_3379| (Int) T@Seq_2867)
(declare-fun |List#sm| (T@Ref) T@Field_37623_37628)
(declare-fun dummyHeap () T@PolymorphicMapType_27437)
(declare-fun ZeroMask () T@PolymorphicMapType_27458)
(declare-fun InsidePredicate_33521_33521 (T@Field_33558_33559 T@FrameType T@Field_33558_33559 T@FrameType) Bool)
(declare-fun InsidePredicate_27497_27497 (T@Field_14956_15030 T@FrameType T@Field_14956_15030 T@FrameType) Bool)
(declare-fun InsidePredicate_15029_15029 (T@Field_34867_34868 T@FrameType T@Field_34867_34868 T@FrameType) Bool)
(declare-fun IsWandField_14898_3011 (T@Field_33521_3011) Bool)
(declare-fun |wand#ft| (T@Ref T@Ref T@Ref T@Seq_2867 T@Ref) T@Field_33558_33559)
(declare-fun IsPredicateField_14956_3379 (T@Field_34318_3379) Bool)
(declare-fun IsWandField_14956_3379 (T@Field_34318_3379) Bool)
(declare-fun IsPredicateField_14958_14959 (T@Field_27510_27511) Bool)
(declare-fun IsWandField_14958_14959 (T@Field_27510_27511) Bool)
(declare-fun IsPredicateField_14898_3011 (T@Field_33521_3011) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_14898_108419 (T@Field_33538_33543) Bool)
(declare-fun IsWandField_14898_108435 (T@Field_33538_33543) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_14898_53 (T@Field_33521_53) Bool)
(declare-fun IsWandField_14898_53 (T@Field_33521_53) Bool)
(declare-fun IsPredicateField_14898_14959 (T@Field_33521_14959) Bool)
(declare-fun IsWandField_14898_14959 (T@Field_33521_14959) Bool)
(declare-fun IsPredicateField_14956_107602 (T@Field_14956_33543) Bool)
(declare-fun IsWandField_14956_107618 (T@Field_14956_33543) Bool)
(declare-fun IsPredicateField_14956_53 (T@Field_27497_53) Bool)
(declare-fun IsWandField_14956_53 (T@Field_27497_53) Bool)
(declare-fun IsPredicateField_15029_106799 (T@Field_37623_37628) Bool)
(declare-fun IsWandField_15029_106815 (T@Field_37623_37628) Bool)
(declare-fun IsPredicateField_15029_53 (T@Field_15029_53) Bool)
(declare-fun IsWandField_15029_53 (T@Field_15029_53) Bool)
(declare-fun IsPredicateField_15029_14959 (T@Field_15029_14959) Bool)
(declare-fun IsWandField_15029_14959 (T@Field_15029_14959) Bool)
(declare-fun IsPredicateField_15029_3379 (T@Field_15029_3379) Bool)
(declare-fun IsWandField_15029_3379 (T@Field_15029_3379) Bool)
(declare-fun HasDirectPerm_33521_92222 (T@PolymorphicMapType_27458 T@Ref T@Field_33538_33543) Bool)
(declare-fun HasDirectPerm_33521_53 (T@PolymorphicMapType_27458 T@Ref T@Field_33521_53) Bool)
(declare-fun HasDirectPerm_33521_14959 (T@PolymorphicMapType_27458 T@Ref T@Field_33521_14959) Bool)
(declare-fun HasDirectPerm_33521_3379 (T@PolymorphicMapType_27458 T@Ref T@Field_33521_3011) Bool)
(declare-fun HasDirectPerm_15029_91088 (T@PolymorphicMapType_27458 T@Ref T@Field_37623_37628) Bool)
(declare-fun HasDirectPerm_15029_53 (T@PolymorphicMapType_27458 T@Ref T@Field_15029_53) Bool)
(declare-fun HasDirectPerm_15029_14959 (T@PolymorphicMapType_27458 T@Ref T@Field_15029_14959) Bool)
(declare-fun HasDirectPerm_15029_3379 (T@PolymorphicMapType_27458 T@Ref T@Field_15029_3379) Bool)
(declare-fun HasDirectPerm_14956_89947 (T@PolymorphicMapType_27458 T@Ref T@Field_14956_33543) Bool)
(declare-fun HasDirectPerm_14956_53 (T@PolymorphicMapType_27458 T@Ref T@Field_27497_53) Bool)
(declare-fun HasDirectPerm_14958_14959 (T@PolymorphicMapType_27458 T@Ref T@Field_27510_27511) Bool)
(declare-fun HasDirectPerm_14956_3379 (T@PolymorphicMapType_27458 T@Ref T@Field_34318_3379) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_27458 T@PolymorphicMapType_27458 T@PolymorphicMapType_27458) Bool)
(declare-fun |Seq#Equal_3416| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |wand#sm| (T@Ref T@Ref T@Ref T@Seq_2867 T@Ref) T@Field_33538_33543)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |elems#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |head#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_15029_15030 (T@Field_34867_34868) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_33521_27497 (T@Field_33558_33559 T@FrameType T@Field_14956_15030 T@FrameType) Bool)
(declare-fun InsidePredicate_33521_15029 (T@Field_33558_33559 T@FrameType T@Field_34867_34868 T@FrameType) Bool)
(declare-fun InsidePredicate_27497_33521 (T@Field_14956_15030 T@FrameType T@Field_33558_33559 T@FrameType) Bool)
(declare-fun InsidePredicate_27497_15029 (T@Field_14956_15030 T@FrameType T@Field_34867_34868 T@FrameType) Bool)
(declare-fun InsidePredicate_15029_33521 (T@Field_34867_34868 T@FrameType T@Field_33558_33559 T@FrameType) Bool)
(declare-fun InsidePredicate_15029_27497 (T@Field_34867_34868 T@FrameType T@Field_14956_15030 T@FrameType) Bool)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_3416| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_3416| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_3416| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.277:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_3416| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_3416| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_27437) (Heap1 T@PolymorphicMapType_27437) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_27437) (Mask T@PolymorphicMapType_27458) (xs T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (head_3 Heap xs) (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap) xs val)))
 :qid |stdinbpl.742:15|
 :skolemid |72|
 :pattern ( (state Heap Mask) (head_3 Heap xs))
 :pattern ( (state Heap Mask) (|head#triggerStateless| xs) (|List#trigger_15029| Heap (List xs)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_27437) (Mask@@0 T@PolymorphicMapType_27458) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_27437) (Heap1@@0 T@PolymorphicMapType_27437) (Heap2 T@PolymorphicMapType_27437) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_34867_34868) ) (!  (not (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_37623_37628) ) (!  (not (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15029_53) ) (!  (not (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_15029_14959) ) (!  (not (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_15029_3379) ) (!  (not (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_33558_33559) ) (!  (not (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_33538_33543) ) (!  (not (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_33521_53) ) (!  (not (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_33521_14959) ) (!  (not (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_33521_3011) ) (!  (not (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_14956_15030) ) (!  (not (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_14956_33543) ) (!  (not (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_27497_53) ) (!  (not (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_27510_27511) ) (!  (not (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_34318_3379) ) (!  (not (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_3416| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.298:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_3416| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_3539|) 0))
(assert (forall ((xs@@0 T@Ref) ) (! (IsPredicateField_15029_15030 (List xs@@0))
 :qid |stdinbpl.844:15|
 :skolemid |76|
 :pattern ( (List xs@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_27437) (xs@@1 T@Ref) ) (! (dummyFunction_34493 (|elems#triggerStateless| xs@@1))
 :qid |stdinbpl.603:15|
 :skolemid |66|
 :pattern ( (|elems'| Heap@@1 xs@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_27437) (xs@@2 T@Ref) ) (! (dummyFunction_4389 (|head#triggerStateless| xs@@2))
 :qid |stdinbpl.736:15|
 :skolemid |71|
 :pattern ( (|head'| Heap@@2 xs@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_27437) (xs@@3 T@Ref) ) (! (|List#everUsed_15029| (List xs@@3))
 :qid |stdinbpl.863:15|
 :skolemid |80|
 :pattern ( (|List#trigger_15029| Heap@@3 (List xs@@3)))
)))
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) (arg3 T@Ref) (arg4 T@Seq_2867) (arg5 T@Ref) (arg1_2 T@Ref) (arg2_2 T@Ref) (arg3_2 T@Ref) (arg4_2 T@Seq_2867) (arg5_2 T@Ref) ) (!  (=> (= (wand arg1 arg2 arg3 arg4 arg5) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2)) (and (= arg1 arg1_2) (and (= arg2 arg2_2) (and (= arg3 arg3_2) (and (= arg4 arg4_2) (= arg5 arg5_2))))))
 :qid |stdinbpl.576:15|
 :skolemid |64|
 :pattern ( (wand arg1 arg2 arg3 arg4 arg5) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.253:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_3416| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_3416| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_3416| s@@2 n@@2)) 0)))
 :qid |stdinbpl.264:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_3416| s@@2 n@@2)))
 :pattern ( (|Seq#Take_3416| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.538:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.396:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_27437) (xs@@4 T@Ref) ) (!  (and (= (elems_1 Heap@@4 xs@@4) (|elems'| Heap@@4 xs@@4)) (dummyFunction_34493 (|elems#triggerStateless| xs@@4)))
 :qid |stdinbpl.599:15|
 :skolemid |65|
 :pattern ( (elems_1 Heap@@4 xs@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_27437) (xs@@5 T@Ref) ) (!  (and (= (head_3 Heap@@5 xs@@5) (|head'| Heap@@5 xs@@5)) (dummyFunction_4389 (|head#triggerStateless| xs@@5)))
 :qid |stdinbpl.732:15|
 :skolemid |70|
 :pattern ( (head_3 Heap@@5 xs@@5))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3416| s@@4 n@@3) s@@4))
 :qid |stdinbpl.380:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3416| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.233:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.231:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) (arg3@@0 T@Ref) (arg4@@0 T@Seq_2867) (arg5@@0 T@Ref) ) (! (= (getPredWandId_14898_3011 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0)) 1)
 :qid |stdinbpl.572:15|
 :skolemid |63|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_27437) (ExhaleHeap T@PolymorphicMapType_27437) (Mask@@1 T@PolymorphicMapType_27458) (pm_f_12 T@Field_33558_33559) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_33521_15030 Mask@@1 null pm_f_12) (IsPredicateField_14913_14914 pm_f_12)) (= (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@6) null (PredicateMaskField_33521 pm_f_12)) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap) null (PredicateMaskField_33521 pm_f_12)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@1) (IsPredicateField_14913_14914 pm_f_12) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap) null (PredicateMaskField_33521 pm_f_12)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_27437) (ExhaleHeap@@0 T@PolymorphicMapType_27437) (Mask@@2 T@PolymorphicMapType_27458) (pm_f_12@@0 T@Field_34867_34868) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_15029_15030 Mask@@2 null pm_f_12@@0) (IsPredicateField_15029_15030 pm_f_12@@0)) (= (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@7) null (PredicateMaskField_15029 pm_f_12@@0)) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@0) null (PredicateMaskField_15029 pm_f_12@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@2) (IsPredicateField_15029_15030 pm_f_12@@0) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@0) null (PredicateMaskField_15029 pm_f_12@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_27437) (ExhaleHeap@@1 T@PolymorphicMapType_27437) (Mask@@3 T@PolymorphicMapType_27458) (pm_f_12@@1 T@Field_14956_15030) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_14956_15030 Mask@@3 null pm_f_12@@1) (IsPredicateField_14956_92467 pm_f_12@@1)) (= (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@8) null (PredicateMaskField_14956 pm_f_12@@1)) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@1) null (PredicateMaskField_14956 pm_f_12@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@3) (IsPredicateField_14956_92467 pm_f_12@@1) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@1) null (PredicateMaskField_14956 pm_f_12@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_27437) (ExhaleHeap@@2 T@PolymorphicMapType_27437) (Mask@@4 T@PolymorphicMapType_27458) (pm_f_12@@2 T@Field_33558_33559) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_33521_15030 Mask@@4 null pm_f_12@@2) (IsWandField_14913_14914 pm_f_12@@2)) (= (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@9) null (WandMaskField_14913 pm_f_12@@2)) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@2) null (WandMaskField_14913 pm_f_12@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@4) (IsWandField_14913_14914 pm_f_12@@2) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@2) null (WandMaskField_14913 pm_f_12@@2)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_27437) (ExhaleHeap@@3 T@PolymorphicMapType_27437) (Mask@@5 T@PolymorphicMapType_27458) (pm_f_12@@3 T@Field_34867_34868) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_15029_15030 Mask@@5 null pm_f_12@@3) (IsWandField_15029_97816 pm_f_12@@3)) (= (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@10) null (WandMaskField_15029 pm_f_12@@3)) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@3) null (WandMaskField_15029 pm_f_12@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (IsWandField_15029_97816 pm_f_12@@3) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@3) null (WandMaskField_15029 pm_f_12@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_27437) (ExhaleHeap@@4 T@PolymorphicMapType_27437) (Mask@@6 T@PolymorphicMapType_27458) (pm_f_12@@4 T@Field_14956_15030) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_14956_15030 Mask@@6 null pm_f_12@@4) (IsWandField_14956_97459 pm_f_12@@4)) (= (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@11) null (WandMaskField_14956 pm_f_12@@4)) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@4) null (WandMaskField_14956 pm_f_12@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (IsWandField_14956_97459 pm_f_12@@4) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@4) null (WandMaskField_14956 pm_f_12@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_27437) (Mask@@7 T@PolymorphicMapType_27458) (xs@@6 T@Ref) ) (!  (=> (and (state Heap@@12 Mask@@7) (< AssumeFunctionsAbove 0)) (= (elems_1 Heap@@12 xs@@6) (|Seq#Append_3379| (|Seq#Singleton_3379| (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@12) xs@@6 val)) (ite (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@12) xs@@6 next) null) |Seq#Empty_3539| (|elems'| Heap@@12 (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@12) xs@@6 next))))))
 :qid |stdinbpl.609:15|
 :skolemid |67|
 :pattern ( (state Heap@@12 Mask@@7) (elems_1 Heap@@12 xs@@6))
 :pattern ( (state Heap@@12 Mask@@7) (|elems#triggerStateless| xs@@6) (|List#trigger_15029| Heap@@12 (List xs@@6)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3379| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.521:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3379| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_3416| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.272:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_3416| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_3416| s@@5 n@@4))
)))
(assert (forall ((xs@@7 T@Ref) (xs2 T@Ref) ) (!  (=> (= (List xs@@7) (List xs2)) (= xs@@7 xs2))
 :qid |stdinbpl.854:15|
 :skolemid |78|
 :pattern ( (List xs@@7) (List xs2))
)))
(assert (forall ((xs@@8 T@Ref) (xs2@@0 T@Ref) ) (!  (=> (= (|List#sm| xs@@8) (|List#sm| xs2@@0)) (= xs@@8 xs2@@0))
 :qid |stdinbpl.858:15|
 :skolemid |79|
 :pattern ( (|List#sm| xs@@8) (|List#sm| xs2@@0))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3379| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_3416| (|Seq#Append_3379| s@@6 t) n@@5) (|Seq#Append_3379| s@@6 (|Seq#Take_3416| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.357:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3416| (|Seq#Append_3379| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_27437) (ExhaleHeap@@5 T@PolymorphicMapType_27437) (Mask@@8 T@PolymorphicMapType_27458) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@8) (=> (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@13) o_13 $allocated) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@5) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@8) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@5) o_13 $allocated))
)))
(assert (forall ((p T@Field_33558_33559) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_33521_33521 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_33521_33521 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14956_15030) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_27497_27497 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27497_27497 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_34867_34868) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_15029_15029 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15029_15029 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3539|)) (not (= s1 |Seq#Empty_3539|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3379| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3379| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.244:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3379| s0 s1) n@@6))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) (arg3@@1 T@Ref) (arg4@@1 T@Seq_2867) (arg5@@1 T@Ref) ) (! (IsWandField_14898_3011 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1))
 :qid |stdinbpl.552:15|
 :skolemid |58|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) (arg3@@2 T@Ref) (arg4@@2 T@Seq_2867) (arg5@@2 T@Ref) ) (! (IsWandField_14913_14914 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2))
 :qid |stdinbpl.556:15|
 :skolemid |59|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2))
)))
(assert  (not (IsPredicateField_14956_3379 val)))
(assert  (not (IsWandField_14956_3379 val)))
(assert  (not (IsPredicateField_14958_14959 next)))
(assert  (not (IsWandField_14958_14959 next)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_27437) (ExhaleHeap@@6 T@PolymorphicMapType_27437) (Mask@@9 T@PolymorphicMapType_27458) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@9) (succHeap Heap@@14 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@9))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg3@@3 T@Ref) (arg4@@3 T@Seq_2867) (arg5@@3 T@Ref) ) (!  (not (IsPredicateField_14898_3011 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3)))
 :qid |stdinbpl.560:15|
 :skolemid |60|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) (arg3@@4 T@Ref) (arg4@@4 T@Seq_2867) (arg5@@4 T@Ref) ) (!  (not (IsPredicateField_14913_14914 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4)))
 :qid |stdinbpl.564:15|
 :skolemid |61|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_27458) (o_2@@14 T@Ref) (f_4@@14 T@Field_33538_33543) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| Mask@@10) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_14898_108419 f_4@@14))) (not (IsWandField_14898_108435 f_4@@14))) (<= (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| Mask@@10) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| Mask@@10) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_27458) (o_2@@15 T@Ref) (f_4@@15 T@Field_33521_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| Mask@@11) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_14898_53 f_4@@15))) (not (IsWandField_14898_53 f_4@@15))) (<= (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| Mask@@11) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| Mask@@11) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_27458) (o_2@@16 T@Ref) (f_4@@16 T@Field_33521_14959) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| Mask@@12) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_14898_14959 f_4@@16))) (not (IsWandField_14898_14959 f_4@@16))) (<= (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| Mask@@12) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| Mask@@12) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_27458) (o_2@@17 T@Ref) (f_4@@17 T@Field_33521_3011) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| Mask@@13) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_14898_3011 f_4@@17))) (not (IsWandField_14898_3011 f_4@@17))) (<= (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| Mask@@13) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| Mask@@13) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_27458) (o_2@@18 T@Ref) (f_4@@18 T@Field_33558_33559) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| Mask@@14) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_14913_14914 f_4@@18))) (not (IsWandField_14913_14914 f_4@@18))) (<= (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| Mask@@14) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| Mask@@14) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_27458) (o_2@@19 T@Ref) (f_4@@19 T@Field_14956_33543) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| Mask@@15) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_14956_107602 f_4@@19))) (not (IsWandField_14956_107618 f_4@@19))) (<= (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| Mask@@15) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| Mask@@15) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_27458) (o_2@@20 T@Ref) (f_4@@20 T@Field_27497_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| Mask@@16) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_14956_53 f_4@@20))) (not (IsWandField_14956_53 f_4@@20))) (<= (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| Mask@@16) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| Mask@@16) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_27458) (o_2@@21 T@Ref) (f_4@@21 T@Field_27510_27511) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| Mask@@17) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_14958_14959 f_4@@21))) (not (IsWandField_14958_14959 f_4@@21))) (<= (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| Mask@@17) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| Mask@@17) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_27458) (o_2@@22 T@Ref) (f_4@@22 T@Field_34318_3379) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| Mask@@18) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_14956_3379 f_4@@22))) (not (IsWandField_14956_3379 f_4@@22))) (<= (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| Mask@@18) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| Mask@@18) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_27458) (o_2@@23 T@Ref) (f_4@@23 T@Field_14956_15030) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| Mask@@19) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_14956_92467 f_4@@23))) (not (IsWandField_14956_97459 f_4@@23))) (<= (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| Mask@@19) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| Mask@@19) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_27458) (o_2@@24 T@Ref) (f_4@@24 T@Field_37623_37628) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| Mask@@20) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_15029_106799 f_4@@24))) (not (IsWandField_15029_106815 f_4@@24))) (<= (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| Mask@@20) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| Mask@@20) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_27458) (o_2@@25 T@Ref) (f_4@@25 T@Field_15029_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| Mask@@21) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_15029_53 f_4@@25))) (not (IsWandField_15029_53 f_4@@25))) (<= (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| Mask@@21) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| Mask@@21) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_27458) (o_2@@26 T@Ref) (f_4@@26 T@Field_15029_14959) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| Mask@@22) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_15029_14959 f_4@@26))) (not (IsWandField_15029_14959 f_4@@26))) (<= (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| Mask@@22) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| Mask@@22) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_27458) (o_2@@27 T@Ref) (f_4@@27 T@Field_15029_3379) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| Mask@@23) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_15029_3379 f_4@@27))) (not (IsWandField_15029_3379 f_4@@27))) (<= (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| Mask@@23) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| Mask@@23) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_27458) (o_2@@28 T@Ref) (f_4@@28 T@Field_34867_34868) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| Mask@@24) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_15029_15030 f_4@@28))) (not (IsWandField_15029_97816 f_4@@28))) (<= (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| Mask@@24) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| Mask@@24) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_27458) (o_2@@29 T@Ref) (f_4@@29 T@Field_33538_33543) ) (! (= (HasDirectPerm_33521_92222 Mask@@25 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| Mask@@25) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_33521_92222 Mask@@25 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_27458) (o_2@@30 T@Ref) (f_4@@30 T@Field_33521_53) ) (! (= (HasDirectPerm_33521_53 Mask@@26 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| Mask@@26) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_33521_53 Mask@@26 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_27458) (o_2@@31 T@Ref) (f_4@@31 T@Field_33558_33559) ) (! (= (HasDirectPerm_33521_15030 Mask@@27 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| Mask@@27) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_33521_15030 Mask@@27 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_27458) (o_2@@32 T@Ref) (f_4@@32 T@Field_33521_14959) ) (! (= (HasDirectPerm_33521_14959 Mask@@28 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| Mask@@28) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_33521_14959 Mask@@28 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_27458) (o_2@@33 T@Ref) (f_4@@33 T@Field_33521_3011) ) (! (= (HasDirectPerm_33521_3379 Mask@@29 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| Mask@@29) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_33521_3379 Mask@@29 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_27458) (o_2@@34 T@Ref) (f_4@@34 T@Field_37623_37628) ) (! (= (HasDirectPerm_15029_91088 Mask@@30 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| Mask@@30) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15029_91088 Mask@@30 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_27458) (o_2@@35 T@Ref) (f_4@@35 T@Field_15029_53) ) (! (= (HasDirectPerm_15029_53 Mask@@31 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| Mask@@31) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15029_53 Mask@@31 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_27458) (o_2@@36 T@Ref) (f_4@@36 T@Field_34867_34868) ) (! (= (HasDirectPerm_15029_15030 Mask@@32 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| Mask@@32) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15029_15030 Mask@@32 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_27458) (o_2@@37 T@Ref) (f_4@@37 T@Field_15029_14959) ) (! (= (HasDirectPerm_15029_14959 Mask@@33 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| Mask@@33) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15029_14959 Mask@@33 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_27458) (o_2@@38 T@Ref) (f_4@@38 T@Field_15029_3379) ) (! (= (HasDirectPerm_15029_3379 Mask@@34 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| Mask@@34) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15029_3379 Mask@@34 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_27458) (o_2@@39 T@Ref) (f_4@@39 T@Field_14956_33543) ) (! (= (HasDirectPerm_14956_89947 Mask@@35 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| Mask@@35) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14956_89947 Mask@@35 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_27458) (o_2@@40 T@Ref) (f_4@@40 T@Field_27497_53) ) (! (= (HasDirectPerm_14956_53 Mask@@36 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| Mask@@36) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14956_53 Mask@@36 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_27458) (o_2@@41 T@Ref) (f_4@@41 T@Field_14956_15030) ) (! (= (HasDirectPerm_14956_15030 Mask@@37 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| Mask@@37) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14956_15030 Mask@@37 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_27458) (o_2@@42 T@Ref) (f_4@@42 T@Field_27510_27511) ) (! (= (HasDirectPerm_14958_14959 Mask@@38 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| Mask@@38) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14958_14959 Mask@@38 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_27458) (o_2@@43 T@Ref) (f_4@@43 T@Field_34318_3379) ) (! (= (HasDirectPerm_14956_3379 Mask@@39 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| Mask@@39) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14956_3379 Mask@@39 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.536:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_27437) (ExhaleHeap@@7 T@PolymorphicMapType_27437) (Mask@@40 T@PolymorphicMapType_27458) (o_13@@0 T@Ref) (f_18 T@Field_33538_33543) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@40) (=> (HasDirectPerm_33521_92222 Mask@@40 o_13@@0 f_18) (= (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@15) o_13@@0 f_18) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@7) o_13@@0 f_18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@40) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@7) o_13@@0 f_18))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_27437) (ExhaleHeap@@8 T@PolymorphicMapType_27437) (Mask@@41 T@PolymorphicMapType_27458) (o_13@@1 T@Ref) (f_18@@0 T@Field_33521_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@41) (=> (HasDirectPerm_33521_53 Mask@@41 o_13@@1 f_18@@0) (= (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@16) o_13@@1 f_18@@0) (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@8) o_13@@1 f_18@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@41) (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@8) o_13@@1 f_18@@0))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_27437) (ExhaleHeap@@9 T@PolymorphicMapType_27437) (Mask@@42 T@PolymorphicMapType_27458) (o_13@@2 T@Ref) (f_18@@1 T@Field_33558_33559) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@42) (=> (HasDirectPerm_33521_15030 Mask@@42 o_13@@2 f_18@@1) (= (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@17) o_13@@2 f_18@@1) (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@9) o_13@@2 f_18@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@42) (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@9) o_13@@2 f_18@@1))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_27437) (ExhaleHeap@@10 T@PolymorphicMapType_27437) (Mask@@43 T@PolymorphicMapType_27458) (o_13@@3 T@Ref) (f_18@@2 T@Field_33521_14959) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@10 Mask@@43) (=> (HasDirectPerm_33521_14959 Mask@@43 o_13@@3 f_18@@2) (= (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@18) o_13@@3 f_18@@2) (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@10) o_13@@3 f_18@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@10 Mask@@43) (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@10) o_13@@3 f_18@@2))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_27437) (ExhaleHeap@@11 T@PolymorphicMapType_27437) (Mask@@44 T@PolymorphicMapType_27458) (o_13@@4 T@Ref) (f_18@@3 T@Field_33521_3011) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@11 Mask@@44) (=> (HasDirectPerm_33521_3379 Mask@@44 o_13@@4 f_18@@3) (= (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@19) o_13@@4 f_18@@3) (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@11) o_13@@4 f_18@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@11 Mask@@44) (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@11) o_13@@4 f_18@@3))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_27437) (ExhaleHeap@@12 T@PolymorphicMapType_27437) (Mask@@45 T@PolymorphicMapType_27458) (o_13@@5 T@Ref) (f_18@@4 T@Field_37623_37628) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@12 Mask@@45) (=> (HasDirectPerm_15029_91088 Mask@@45 o_13@@5 f_18@@4) (= (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@20) o_13@@5 f_18@@4) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@12) o_13@@5 f_18@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@12 Mask@@45) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@12) o_13@@5 f_18@@4))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_27437) (ExhaleHeap@@13 T@PolymorphicMapType_27437) (Mask@@46 T@PolymorphicMapType_27458) (o_13@@6 T@Ref) (f_18@@5 T@Field_15029_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@13 Mask@@46) (=> (HasDirectPerm_15029_53 Mask@@46 o_13@@6 f_18@@5) (= (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@21) o_13@@6 f_18@@5) (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@13) o_13@@6 f_18@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@13 Mask@@46) (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@13) o_13@@6 f_18@@5))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_27437) (ExhaleHeap@@14 T@PolymorphicMapType_27437) (Mask@@47 T@PolymorphicMapType_27458) (o_13@@7 T@Ref) (f_18@@6 T@Field_34867_34868) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@14 Mask@@47) (=> (HasDirectPerm_15029_15030 Mask@@47 o_13@@7 f_18@@6) (= (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@22) o_13@@7 f_18@@6) (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@14) o_13@@7 f_18@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@14 Mask@@47) (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@14) o_13@@7 f_18@@6))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_27437) (ExhaleHeap@@15 T@PolymorphicMapType_27437) (Mask@@48 T@PolymorphicMapType_27458) (o_13@@8 T@Ref) (f_18@@7 T@Field_15029_14959) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@15 Mask@@48) (=> (HasDirectPerm_15029_14959 Mask@@48 o_13@@8 f_18@@7) (= (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@23) o_13@@8 f_18@@7) (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@15) o_13@@8 f_18@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@15 Mask@@48) (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@15) o_13@@8 f_18@@7))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_27437) (ExhaleHeap@@16 T@PolymorphicMapType_27437) (Mask@@49 T@PolymorphicMapType_27458) (o_13@@9 T@Ref) (f_18@@8 T@Field_15029_3379) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@16 Mask@@49) (=> (HasDirectPerm_15029_3379 Mask@@49 o_13@@9 f_18@@8) (= (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@24) o_13@@9 f_18@@8) (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@16) o_13@@9 f_18@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@16 Mask@@49) (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@16) o_13@@9 f_18@@8))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_27437) (ExhaleHeap@@17 T@PolymorphicMapType_27437) (Mask@@50 T@PolymorphicMapType_27458) (o_13@@10 T@Ref) (f_18@@9 T@Field_14956_33543) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@17 Mask@@50) (=> (HasDirectPerm_14956_89947 Mask@@50 o_13@@10 f_18@@9) (= (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@25) o_13@@10 f_18@@9) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@17) o_13@@10 f_18@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@17 Mask@@50) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@17) o_13@@10 f_18@@9))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_27437) (ExhaleHeap@@18 T@PolymorphicMapType_27437) (Mask@@51 T@PolymorphicMapType_27458) (o_13@@11 T@Ref) (f_18@@10 T@Field_27497_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@18 Mask@@51) (=> (HasDirectPerm_14956_53 Mask@@51 o_13@@11 f_18@@10) (= (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@26) o_13@@11 f_18@@10) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@18) o_13@@11 f_18@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@18 Mask@@51) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@18) o_13@@11 f_18@@10))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_27437) (ExhaleHeap@@19 T@PolymorphicMapType_27437) (Mask@@52 T@PolymorphicMapType_27458) (o_13@@12 T@Ref) (f_18@@11 T@Field_14956_15030) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@19 Mask@@52) (=> (HasDirectPerm_14956_15030 Mask@@52 o_13@@12 f_18@@11) (= (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@27) o_13@@12 f_18@@11) (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@19) o_13@@12 f_18@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@19 Mask@@52) (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@19) o_13@@12 f_18@@11))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_27437) (ExhaleHeap@@20 T@PolymorphicMapType_27437) (Mask@@53 T@PolymorphicMapType_27458) (o_13@@13 T@Ref) (f_18@@12 T@Field_27510_27511) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@20 Mask@@53) (=> (HasDirectPerm_14958_14959 Mask@@53 o_13@@13 f_18@@12) (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@28) o_13@@13 f_18@@12) (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@20) o_13@@13 f_18@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@20 Mask@@53) (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@20) o_13@@13 f_18@@12))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_27437) (ExhaleHeap@@21 T@PolymorphicMapType_27437) (Mask@@54 T@PolymorphicMapType_27458) (o_13@@14 T@Ref) (f_18@@13 T@Field_34318_3379) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@21 Mask@@54) (=> (HasDirectPerm_14956_3379 Mask@@54 o_13@@14 f_18@@13) (= (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@29) o_13@@14 f_18@@13) (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@21) o_13@@14 f_18@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@21 Mask@@54) (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@21) o_13@@14 f_18@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3539|)) (not (= s1@@0 |Seq#Empty_3539|))) (= (|Seq#Length_2867| (|Seq#Append_3379| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.213:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3379| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_33538_33543) ) (! (= (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_33521_53) ) (! (= (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_33521_14959) ) (! (= (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_33521_3011) ) (! (= (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_33558_33559) ) (! (= (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_14956_33543) ) (! (= (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_27497_53) ) (! (= (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_27510_27511) ) (! (= (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_34318_3379) ) (! (= (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_14956_15030) ) (! (= (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_37623_37628) ) (! (= (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_15029_53) ) (! (= (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_15029_14959) ) (! (= (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_15029_3379) ) (! (= (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_34867_34868) ) (! (= (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_3416| (|Seq#Append_3379| s@@7 t@@0) n@@7) (|Seq#Drop_3416| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.370:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3416| (|Seq#Append_3379| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_27458) (SummandMask1 T@PolymorphicMapType_27458) (SummandMask2 T@PolymorphicMapType_27458) (o_2@@59 T@Ref) (f_4@@59 T@Field_33538_33543) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_27458) (SummandMask1@@0 T@PolymorphicMapType_27458) (SummandMask2@@0 T@PolymorphicMapType_27458) (o_2@@60 T@Ref) (f_4@@60 T@Field_33521_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_27458) (SummandMask1@@1 T@PolymorphicMapType_27458) (SummandMask2@@1 T@PolymorphicMapType_27458) (o_2@@61 T@Ref) (f_4@@61 T@Field_33521_14959) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_27458) (SummandMask1@@2 T@PolymorphicMapType_27458) (SummandMask2@@2 T@PolymorphicMapType_27458) (o_2@@62 T@Ref) (f_4@@62 T@Field_33521_3011) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_27458) (SummandMask1@@3 T@PolymorphicMapType_27458) (SummandMask2@@3 T@PolymorphicMapType_27458) (o_2@@63 T@Ref) (f_4@@63 T@Field_33558_33559) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_27458) (SummandMask1@@4 T@PolymorphicMapType_27458) (SummandMask2@@4 T@PolymorphicMapType_27458) (o_2@@64 T@Ref) (f_4@@64 T@Field_14956_33543) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_27458) (SummandMask1@@5 T@PolymorphicMapType_27458) (SummandMask2@@5 T@PolymorphicMapType_27458) (o_2@@65 T@Ref) (f_4@@65 T@Field_27497_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_27458) (SummandMask1@@6 T@PolymorphicMapType_27458) (SummandMask2@@6 T@PolymorphicMapType_27458) (o_2@@66 T@Ref) (f_4@@66 T@Field_27510_27511) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_27458) (SummandMask1@@7 T@PolymorphicMapType_27458) (SummandMask2@@7 T@PolymorphicMapType_27458) (o_2@@67 T@Ref) (f_4@@67 T@Field_34318_3379) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_27458) (SummandMask1@@8 T@PolymorphicMapType_27458) (SummandMask2@@8 T@PolymorphicMapType_27458) (o_2@@68 T@Ref) (f_4@@68 T@Field_14956_15030) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_27458) (SummandMask1@@9 T@PolymorphicMapType_27458) (SummandMask2@@9 T@PolymorphicMapType_27458) (o_2@@69 T@Ref) (f_4@@69 T@Field_37623_37628) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_27458) (SummandMask1@@10 T@PolymorphicMapType_27458) (SummandMask2@@10 T@PolymorphicMapType_27458) (o_2@@70 T@Ref) (f_4@@70 T@Field_15029_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_27458) (SummandMask1@@11 T@PolymorphicMapType_27458) (SummandMask2@@11 T@PolymorphicMapType_27458) (o_2@@71 T@Ref) (f_4@@71 T@Field_15029_14959) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_27458) (SummandMask1@@12 T@PolymorphicMapType_27458) (SummandMask2@@12 T@PolymorphicMapType_27458) (o_2@@72 T@Ref) (f_4@@72 T@Field_15029_3379) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_27458) (SummandMask1@@13 T@PolymorphicMapType_27458) (SummandMask2@@13 T@PolymorphicMapType_27458) (o_2@@73 T@Ref) (f_4@@73 T@Field_34867_34868) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_27437) (ExhaleHeap@@22 T@PolymorphicMapType_27437) (Mask@@55 T@PolymorphicMapType_27458) (pm_f_12@@5 T@Field_33558_33559) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@22 Mask@@55) (=> (and (HasDirectPerm_33521_15030 Mask@@55 null pm_f_12@@5) (IsPredicateField_14913_14914 pm_f_12@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_12 T@Ref) (f_18@@14 T@Field_34318_3379) ) (!  (=> (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12 f_18@@14) (= (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@30) o2_12 f_18@@14) (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12 f_18@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12 f_18@@14))
)) (forall ((o2_12@@0 T@Ref) (f_18@@15 T@Field_27510_27511) ) (!  (=> (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@0 f_18@@15) (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@30) o2_12@@0 f_18@@15) (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@0 f_18@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@0 f_18@@15))
))) (forall ((o2_12@@1 T@Ref) (f_18@@16 T@Field_27497_53) ) (!  (=> (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@1 f_18@@16) (= (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@30) o2_12@@1 f_18@@16) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@1 f_18@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@1 f_18@@16))
))) (forall ((o2_12@@2 T@Ref) (f_18@@17 T@Field_14956_33543) ) (!  (=> (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@2 f_18@@17) (= (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@30) o2_12@@2 f_18@@17) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@2 f_18@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@2 f_18@@17))
))) (forall ((o2_12@@3 T@Ref) (f_18@@18 T@Field_14956_15030) ) (!  (=> (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@3 f_18@@18) (= (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@30) o2_12@@3 f_18@@18) (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@3 f_18@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@3 f_18@@18))
))) (forall ((o2_12@@4 T@Ref) (f_18@@19 T@Field_33521_3011) ) (!  (=> (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@4 f_18@@19) (= (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@30) o2_12@@4 f_18@@19) (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@4 f_18@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@4 f_18@@19))
))) (forall ((o2_12@@5 T@Ref) (f_18@@20 T@Field_33521_14959) ) (!  (=> (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@5 f_18@@20) (= (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@30) o2_12@@5 f_18@@20) (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@5 f_18@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@5 f_18@@20))
))) (forall ((o2_12@@6 T@Ref) (f_18@@21 T@Field_33521_53) ) (!  (=> (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@6 f_18@@21) (= (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@30) o2_12@@6 f_18@@21) (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@6 f_18@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@6 f_18@@21))
))) (forall ((o2_12@@7 T@Ref) (f_18@@22 T@Field_33538_33543) ) (!  (=> (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@7 f_18@@22) (= (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) o2_12@@7 f_18@@22) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@7 f_18@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@7 f_18@@22))
))) (forall ((o2_12@@8 T@Ref) (f_18@@23 T@Field_33558_33559) ) (!  (=> (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@8 f_18@@23) (= (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@30) o2_12@@8 f_18@@23) (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@8 f_18@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@8 f_18@@23))
))) (forall ((o2_12@@9 T@Ref) (f_18@@24 T@Field_15029_3379) ) (!  (=> (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@9 f_18@@24) (= (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@30) o2_12@@9 f_18@@24) (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@9 f_18@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@9 f_18@@24))
))) (forall ((o2_12@@10 T@Ref) (f_18@@25 T@Field_15029_14959) ) (!  (=> (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@10 f_18@@25) (= (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@30) o2_12@@10 f_18@@25) (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@10 f_18@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@10 f_18@@25))
))) (forall ((o2_12@@11 T@Ref) (f_18@@26 T@Field_15029_53) ) (!  (=> (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@11 f_18@@26) (= (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@30) o2_12@@11 f_18@@26) (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@11 f_18@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@11 f_18@@26))
))) (forall ((o2_12@@12 T@Ref) (f_18@@27 T@Field_37623_37628) ) (!  (=> (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@12 f_18@@27) (= (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@30) o2_12@@12 f_18@@27) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@12 f_18@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@12 f_18@@27))
))) (forall ((o2_12@@13 T@Ref) (f_18@@28 T@Field_34867_34868) ) (!  (=> (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@30) null (PredicateMaskField_33521 pm_f_12@@5))) o2_12@@13 f_18@@28) (= (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@30) o2_12@@13 f_18@@28) (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@13 f_18@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@22) o2_12@@13 f_18@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@22 Mask@@55) (IsPredicateField_14913_14914 pm_f_12@@5))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_27437) (ExhaleHeap@@23 T@PolymorphicMapType_27437) (Mask@@56 T@PolymorphicMapType_27458) (pm_f_12@@6 T@Field_34867_34868) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@23 Mask@@56) (=> (and (HasDirectPerm_15029_15030 Mask@@56 null pm_f_12@@6) (IsPredicateField_15029_15030 pm_f_12@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_12@@14 T@Ref) (f_18@@29 T@Field_34318_3379) ) (!  (=> (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@14 f_18@@29) (= (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@31) o2_12@@14 f_18@@29) (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@14 f_18@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@14 f_18@@29))
)) (forall ((o2_12@@15 T@Ref) (f_18@@30 T@Field_27510_27511) ) (!  (=> (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@15 f_18@@30) (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@31) o2_12@@15 f_18@@30) (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@15 f_18@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@15 f_18@@30))
))) (forall ((o2_12@@16 T@Ref) (f_18@@31 T@Field_27497_53) ) (!  (=> (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@16 f_18@@31) (= (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@31) o2_12@@16 f_18@@31) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@16 f_18@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@16 f_18@@31))
))) (forall ((o2_12@@17 T@Ref) (f_18@@32 T@Field_14956_33543) ) (!  (=> (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@17 f_18@@32) (= (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@31) o2_12@@17 f_18@@32) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@17 f_18@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@17 f_18@@32))
))) (forall ((o2_12@@18 T@Ref) (f_18@@33 T@Field_14956_15030) ) (!  (=> (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@18 f_18@@33) (= (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@31) o2_12@@18 f_18@@33) (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@18 f_18@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@18 f_18@@33))
))) (forall ((o2_12@@19 T@Ref) (f_18@@34 T@Field_33521_3011) ) (!  (=> (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@19 f_18@@34) (= (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@31) o2_12@@19 f_18@@34) (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@19 f_18@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@19 f_18@@34))
))) (forall ((o2_12@@20 T@Ref) (f_18@@35 T@Field_33521_14959) ) (!  (=> (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@20 f_18@@35) (= (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@31) o2_12@@20 f_18@@35) (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@20 f_18@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@20 f_18@@35))
))) (forall ((o2_12@@21 T@Ref) (f_18@@36 T@Field_33521_53) ) (!  (=> (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@21 f_18@@36) (= (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@31) o2_12@@21 f_18@@36) (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@21 f_18@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@21 f_18@@36))
))) (forall ((o2_12@@22 T@Ref) (f_18@@37 T@Field_33538_33543) ) (!  (=> (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@22 f_18@@37) (= (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@31) o2_12@@22 f_18@@37) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@22 f_18@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@22 f_18@@37))
))) (forall ((o2_12@@23 T@Ref) (f_18@@38 T@Field_33558_33559) ) (!  (=> (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@23 f_18@@38) (= (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@31) o2_12@@23 f_18@@38) (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@23 f_18@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@23 f_18@@38))
))) (forall ((o2_12@@24 T@Ref) (f_18@@39 T@Field_15029_3379) ) (!  (=> (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@24 f_18@@39) (= (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@31) o2_12@@24 f_18@@39) (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@24 f_18@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@24 f_18@@39))
))) (forall ((o2_12@@25 T@Ref) (f_18@@40 T@Field_15029_14959) ) (!  (=> (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@25 f_18@@40) (= (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@31) o2_12@@25 f_18@@40) (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@25 f_18@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@25 f_18@@40))
))) (forall ((o2_12@@26 T@Ref) (f_18@@41 T@Field_15029_53) ) (!  (=> (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@26 f_18@@41) (= (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@31) o2_12@@26 f_18@@41) (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@26 f_18@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@26 f_18@@41))
))) (forall ((o2_12@@27 T@Ref) (f_18@@42 T@Field_37623_37628) ) (!  (=> (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@27 f_18@@42) (= (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) o2_12@@27 f_18@@42) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@27 f_18@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@27 f_18@@42))
))) (forall ((o2_12@@28 T@Ref) (f_18@@43 T@Field_34867_34868) ) (!  (=> (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@31) null (PredicateMaskField_15029 pm_f_12@@6))) o2_12@@28 f_18@@43) (= (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@31) o2_12@@28 f_18@@43) (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@28 f_18@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@23) o2_12@@28 f_18@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@23 Mask@@56) (IsPredicateField_15029_15030 pm_f_12@@6))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_27437) (ExhaleHeap@@24 T@PolymorphicMapType_27437) (Mask@@57 T@PolymorphicMapType_27458) (pm_f_12@@7 T@Field_14956_15030) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@24 Mask@@57) (=> (and (HasDirectPerm_14956_15030 Mask@@57 null pm_f_12@@7) (IsPredicateField_14956_92467 pm_f_12@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_12@@29 T@Ref) (f_18@@44 T@Field_34318_3379) ) (!  (=> (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@29 f_18@@44) (= (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@32) o2_12@@29 f_18@@44) (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@29 f_18@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@29 f_18@@44))
)) (forall ((o2_12@@30 T@Ref) (f_18@@45 T@Field_27510_27511) ) (!  (=> (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@30 f_18@@45) (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@32) o2_12@@30 f_18@@45) (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@30 f_18@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@30 f_18@@45))
))) (forall ((o2_12@@31 T@Ref) (f_18@@46 T@Field_27497_53) ) (!  (=> (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@31 f_18@@46) (= (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@32) o2_12@@31 f_18@@46) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@31 f_18@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@31 f_18@@46))
))) (forall ((o2_12@@32 T@Ref) (f_18@@47 T@Field_14956_33543) ) (!  (=> (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@32 f_18@@47) (= (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) o2_12@@32 f_18@@47) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@32 f_18@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@32 f_18@@47))
))) (forall ((o2_12@@33 T@Ref) (f_18@@48 T@Field_14956_15030) ) (!  (=> (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@33 f_18@@48) (= (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@32) o2_12@@33 f_18@@48) (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@33 f_18@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@33 f_18@@48))
))) (forall ((o2_12@@34 T@Ref) (f_18@@49 T@Field_33521_3011) ) (!  (=> (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@34 f_18@@49) (= (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@32) o2_12@@34 f_18@@49) (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@34 f_18@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@34 f_18@@49))
))) (forall ((o2_12@@35 T@Ref) (f_18@@50 T@Field_33521_14959) ) (!  (=> (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@35 f_18@@50) (= (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@32) o2_12@@35 f_18@@50) (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@35 f_18@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@35 f_18@@50))
))) (forall ((o2_12@@36 T@Ref) (f_18@@51 T@Field_33521_53) ) (!  (=> (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@36 f_18@@51) (= (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@32) o2_12@@36 f_18@@51) (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@36 f_18@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@36 f_18@@51))
))) (forall ((o2_12@@37 T@Ref) (f_18@@52 T@Field_33538_33543) ) (!  (=> (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@37 f_18@@52) (= (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@32) o2_12@@37 f_18@@52) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@37 f_18@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@37 f_18@@52))
))) (forall ((o2_12@@38 T@Ref) (f_18@@53 T@Field_33558_33559) ) (!  (=> (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@38 f_18@@53) (= (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@32) o2_12@@38 f_18@@53) (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@38 f_18@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@38 f_18@@53))
))) (forall ((o2_12@@39 T@Ref) (f_18@@54 T@Field_15029_3379) ) (!  (=> (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@39 f_18@@54) (= (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@32) o2_12@@39 f_18@@54) (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@39 f_18@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@39 f_18@@54))
))) (forall ((o2_12@@40 T@Ref) (f_18@@55 T@Field_15029_14959) ) (!  (=> (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@40 f_18@@55) (= (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@32) o2_12@@40 f_18@@55) (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@40 f_18@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@40 f_18@@55))
))) (forall ((o2_12@@41 T@Ref) (f_18@@56 T@Field_15029_53) ) (!  (=> (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@41 f_18@@56) (= (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@32) o2_12@@41 f_18@@56) (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@41 f_18@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@41 f_18@@56))
))) (forall ((o2_12@@42 T@Ref) (f_18@@57 T@Field_37623_37628) ) (!  (=> (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@42 f_18@@57) (= (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@32) o2_12@@42 f_18@@57) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@42 f_18@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@42 f_18@@57))
))) (forall ((o2_12@@43 T@Ref) (f_18@@58 T@Field_34867_34868) ) (!  (=> (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@32) null (PredicateMaskField_14956 pm_f_12@@7))) o2_12@@43 f_18@@58) (= (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@32) o2_12@@43 f_18@@58) (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@43 f_18@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@24) o2_12@@43 f_18@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@24 Mask@@57) (IsPredicateField_14956_92467 pm_f_12@@7))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_27437) (ExhaleHeap@@25 T@PolymorphicMapType_27437) (Mask@@58 T@PolymorphicMapType_27458) (pm_f_12@@8 T@Field_33558_33559) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@25 Mask@@58) (=> (and (HasDirectPerm_33521_15030 Mask@@58 null pm_f_12@@8) (IsWandField_14913_14914 pm_f_12@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_12@@44 T@Ref) (f_18@@59 T@Field_34318_3379) ) (!  (=> (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@44 f_18@@59) (= (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@33) o2_12@@44 f_18@@59) (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@44 f_18@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@44 f_18@@59))
)) (forall ((o2_12@@45 T@Ref) (f_18@@60 T@Field_27510_27511) ) (!  (=> (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@45 f_18@@60) (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@33) o2_12@@45 f_18@@60) (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@45 f_18@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@45 f_18@@60))
))) (forall ((o2_12@@46 T@Ref) (f_18@@61 T@Field_27497_53) ) (!  (=> (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@46 f_18@@61) (= (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@33) o2_12@@46 f_18@@61) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@46 f_18@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@46 f_18@@61))
))) (forall ((o2_12@@47 T@Ref) (f_18@@62 T@Field_14956_33543) ) (!  (=> (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@47 f_18@@62) (= (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@33) o2_12@@47 f_18@@62) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@47 f_18@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@47 f_18@@62))
))) (forall ((o2_12@@48 T@Ref) (f_18@@63 T@Field_14956_15030) ) (!  (=> (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@48 f_18@@63) (= (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@33) o2_12@@48 f_18@@63) (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@48 f_18@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@48 f_18@@63))
))) (forall ((o2_12@@49 T@Ref) (f_18@@64 T@Field_33521_3011) ) (!  (=> (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@49 f_18@@64) (= (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@33) o2_12@@49 f_18@@64) (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@49 f_18@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@49 f_18@@64))
))) (forall ((o2_12@@50 T@Ref) (f_18@@65 T@Field_33521_14959) ) (!  (=> (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@50 f_18@@65) (= (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@33) o2_12@@50 f_18@@65) (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@50 f_18@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@50 f_18@@65))
))) (forall ((o2_12@@51 T@Ref) (f_18@@66 T@Field_33521_53) ) (!  (=> (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@51 f_18@@66) (= (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@33) o2_12@@51 f_18@@66) (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@51 f_18@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@51 f_18@@66))
))) (forall ((o2_12@@52 T@Ref) (f_18@@67 T@Field_33538_33543) ) (!  (=> (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@52 f_18@@67) (= (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) o2_12@@52 f_18@@67) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@52 f_18@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@52 f_18@@67))
))) (forall ((o2_12@@53 T@Ref) (f_18@@68 T@Field_33558_33559) ) (!  (=> (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@53 f_18@@68) (= (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@33) o2_12@@53 f_18@@68) (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@53 f_18@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@53 f_18@@68))
))) (forall ((o2_12@@54 T@Ref) (f_18@@69 T@Field_15029_3379) ) (!  (=> (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@54 f_18@@69) (= (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@33) o2_12@@54 f_18@@69) (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@54 f_18@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@54 f_18@@69))
))) (forall ((o2_12@@55 T@Ref) (f_18@@70 T@Field_15029_14959) ) (!  (=> (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@55 f_18@@70) (= (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@33) o2_12@@55 f_18@@70) (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@55 f_18@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@55 f_18@@70))
))) (forall ((o2_12@@56 T@Ref) (f_18@@71 T@Field_15029_53) ) (!  (=> (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@56 f_18@@71) (= (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@33) o2_12@@56 f_18@@71) (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@56 f_18@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@56 f_18@@71))
))) (forall ((o2_12@@57 T@Ref) (f_18@@72 T@Field_37623_37628) ) (!  (=> (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@57 f_18@@72) (= (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@33) o2_12@@57 f_18@@72) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@57 f_18@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@57 f_18@@72))
))) (forall ((o2_12@@58 T@Ref) (f_18@@73 T@Field_34867_34868) ) (!  (=> (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@33) null (WandMaskField_14913 pm_f_12@@8))) o2_12@@58 f_18@@73) (= (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@33) o2_12@@58 f_18@@73) (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@58 f_18@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@25) o2_12@@58 f_18@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@25 Mask@@58) (IsWandField_14913_14914 pm_f_12@@8))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_27437) (ExhaleHeap@@26 T@PolymorphicMapType_27437) (Mask@@59 T@PolymorphicMapType_27458) (pm_f_12@@9 T@Field_34867_34868) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@26 Mask@@59) (=> (and (HasDirectPerm_15029_15030 Mask@@59 null pm_f_12@@9) (IsWandField_15029_97816 pm_f_12@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_12@@59 T@Ref) (f_18@@74 T@Field_34318_3379) ) (!  (=> (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@59 f_18@@74) (= (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@34) o2_12@@59 f_18@@74) (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@59 f_18@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@59 f_18@@74))
)) (forall ((o2_12@@60 T@Ref) (f_18@@75 T@Field_27510_27511) ) (!  (=> (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@60 f_18@@75) (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@34) o2_12@@60 f_18@@75) (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@60 f_18@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@60 f_18@@75))
))) (forall ((o2_12@@61 T@Ref) (f_18@@76 T@Field_27497_53) ) (!  (=> (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@61 f_18@@76) (= (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@34) o2_12@@61 f_18@@76) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@61 f_18@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@61 f_18@@76))
))) (forall ((o2_12@@62 T@Ref) (f_18@@77 T@Field_14956_33543) ) (!  (=> (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@62 f_18@@77) (= (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@34) o2_12@@62 f_18@@77) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@62 f_18@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@62 f_18@@77))
))) (forall ((o2_12@@63 T@Ref) (f_18@@78 T@Field_14956_15030) ) (!  (=> (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@63 f_18@@78) (= (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@34) o2_12@@63 f_18@@78) (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@63 f_18@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@63 f_18@@78))
))) (forall ((o2_12@@64 T@Ref) (f_18@@79 T@Field_33521_3011) ) (!  (=> (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@64 f_18@@79) (= (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@34) o2_12@@64 f_18@@79) (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@64 f_18@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@64 f_18@@79))
))) (forall ((o2_12@@65 T@Ref) (f_18@@80 T@Field_33521_14959) ) (!  (=> (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@65 f_18@@80) (= (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@34) o2_12@@65 f_18@@80) (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@65 f_18@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@65 f_18@@80))
))) (forall ((o2_12@@66 T@Ref) (f_18@@81 T@Field_33521_53) ) (!  (=> (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@66 f_18@@81) (= (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@34) o2_12@@66 f_18@@81) (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@66 f_18@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@66 f_18@@81))
))) (forall ((o2_12@@67 T@Ref) (f_18@@82 T@Field_33538_33543) ) (!  (=> (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@67 f_18@@82) (= (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@34) o2_12@@67 f_18@@82) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@67 f_18@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@67 f_18@@82))
))) (forall ((o2_12@@68 T@Ref) (f_18@@83 T@Field_33558_33559) ) (!  (=> (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@68 f_18@@83) (= (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@34) o2_12@@68 f_18@@83) (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@68 f_18@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@68 f_18@@83))
))) (forall ((o2_12@@69 T@Ref) (f_18@@84 T@Field_15029_3379) ) (!  (=> (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@69 f_18@@84) (= (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@34) o2_12@@69 f_18@@84) (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@69 f_18@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@69 f_18@@84))
))) (forall ((o2_12@@70 T@Ref) (f_18@@85 T@Field_15029_14959) ) (!  (=> (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@70 f_18@@85) (= (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@34) o2_12@@70 f_18@@85) (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@70 f_18@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@70 f_18@@85))
))) (forall ((o2_12@@71 T@Ref) (f_18@@86 T@Field_15029_53) ) (!  (=> (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@71 f_18@@86) (= (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@34) o2_12@@71 f_18@@86) (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@71 f_18@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@71 f_18@@86))
))) (forall ((o2_12@@72 T@Ref) (f_18@@87 T@Field_37623_37628) ) (!  (=> (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@72 f_18@@87) (= (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) o2_12@@72 f_18@@87) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@72 f_18@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@72 f_18@@87))
))) (forall ((o2_12@@73 T@Ref) (f_18@@88 T@Field_34867_34868) ) (!  (=> (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@34) null (WandMaskField_15029 pm_f_12@@9))) o2_12@@73 f_18@@88) (= (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@34) o2_12@@73 f_18@@88) (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@73 f_18@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@26) o2_12@@73 f_18@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@26 Mask@@59) (IsWandField_15029_97816 pm_f_12@@9))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_27437) (ExhaleHeap@@27 T@PolymorphicMapType_27437) (Mask@@60 T@PolymorphicMapType_27458) (pm_f_12@@10 T@Field_14956_15030) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@27 Mask@@60) (=> (and (HasDirectPerm_14956_15030 Mask@@60 null pm_f_12@@10) (IsWandField_14956_97459 pm_f_12@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_12@@74 T@Ref) (f_18@@89 T@Field_34318_3379) ) (!  (=> (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@74 f_18@@89) (= (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@35) o2_12@@74 f_18@@89) (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@74 f_18@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@74 f_18@@89))
)) (forall ((o2_12@@75 T@Ref) (f_18@@90 T@Field_27510_27511) ) (!  (=> (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@75 f_18@@90) (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@35) o2_12@@75 f_18@@90) (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@75 f_18@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@75 f_18@@90))
))) (forall ((o2_12@@76 T@Ref) (f_18@@91 T@Field_27497_53) ) (!  (=> (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@76 f_18@@91) (= (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@35) o2_12@@76 f_18@@91) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@76 f_18@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@76 f_18@@91))
))) (forall ((o2_12@@77 T@Ref) (f_18@@92 T@Field_14956_33543) ) (!  (=> (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@77 f_18@@92) (= (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) o2_12@@77 f_18@@92) (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@77 f_18@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@77 f_18@@92))
))) (forall ((o2_12@@78 T@Ref) (f_18@@93 T@Field_14956_15030) ) (!  (=> (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@78 f_18@@93) (= (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@35) o2_12@@78 f_18@@93) (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@78 f_18@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@78 f_18@@93))
))) (forall ((o2_12@@79 T@Ref) (f_18@@94 T@Field_33521_3011) ) (!  (=> (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@79 f_18@@94) (= (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@35) o2_12@@79 f_18@@94) (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@79 f_18@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@79 f_18@@94))
))) (forall ((o2_12@@80 T@Ref) (f_18@@95 T@Field_33521_14959) ) (!  (=> (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@80 f_18@@95) (= (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@35) o2_12@@80 f_18@@95) (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@80 f_18@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@80 f_18@@95))
))) (forall ((o2_12@@81 T@Ref) (f_18@@96 T@Field_33521_53) ) (!  (=> (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@81 f_18@@96) (= (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@35) o2_12@@81 f_18@@96) (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@81 f_18@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@81 f_18@@96))
))) (forall ((o2_12@@82 T@Ref) (f_18@@97 T@Field_33538_33543) ) (!  (=> (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@82 f_18@@97) (= (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@35) o2_12@@82 f_18@@97) (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@82 f_18@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@82 f_18@@97))
))) (forall ((o2_12@@83 T@Ref) (f_18@@98 T@Field_33558_33559) ) (!  (=> (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@83 f_18@@98) (= (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@35) o2_12@@83 f_18@@98) (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@83 f_18@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@83 f_18@@98))
))) (forall ((o2_12@@84 T@Ref) (f_18@@99 T@Field_15029_3379) ) (!  (=> (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@84 f_18@@99) (= (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@35) o2_12@@84 f_18@@99) (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@84 f_18@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@84 f_18@@99))
))) (forall ((o2_12@@85 T@Ref) (f_18@@100 T@Field_15029_14959) ) (!  (=> (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@85 f_18@@100) (= (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@35) o2_12@@85 f_18@@100) (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@85 f_18@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@85 f_18@@100))
))) (forall ((o2_12@@86 T@Ref) (f_18@@101 T@Field_15029_53) ) (!  (=> (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@86 f_18@@101) (= (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@35) o2_12@@86 f_18@@101) (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@86 f_18@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@86 f_18@@101))
))) (forall ((o2_12@@87 T@Ref) (f_18@@102 T@Field_37623_37628) ) (!  (=> (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@87 f_18@@102) (= (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@35) o2_12@@87 f_18@@102) (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@87 f_18@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@87 f_18@@102))
))) (forall ((o2_12@@88 T@Ref) (f_18@@103 T@Field_34867_34868) ) (!  (=> (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@35) null (WandMaskField_14956 pm_f_12@@10))) o2_12@@88 f_18@@103) (= (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@35) o2_12@@88 f_18@@103) (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@88 f_18@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| ExhaleHeap@@27) o2_12@@88 f_18@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@27 Mask@@60) (IsWandField_14956_97459 pm_f_12@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.535:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3416| a b) (= a b))
 :qid |stdinbpl.508:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3416| a b))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) (arg3@@5 T@Ref) (arg4@@5 T@Seq_2867) (arg5@@5 T@Ref) ) (! (= (|wand#sm| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5) (WandMaskField_14913 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5)))
 :qid |stdinbpl.568:15|
 :skolemid |62|
 :pattern ( (WandMaskField_14913 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5)))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.401:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_3539|) (= (|Seq#Append_3379| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3539|) (= (|Seq#Append_3379| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.219:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3379| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3379| t@@1) 0) t@@1)
 :qid |stdinbpl.223:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3379| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.202:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3416| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.498:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.495:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3416| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_27437) (Mask@@61 T@PolymorphicMapType_27458) (xs@@9 T@Ref) ) (!  (=> (state Heap@@36 Mask@@61) (= (|elems'| Heap@@36 xs@@9) (|elems#frame| (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@36) null (List xs@@9)) xs@@9)))
 :qid |stdinbpl.616:15|
 :skolemid |68|
 :pattern ( (state Heap@@36 Mask@@61) (|elems'| Heap@@36 xs@@9))
 :pattern ( (state Heap@@36 Mask@@61) (|elems#triggerStateless| xs@@9) (|List#trigger_15029| Heap@@36 (List xs@@9)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_27437) (Mask@@62 T@PolymorphicMapType_27458) (xs@@10 T@Ref) ) (!  (=> (state Heap@@37 Mask@@62) (= (|head'| Heap@@37 xs@@10) (|head#frame| (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@37) null (List xs@@10)) xs@@10)))
 :qid |stdinbpl.749:15|
 :skolemid |73|
 :pattern ( (state Heap@@37 Mask@@62) (|head'| Heap@@37 xs@@10))
)))
(assert (forall ((xs@@11 T@Ref) ) (! (= (getPredWandId_15029_15030 (List xs@@11)) 0)
 :qid |stdinbpl.848:15|
 :skolemid |77|
 :pattern ( (List xs@@11))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3379| t@@2)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3379| t@@2))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_3416| (|Seq#Append_3379| s@@10 t@@3) n@@8) (|Seq#Take_3416| s@@10 n@@8)))
 :qid |stdinbpl.352:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3416| (|Seq#Append_3379| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.251:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_27437) (o_34 T@Ref) (f_36 T@Field_33538_33543) (v@@2 T@PolymorphicMapType_27986) ) (! (succHeap Heap@@38 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@38) (store (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@38) o_34 f_36 v@@2) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@38) (store (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@38) o_34 f_36 v@@2) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@38) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_27437) (o_34@@0 T@Ref) (f_36@@0 T@Field_33558_33559) (v@@3 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@39) (store (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@39) o_34@@0 f_36@@0 v@@3) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@39) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@39) (store (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@39) o_34@@0 f_36@@0 v@@3) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_27437) (o_34@@1 T@Ref) (f_36@@1 T@Field_33521_3011) (v@@4 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@40) (store (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@40) o_34@@1 f_36@@1 v@@4) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@40) (store (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@40) o_34@@1 f_36@@1 v@@4) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@40) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_27437) (o_34@@2 T@Ref) (f_36@@2 T@Field_33521_14959) (v@@5 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@41) (store (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@41) o_34@@2 f_36@@2 v@@5) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@41) (store (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@41) o_34@@2 f_36@@2 v@@5) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@41) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_27437) (o_34@@3 T@Ref) (f_36@@3 T@Field_33521_53) (v@@6 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@42) (store (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@42) o_34@@3 f_36@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@42) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@42) (store (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@42) o_34@@3 f_36@@3 v@@6)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_27437) (o_34@@4 T@Ref) (f_36@@4 T@Field_37623_37628) (v@@7 T@PolymorphicMapType_27986) ) (! (succHeap Heap@@43 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@43) (store (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@43) o_34@@4 f_36@@4 v@@7) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@43) (store (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@43) o_34@@4 f_36@@4 v@@7) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@43) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_27437) (o_34@@5 T@Ref) (f_36@@5 T@Field_34867_34868) (v@@8 T@FrameType) ) (! (succHeap Heap@@44 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@44) (store (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@44) o_34@@5 f_36@@5 v@@8) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@44) (store (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@44) o_34@@5 f_36@@5 v@@8) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@44) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_27437) (o_34@@6 T@Ref) (f_36@@6 T@Field_15029_3379) (v@@9 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@45) (store (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@45) o_34@@6 f_36@@6 v@@9) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@45) (store (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@45) o_34@@6 f_36@@6 v@@9) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@45) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_27437) (o_34@@7 T@Ref) (f_36@@7 T@Field_15029_14959) (v@@10 T@Ref) ) (! (succHeap Heap@@46 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@46) (store (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@46) o_34@@7 f_36@@7 v@@10) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@46) (store (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@46) o_34@@7 f_36@@7 v@@10) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@46) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_27437) (o_34@@8 T@Ref) (f_36@@8 T@Field_15029_53) (v@@11 Bool) ) (! (succHeap Heap@@47 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@47) (store (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@47) o_34@@8 f_36@@8 v@@11) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@47) (store (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@47) o_34@@8 f_36@@8 v@@11) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@47) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_27437) (o_34@@9 T@Ref) (f_36@@9 T@Field_14956_33543) (v@@12 T@PolymorphicMapType_27986) ) (! (succHeap Heap@@48 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@48) (store (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@48) o_34@@9 f_36@@9 v@@12) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@48) (store (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@48) o_34@@9 f_36@@9 v@@12) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@48) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_27437) (o_34@@10 T@Ref) (f_36@@10 T@Field_14956_15030) (v@@13 T@FrameType) ) (! (succHeap Heap@@49 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@49) (store (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@49) o_34@@10 f_36@@10 v@@13) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@49) (store (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@49) o_34@@10 f_36@@10 v@@13) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@49) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_27437) (o_34@@11 T@Ref) (f_36@@11 T@Field_34318_3379) (v@@14 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@50) (store (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@50) o_34@@11 f_36@@11 v@@14) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@50) (store (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@50) o_34@@11 f_36@@11 v@@14) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@50) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_27437) (o_34@@12 T@Ref) (f_36@@12 T@Field_27510_27511) (v@@15 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@51) (store (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@51) o_34@@12 f_36@@12 v@@15) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@51) (store (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@51) o_34@@12 f_36@@12 v@@15) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@51) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_27437) (o_34@@13 T@Ref) (f_36@@13 T@Field_27497_53) (v@@16 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_27437 (store (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@52) o_34@@13 f_36@@13 v@@16) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27437 (store (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@52) o_34@@13 f_36@@13 v@@16) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@52) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@52)))
)))
(assert (forall ((xs@@12 T@Ref) ) (! (= (PredicateMaskField_15029 (List xs@@12)) (|List#sm| xs@@12))
 :qid |stdinbpl.840:15|
 :skolemid |75|
 :pattern ( (PredicateMaskField_15029 (List xs@@12)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_3416| (|Seq#Append_3379| s@@12 t@@4) n@@9) (|Seq#Append_3379| (|Seq#Drop_3416| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.366:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3416| (|Seq#Append_3379| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_3416| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.302:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3416| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3539|)) (not (= s1@@3 |Seq#Empty_3539|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_3379| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.242:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3379| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_3379| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3539|)) (not (= s1@@4 |Seq#Empty_3539|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3379| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.247:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3379| s0@@4 s1@@4))
)))
(assert (forall ((o_34@@14 T@Ref) (f_40 T@Field_27510_27511) (Heap@@53 T@PolymorphicMapType_27437) ) (!  (=> (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@53) o_34@@14 $allocated) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@53) (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@53) o_34@@14 f_40) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@53) o_34@@14 f_40))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.399:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3416| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3416| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3416| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.503:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3416| s0@@5 s1@@5))
)))
(assert (forall ((p@@3 T@Field_33558_33559) (v_1@@2 T@FrameType) (q T@Field_33558_33559) (w@@2 T@FrameType) (r T@Field_33558_33559) (u T@FrameType) ) (!  (=> (and (InsidePredicate_33521_33521 p@@3 v_1@@2 q w@@2) (InsidePredicate_33521_33521 q w@@2 r u)) (InsidePredicate_33521_33521 p@@3 v_1@@2 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33521_33521 p@@3 v_1@@2 q w@@2) (InsidePredicate_33521_33521 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_33558_33559) (v_1@@3 T@FrameType) (q@@0 T@Field_33558_33559) (w@@3 T@FrameType) (r@@0 T@Field_14956_15030) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_33521_33521 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_33521_27497 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_33521_27497 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33521_33521 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_33521_27497 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_33558_33559) (v_1@@4 T@FrameType) (q@@1 T@Field_33558_33559) (w@@4 T@FrameType) (r@@1 T@Field_34867_34868) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_33521_33521 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_33521_15029 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_33521_15029 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33521_33521 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_33521_15029 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_33558_33559) (v_1@@5 T@FrameType) (q@@2 T@Field_14956_15030) (w@@5 T@FrameType) (r@@2 T@Field_33558_33559) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_33521_27497 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_27497_33521 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_33521_33521 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33521_27497 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_27497_33521 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_33558_33559) (v_1@@6 T@FrameType) (q@@3 T@Field_14956_15030) (w@@6 T@FrameType) (r@@3 T@Field_14956_15030) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_33521_27497 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_27497_27497 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_33521_27497 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33521_27497 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_27497_27497 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_33558_33559) (v_1@@7 T@FrameType) (q@@4 T@Field_14956_15030) (w@@7 T@FrameType) (r@@4 T@Field_34867_34868) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_33521_27497 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_27497_15029 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_33521_15029 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33521_27497 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_27497_15029 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_33558_33559) (v_1@@8 T@FrameType) (q@@5 T@Field_34867_34868) (w@@8 T@FrameType) (r@@5 T@Field_33558_33559) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_33521_15029 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_15029_33521 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_33521_33521 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33521_15029 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_15029_33521 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_33558_33559) (v_1@@9 T@FrameType) (q@@6 T@Field_34867_34868) (w@@9 T@FrameType) (r@@6 T@Field_14956_15030) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_33521_15029 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_15029_27497 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_33521_27497 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33521_15029 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_15029_27497 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_33558_33559) (v_1@@10 T@FrameType) (q@@7 T@Field_34867_34868) (w@@10 T@FrameType) (r@@7 T@Field_34867_34868) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_33521_15029 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_15029_15029 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_33521_15029 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33521_15029 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_15029_15029 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_14956_15030) (v_1@@11 T@FrameType) (q@@8 T@Field_33558_33559) (w@@11 T@FrameType) (r@@8 T@Field_33558_33559) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_27497_33521 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_33521_33521 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_27497_33521 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27497_33521 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_33521_33521 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_14956_15030) (v_1@@12 T@FrameType) (q@@9 T@Field_33558_33559) (w@@12 T@FrameType) (r@@9 T@Field_14956_15030) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_27497_33521 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_33521_27497 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_27497_27497 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27497_33521 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_33521_27497 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_14956_15030) (v_1@@13 T@FrameType) (q@@10 T@Field_33558_33559) (w@@13 T@FrameType) (r@@10 T@Field_34867_34868) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_27497_33521 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_33521_15029 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_27497_15029 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27497_33521 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_33521_15029 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_14956_15030) (v_1@@14 T@FrameType) (q@@11 T@Field_14956_15030) (w@@14 T@FrameType) (r@@11 T@Field_33558_33559) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_27497_27497 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_27497_33521 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_27497_33521 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27497_27497 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_27497_33521 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_14956_15030) (v_1@@15 T@FrameType) (q@@12 T@Field_14956_15030) (w@@15 T@FrameType) (r@@12 T@Field_14956_15030) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_27497_27497 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_27497_27497 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_27497_27497 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27497_27497 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_27497_27497 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_14956_15030) (v_1@@16 T@FrameType) (q@@13 T@Field_14956_15030) (w@@16 T@FrameType) (r@@13 T@Field_34867_34868) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_27497_27497 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_27497_15029 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_27497_15029 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27497_27497 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_27497_15029 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_14956_15030) (v_1@@17 T@FrameType) (q@@14 T@Field_34867_34868) (w@@17 T@FrameType) (r@@14 T@Field_33558_33559) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_27497_15029 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_15029_33521 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_27497_33521 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27497_15029 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_15029_33521 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_14956_15030) (v_1@@18 T@FrameType) (q@@15 T@Field_34867_34868) (w@@18 T@FrameType) (r@@15 T@Field_14956_15030) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_27497_15029 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_15029_27497 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_27497_27497 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27497_15029 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_15029_27497 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_14956_15030) (v_1@@19 T@FrameType) (q@@16 T@Field_34867_34868) (w@@19 T@FrameType) (r@@16 T@Field_34867_34868) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_27497_15029 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_15029_15029 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_27497_15029 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27497_15029 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_15029_15029 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_34867_34868) (v_1@@20 T@FrameType) (q@@17 T@Field_33558_33559) (w@@20 T@FrameType) (r@@17 T@Field_33558_33559) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_15029_33521 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_33521_33521 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_15029_33521 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15029_33521 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_33521_33521 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_34867_34868) (v_1@@21 T@FrameType) (q@@18 T@Field_33558_33559) (w@@21 T@FrameType) (r@@18 T@Field_14956_15030) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_15029_33521 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_33521_27497 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_15029_27497 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15029_33521 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_33521_27497 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_34867_34868) (v_1@@22 T@FrameType) (q@@19 T@Field_33558_33559) (w@@22 T@FrameType) (r@@19 T@Field_34867_34868) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_15029_33521 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_33521_15029 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_15029_15029 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15029_33521 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_33521_15029 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_34867_34868) (v_1@@23 T@FrameType) (q@@20 T@Field_14956_15030) (w@@23 T@FrameType) (r@@20 T@Field_33558_33559) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_15029_27497 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_27497_33521 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_15029_33521 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15029_27497 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_27497_33521 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_34867_34868) (v_1@@24 T@FrameType) (q@@21 T@Field_14956_15030) (w@@24 T@FrameType) (r@@21 T@Field_14956_15030) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_15029_27497 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_27497_27497 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_15029_27497 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15029_27497 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_27497_27497 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_34867_34868) (v_1@@25 T@FrameType) (q@@22 T@Field_14956_15030) (w@@25 T@FrameType) (r@@22 T@Field_34867_34868) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_15029_27497 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_27497_15029 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_15029_15029 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15029_27497 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_27497_15029 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_34867_34868) (v_1@@26 T@FrameType) (q@@23 T@Field_34867_34868) (w@@26 T@FrameType) (r@@23 T@Field_33558_33559) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_15029_15029 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_15029_33521 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_15029_33521 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15029_15029 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_15029_33521 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_34867_34868) (v_1@@27 T@FrameType) (q@@24 T@Field_34867_34868) (w@@27 T@FrameType) (r@@24 T@Field_14956_15030) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_15029_15029 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_15029_27497 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_15029_27497 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15029_15029 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_15029_27497 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_34867_34868) (v_1@@28 T@FrameType) (q@@25 T@Field_34867_34868) (w@@28 T@FrameType) (r@@25 T@Field_34867_34868) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_15029_15029 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_15029_15029 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_15029_15029 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15029_15029 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_15029_15029 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_3539|))
 :qid |stdinbpl.206:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_3416| s@@16 n@@12) |Seq#Empty_3539|))
 :qid |stdinbpl.382:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3416| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_27437)
(declare-fun xs@@13 () T@Ref)
(declare-fun Heap@3 () T@PolymorphicMapType_27437)
(declare-fun newPMask@0 () T@PolymorphicMapType_27986)
(declare-fun Heap@2 () T@PolymorphicMapType_27437)
(declare-fun Heap@@54 () T@PolymorphicMapType_27437)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_27458)
(declare-fun Heap@0 () T@PolymorphicMapType_27437)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_27458)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_27458)
(declare-fun Mask@0 () T@PolymorphicMapType_27458)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3379 (Int) T@FrameType)
(declare-fun FrameFragment_14959 (T@Ref) T@FrameType)
(declare-fun FrameFragment_15030 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_27458)
(set-info :boogie-vc-id |head#definedness|)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon4_correct true))
(let ((anon6_Else_correct  (=> (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 3) 1)) anon4_correct))))
(let ((anon6_Then_correct  (=> (not (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_34318_3379) ) (!  (=> (or (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16 f_21) (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16 f_21)) (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| newPMask@0) o_16 f_21))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| newPMask@0) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_27510_27511) ) (!  (=> (or (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| newPMask@0) o_16@@0 f_21@@0))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| newPMask@0) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_27497_53) ) (!  (=> (or (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| newPMask@0) o_16@@1 f_21@@1))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| newPMask@0) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_14956_33543) ) (!  (=> (or (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| newPMask@0) o_16@@2 f_21@@2))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| newPMask@0) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_14956_15030) ) (!  (=> (or (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| newPMask@0) o_16@@3 f_21@@3))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| newPMask@0) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_33521_3011) ) (!  (=> (or (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| newPMask@0) o_16@@4 f_21@@4))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| newPMask@0) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_33521_14959) ) (!  (=> (or (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| newPMask@0) o_16@@5 f_21@@5))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| newPMask@0) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_33521_53) ) (!  (=> (or (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| newPMask@0) o_16@@6 f_21@@6))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| newPMask@0) o_16@@6 f_21@@6))
))) (forall ((o_16@@7 T@Ref) (f_21@@7 T@Field_33538_33543) ) (!  (=> (or (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@7 f_21@@7) (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@7 f_21@@7)) (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| newPMask@0) o_16@@7 f_21@@7))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| newPMask@0) o_16@@7 f_21@@7))
))) (forall ((o_16@@8 T@Ref) (f_21@@8 T@Field_33558_33559) ) (!  (=> (or (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@8 f_21@@8) (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@8 f_21@@8)) (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| newPMask@0) o_16@@8 f_21@@8))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| newPMask@0) o_16@@8 f_21@@8))
))) (forall ((o_16@@9 T@Ref) (f_21@@9 T@Field_15029_3379) ) (!  (=> (or (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@9 f_21@@9) (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@9 f_21@@9)) (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| newPMask@0) o_16@@9 f_21@@9))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| newPMask@0) o_16@@9 f_21@@9))
))) (forall ((o_16@@10 T@Ref) (f_21@@10 T@Field_15029_14959) ) (!  (=> (or (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@10 f_21@@10) (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@10 f_21@@10)) (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| newPMask@0) o_16@@10 f_21@@10))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| newPMask@0) o_16@@10 f_21@@10))
))) (forall ((o_16@@11 T@Ref) (f_21@@11 T@Field_15029_53) ) (!  (=> (or (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@11 f_21@@11) (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@11 f_21@@11)) (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| newPMask@0) o_16@@11 f_21@@11))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| newPMask@0) o_16@@11 f_21@@11))
))) (forall ((o_16@@12 T@Ref) (f_21@@12 T@Field_37623_37628) ) (!  (=> (or (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@12 f_21@@12) (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@12 f_21@@12)) (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| newPMask@0) o_16@@12 f_21@@12))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| newPMask@0) o_16@@12 f_21@@12))
))) (forall ((o_16@@13 T@Ref) (f_21@@13 T@Field_34867_34868) ) (!  (=> (or (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13))) o_16@@13 f_21@@13) (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) xs@@13 next)))) o_16@@13 f_21@@13)) (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| newPMask@0) o_16@@13 f_21@@13))
 :qid |stdinbpl.821:33|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| newPMask@0) o_16@@13 f_21@@13))
))) (= Heap@2 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@1) (store (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@1) null (|List#sm| xs@@13) newPMask@0) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@1) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 2) 1))) anon4_correct))))
(let ((anon2_correct  (=> (state Heap@@54 UnfoldingMask@3) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_14956_3379 UnfoldingMask@3 xs@@13 val)) (=> (HasDirectPerm_14956_3379 UnfoldingMask@3 xs@@13 val) (=> (and (= Heap@0 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@54) (store (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13) (PolymorphicMapType_27986 (store (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) xs@@13 val true) (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@@54) null (|List#sm| xs@@13))))) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@@54) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@@54))) (= Heap@1 (PolymorphicMapType_27437 (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@0) (store (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13) (PolymorphicMapType_27986 (|PolymorphicMapType_27986_14956_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (store (|PolymorphicMapType_27986_14958_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) xs@@13 next true) (|PolymorphicMapType_27986_14956_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_14956_94070#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_14956_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_33521_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_33521_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_33521_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_33521_95118#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_33521_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_34867_3379#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_34867_14959#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_34867_53#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_34867_96166#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))) (|PolymorphicMapType_27986_34867_33559#PolymorphicMapType_27986| (select (|PolymorphicMapType_27437_15033_37715#PolymorphicMapType_27437| Heap@0) null (|List#sm| xs@@13))))) (|PolymorphicMapType_27437_14905_49035#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_14956_15030#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_14956_89989#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_15029_3379#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_15029_14959#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_15029_53#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_33521_3379#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_33521_14959#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_33521_15030#PolymorphicMapType_27437| Heap@0) (|PolymorphicMapType_27437_33521_53#PolymorphicMapType_27437| Heap@0)))) (and (=> (= (ControlFlow 0 4) 2) anon6_Then_correct) (=> (= (ControlFlow 0 4) 3) anon6_Else_correct))))))))
(let ((anon5_Else_correct  (=> (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@54) xs@@13 next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 7) 4)) anon2_correct))))
(let ((anon5_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@54) xs@@13 next) null)) (= UnfoldingMask@2 (PolymorphicMapType_27458 (store (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| UnfoldingMask@1) null (List (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@54) xs@@13 next)) (+ (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| UnfoldingMask@1) null (List (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@54) xs@@13 next))) FullPerm)) (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| UnfoldingMask@1) (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_15029_15029 (List xs@@13) (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@54) null (List xs@@13)) (List (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@54) xs@@13 next)) (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@54) null (List (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@54) xs@@13 next)))) (state Heap@@54 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 6) 4))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@54 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_27437_14705_53#PolymorphicMapType_27437| Heap@@54) xs@@13 $allocated)) (and (= AssumeFunctionsAbove 1) (= Mask@0 (PolymorphicMapType_27458 (store (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| ZeroMask) null (List xs@@13) (+ (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| ZeroMask) null (List xs@@13)) FullPerm)) (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| ZeroMask) (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| ZeroMask))))) (and (and (state Heap@@54 Mask@0) (state Heap@@54 Mask@0)) (and (|List#trigger_15029| Heap@@54 (List xs@@13)) (= (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@54) null (List xs@@13)) (CombineFrames (FrameFragment_3379 (select (|PolymorphicMapType_27437_14956_3379#PolymorphicMapType_27437| Heap@@54) xs@@13 val)) (CombineFrames (FrameFragment_14959 (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@54) xs@@13 next)) (FrameFragment_15030 (ite (not (= (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@54) xs@@13 next) null)) (select (|PolymorphicMapType_27437_15029_15030#PolymorphicMapType_27437| Heap@@54) null (List (select (|PolymorphicMapType_27437_14708_14709#PolymorphicMapType_27437| Heap@@54) xs@@13 next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| Mask@0) null (List xs@@13))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| Mask@0) null (List xs@@13)))) (=> (and (not (= xs@@13 null)) (= UnfoldingMask@0 (PolymorphicMapType_27458 (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| Mask@0) (store (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| Mask@0) xs@@13 val (+ (select (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| Mask@0) xs@@13 val) FullPerm)) (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| Mask@0) (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| Mask@0)))) (=> (and (and (state Heap@@54 UnfoldingMask@0) (not (= xs@@13 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_27458 (|PolymorphicMapType_27458_15029_15030#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_14956_3379#PolymorphicMapType_27458| UnfoldingMask@0) (store (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| UnfoldingMask@0) xs@@13 next (+ (select (|PolymorphicMapType_27458_14958_14959#PolymorphicMapType_27458| UnfoldingMask@0) xs@@13 next) FullPerm)) (|PolymorphicMapType_27458_14898_3011#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_15029_3379#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_15029_14959#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_15029_53#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_15029_104179#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_14956_15030#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_14956_53#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_14956_104578#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_14898_15030#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_14898_14959#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_14898_53#PolymorphicMapType_27458| UnfoldingMask@0) (|PolymorphicMapType_27458_14898_104992#PolymorphicMapType_27458| UnfoldingMask@0))) (state Heap@@54 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 8) 6) anon5_Then_correct) (=> (= (ControlFlow 0 8) 7) anon5_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 8) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
