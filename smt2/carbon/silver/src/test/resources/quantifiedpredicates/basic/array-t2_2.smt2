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
(declare-sort T@Field_16127_53 0)
(declare-sort T@Field_16140_16141 0)
(declare-sort T@Field_22391_22392 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_22344_3697 0)
(declare-sort T@Field_16127_22392 0)
(declare-sort T@Field_16127_22409 0)
(declare-sort T@Field_22391_53 0)
(declare-sort T@Field_22391_16141 0)
(declare-sort T@Field_22391_3697 0)
(declare-sort T@Field_22404_22409 0)
(declare-datatypes ((T@PolymorphicMapType_16088 0)) (((PolymorphicMapType_16088 (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| (Array T@Ref T@Field_22344_3697 Real)) (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| (Array T@Ref T@Field_22391_22392 Real)) (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| (Array T@Ref T@Field_16127_22392 Real)) (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| (Array T@Ref T@Field_16127_53 Real)) (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| (Array T@Ref T@Field_16140_16141 Real)) (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| (Array T@Ref T@Field_16127_22409 Real)) (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| (Array T@Ref T@Field_22391_3697 Real)) (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| (Array T@Ref T@Field_22391_53 Real)) (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| (Array T@Ref T@Field_22391_16141 Real)) (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| (Array T@Ref T@Field_22404_22409 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16616 0)) (((PolymorphicMapType_16616 (|PolymorphicMapType_16616_16127_53#PolymorphicMapType_16616| (Array T@Ref T@Field_16127_53 Bool)) (|PolymorphicMapType_16616_16127_16141#PolymorphicMapType_16616| (Array T@Ref T@Field_16140_16141 Bool)) (|PolymorphicMapType_16616_16127_3697#PolymorphicMapType_16616| (Array T@Ref T@Field_22344_3697 Bool)) (|PolymorphicMapType_16616_16127_22392#PolymorphicMapType_16616| (Array T@Ref T@Field_16127_22392 Bool)) (|PolymorphicMapType_16616_16127_49317#PolymorphicMapType_16616| (Array T@Ref T@Field_16127_22409 Bool)) (|PolymorphicMapType_16616_22391_53#PolymorphicMapType_16616| (Array T@Ref T@Field_22391_53 Bool)) (|PolymorphicMapType_16616_22391_16141#PolymorphicMapType_16616| (Array T@Ref T@Field_22391_16141 Bool)) (|PolymorphicMapType_16616_22391_3697#PolymorphicMapType_16616| (Array T@Ref T@Field_22391_3697 Bool)) (|PolymorphicMapType_16616_22391_22392#PolymorphicMapType_16616| (Array T@Ref T@Field_22391_22392 Bool)) (|PolymorphicMapType_16616_22391_50365#PolymorphicMapType_16616| (Array T@Ref T@Field_22404_22409 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16067 0)) (((PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| (Array T@Ref T@Field_16127_53 Bool)) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| (Array T@Ref T@Field_16140_16141 T@Ref)) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| (Array T@Ref T@Field_22391_22392 T@FrameType)) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| (Array T@Ref T@Field_22344_3697 Int)) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| (Array T@Ref T@Field_16127_22392 T@FrameType)) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| (Array T@Ref T@Field_16127_22409 T@PolymorphicMapType_16616)) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| (Array T@Ref T@Field_22391_53 Bool)) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| (Array T@Ref T@Field_22391_16141 T@Ref)) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| (Array T@Ref T@Field_22391_3697 Int)) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| (Array T@Ref T@Field_22404_22409 T@PolymorphicMapType_16616)) ) ) ))
(declare-fun $allocated () T@Field_16127_53)
(declare-fun val () T@Field_22344_3697)
(declare-sort T@Seq_3440 0)
(declare-fun |Seq#Length_3440| (T@Seq_3440) Int)
(declare-fun |Seq#Drop_3440| (T@Seq_3440 Int) T@Seq_3440)
(declare-fun succHeap (T@PolymorphicMapType_16067 T@PolymorphicMapType_16067) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16067 T@PolymorphicMapType_16067) Bool)
(declare-fun state (T@PolymorphicMapType_16067 T@PolymorphicMapType_16088) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_16088) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16616)
(declare-sort T@IArrayDomainType 0)
(declare-fun p_2 (T@IArrayDomainType Int) T@Field_22391_22392)
(declare-fun IsPredicateField_11296_11297 (T@Field_22391_22392) Bool)
(declare-fun |p#trigger_11296| (T@PolymorphicMapType_16067 T@Field_22391_22392) Bool)
(declare-fun |p#everUsed_11296| (T@Field_22391_22392) Bool)
(declare-fun |Seq#Index_3440| (T@Seq_3440 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3440| () T@Seq_3440)
(declare-fun |Seq#Update_3440| (T@Seq_3440 Int Int) T@Seq_3440)
(declare-fun |Seq#Take_3440| (T@Seq_3440 Int) T@Seq_3440)
(declare-fun |Seq#Contains_3440| (T@Seq_3440 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3440)
(declare-fun |Seq#Skolem_3440| (T@Seq_3440 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16067 T@PolymorphicMapType_16067 T@PolymorphicMapType_16088) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11296 (T@Field_22391_22392) T@Field_22404_22409)
(declare-fun HasDirectPerm_22391_22392 (T@PolymorphicMapType_16088 T@Ref T@Field_22391_22392) Bool)
(declare-fun IsPredicateField_16127_47833 (T@Field_16127_22392) Bool)
(declare-fun PredicateMaskField_16127 (T@Field_16127_22392) T@Field_16127_22409)
(declare-fun HasDirectPerm_16127_22392 (T@PolymorphicMapType_16088 T@Ref T@Field_16127_22392) Bool)
(declare-fun IsWandField_22391_51530 (T@Field_22391_22392) Bool)
(declare-fun WandMaskField_22391 (T@Field_22391_22392) T@Field_22404_22409)
(declare-fun IsWandField_16127_51173 (T@Field_16127_22392) Bool)
(declare-fun WandMaskField_16127 (T@Field_16127_22392) T@Field_16127_22409)
(declare-fun |Seq#Singleton_3440| (Int) T@Seq_3440)
(declare-fun |p#sm| (T@IArrayDomainType Int) T@Field_22404_22409)
(declare-fun |Seq#Append_3440| (T@Seq_3440 T@Seq_3440) T@Seq_3440)
(declare-fun dummyHeap () T@PolymorphicMapType_16067)
(declare-fun ZeroMask () T@PolymorphicMapType_16088)
(declare-fun InsidePredicate_22391_22391 (T@Field_22391_22392 T@FrameType T@Field_22391_22392 T@FrameType) Bool)
(declare-fun InsidePredicate_16127_16127 (T@Field_16127_22392 T@FrameType T@Field_16127_22392 T@FrameType) Bool)
(declare-fun IsPredicateField_11293_3697 (T@Field_22344_3697) Bool)
(declare-fun IsWandField_11293_3697 (T@Field_22344_3697) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11296_58462 (T@Field_22404_22409) Bool)
(declare-fun IsWandField_11296_58478 (T@Field_22404_22409) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11296_16141 (T@Field_22391_16141) Bool)
(declare-fun IsWandField_11296_16141 (T@Field_22391_16141) Bool)
(declare-fun IsPredicateField_11296_53 (T@Field_22391_53) Bool)
(declare-fun IsWandField_11296_53 (T@Field_22391_53) Bool)
(declare-fun IsPredicateField_11296_3697 (T@Field_22391_3697) Bool)
(declare-fun IsWandField_11296_3697 (T@Field_22391_3697) Bool)
(declare-fun IsPredicateField_11293_57631 (T@Field_16127_22409) Bool)
(declare-fun IsWandField_11293_57647 (T@Field_16127_22409) Bool)
(declare-fun IsPredicateField_11293_16141 (T@Field_16140_16141) Bool)
(declare-fun IsWandField_11293_16141 (T@Field_16140_16141) Bool)
(declare-fun IsPredicateField_11293_53 (T@Field_16127_53) Bool)
(declare-fun IsWandField_11293_53 (T@Field_16127_53) Bool)
(declare-fun HasDirectPerm_22391_47545 (T@PolymorphicMapType_16088 T@Ref T@Field_22404_22409) Bool)
(declare-fun HasDirectPerm_22391_3697 (T@PolymorphicMapType_16088 T@Ref T@Field_22391_3697) Bool)
(declare-fun HasDirectPerm_22391_16141 (T@PolymorphicMapType_16088 T@Ref T@Field_22391_16141) Bool)
(declare-fun HasDirectPerm_22391_53 (T@PolymorphicMapType_16088 T@Ref T@Field_22391_53) Bool)
(declare-fun HasDirectPerm_16127_46384 (T@PolymorphicMapType_16088 T@Ref T@Field_16127_22409) Bool)
(declare-fun HasDirectPerm_16127_3697 (T@PolymorphicMapType_16088 T@Ref T@Field_22344_3697) Bool)
(declare-fun HasDirectPerm_16127_16141 (T@PolymorphicMapType_16088 T@Ref T@Field_16140_16141) Bool)
(declare-fun HasDirectPerm_16127_53 (T@PolymorphicMapType_16088 T@Ref T@Field_16127_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_16088 T@PolymorphicMapType_16088 T@PolymorphicMapType_16088) Bool)
(declare-fun |Seq#Equal_3440| (T@Seq_3440 T@Seq_3440) Bool)
(declare-fun len (T@IArrayDomainType) Int)
(declare-fun |Seq#ContainsTrigger_3440| (T@Seq_3440 Int) Bool)
(declare-fun getPredWandId_11296_11297 (T@Field_22391_22392) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun loc_limited (T@IArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@IArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(declare-fun |Seq#SkolemDiff_3440| (T@Seq_3440 T@Seq_3440) Int)
(declare-fun InsidePredicate_22391_16127 (T@Field_22391_22392 T@FrameType T@Field_16127_22392 T@FrameType) Bool)
(declare-fun InsidePredicate_16127_22391 (T@Field_16127_22392 T@FrameType T@Field_22391_22392 T@FrameType) Bool)
(assert (forall ((s T@Seq_3440) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_3440| s)) (= (|Seq#Length_3440| (|Seq#Drop_3440| s n)) (- (|Seq#Length_3440| s) n))) (=> (< (|Seq#Length_3440| s) n) (= (|Seq#Length_3440| (|Seq#Drop_3440| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_3440| (|Seq#Drop_3440| s n)) (|Seq#Length_3440| s))))
 :qid |stdinbpl.339:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3440| (|Seq#Drop_3440| s n)))
 :pattern ( (|Seq#Length_3440| s) (|Seq#Drop_3440| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_16067) (Heap1 T@PolymorphicMapType_16067) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_16067) (Mask T@PolymorphicMapType_16088) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16067) (Heap1@@0 T@PolymorphicMapType_16067) (Heap2 T@PolymorphicMapType_16067) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_22404_22409) ) (!  (not (select (|PolymorphicMapType_16616_22391_50365#PolymorphicMapType_16616| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16616_22391_50365#PolymorphicMapType_16616| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_22391_22392) ) (!  (not (select (|PolymorphicMapType_16616_22391_22392#PolymorphicMapType_16616| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16616_22391_22392#PolymorphicMapType_16616| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_22391_3697) ) (!  (not (select (|PolymorphicMapType_16616_22391_3697#PolymorphicMapType_16616| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16616_22391_3697#PolymorphicMapType_16616| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_22391_16141) ) (!  (not (select (|PolymorphicMapType_16616_22391_16141#PolymorphicMapType_16616| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16616_22391_16141#PolymorphicMapType_16616| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_22391_53) ) (!  (not (select (|PolymorphicMapType_16616_22391_53#PolymorphicMapType_16616| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16616_22391_53#PolymorphicMapType_16616| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_16127_22409) ) (!  (not (select (|PolymorphicMapType_16616_16127_49317#PolymorphicMapType_16616| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16616_16127_49317#PolymorphicMapType_16616| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_16127_22392) ) (!  (not (select (|PolymorphicMapType_16616_16127_22392#PolymorphicMapType_16616| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16616_16127_22392#PolymorphicMapType_16616| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_22344_3697) ) (!  (not (select (|PolymorphicMapType_16616_16127_3697#PolymorphicMapType_16616| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16616_16127_3697#PolymorphicMapType_16616| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_16140_16141) ) (!  (not (select (|PolymorphicMapType_16616_16127_16141#PolymorphicMapType_16616| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16616_16127_16141#PolymorphicMapType_16616| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_16127_53) ) (!  (not (select (|PolymorphicMapType_16616_16127_53#PolymorphicMapType_16616| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16616_16127_53#PolymorphicMapType_16616| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a_2 T@IArrayDomainType) (i Int) ) (! (IsPredicateField_11296_11297 (p_2 a_2 i))
 :qid |stdinbpl.665:15|
 :skolemid |62|
 :pattern ( (p_2 a_2 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16067) (a_2@@0 T@IArrayDomainType) (i@@0 Int) ) (! (|p#everUsed_11296| (p_2 a_2@@0 i@@0))
 :qid |stdinbpl.684:15|
 :skolemid |66|
 :pattern ( (|p#trigger_11296| Heap@@0 (p_2 a_2@@0 i@@0)))
)))
(assert (forall ((s@@0 T@Seq_3440) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_3440| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_3440| (|Seq#Drop_3440| s@@0 n@@0) j) (|Seq#Index_3440| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.360:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3440| (|Seq#Drop_3440| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_3440| |Seq#Empty_3440|) 0))
(assert (forall ((s@@1 T@Seq_3440) (i@@1 Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_3440| s@@1))) (and (=> (= i@@1 n@@1) (= (|Seq#Index_3440| (|Seq#Update_3440| s@@1 i@@1 v) n@@1) v)) (=> (not (= i@@1 n@@1)) (= (|Seq#Index_3440| (|Seq#Update_3440| s@@1 i@@1 v) n@@1) (|Seq#Index_3440| s@@1 n@@1)))))
 :qid |stdinbpl.315:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3440| (|Seq#Update_3440| s@@1 i@@1 v) n@@1))
 :pattern ( (|Seq#Index_3440| s@@1 n@@1) (|Seq#Update_3440| s@@1 i@@1 v))
)))
(assert (forall ((s@@2 T@Seq_3440) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_3440| s@@2)) (= (|Seq#Length_3440| (|Seq#Take_3440| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_3440| s@@2) n@@2) (= (|Seq#Length_3440| (|Seq#Take_3440| s@@2 n@@2)) (|Seq#Length_3440| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_3440| (|Seq#Take_3440| s@@2 n@@2)) 0)))
 :qid |stdinbpl.326:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3440| (|Seq#Take_3440| s@@2 n@@2)))
 :pattern ( (|Seq#Take_3440| s@@2 n@@2) (|Seq#Length_3440| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_3440| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.600:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_3440) (x Int) ) (!  (=> (|Seq#Contains_3440| s@@3 x) (and (and (<= 0 (|Seq#Skolem_3440| s@@3 x)) (< (|Seq#Skolem_3440| s@@3 x) (|Seq#Length_3440| s@@3))) (= (|Seq#Index_3440| s@@3 (|Seq#Skolem_3440| s@@3 x)) x)))
 :qid |stdinbpl.458:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3440| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_3440) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3440| s@@4 n@@3) s@@4))
 :qid |stdinbpl.442:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3440| s@@4 n@@3))
)))
(assert (forall ((i@@2 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@2 j@@0) (- i@@2 j@@0))
 :qid |stdinbpl.295:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@0))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@3 j@@1) (+ i@@3 j@@1))
 :qid |stdinbpl.293:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16067) (ExhaleHeap T@PolymorphicMapType_16067) (Mask@@0 T@PolymorphicMapType_16088) (pm_f_34 T@Field_22391_22392) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_22391_22392 Mask@@0 null pm_f_34) (IsPredicateField_11296_11297 pm_f_34)) (= (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@1) null (PredicateMaskField_11296 pm_f_34)) (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap) null (PredicateMaskField_11296 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_11296_11297 pm_f_34) (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap) null (PredicateMaskField_11296 pm_f_34)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16067) (ExhaleHeap@@0 T@PolymorphicMapType_16067) (Mask@@1 T@PolymorphicMapType_16088) (pm_f_34@@0 T@Field_16127_22392) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16127_22392 Mask@@1 null pm_f_34@@0) (IsPredicateField_16127_47833 pm_f_34@@0)) (= (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@2) null (PredicateMaskField_16127 pm_f_34@@0)) (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@0) null (PredicateMaskField_16127 pm_f_34@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_16127_47833 pm_f_34@@0) (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@0) null (PredicateMaskField_16127 pm_f_34@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16067) (ExhaleHeap@@1 T@PolymorphicMapType_16067) (Mask@@2 T@PolymorphicMapType_16088) (pm_f_34@@1 T@Field_22391_22392) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_22391_22392 Mask@@2 null pm_f_34@@1) (IsWandField_22391_51530 pm_f_34@@1)) (= (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@3) null (WandMaskField_22391 pm_f_34@@1)) (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@1) null (WandMaskField_22391 pm_f_34@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_22391_51530 pm_f_34@@1) (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@1) null (WandMaskField_22391 pm_f_34@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16067) (ExhaleHeap@@2 T@PolymorphicMapType_16067) (Mask@@3 T@PolymorphicMapType_16088) (pm_f_34@@2 T@Field_16127_22392) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_16127_22392 Mask@@3 null pm_f_34@@2) (IsWandField_16127_51173 pm_f_34@@2)) (= (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@4) null (WandMaskField_16127 pm_f_34@@2)) (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@2) null (WandMaskField_16127 pm_f_34@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_16127_51173 pm_f_34@@2) (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@2) null (WandMaskField_16127 pm_f_34@@2)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_3440| (|Seq#Singleton_3440| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.583:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3440| (|Seq#Singleton_3440| x@@0) y))
)))
(assert (forall ((a_2@@1 T@IArrayDomainType) (i@@4 Int) (a2 T@IArrayDomainType) (i2 Int) ) (!  (=> (= (p_2 a_2@@1 i@@4) (p_2 a2 i2)) (and (= a_2@@1 a2) (= i@@4 i2)))
 :qid |stdinbpl.675:15|
 :skolemid |64|
 :pattern ( (p_2 a_2@@1 i@@4) (p_2 a2 i2))
)))
(assert (forall ((a_2@@2 T@IArrayDomainType) (i@@5 Int) (a2@@0 T@IArrayDomainType) (i2@@0 Int) ) (!  (=> (= (|p#sm| a_2@@2 i@@5) (|p#sm| a2@@0 i2@@0)) (and (= a_2@@2 a2@@0) (= i@@5 i2@@0)))
 :qid |stdinbpl.679:15|
 :skolemid |65|
 :pattern ( (|p#sm| a_2@@2 i@@5) (|p#sm| a2@@0 i2@@0))
)))
(assert (forall ((s@@5 T@Seq_3440) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_3440| s@@5))) (= (|Seq#Index_3440| (|Seq#Take_3440| s@@5 n@@4) j@@2) (|Seq#Index_3440| s@@5 j@@2)))
 :qid |stdinbpl.334:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3440| (|Seq#Take_3440| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_3440| s@@5 j@@2) (|Seq#Take_3440| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_3440) (t T@Seq_3440) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_3440| s@@6))) (< n@@5 (|Seq#Length_3440| (|Seq#Append_3440| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_3440| s@@6)) (|Seq#Length_3440| s@@6)) n@@5) (= (|Seq#Take_3440| (|Seq#Append_3440| s@@6 t) n@@5) (|Seq#Append_3440| s@@6 (|Seq#Take_3440| t (|Seq#Sub| n@@5 (|Seq#Length_3440| s@@6)))))))
 :qid |stdinbpl.419:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3440| (|Seq#Append_3440| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16067) (ExhaleHeap@@3 T@PolymorphicMapType_16067) (Mask@@4 T@PolymorphicMapType_16088) (pm_f_34@@3 T@Field_22391_22392) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_22391_22392 Mask@@4 null pm_f_34@@3) (IsPredicateField_11296_11297 pm_f_34@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_34 T@Ref) (f_65 T@Field_16127_53) ) (!  (=> (select (|PolymorphicMapType_16616_16127_53#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@5) null (PredicateMaskField_11296 pm_f_34@@3))) o2_34 f_65) (= (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@5) o2_34 f_65) (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34 f_65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34 f_65))
)) (forall ((o2_34@@0 T@Ref) (f_65@@0 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_16616_16127_16141#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@5) null (PredicateMaskField_11296 pm_f_34@@3))) o2_34@@0 f_65@@0) (= (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@5) o2_34@@0 f_65@@0) (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@0 f_65@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@0 f_65@@0))
))) (forall ((o2_34@@1 T@Ref) (f_65@@1 T@Field_22344_3697) ) (!  (=> (select (|PolymorphicMapType_16616_16127_3697#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@5) null (PredicateMaskField_11296 pm_f_34@@3))) o2_34@@1 f_65@@1) (= (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@5) o2_34@@1 f_65@@1) (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@1 f_65@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@1 f_65@@1))
))) (forall ((o2_34@@2 T@Ref) (f_65@@2 T@Field_16127_22392) ) (!  (=> (select (|PolymorphicMapType_16616_16127_22392#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@5) null (PredicateMaskField_11296 pm_f_34@@3))) o2_34@@2 f_65@@2) (= (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@5) o2_34@@2 f_65@@2) (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@2 f_65@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@2 f_65@@2))
))) (forall ((o2_34@@3 T@Ref) (f_65@@3 T@Field_16127_22409) ) (!  (=> (select (|PolymorphicMapType_16616_16127_49317#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@5) null (PredicateMaskField_11296 pm_f_34@@3))) o2_34@@3 f_65@@3) (= (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@5) o2_34@@3 f_65@@3) (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@3 f_65@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@3 f_65@@3))
))) (forall ((o2_34@@4 T@Ref) (f_65@@4 T@Field_22391_53) ) (!  (=> (select (|PolymorphicMapType_16616_22391_53#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@5) null (PredicateMaskField_11296 pm_f_34@@3))) o2_34@@4 f_65@@4) (= (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@5) o2_34@@4 f_65@@4) (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@4 f_65@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@4 f_65@@4))
))) (forall ((o2_34@@5 T@Ref) (f_65@@5 T@Field_22391_16141) ) (!  (=> (select (|PolymorphicMapType_16616_22391_16141#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@5) null (PredicateMaskField_11296 pm_f_34@@3))) o2_34@@5 f_65@@5) (= (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@5) o2_34@@5 f_65@@5) (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@5 f_65@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@5 f_65@@5))
))) (forall ((o2_34@@6 T@Ref) (f_65@@6 T@Field_22391_3697) ) (!  (=> (select (|PolymorphicMapType_16616_22391_3697#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@5) null (PredicateMaskField_11296 pm_f_34@@3))) o2_34@@6 f_65@@6) (= (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@5) o2_34@@6 f_65@@6) (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@6 f_65@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@6 f_65@@6))
))) (forall ((o2_34@@7 T@Ref) (f_65@@7 T@Field_22391_22392) ) (!  (=> (select (|PolymorphicMapType_16616_22391_22392#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@5) null (PredicateMaskField_11296 pm_f_34@@3))) o2_34@@7 f_65@@7) (= (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@5) o2_34@@7 f_65@@7) (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@7 f_65@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@7 f_65@@7))
))) (forall ((o2_34@@8 T@Ref) (f_65@@8 T@Field_22404_22409) ) (!  (=> (select (|PolymorphicMapType_16616_22391_50365#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@5) null (PredicateMaskField_11296 pm_f_34@@3))) o2_34@@8 f_65@@8) (= (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@5) o2_34@@8 f_65@@8) (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@8 f_65@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@3) o2_34@@8 f_65@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_11296_11297 pm_f_34@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16067) (ExhaleHeap@@4 T@PolymorphicMapType_16067) (Mask@@5 T@PolymorphicMapType_16088) (pm_f_34@@4 T@Field_16127_22392) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_16127_22392 Mask@@5 null pm_f_34@@4) (IsPredicateField_16127_47833 pm_f_34@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@9 T@Ref) (f_65@@9 T@Field_16127_53) ) (!  (=> (select (|PolymorphicMapType_16616_16127_53#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@6) null (PredicateMaskField_16127 pm_f_34@@4))) o2_34@@9 f_65@@9) (= (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@6) o2_34@@9 f_65@@9) (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@9 f_65@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@9 f_65@@9))
)) (forall ((o2_34@@10 T@Ref) (f_65@@10 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_16616_16127_16141#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@6) null (PredicateMaskField_16127 pm_f_34@@4))) o2_34@@10 f_65@@10) (= (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@6) o2_34@@10 f_65@@10) (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@10 f_65@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@10 f_65@@10))
))) (forall ((o2_34@@11 T@Ref) (f_65@@11 T@Field_22344_3697) ) (!  (=> (select (|PolymorphicMapType_16616_16127_3697#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@6) null (PredicateMaskField_16127 pm_f_34@@4))) o2_34@@11 f_65@@11) (= (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@6) o2_34@@11 f_65@@11) (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@11 f_65@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@11 f_65@@11))
))) (forall ((o2_34@@12 T@Ref) (f_65@@12 T@Field_16127_22392) ) (!  (=> (select (|PolymorphicMapType_16616_16127_22392#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@6) null (PredicateMaskField_16127 pm_f_34@@4))) o2_34@@12 f_65@@12) (= (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@6) o2_34@@12 f_65@@12) (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@12 f_65@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@12 f_65@@12))
))) (forall ((o2_34@@13 T@Ref) (f_65@@13 T@Field_16127_22409) ) (!  (=> (select (|PolymorphicMapType_16616_16127_49317#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@6) null (PredicateMaskField_16127 pm_f_34@@4))) o2_34@@13 f_65@@13) (= (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@6) o2_34@@13 f_65@@13) (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@13 f_65@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@13 f_65@@13))
))) (forall ((o2_34@@14 T@Ref) (f_65@@14 T@Field_22391_53) ) (!  (=> (select (|PolymorphicMapType_16616_22391_53#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@6) null (PredicateMaskField_16127 pm_f_34@@4))) o2_34@@14 f_65@@14) (= (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@6) o2_34@@14 f_65@@14) (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@14 f_65@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@14 f_65@@14))
))) (forall ((o2_34@@15 T@Ref) (f_65@@15 T@Field_22391_16141) ) (!  (=> (select (|PolymorphicMapType_16616_22391_16141#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@6) null (PredicateMaskField_16127 pm_f_34@@4))) o2_34@@15 f_65@@15) (= (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@6) o2_34@@15 f_65@@15) (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@15 f_65@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@15 f_65@@15))
))) (forall ((o2_34@@16 T@Ref) (f_65@@16 T@Field_22391_3697) ) (!  (=> (select (|PolymorphicMapType_16616_22391_3697#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@6) null (PredicateMaskField_16127 pm_f_34@@4))) o2_34@@16 f_65@@16) (= (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@6) o2_34@@16 f_65@@16) (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@16 f_65@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@16 f_65@@16))
))) (forall ((o2_34@@17 T@Ref) (f_65@@17 T@Field_22391_22392) ) (!  (=> (select (|PolymorphicMapType_16616_22391_22392#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@6) null (PredicateMaskField_16127 pm_f_34@@4))) o2_34@@17 f_65@@17) (= (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@6) o2_34@@17 f_65@@17) (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@17 f_65@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@17 f_65@@17))
))) (forall ((o2_34@@18 T@Ref) (f_65@@18 T@Field_22404_22409) ) (!  (=> (select (|PolymorphicMapType_16616_22391_50365#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@6) null (PredicateMaskField_16127 pm_f_34@@4))) o2_34@@18 f_65@@18) (= (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@6) o2_34@@18 f_65@@18) (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@18 f_65@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@4) o2_34@@18 f_65@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_16127_47833 pm_f_34@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16067) (ExhaleHeap@@5 T@PolymorphicMapType_16067) (Mask@@6 T@PolymorphicMapType_16088) (pm_f_34@@5 T@Field_22391_22392) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_22391_22392 Mask@@6 null pm_f_34@@5) (IsWandField_22391_51530 pm_f_34@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@19 T@Ref) (f_65@@19 T@Field_16127_53) ) (!  (=> (select (|PolymorphicMapType_16616_16127_53#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@7) null (WandMaskField_22391 pm_f_34@@5))) o2_34@@19 f_65@@19) (= (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@7) o2_34@@19 f_65@@19) (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@19 f_65@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@19 f_65@@19))
)) (forall ((o2_34@@20 T@Ref) (f_65@@20 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_16616_16127_16141#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@7) null (WandMaskField_22391 pm_f_34@@5))) o2_34@@20 f_65@@20) (= (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@7) o2_34@@20 f_65@@20) (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@20 f_65@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@20 f_65@@20))
))) (forall ((o2_34@@21 T@Ref) (f_65@@21 T@Field_22344_3697) ) (!  (=> (select (|PolymorphicMapType_16616_16127_3697#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@7) null (WandMaskField_22391 pm_f_34@@5))) o2_34@@21 f_65@@21) (= (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@7) o2_34@@21 f_65@@21) (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@21 f_65@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@21 f_65@@21))
))) (forall ((o2_34@@22 T@Ref) (f_65@@22 T@Field_16127_22392) ) (!  (=> (select (|PolymorphicMapType_16616_16127_22392#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@7) null (WandMaskField_22391 pm_f_34@@5))) o2_34@@22 f_65@@22) (= (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@7) o2_34@@22 f_65@@22) (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@22 f_65@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@22 f_65@@22))
))) (forall ((o2_34@@23 T@Ref) (f_65@@23 T@Field_16127_22409) ) (!  (=> (select (|PolymorphicMapType_16616_16127_49317#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@7) null (WandMaskField_22391 pm_f_34@@5))) o2_34@@23 f_65@@23) (= (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@7) o2_34@@23 f_65@@23) (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@23 f_65@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@23 f_65@@23))
))) (forall ((o2_34@@24 T@Ref) (f_65@@24 T@Field_22391_53) ) (!  (=> (select (|PolymorphicMapType_16616_22391_53#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@7) null (WandMaskField_22391 pm_f_34@@5))) o2_34@@24 f_65@@24) (= (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@7) o2_34@@24 f_65@@24) (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@24 f_65@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@24 f_65@@24))
))) (forall ((o2_34@@25 T@Ref) (f_65@@25 T@Field_22391_16141) ) (!  (=> (select (|PolymorphicMapType_16616_22391_16141#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@7) null (WandMaskField_22391 pm_f_34@@5))) o2_34@@25 f_65@@25) (= (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@7) o2_34@@25 f_65@@25) (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@25 f_65@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@25 f_65@@25))
))) (forall ((o2_34@@26 T@Ref) (f_65@@26 T@Field_22391_3697) ) (!  (=> (select (|PolymorphicMapType_16616_22391_3697#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@7) null (WandMaskField_22391 pm_f_34@@5))) o2_34@@26 f_65@@26) (= (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@7) o2_34@@26 f_65@@26) (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@26 f_65@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@26 f_65@@26))
))) (forall ((o2_34@@27 T@Ref) (f_65@@27 T@Field_22391_22392) ) (!  (=> (select (|PolymorphicMapType_16616_22391_22392#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@7) null (WandMaskField_22391 pm_f_34@@5))) o2_34@@27 f_65@@27) (= (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@7) o2_34@@27 f_65@@27) (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@27 f_65@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@27 f_65@@27))
))) (forall ((o2_34@@28 T@Ref) (f_65@@28 T@Field_22404_22409) ) (!  (=> (select (|PolymorphicMapType_16616_22391_50365#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@7) null (WandMaskField_22391 pm_f_34@@5))) o2_34@@28 f_65@@28) (= (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@7) o2_34@@28 f_65@@28) (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@28 f_65@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@5) o2_34@@28 f_65@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_22391_51530 pm_f_34@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16067) (ExhaleHeap@@6 T@PolymorphicMapType_16067) (Mask@@7 T@PolymorphicMapType_16088) (pm_f_34@@6 T@Field_16127_22392) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_16127_22392 Mask@@7 null pm_f_34@@6) (IsWandField_16127_51173 pm_f_34@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@29 T@Ref) (f_65@@29 T@Field_16127_53) ) (!  (=> (select (|PolymorphicMapType_16616_16127_53#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@8) null (WandMaskField_16127 pm_f_34@@6))) o2_34@@29 f_65@@29) (= (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@8) o2_34@@29 f_65@@29) (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@29 f_65@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@29 f_65@@29))
)) (forall ((o2_34@@30 T@Ref) (f_65@@30 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_16616_16127_16141#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@8) null (WandMaskField_16127 pm_f_34@@6))) o2_34@@30 f_65@@30) (= (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@8) o2_34@@30 f_65@@30) (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@30 f_65@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@30 f_65@@30))
))) (forall ((o2_34@@31 T@Ref) (f_65@@31 T@Field_22344_3697) ) (!  (=> (select (|PolymorphicMapType_16616_16127_3697#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@8) null (WandMaskField_16127 pm_f_34@@6))) o2_34@@31 f_65@@31) (= (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@8) o2_34@@31 f_65@@31) (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@31 f_65@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@31 f_65@@31))
))) (forall ((o2_34@@32 T@Ref) (f_65@@32 T@Field_16127_22392) ) (!  (=> (select (|PolymorphicMapType_16616_16127_22392#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@8) null (WandMaskField_16127 pm_f_34@@6))) o2_34@@32 f_65@@32) (= (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@8) o2_34@@32 f_65@@32) (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@32 f_65@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@32 f_65@@32))
))) (forall ((o2_34@@33 T@Ref) (f_65@@33 T@Field_16127_22409) ) (!  (=> (select (|PolymorphicMapType_16616_16127_49317#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@8) null (WandMaskField_16127 pm_f_34@@6))) o2_34@@33 f_65@@33) (= (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@8) o2_34@@33 f_65@@33) (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@33 f_65@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@33 f_65@@33))
))) (forall ((o2_34@@34 T@Ref) (f_65@@34 T@Field_22391_53) ) (!  (=> (select (|PolymorphicMapType_16616_22391_53#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@8) null (WandMaskField_16127 pm_f_34@@6))) o2_34@@34 f_65@@34) (= (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@8) o2_34@@34 f_65@@34) (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@34 f_65@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@34 f_65@@34))
))) (forall ((o2_34@@35 T@Ref) (f_65@@35 T@Field_22391_16141) ) (!  (=> (select (|PolymorphicMapType_16616_22391_16141#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@8) null (WandMaskField_16127 pm_f_34@@6))) o2_34@@35 f_65@@35) (= (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@8) o2_34@@35 f_65@@35) (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@35 f_65@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@35 f_65@@35))
))) (forall ((o2_34@@36 T@Ref) (f_65@@36 T@Field_22391_3697) ) (!  (=> (select (|PolymorphicMapType_16616_22391_3697#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@8) null (WandMaskField_16127 pm_f_34@@6))) o2_34@@36 f_65@@36) (= (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@8) o2_34@@36 f_65@@36) (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@36 f_65@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@36 f_65@@36))
))) (forall ((o2_34@@37 T@Ref) (f_65@@37 T@Field_22391_22392) ) (!  (=> (select (|PolymorphicMapType_16616_22391_22392#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@8) null (WandMaskField_16127 pm_f_34@@6))) o2_34@@37 f_65@@37) (= (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@8) o2_34@@37 f_65@@37) (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@37 f_65@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@37 f_65@@37))
))) (forall ((o2_34@@38 T@Ref) (f_65@@38 T@Field_22404_22409) ) (!  (=> (select (|PolymorphicMapType_16616_22391_50365#PolymorphicMapType_16616| (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@8) null (WandMaskField_16127 pm_f_34@@6))) o2_34@@38 f_65@@38) (= (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@8) o2_34@@38 f_65@@38) (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@38 f_65@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@6) o2_34@@38 f_65@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_16127_51173 pm_f_34@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16067) (ExhaleHeap@@7 T@PolymorphicMapType_16067) (Mask@@8 T@PolymorphicMapType_16088) (o_47 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@9) o_47 $allocated) (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@7) o_47 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@7) o_47 $allocated))
)))
(assert (forall ((p T@Field_22391_22392) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22391_22391 p v_1 p w))
 :qid |stdinbpl.237:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22391_22391 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_16127_22392) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16127_16127 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.237:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16127_16127 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_3440) (s1 T@Seq_3440) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3440|)) (not (= s1 |Seq#Empty_3440|))) (<= (|Seq#Length_3440| s0) n@@6)) (< n@@6 (|Seq#Length_3440| (|Seq#Append_3440| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_3440| s0)) (|Seq#Length_3440| s0)) n@@6) (= (|Seq#Index_3440| (|Seq#Append_3440| s0 s1) n@@6) (|Seq#Index_3440| s1 (|Seq#Sub| n@@6 (|Seq#Length_3440| s0))))))
 :qid |stdinbpl.306:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3440| (|Seq#Append_3440| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_11293_3697 val)))
(assert  (not (IsWandField_11293_3697 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16067) (ExhaleHeap@@8 T@PolymorphicMapType_16067) (Mask@@9 T@PolymorphicMapType_16088) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_16088) (o_2@@9 T@Ref) (f_4@@9 T@Field_22404_22409) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_11296_58462 f_4@@9))) (not (IsWandField_11296_58478 f_4@@9))) (<= (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_16088) (o_2@@10 T@Ref) (f_4@@10 T@Field_22391_16141) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_11296_16141 f_4@@10))) (not (IsWandField_11296_16141 f_4@@10))) (<= (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_16088) (o_2@@11 T@Ref) (f_4@@11 T@Field_22391_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_11296_53 f_4@@11))) (not (IsWandField_11296_53 f_4@@11))) (<= (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_16088) (o_2@@12 T@Ref) (f_4@@12 T@Field_22391_22392) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_11296_11297 f_4@@12))) (not (IsWandField_22391_51530 f_4@@12))) (<= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_16088) (o_2@@13 T@Ref) (f_4@@13 T@Field_22391_3697) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_11296_3697 f_4@@13))) (not (IsWandField_11296_3697 f_4@@13))) (<= (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_16088) (o_2@@14 T@Ref) (f_4@@14 T@Field_16127_22409) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_11293_57631 f_4@@14))) (not (IsWandField_11293_57647 f_4@@14))) (<= (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_16088) (o_2@@15 T@Ref) (f_4@@15 T@Field_16140_16141) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_11293_16141 f_4@@15))) (not (IsWandField_11293_16141 f_4@@15))) (<= (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_16088) (o_2@@16 T@Ref) (f_4@@16 T@Field_16127_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_11293_53 f_4@@16))) (not (IsWandField_11293_53 f_4@@16))) (<= (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_16088) (o_2@@17 T@Ref) (f_4@@17 T@Field_16127_22392) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_16127_47833 f_4@@17))) (not (IsWandField_16127_51173 f_4@@17))) (<= (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_16088) (o_2@@18 T@Ref) (f_4@@18 T@Field_22344_3697) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_11293_3697 f_4@@18))) (not (IsWandField_11293_3697 f_4@@18))) (<= (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_16088) (o_2@@19 T@Ref) (f_4@@19 T@Field_22404_22409) ) (! (= (HasDirectPerm_22391_47545 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22391_47545 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_16088) (o_2@@20 T@Ref) (f_4@@20 T@Field_22391_22392) ) (! (= (HasDirectPerm_22391_22392 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22391_22392 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_16088) (o_2@@21 T@Ref) (f_4@@21 T@Field_22391_3697) ) (! (= (HasDirectPerm_22391_3697 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22391_3697 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_16088) (o_2@@22 T@Ref) (f_4@@22 T@Field_22391_16141) ) (! (= (HasDirectPerm_22391_16141 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22391_16141 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_16088) (o_2@@23 T@Ref) (f_4@@23 T@Field_22391_53) ) (! (= (HasDirectPerm_22391_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22391_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_16088) (o_2@@24 T@Ref) (f_4@@24 T@Field_16127_22409) ) (! (= (HasDirectPerm_16127_46384 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16127_46384 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_16088) (o_2@@25 T@Ref) (f_4@@25 T@Field_16127_22392) ) (! (= (HasDirectPerm_16127_22392 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16127_22392 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_16088) (o_2@@26 T@Ref) (f_4@@26 T@Field_22344_3697) ) (! (= (HasDirectPerm_16127_3697 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16127_3697 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_16088) (o_2@@27 T@Ref) (f_4@@27 T@Field_16140_16141) ) (! (= (HasDirectPerm_16127_16141 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16127_16141 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_16088) (o_2@@28 T@Ref) (f_4@@28 T@Field_16127_53) ) (! (= (HasDirectPerm_16127_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16127_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.225:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3440| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.598:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3440| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16067) (ExhaleHeap@@9 T@PolymorphicMapType_16067) (Mask@@30 T@PolymorphicMapType_16088) (o_47@@0 T@Ref) (f_65@@39 T@Field_22404_22409) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_22391_47545 Mask@@30 o_47@@0 f_65@@39) (= (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@11) o_47@@0 f_65@@39) (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@9) o_47@@0 f_65@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| ExhaleHeap@@9) o_47@@0 f_65@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16067) (ExhaleHeap@@10 T@PolymorphicMapType_16067) (Mask@@31 T@PolymorphicMapType_16088) (o_47@@1 T@Ref) (f_65@@40 T@Field_22391_22392) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_22391_22392 Mask@@31 o_47@@1 f_65@@40) (= (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@12) o_47@@1 f_65@@40) (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| ExhaleHeap@@10) o_47@@1 f_65@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| ExhaleHeap@@10) o_47@@1 f_65@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16067) (ExhaleHeap@@11 T@PolymorphicMapType_16067) (Mask@@32 T@PolymorphicMapType_16088) (o_47@@2 T@Ref) (f_65@@41 T@Field_22391_3697) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_22391_3697 Mask@@32 o_47@@2 f_65@@41) (= (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@13) o_47@@2 f_65@@41) (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| ExhaleHeap@@11) o_47@@2 f_65@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| ExhaleHeap@@11) o_47@@2 f_65@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16067) (ExhaleHeap@@12 T@PolymorphicMapType_16067) (Mask@@33 T@PolymorphicMapType_16088) (o_47@@3 T@Ref) (f_65@@42 T@Field_22391_16141) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_22391_16141 Mask@@33 o_47@@3 f_65@@42) (= (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@14) o_47@@3 f_65@@42) (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| ExhaleHeap@@12) o_47@@3 f_65@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| ExhaleHeap@@12) o_47@@3 f_65@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16067) (ExhaleHeap@@13 T@PolymorphicMapType_16067) (Mask@@34 T@PolymorphicMapType_16088) (o_47@@4 T@Ref) (f_65@@43 T@Field_22391_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_22391_53 Mask@@34 o_47@@4 f_65@@43) (= (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@15) o_47@@4 f_65@@43) (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| ExhaleHeap@@13) o_47@@4 f_65@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| ExhaleHeap@@13) o_47@@4 f_65@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_16067) (ExhaleHeap@@14 T@PolymorphicMapType_16067) (Mask@@35 T@PolymorphicMapType_16088) (o_47@@5 T@Ref) (f_65@@44 T@Field_16127_22409) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_16127_46384 Mask@@35 o_47@@5 f_65@@44) (= (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@16) o_47@@5 f_65@@44) (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@14) o_47@@5 f_65@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| ExhaleHeap@@14) o_47@@5 f_65@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_16067) (ExhaleHeap@@15 T@PolymorphicMapType_16067) (Mask@@36 T@PolymorphicMapType_16088) (o_47@@6 T@Ref) (f_65@@45 T@Field_16127_22392) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_16127_22392 Mask@@36 o_47@@6 f_65@@45) (= (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@17) o_47@@6 f_65@@45) (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| ExhaleHeap@@15) o_47@@6 f_65@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| ExhaleHeap@@15) o_47@@6 f_65@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_16067) (ExhaleHeap@@16 T@PolymorphicMapType_16067) (Mask@@37 T@PolymorphicMapType_16088) (o_47@@7 T@Ref) (f_65@@46 T@Field_22344_3697) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_16127_3697 Mask@@37 o_47@@7 f_65@@46) (= (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@18) o_47@@7 f_65@@46) (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| ExhaleHeap@@16) o_47@@7 f_65@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| ExhaleHeap@@16) o_47@@7 f_65@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_16067) (ExhaleHeap@@17 T@PolymorphicMapType_16067) (Mask@@38 T@PolymorphicMapType_16088) (o_47@@8 T@Ref) (f_65@@47 T@Field_16140_16141) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_16127_16141 Mask@@38 o_47@@8 f_65@@47) (= (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@19) o_47@@8 f_65@@47) (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| ExhaleHeap@@17) o_47@@8 f_65@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| ExhaleHeap@@17) o_47@@8 f_65@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_16067) (ExhaleHeap@@18 T@PolymorphicMapType_16067) (Mask@@39 T@PolymorphicMapType_16088) (o_47@@9 T@Ref) (f_65@@48 T@Field_16127_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_16127_53 Mask@@39 o_47@@9 f_65@@48) (= (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@20) o_47@@9 f_65@@48) (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@18) o_47@@9 f_65@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| ExhaleHeap@@18) o_47@@9 f_65@@48))
)))
(assert (forall ((s0@@0 T@Seq_3440) (s1@@0 T@Seq_3440) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3440|)) (not (= s1@@0 |Seq#Empty_3440|))) (= (|Seq#Length_3440| (|Seq#Append_3440| s0@@0 s1@@0)) (+ (|Seq#Length_3440| s0@@0) (|Seq#Length_3440| s1@@0))))
 :qid |stdinbpl.275:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3440| (|Seq#Append_3440| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_22404_22409) ) (! (= (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_22391_16141) ) (! (= (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_22391_53) ) (! (= (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_22391_22392) ) (! (= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_22391_3697) ) (! (= (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_16127_22409) ) (! (= (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_16140_16141) ) (! (= (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_16127_53) ) (! (= (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_16127_22392) ) (! (= (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_22344_3697) ) (! (= (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@7 T@Seq_3440) (t@@0 T@Seq_3440) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_3440| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_3440| s@@7)) (|Seq#Length_3440| s@@7)) n@@7) (= (|Seq#Drop_3440| (|Seq#Append_3440| s@@7 t@@0) n@@7) (|Seq#Drop_3440| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_3440| s@@7))))))
 :qid |stdinbpl.432:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3440| (|Seq#Append_3440| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_16088) (SummandMask1 T@PolymorphicMapType_16088) (SummandMask2 T@PolymorphicMapType_16088) (o_2@@39 T@Ref) (f_4@@39 T@Field_22404_22409) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_16088) (SummandMask1@@0 T@PolymorphicMapType_16088) (SummandMask2@@0 T@PolymorphicMapType_16088) (o_2@@40 T@Ref) (f_4@@40 T@Field_22391_16141) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_16088) (SummandMask1@@1 T@PolymorphicMapType_16088) (SummandMask2@@1 T@PolymorphicMapType_16088) (o_2@@41 T@Ref) (f_4@@41 T@Field_22391_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_16088) (SummandMask1@@2 T@PolymorphicMapType_16088) (SummandMask2@@2 T@PolymorphicMapType_16088) (o_2@@42 T@Ref) (f_4@@42 T@Field_22391_22392) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_16088) (SummandMask1@@3 T@PolymorphicMapType_16088) (SummandMask2@@3 T@PolymorphicMapType_16088) (o_2@@43 T@Ref) (f_4@@43 T@Field_22391_3697) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_16088) (SummandMask1@@4 T@PolymorphicMapType_16088) (SummandMask2@@4 T@PolymorphicMapType_16088) (o_2@@44 T@Ref) (f_4@@44 T@Field_16127_22409) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_16088) (SummandMask1@@5 T@PolymorphicMapType_16088) (SummandMask2@@5 T@PolymorphicMapType_16088) (o_2@@45 T@Ref) (f_4@@45 T@Field_16140_16141) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_16088) (SummandMask1@@6 T@PolymorphicMapType_16088) (SummandMask2@@6 T@PolymorphicMapType_16088) (o_2@@46 T@Ref) (f_4@@46 T@Field_16127_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_16088) (SummandMask1@@7 T@PolymorphicMapType_16088) (SummandMask2@@7 T@PolymorphicMapType_16088) (o_2@@47 T@Ref) (f_4@@47 T@Field_16127_22392) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_16088) (SummandMask1@@8 T@PolymorphicMapType_16088) (SummandMask2@@8 T@PolymorphicMapType_16088) (o_2@@48 T@Ref) (f_4@@48 T@Field_22344_3697) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3440| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3440| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.597:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3440| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3440) (b T@Seq_3440) ) (!  (=> (|Seq#Equal_3440| a b) (= a b))
 :qid |stdinbpl.570:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3440| a b))
)))
(assert (forall ((a_2@@3 T@IArrayDomainType) ) (! (>= (len a_2@@3) 0)
 :qid |stdinbpl.641:15|
 :skolemid |60|
 :pattern ( (len a_2@@3))
)))
(assert (forall ((s@@8 T@Seq_3440) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3440| s@@8))) (|Seq#ContainsTrigger_3440| s@@8 (|Seq#Index_3440| s@@8 i@@6)))
 :qid |stdinbpl.463:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3440| s@@8 i@@6))
)))
(assert (forall ((s0@@1 T@Seq_3440) (s1@@1 T@Seq_3440) ) (!  (and (=> (= s0@@1 |Seq#Empty_3440|) (= (|Seq#Append_3440| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3440|) (= (|Seq#Append_3440| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.281:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3440| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_3440| (|Seq#Singleton_3440| t@@1) 0) t@@1)
 :qid |stdinbpl.285:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3440| t@@1))
)))
(assert (forall ((s@@9 T@Seq_3440) ) (! (<= 0 (|Seq#Length_3440| s@@9))
 :qid |stdinbpl.264:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3440| s@@9))
)))
(assert (forall ((a_2@@4 T@IArrayDomainType) (i@@7 Int) ) (! (= (getPredWandId_11296_11297 (p_2 a_2@@4 i@@7)) 0)
 :qid |stdinbpl.669:15|
 :skolemid |63|
 :pattern ( (p_2 a_2@@4 i@@7))
)))
(assert (forall ((a_2@@5 T@IArrayDomainType) (i@@8 Int) ) (! (= (loc a_2@@5 i@@8) (loc_limited a_2@@5 i@@8))
 :qid |stdinbpl.629:15|
 :skolemid |58|
 :pattern ( (loc a_2@@5 i@@8))
)))
(assert (forall ((s0@@2 T@Seq_3440) (s1@@2 T@Seq_3440) ) (!  (=> (|Seq#Equal_3440| s0@@2 s1@@2) (and (= (|Seq#Length_3440| s0@@2) (|Seq#Length_3440| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_3440| s0@@2))) (= (|Seq#Index_3440| s0@@2 j@@4) (|Seq#Index_3440| s1@@2 j@@4)))
 :qid |stdinbpl.560:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3440| s0@@2 j@@4))
 :pattern ( (|Seq#Index_3440| s1@@2 j@@4))
))))
 :qid |stdinbpl.557:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3440| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_3440| (|Seq#Singleton_3440| t@@2)) 1)
 :qid |stdinbpl.272:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3440| t@@2))
)))
(assert (forall ((a_2@@6 T@IArrayDomainType) (i@@9 Int) ) (! (= (PredicateMaskField_11296 (p_2 a_2@@6 i@@9)) (|p#sm| a_2@@6 i@@9))
 :qid |stdinbpl.661:15|
 :skolemid |61|
 :pattern ( (PredicateMaskField_11296 (p_2 a_2@@6 i@@9)))
)))
(assert (forall ((s@@10 T@Seq_3440) (t@@3 T@Seq_3440) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_3440| s@@10))) (= (|Seq#Take_3440| (|Seq#Append_3440| s@@10 t@@3) n@@8) (|Seq#Take_3440| s@@10 n@@8)))
 :qid |stdinbpl.414:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3440| (|Seq#Append_3440| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_3440) (i@@10 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3440| s@@11))) (= (|Seq#Length_3440| (|Seq#Update_3440| s@@11 i@@10 v@@1)) (|Seq#Length_3440| s@@11)))
 :qid |stdinbpl.313:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3440| (|Seq#Update_3440| s@@11 i@@10 v@@1)))
 :pattern ( (|Seq#Length_3440| s@@11) (|Seq#Update_3440| s@@11 i@@10 v@@1))
)))
(assert (forall ((a_2@@7 T@IArrayDomainType) (i@@11 Int) ) (!  (and (= (first_1 (loc a_2@@7 i@@11)) a_2@@7) (= (second_1 (loc a_2@@7 i@@11)) i@@11))
 :qid |stdinbpl.635:15|
 :skolemid |59|
 :pattern ( (loc a_2@@7 i@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_16067) (o_17 T@Ref) (f_19 T@Field_22404_22409) (v@@2 T@PolymorphicMapType_16616) ) (! (succHeap Heap@@21 (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@21) (store (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@21) o_17 f_19 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@21) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@21) (store (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@21) o_17 f_19 v@@2)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_16067) (o_17@@0 T@Ref) (f_19@@0 T@Field_22391_3697) (v@@3 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@22) (store (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@22) o_17@@0 f_19@@0 v@@3) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@22) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@22) (store (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@22) o_17@@0 f_19@@0 v@@3) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_16067) (o_17@@1 T@Ref) (f_19@@1 T@Field_22391_22392) (v@@4 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@23) (store (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@23) o_17@@1 f_19@@1 v@@4) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@23) (store (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@23) o_17@@1 f_19@@1 v@@4) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@23) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_16067) (o_17@@2 T@Ref) (f_19@@2 T@Field_22391_16141) (v@@5 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@24) (store (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@24) o_17@@2 f_19@@2 v@@5) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@24) (store (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@24) o_17@@2 f_19@@2 v@@5) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@24) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_16067) (o_17@@3 T@Ref) (f_19@@3 T@Field_22391_53) (v@@6 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@25) (store (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@25) o_17@@3 f_19@@3 v@@6) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@25) (store (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@25) o_17@@3 f_19@@3 v@@6) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@25) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_16067) (o_17@@4 T@Ref) (f_19@@4 T@Field_16127_22409) (v@@7 T@PolymorphicMapType_16616) ) (! (succHeap Heap@@26 (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@26) (store (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@26) o_17@@4 f_19@@4 v@@7) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@26) (store (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@26) o_17@@4 f_19@@4 v@@7) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@26) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_16067) (o_17@@5 T@Ref) (f_19@@5 T@Field_22344_3697) (v@@8 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@27) (store (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@27) o_17@@5 f_19@@5 v@@8) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@27) (store (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@27) o_17@@5 f_19@@5 v@@8) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@27) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_16067) (o_17@@6 T@Ref) (f_19@@6 T@Field_16127_22392) (v@@9 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@28) (store (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@28) o_17@@6 f_19@@6 v@@9) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@28) (store (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@28) o_17@@6 f_19@@6 v@@9) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@28) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_16067) (o_17@@7 T@Ref) (f_19@@7 T@Field_16140_16141) (v@@10 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@29) (store (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@29) o_17@@7 f_19@@7 v@@10) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16067 (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@29) (store (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@29) o_17@@7 f_19@@7 v@@10) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@29) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_16067) (o_17@@8 T@Ref) (f_19@@8 T@Field_16127_53) (v@@11 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_16067 (store (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@30) o_17@@8 f_19@@8 v@@11) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16067 (store (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@30) o_17@@8 f_19@@8 v@@11) (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_16127_3697#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_16127_22392#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_16127_46426#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_22391_53#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_22391_16141#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_22391_3697#PolymorphicMapType_16067| Heap@@30) (|PolymorphicMapType_16067_22391_47587#PolymorphicMapType_16067| Heap@@30)))
)))
(assert (forall ((s@@12 T@Seq_3440) (t@@4 T@Seq_3440) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_3440| s@@12))) (= (|Seq#Drop_3440| (|Seq#Append_3440| s@@12 t@@4) n@@9) (|Seq#Append_3440| (|Seq#Drop_3440| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.428:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3440| (|Seq#Append_3440| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_3440) (n@@10 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@12)) (< i@@12 (|Seq#Length_3440| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@10) n@@10) i@@12) (= (|Seq#Index_3440| (|Seq#Drop_3440| s@@13 n@@10) (|Seq#Sub| i@@12 n@@10)) (|Seq#Index_3440| s@@13 i@@12))))
 :qid |stdinbpl.364:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3440| s@@13 n@@10) (|Seq#Index_3440| s@@13 i@@12))
)))
(assert (forall ((s0@@3 T@Seq_3440) (s1@@3 T@Seq_3440) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3440|)) (not (= s1@@3 |Seq#Empty_3440|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_3440| s0@@3))) (= (|Seq#Index_3440| (|Seq#Append_3440| s0@@3 s1@@3) n@@11) (|Seq#Index_3440| s0@@3 n@@11)))
 :qid |stdinbpl.304:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3440| (|Seq#Append_3440| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_3440| s0@@3 n@@11) (|Seq#Append_3440| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3440) (s1@@4 T@Seq_3440) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3440|)) (not (= s1@@4 |Seq#Empty_3440|))) (<= 0 m)) (< m (|Seq#Length_3440| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_3440| s0@@4)) (|Seq#Length_3440| s0@@4)) m) (= (|Seq#Index_3440| (|Seq#Append_3440| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_3440| s0@@4))) (|Seq#Index_3440| s1@@4 m))))
 :qid |stdinbpl.309:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3440| s1@@4 m) (|Seq#Append_3440| s0@@4 s1@@4))
)))
(assert (forall ((o_17@@9 T@Ref) (f_25 T@Field_16140_16141) (Heap@@31 T@PolymorphicMapType_16067) ) (!  (=> (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@31) o_17@@9 $allocated) (select (|PolymorphicMapType_16067_11051_53#PolymorphicMapType_16067| Heap@@31) (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@31) o_17@@9 f_25) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16067_11054_11055#PolymorphicMapType_16067| Heap@@31) o_17@@9 f_25))
)))
(assert (forall ((s@@14 T@Seq_3440) (x@@1 Int) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_3440| s@@14))) (= (|Seq#Index_3440| s@@14 i@@13) x@@1)) (|Seq#Contains_3440| s@@14 x@@1))
 :qid |stdinbpl.461:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3440| s@@14 x@@1) (|Seq#Index_3440| s@@14 i@@13))
)))
(assert (forall ((s0@@5 T@Seq_3440) (s1@@5 T@Seq_3440) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3440| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3440| s0@@5 s1@@5))) (not (= (|Seq#Length_3440| s0@@5) (|Seq#Length_3440| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3440| s0@@5 s1@@5))) (= (|Seq#Length_3440| s0@@5) (|Seq#Length_3440| s1@@5))) (= (|Seq#SkolemDiff_3440| s0@@5 s1@@5) (|Seq#SkolemDiff_3440| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_3440| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_3440| s0@@5 s1@@5) (|Seq#Length_3440| s0@@5))) (not (= (|Seq#Index_3440| s0@@5 (|Seq#SkolemDiff_3440| s0@@5 s1@@5)) (|Seq#Index_3440| s1@@5 (|Seq#SkolemDiff_3440| s0@@5 s1@@5))))))
 :qid |stdinbpl.565:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3440| s0@@5 s1@@5))
)))
(assert (forall ((p@@2 T@Field_22391_22392) (v_1@@1 T@FrameType) (q T@Field_22391_22392) (w@@1 T@FrameType) (r T@Field_22391_22392) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22391_22391 p@@2 v_1@@1 q w@@1) (InsidePredicate_22391_22391 q w@@1 r u)) (InsidePredicate_22391_22391 p@@2 v_1@@1 r u))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22391_22391 p@@2 v_1@@1 q w@@1) (InsidePredicate_22391_22391 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_22391_22392) (v_1@@2 T@FrameType) (q@@0 T@Field_22391_22392) (w@@2 T@FrameType) (r@@0 T@Field_16127_22392) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_22391_22391 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22391_16127 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_22391_16127 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22391_22391 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22391_16127 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_22391_22392) (v_1@@3 T@FrameType) (q@@1 T@Field_16127_22392) (w@@3 T@FrameType) (r@@1 T@Field_22391_22392) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_22391_16127 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_16127_22391 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_22391_22391 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22391_16127 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_16127_22391 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_22391_22392) (v_1@@4 T@FrameType) (q@@2 T@Field_16127_22392) (w@@4 T@FrameType) (r@@2 T@Field_16127_22392) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_22391_16127 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_16127_16127 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_22391_16127 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22391_16127 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_16127_16127 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_16127_22392) (v_1@@5 T@FrameType) (q@@3 T@Field_22391_22392) (w@@5 T@FrameType) (r@@3 T@Field_22391_22392) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_16127_22391 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22391_22391 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_16127_22391 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16127_22391 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22391_22391 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_16127_22392) (v_1@@6 T@FrameType) (q@@4 T@Field_22391_22392) (w@@6 T@FrameType) (r@@4 T@Field_16127_22392) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_16127_22391 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22391_16127 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_16127_16127 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16127_22391 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22391_16127 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_16127_22392) (v_1@@7 T@FrameType) (q@@5 T@Field_16127_22392) (w@@7 T@FrameType) (r@@5 T@Field_22391_22392) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_16127_16127 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_16127_22391 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_16127_22391 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16127_16127 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_16127_22391 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_16127_22392) (v_1@@8 T@FrameType) (q@@6 T@Field_16127_22392) (w@@8 T@FrameType) (r@@6 T@Field_16127_22392) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_16127_16127 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_16127_16127 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_16127_16127 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16127_16127 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_16127_16127 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@15 T@Seq_3440) ) (!  (=> (= (|Seq#Length_3440| s@@15) 0) (= s@@15 |Seq#Empty_3440|))
 :qid |stdinbpl.268:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3440| s@@15))
)))
(assert (forall ((s@@16 T@Seq_3440) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_3440| s@@16 n@@12) |Seq#Empty_3440|))
 :qid |stdinbpl.444:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3440| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered8 (Int) Bool)
(declare-fun a_2@@8 () T@IArrayDomainType)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun n@@13 () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_16067)
(declare-fun invRecv7 (T@IArrayDomainType Int) Int)
(declare-fun qpRange7 (T@IArrayDomainType Int) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_16088)
(declare-fun getPredWandId_11293_3697 (T@Field_22344_3697) Int)
(declare-fun getPredWandId_11293_11297 (T@Field_16127_22392) Int)
(declare-fun getPredWandId_11293_53 (T@Field_16127_53) Int)
(declare-fun getPredWandId_11293_16141 (T@Field_16140_16141) Int)
(declare-fun getPredWandId_11293_66883 (T@Field_16127_22409) Int)
(declare-fun getPredWandId_11296_3697 (T@Field_22391_3697) Int)
(declare-fun getPredWandId_11296_53 (T@Field_22391_53) Int)
(declare-fun getPredWandId_11296_16141 (T@Field_22391_16141) Int)
(declare-fun getPredWandId_11296_67692 (T@Field_22404_22409) Int)
(declare-fun neverTriggered9 (Int) Bool)
(declare-fun Heap@@32 () T@PolymorphicMapType_16067)
(declare-fun QPMask@0 () T@PolymorphicMapType_16088)
(declare-fun invRecv9 (T@IArrayDomainType Int) Int)
(declare-fun qpRange9 (T@IArrayDomainType Int) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_16088)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun invRecv6 (T@IArrayDomainType Int) Int)
(declare-fun qpRange6 (T@IArrayDomainType Int) Bool)
(set-info :boogie-vc-id t2_2)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon12_Else_correct  (=> (= (ControlFlow 0 10) (- 0 9)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (|Seq#Contains_3440| (|Seq#Range| 0 5) i_9_1)) (|Seq#Contains_3440| (|Seq#Range| 0 5) i_9_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_9_1 i_9_2))))
 :qid |stdinbpl.1099:17|
 :skolemid |111|
 :pattern ( (neverTriggered8 i_9_1) (neverTriggered8 i_9_2))
)))))
(let ((anon12_Then_correct true))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_5_1)) (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_5_1 i_5_2))))
 :qid |stdinbpl.1057:17|
 :skolemid |105|
 :pattern ( (neverTriggered7 i_5_1) (neverTriggered7 i_5_2))
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_5_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_5_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_5_1@@0 i_5_2@@0))))
 :qid |stdinbpl.1057:17|
 :skolemid |105|
 :pattern ( (neverTriggered7 i_5_1@@0) (neverTriggered7 i_5_2@@0))
)) (=> (forall ((i_5_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_5_1@@1) (< NoPerm FullPerm)) (and (= (invRecv7 a_2@@8 i_5_1@@1) i_5_1@@1) (qpRange7 a_2@@8 i_5_1@@1)))
 :qid |stdinbpl.1063:22|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| PostHeap@0) null (p_2 a_2@@8 i_5_1@@1)))
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) null (p_2 a_2@@8 i_5_1@@1)))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 4 n@@13) i_5_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_5_1@@1))
)) (=> (and (forall ((a_2_1 T@IArrayDomainType) (i_6_1 Int) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) (invRecv7 a_2_1 i_6_1)) (< NoPerm FullPerm)) (qpRange7 a_2_1 i_6_1)) (and (= a_2@@8 a_2_1) (= (invRecv7 a_2_1 i_6_1) i_6_1)))
 :qid |stdinbpl.1067:22|
 :skolemid |107|
 :pattern ( (invRecv7 a_2_1 i_6_1))
)) (forall ((a_2_1@@0 T@IArrayDomainType) (i_6_1@@0 Int) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) (invRecv7 a_2_1@@0 i_6_1@@0)) (< NoPerm FullPerm)) (qpRange7 a_2_1@@0 i_6_1@@0)) (and (=> (< NoPerm FullPerm) (and (= a_2@@8 a_2_1@@0) (= (invRecv7 a_2_1@@0 i_6_1@@0) i_6_1@@0))) (= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@3) null (p_2 a_2_1@@0 i_6_1@@0)) (+ (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) null (p_2 a_2_1@@0 i_6_1@@0)) FullPerm))))
 :qid |stdinbpl.1073:22|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@3) null (p_2 a_2_1@@0 i_6_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_22344_3697) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_11293_3697 f_5))) (not (= (getPredWandId_11293_3697 f_5) 0))) (= (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| ZeroMask) o_9 f_5) (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| QPMask@3) o_9 f_5)))
 :qid |stdinbpl.1079:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| ZeroMask) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| QPMask@3) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_16127_22392) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_16127_47833 f_5@@0))) (not (= (getPredWandId_11293_11297 f_5@@0) 0))) (= (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| ZeroMask) o_9@@0 f_5@@0) (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| QPMask@3) o_9@@0 f_5@@0)))
 :qid |stdinbpl.1079:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| ZeroMask) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| QPMask@3) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_16127_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_11293_53 f_5@@1))) (not (= (getPredWandId_11293_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| ZeroMask) o_9@@1 f_5@@1) (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| QPMask@3) o_9@@1 f_5@@1)))
 :qid |stdinbpl.1079:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| ZeroMask) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| QPMask@3) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_16140_16141) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_11293_16141 f_5@@2))) (not (= (getPredWandId_11293_16141 f_5@@2) 0))) (= (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| ZeroMask) o_9@@2 f_5@@2) (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| QPMask@3) o_9@@2 f_5@@2)))
 :qid |stdinbpl.1079:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| ZeroMask) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| QPMask@3) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_16127_22409) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_11293_57631 f_5@@3))) (not (= (getPredWandId_11293_66883 f_5@@3) 0))) (= (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| ZeroMask) o_9@@3 f_5@@3) (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| QPMask@3) o_9@@3 f_5@@3)))
 :qid |stdinbpl.1079:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| ZeroMask) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| QPMask@3) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_22391_3697) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_11296_3697 f_5@@4))) (not (= (getPredWandId_11296_3697 f_5@@4) 0))) (= (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| ZeroMask) o_9@@4 f_5@@4) (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| QPMask@3) o_9@@4 f_5@@4)))
 :qid |stdinbpl.1079:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| ZeroMask) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| QPMask@3) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_22391_22392) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_11296_11297 f_5@@5))) (not (= (getPredWandId_11296_11297 f_5@@5) 0))) (= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) o_9@@5 f_5@@5) (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@3) o_9@@5 f_5@@5)))
 :qid |stdinbpl.1079:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@3) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_22391_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_11296_53 f_5@@6))) (not (= (getPredWandId_11296_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| ZeroMask) o_9@@6 f_5@@6) (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| QPMask@3) o_9@@6 f_5@@6)))
 :qid |stdinbpl.1079:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| ZeroMask) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| QPMask@3) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_22391_16141) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_11296_16141 f_5@@7))) (not (= (getPredWandId_11296_16141 f_5@@7) 0))) (= (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| ZeroMask) o_9@@7 f_5@@7) (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| QPMask@3) o_9@@7 f_5@@7)))
 :qid |stdinbpl.1079:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| ZeroMask) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| QPMask@3) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_22404_22409) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_11296_58462 f_5@@8))) (not (= (getPredWandId_11296_67692 f_5@@8) 0))) (= (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| ZeroMask) o_9@@8 f_5@@8) (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| QPMask@3) o_9@@8 f_5@@8)))
 :qid |stdinbpl.1079:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| ZeroMask) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| QPMask@3) o_9@@8 f_5@@8))
))) (forall ((a_2_1@@1 T@IArrayDomainType) (i_6_1@@1 Int) ) (!  (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) (invRecv7 a_2_1@@1 i_6_1@@1)) (< NoPerm FullPerm)) (qpRange7 a_2_1@@1 i_6_1@@1))) (= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@3) null (p_2 a_2_1@@1 i_6_1@@1)) (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) null (p_2 a_2_1@@1 i_6_1@@1))))
 :qid |stdinbpl.1083:22|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@3) null (p_2 a_2_1@@1 i_6_1@@1)))
))) (and (state PostHeap@0 QPMask@3) (state PostHeap@0 QPMask@3))) (and (=> (= (ControlFlow 0 11) 8) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)))))))))
(let ((anon11_Then_correct true))
(let ((anon10_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 13) 7) anon11_Then_correct) (=> (= (ControlFlow 0 13) 11) anon11_Else_correct)))))
(let ((anon10_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) (forall ((i_12_1 Int) (i_12_2 Int) ) (!  (=> (and (and (and (and (not (= i_12_1 i_12_2)) (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_12_1)) (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_12_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_12_1 i_12_2))))
 :qid |stdinbpl.1146:17|
 :skolemid |117|
 :pattern ( (neverTriggered9 i_12_1) (neverTriggered9 i_12_2))
))) (=> (forall ((i_12_1@@0 Int) (i_12_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@0 i_12_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_12_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_12_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_12_1@@0 i_12_2@@0))))
 :qid |stdinbpl.1146:17|
 :skolemid |117|
 :pattern ( (neverTriggered9 i_12_1@@0) (neverTriggered9 i_12_2@@0))
)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((i_12_1@@1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_12_1@@1) (>= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) null (p_2 a_2@@8 i_12_1@@1)) FullPerm))
 :qid |stdinbpl.1153:17|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@32) null (p_2 a_2@@8 i_12_1@@1)))
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) null (p_2 a_2@@8 i_12_1@@1)))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 4 n@@13) i_12_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_12_1@@1))
))) (=> (forall ((i_12_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_12_1@@2) (>= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) null (p_2 a_2@@8 i_12_1@@2)) FullPerm))
 :qid |stdinbpl.1153:17|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@32) null (p_2 a_2@@8 i_12_1@@2)))
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) null (p_2 a_2@@8 i_12_1@@2)))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 4 n@@13) i_12_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_12_1@@2))
)) (=> (and (and (forall ((i_12_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_12_1@@3) (< NoPerm FullPerm)) (and (= (invRecv9 a_2@@8 i_12_1@@3) i_12_1@@3) (qpRange9 a_2@@8 i_12_1@@3)))
 :qid |stdinbpl.1159:22|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@32) null (p_2 a_2@@8 i_12_1@@3)))
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) null (p_2 a_2@@8 i_12_1@@3)))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 4 n@@13) i_12_1@@3))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) i_12_1@@3))
)) (forall ((a_4_1_1 T@IArrayDomainType) (i_13_1_1 Int) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) (invRecv9 a_4_1_1 i_13_1_1)) (< NoPerm FullPerm)) (qpRange9 a_4_1_1 i_13_1_1)) (and (= a_2@@8 a_4_1_1) (= (invRecv9 a_4_1_1 i_13_1_1) i_13_1_1)))
 :qid |stdinbpl.1163:22|
 :skolemid |120|
 :pattern ( (invRecv9 a_4_1_1 i_13_1_1))
))) (and (forall ((a_4_1_1@@0 T@IArrayDomainType) (i_13_1_1@@0 Int) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) (invRecv9 a_4_1_1@@0 i_13_1_1@@0)) (< NoPerm FullPerm)) (qpRange9 a_4_1_1@@0 i_13_1_1@@0)) (and (and (= a_2@@8 a_4_1_1@@0) (= (invRecv9 a_4_1_1@@0 i_13_1_1@@0) i_13_1_1@@0)) (= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@1) null (p_2 a_4_1_1@@0 i_13_1_1@@0)) (- (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) null (p_2 a_4_1_1@@0 i_13_1_1@@0)) FullPerm))))
 :qid |stdinbpl.1169:22|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@1) null (p_2 a_4_1_1@@0 i_13_1_1@@0)))
)) (forall ((a_4_1_1@@1 T@IArrayDomainType) (i_13_1_1@@1 Int) ) (!  (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 4 n@@13) (invRecv9 a_4_1_1@@1 i_13_1_1@@1)) (< NoPerm FullPerm)) (qpRange9 a_4_1_1@@1 i_13_1_1@@1))) (= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@1) null (p_2 a_4_1_1@@1 i_13_1_1@@1)) (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) null (p_2 a_4_1_1@@1 i_13_1_1@@1))))
 :qid |stdinbpl.1173:22|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@1) null (p_2 a_4_1_1@@1 i_13_1_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@9 T@Field_22344_3697) ) (!  (=> (or (or (not (= o_9@@9 null)) (not (IsPredicateField_11293_3697 f_5@@9))) (not (= (getPredWandId_11293_3697 f_5@@9) 0))) (= (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| QPMask@0) o_9@@9 f_5@@9) (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| QPMask@1) o_9@@9 f_5@@9)))
 :qid |stdinbpl.1179:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| QPMask@0) o_9@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| QPMask@1) o_9@@9 f_5@@9))
)) (forall ((o_9@@10 T@Ref) (f_5@@10 T@Field_16127_22392) ) (!  (=> (or (or (not (= o_9@@10 null)) (not (IsPredicateField_16127_47833 f_5@@10))) (not (= (getPredWandId_11293_11297 f_5@@10) 0))) (= (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| QPMask@0) o_9@@10 f_5@@10) (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| QPMask@1) o_9@@10 f_5@@10)))
 :qid |stdinbpl.1179:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| QPMask@0) o_9@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| QPMask@1) o_9@@10 f_5@@10))
))) (forall ((o_9@@11 T@Ref) (f_5@@11 T@Field_16127_53) ) (!  (=> (or (or (not (= o_9@@11 null)) (not (IsPredicateField_11293_53 f_5@@11))) (not (= (getPredWandId_11293_53 f_5@@11) 0))) (= (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| QPMask@0) o_9@@11 f_5@@11) (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| QPMask@1) o_9@@11 f_5@@11)))
 :qid |stdinbpl.1179:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| QPMask@0) o_9@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| QPMask@1) o_9@@11 f_5@@11))
))) (forall ((o_9@@12 T@Ref) (f_5@@12 T@Field_16140_16141) ) (!  (=> (or (or (not (= o_9@@12 null)) (not (IsPredicateField_11293_16141 f_5@@12))) (not (= (getPredWandId_11293_16141 f_5@@12) 0))) (= (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| QPMask@0) o_9@@12 f_5@@12) (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| QPMask@1) o_9@@12 f_5@@12)))
 :qid |stdinbpl.1179:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| QPMask@0) o_9@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| QPMask@1) o_9@@12 f_5@@12))
))) (forall ((o_9@@13 T@Ref) (f_5@@13 T@Field_16127_22409) ) (!  (=> (or (or (not (= o_9@@13 null)) (not (IsPredicateField_11293_57631 f_5@@13))) (not (= (getPredWandId_11293_66883 f_5@@13) 0))) (= (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| QPMask@0) o_9@@13 f_5@@13) (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| QPMask@1) o_9@@13 f_5@@13)))
 :qid |stdinbpl.1179:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| QPMask@0) o_9@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| QPMask@1) o_9@@13 f_5@@13))
))) (forall ((o_9@@14 T@Ref) (f_5@@14 T@Field_22391_3697) ) (!  (=> (or (or (not (= o_9@@14 null)) (not (IsPredicateField_11296_3697 f_5@@14))) (not (= (getPredWandId_11296_3697 f_5@@14) 0))) (= (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| QPMask@0) o_9@@14 f_5@@14) (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| QPMask@1) o_9@@14 f_5@@14)))
 :qid |stdinbpl.1179:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| QPMask@0) o_9@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| QPMask@1) o_9@@14 f_5@@14))
))) (forall ((o_9@@15 T@Ref) (f_5@@15 T@Field_22391_22392) ) (!  (=> (or (or (not (= o_9@@15 null)) (not (IsPredicateField_11296_11297 f_5@@15))) (not (= (getPredWandId_11296_11297 f_5@@15) 0))) (= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) o_9@@15 f_5@@15) (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@1) o_9@@15 f_5@@15)))
 :qid |stdinbpl.1179:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) o_9@@15 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@1) o_9@@15 f_5@@15))
))) (forall ((o_9@@16 T@Ref) (f_5@@16 T@Field_22391_53) ) (!  (=> (or (or (not (= o_9@@16 null)) (not (IsPredicateField_11296_53 f_5@@16))) (not (= (getPredWandId_11296_53 f_5@@16) 0))) (= (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| QPMask@0) o_9@@16 f_5@@16) (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| QPMask@1) o_9@@16 f_5@@16)))
 :qid |stdinbpl.1179:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| QPMask@0) o_9@@16 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| QPMask@1) o_9@@16 f_5@@16))
))) (forall ((o_9@@17 T@Ref) (f_5@@17 T@Field_22391_16141) ) (!  (=> (or (or (not (= o_9@@17 null)) (not (IsPredicateField_11296_16141 f_5@@17))) (not (= (getPredWandId_11296_16141 f_5@@17) 0))) (= (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| QPMask@0) o_9@@17 f_5@@17) (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| QPMask@1) o_9@@17 f_5@@17)))
 :qid |stdinbpl.1179:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| QPMask@0) o_9@@17 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| QPMask@1) o_9@@17 f_5@@17))
))) (forall ((o_9@@18 T@Ref) (f_5@@18 T@Field_22404_22409) ) (!  (=> (or (or (not (= o_9@@18 null)) (not (IsPredicateField_11296_58462 f_5@@18))) (not (= (getPredWandId_11296_67692 f_5@@18) 0))) (= (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| QPMask@0) o_9@@18 f_5@@18) (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| QPMask@1) o_9@@18 f_5@@18)))
 :qid |stdinbpl.1179:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| QPMask@0) o_9@@18 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| QPMask@1) o_9@@18 f_5@@18))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((i_14_1 Int) (i_14_2 Int) ) (!  (=> (and (and (and (and (not (= i_14_1 i_14_2)) (|Seq#Contains_3440| (|Seq#Range| 0 5) i_14_1)) (|Seq#Contains_3440| (|Seq#Range| 0 5) i_14_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_14_1 i_14_2))))
 :qid |stdinbpl.1191:17|
 :skolemid |124|
 :pattern ( (neverTriggered10 i_14_1) (neverTriggered10 i_14_2))
))) (=> (forall ((i_14_1@@0 Int) (i_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@0 i_14_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 5) i_14_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 5) i_14_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_14_1@@0 i_14_2@@0))))
 :qid |stdinbpl.1191:17|
 :skolemid |124|
 :pattern ( (neverTriggered10 i_14_1@@0) (neverTriggered10 i_14_2@@0))
)) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((i_14_1@@1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 5) i_14_1@@1) (>= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@1) null (p_2 a_2@@8 i_14_1@@1)) FullPerm))
 :qid |stdinbpl.1198:17|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@32) null (p_2 a_2@@8 i_14_1@@1)))
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@1) null (p_2 a_2@@8 i_14_1@@1)))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 5) i_14_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 5) i_14_1@@1))
)))))))))))))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3440| (|Seq#Range| 0 n@@13) i_1)) (|Seq#Contains_3440| (|Seq#Range| 0 n@@13) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_1 i_1_1))))
 :qid |stdinbpl.1004:17|
 :skolemid |99|
 :pattern ( (neverTriggered6 i_1) (neverTriggered6 i_1_1))
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 n@@13) i_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 n@@13) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_1@@0 i_1_1@@0))))
 :qid |stdinbpl.1004:17|
 :skolemid |99|
 :pattern ( (neverTriggered6 i_1@@0) (neverTriggered6 i_1_1@@0))
)) (=> (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 n@@13) i_1@@1) (< NoPerm FullPerm)) (and (= (invRecv6 a_2@@8 i_1@@1) i_1@@1) (qpRange6 a_2@@8 i_1@@1)))
 :qid |stdinbpl.1010:22|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_16067_11296_11297#PolymorphicMapType_16067| Heap@@32) null (p_2 a_2@@8 i_1@@1)))
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) null (p_2 a_2@@8 i_1@@1)))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 n@@13) i_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 n@@13) i_1@@1))
)) (=> (and (forall ((a_1_1_1 T@IArrayDomainType) (i_2_1 Int) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 n@@13) (invRecv6 a_1_1_1 i_2_1)) (< NoPerm FullPerm)) (qpRange6 a_1_1_1 i_2_1)) (and (= a_2@@8 a_1_1_1) (= (invRecv6 a_1_1_1 i_2_1) i_2_1)))
 :qid |stdinbpl.1014:22|
 :skolemid |101|
 :pattern ( (invRecv6 a_1_1_1 i_2_1))
)) (forall ((a_1_1_1@@0 T@IArrayDomainType) (i_2_1@@0 Int) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 n@@13) (invRecv6 a_1_1_1@@0 i_2_1@@0)) (< NoPerm FullPerm)) (qpRange6 a_1_1_1@@0 i_2_1@@0)) (and (=> (< NoPerm FullPerm) (and (= a_2@@8 a_1_1_1@@0) (= (invRecv6 a_1_1_1@@0 i_2_1@@0) i_2_1@@0))) (= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) null (p_2 a_1_1_1@@0 i_2_1@@0)) (+ (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) null (p_2 a_1_1_1@@0 i_2_1@@0)) FullPerm))))
 :qid |stdinbpl.1020:22|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) null (p_2 a_1_1_1@@0 i_2_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@19 T@Ref) (f_5@@19 T@Field_22344_3697) ) (!  (=> (or (or (not (= o_9@@19 null)) (not (IsPredicateField_11293_3697 f_5@@19))) (not (= (getPredWandId_11293_3697 f_5@@19) 0))) (= (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| ZeroMask) o_9@@19 f_5@@19) (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| QPMask@0) o_9@@19 f_5@@19)))
 :qid |stdinbpl.1026:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| ZeroMask) o_9@@19 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_16088_11293_3697#PolymorphicMapType_16088| QPMask@0) o_9@@19 f_5@@19))
)) (forall ((o_9@@20 T@Ref) (f_5@@20 T@Field_16127_22392) ) (!  (=> (or (or (not (= o_9@@20 null)) (not (IsPredicateField_16127_47833 f_5@@20))) (not (= (getPredWandId_11293_11297 f_5@@20) 0))) (= (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| ZeroMask) o_9@@20 f_5@@20) (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| QPMask@0) o_9@@20 f_5@@20)))
 :qid |stdinbpl.1026:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| ZeroMask) o_9@@20 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_16088_11293_11297#PolymorphicMapType_16088| QPMask@0) o_9@@20 f_5@@20))
))) (forall ((o_9@@21 T@Ref) (f_5@@21 T@Field_16127_53) ) (!  (=> (or (or (not (= o_9@@21 null)) (not (IsPredicateField_11293_53 f_5@@21))) (not (= (getPredWandId_11293_53 f_5@@21) 0))) (= (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| ZeroMask) o_9@@21 f_5@@21) (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| QPMask@0) o_9@@21 f_5@@21)))
 :qid |stdinbpl.1026:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| ZeroMask) o_9@@21 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_16088_11293_53#PolymorphicMapType_16088| QPMask@0) o_9@@21 f_5@@21))
))) (forall ((o_9@@22 T@Ref) (f_5@@22 T@Field_16140_16141) ) (!  (=> (or (or (not (= o_9@@22 null)) (not (IsPredicateField_11293_16141 f_5@@22))) (not (= (getPredWandId_11293_16141 f_5@@22) 0))) (= (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| ZeroMask) o_9@@22 f_5@@22) (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| QPMask@0) o_9@@22 f_5@@22)))
 :qid |stdinbpl.1026:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| ZeroMask) o_9@@22 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_16088_11293_16141#PolymorphicMapType_16088| QPMask@0) o_9@@22 f_5@@22))
))) (forall ((o_9@@23 T@Ref) (f_5@@23 T@Field_16127_22409) ) (!  (=> (or (or (not (= o_9@@23 null)) (not (IsPredicateField_11293_57631 f_5@@23))) (not (= (getPredWandId_11293_66883 f_5@@23) 0))) (= (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| ZeroMask) o_9@@23 f_5@@23) (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| QPMask@0) o_9@@23 f_5@@23)))
 :qid |stdinbpl.1026:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| ZeroMask) o_9@@23 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_16088_11293_55759#PolymorphicMapType_16088| QPMask@0) o_9@@23 f_5@@23))
))) (forall ((o_9@@24 T@Ref) (f_5@@24 T@Field_22391_3697) ) (!  (=> (or (or (not (= o_9@@24 null)) (not (IsPredicateField_11296_3697 f_5@@24))) (not (= (getPredWandId_11296_3697 f_5@@24) 0))) (= (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| ZeroMask) o_9@@24 f_5@@24) (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| QPMask@0) o_9@@24 f_5@@24)))
 :qid |stdinbpl.1026:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| ZeroMask) o_9@@24 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_16088_11296_3697#PolymorphicMapType_16088| QPMask@0) o_9@@24 f_5@@24))
))) (forall ((o_9@@25 T@Ref) (f_5@@25 T@Field_22391_22392) ) (!  (=> (or (or (not (= o_9@@25 null)) (not (IsPredicateField_11296_11297 f_5@@25))) (not (= (getPredWandId_11296_11297 f_5@@25) 0))) (= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) o_9@@25 f_5@@25) (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) o_9@@25 f_5@@25)))
 :qid |stdinbpl.1026:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) o_9@@25 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) o_9@@25 f_5@@25))
))) (forall ((o_9@@26 T@Ref) (f_5@@26 T@Field_22391_53) ) (!  (=> (or (or (not (= o_9@@26 null)) (not (IsPredicateField_11296_53 f_5@@26))) (not (= (getPredWandId_11296_53 f_5@@26) 0))) (= (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| ZeroMask) o_9@@26 f_5@@26) (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| QPMask@0) o_9@@26 f_5@@26)))
 :qid |stdinbpl.1026:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| ZeroMask) o_9@@26 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_16088_11296_53#PolymorphicMapType_16088| QPMask@0) o_9@@26 f_5@@26))
))) (forall ((o_9@@27 T@Ref) (f_5@@27 T@Field_22391_16141) ) (!  (=> (or (or (not (= o_9@@27 null)) (not (IsPredicateField_11296_16141 f_5@@27))) (not (= (getPredWandId_11296_16141 f_5@@27) 0))) (= (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| ZeroMask) o_9@@27 f_5@@27) (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| QPMask@0) o_9@@27 f_5@@27)))
 :qid |stdinbpl.1026:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| ZeroMask) o_9@@27 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_16088_11296_16141#PolymorphicMapType_16088| QPMask@0) o_9@@27 f_5@@27))
))) (forall ((o_9@@28 T@Ref) (f_5@@28 T@Field_22404_22409) ) (!  (=> (or (or (not (= o_9@@28 null)) (not (IsPredicateField_11296_58462 f_5@@28))) (not (= (getPredWandId_11296_67692 f_5@@28) 0))) (= (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| ZeroMask) o_9@@28 f_5@@28) (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| QPMask@0) o_9@@28 f_5@@28)))
 :qid |stdinbpl.1026:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| ZeroMask) o_9@@28 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_16088_11296_56170#PolymorphicMapType_16088| QPMask@0) o_9@@28 f_5@@28))
))) (forall ((a_1_1_1@@1 T@IArrayDomainType) (i_2_1@@1 Int) ) (!  (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 n@@13) (invRecv6 a_1_1_1@@1 i_2_1@@1)) (< NoPerm FullPerm)) (qpRange6 a_1_1_1@@1 i_2_1@@1))) (= (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) null (p_2 a_1_1_1@@1 i_2_1@@1)) (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| ZeroMask) null (p_2 a_1_1_1@@1 i_2_1@@1))))
 :qid |stdinbpl.1030:22|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_16088_11296_11297#PolymorphicMapType_16088| QPMask@0) null (p_2 a_1_1_1@@1 i_2_1@@1)))
))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (=> (= (ControlFlow 0 14) 13) anon10_Then_correct) (=> (= (ControlFlow 0 14) 3) anon10_Else_correct)))))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (> n@@13 5) (state Heap@@32 ZeroMask))) (and (=> (= (ControlFlow 0 16) 1) anon9_Then_correct) (=> (= (ControlFlow 0 16) 14) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17) 16) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
