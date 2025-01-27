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
(declare-sort T@Field_15407_53 0)
(declare-sort T@Field_15420_15421 0)
(declare-sort T@Field_21496_3418 0)
(declare-sort T@Field_21543_21544 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_21556_21561 0)
(declare-sort T@Field_9859_9863 0)
(declare-sort T@Field_9859_21561 0)
(declare-sort T@Field_9862_3418 0)
(declare-sort T@Field_9862_53 0)
(declare-sort T@Field_9862_15421 0)
(declare-datatypes ((T@PolymorphicMapType_15368 0)) (((PolymorphicMapType_15368 (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| (Array T@Ref T@Field_21496_3418 Real)) (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| (Array T@Ref T@Field_21543_21544 Real)) (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| (Array T@Ref T@Field_9859_9863 Real)) (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| (Array T@Ref T@Field_15407_53 Real)) (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| (Array T@Ref T@Field_15420_15421 Real)) (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| (Array T@Ref T@Field_9859_21561 Real)) (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| (Array T@Ref T@Field_9862_3418 Real)) (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| (Array T@Ref T@Field_9862_53 Real)) (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| (Array T@Ref T@Field_9862_15421 Real)) (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| (Array T@Ref T@Field_21556_21561 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15896 0)) (((PolymorphicMapType_15896 (|PolymorphicMapType_15896_9859_3418#PolymorphicMapType_15896| (Array T@Ref T@Field_21496_3418 Bool)) (|PolymorphicMapType_15896_9859_53#PolymorphicMapType_15896| (Array T@Ref T@Field_15407_53 Bool)) (|PolymorphicMapType_15896_9859_15421#PolymorphicMapType_15896| (Array T@Ref T@Field_15420_15421 Bool)) (|PolymorphicMapType_15896_9859_21544#PolymorphicMapType_15896| (Array T@Ref T@Field_9859_9863 Bool)) (|PolymorphicMapType_15896_9859_49367#PolymorphicMapType_15896| (Array T@Ref T@Field_9859_21561 Bool)) (|PolymorphicMapType_15896_21543_3418#PolymorphicMapType_15896| (Array T@Ref T@Field_9862_3418 Bool)) (|PolymorphicMapType_15896_21543_53#PolymorphicMapType_15896| (Array T@Ref T@Field_9862_53 Bool)) (|PolymorphicMapType_15896_21543_15421#PolymorphicMapType_15896| (Array T@Ref T@Field_9862_15421 Bool)) (|PolymorphicMapType_15896_21543_21544#PolymorphicMapType_15896| (Array T@Ref T@Field_21543_21544 Bool)) (|PolymorphicMapType_15896_21543_50415#PolymorphicMapType_15896| (Array T@Ref T@Field_21556_21561 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15347 0)) (((PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| (Array T@Ref T@Field_15407_53 Bool)) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| (Array T@Ref T@Field_15420_15421 T@Ref)) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| (Array T@Ref T@Field_21496_3418 Int)) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| (Array T@Ref T@Field_21543_21544 T@FrameType)) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| (Array T@Ref T@Field_21556_21561 T@PolymorphicMapType_15896)) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| (Array T@Ref T@Field_9859_9863 T@FrameType)) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| (Array T@Ref T@Field_9859_21561 T@PolymorphicMapType_15896)) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| (Array T@Ref T@Field_9862_3418 Int)) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| (Array T@Ref T@Field_9862_53 Bool)) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| (Array T@Ref T@Field_9862_15421 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_15407_53)
(declare-fun f_7 () T@Field_21496_3418)
(declare-sort T@Seq_22461 0)
(declare-fun |Seq#Length_22461| (T@Seq_22461) Int)
(declare-fun |Seq#Drop_22461| (T@Seq_22461 Int) T@Seq_22461)
(declare-sort T@Seq_3296 0)
(declare-fun |Seq#Length_3296| (T@Seq_3296) Int)
(declare-fun |Seq#Drop_3296| (T@Seq_3296 Int) T@Seq_3296)
(declare-fun succHeap (T@PolymorphicMapType_15347 T@PolymorphicMapType_15347) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15347 T@PolymorphicMapType_15347) Bool)
(declare-fun state (T@PolymorphicMapType_15347 T@PolymorphicMapType_15368) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15368) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15896)
(declare-fun |Seq#Index_22461| (T@Seq_22461 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3296| (T@Seq_3296 Int) Int)
(declare-fun |Seq#Empty_22461| () T@Seq_22461)
(declare-fun |Seq#Empty_3296| () T@Seq_3296)
(declare-fun p_2 (T@Ref) T@Field_21543_21544)
(declare-fun IsPredicateField_9862_9863 (T@Field_21543_21544) Bool)
(declare-fun |p#trigger_9862| (T@PolymorphicMapType_15347 T@Field_21543_21544) Bool)
(declare-fun |p#everUsed_9862| (T@Field_21543_21544) Bool)
(declare-fun |Seq#Update_22461| (T@Seq_22461 Int T@Ref) T@Seq_22461)
(declare-fun |Seq#Update_3296| (T@Seq_3296 Int Int) T@Seq_3296)
(declare-fun |Seq#Take_22461| (T@Seq_22461 Int) T@Seq_22461)
(declare-fun |Seq#Take_3296| (T@Seq_3296 Int) T@Seq_3296)
(declare-fun |Seq#Contains_3296| (T@Seq_3296 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3296)
(declare-fun |Seq#Contains_9965| (T@Seq_22461 T@Ref) Bool)
(declare-fun |Seq#Skolem_9965| (T@Seq_22461 T@Ref) Int)
(declare-fun |Seq#Skolem_3296| (T@Seq_3296 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15347 T@PolymorphicMapType_15347 T@PolymorphicMapType_15368) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9862 (T@Field_21543_21544) T@Field_21556_21561)
(declare-fun HasDirectPerm_9862_9863 (T@PolymorphicMapType_15368 T@Ref T@Field_21543_21544) Bool)
(declare-fun IsPredicateField_9859_47895 (T@Field_9859_9863) Bool)
(declare-fun PredicateMaskField_9859 (T@Field_9859_9863) T@Field_9859_21561)
(declare-fun HasDirectPerm_9859_9863 (T@PolymorphicMapType_15368 T@Ref T@Field_9859_9863) Bool)
(declare-fun IsWandField_9862_51580 (T@Field_21543_21544) Bool)
(declare-fun WandMaskField_9862 (T@Field_21543_21544) T@Field_21556_21561)
(declare-fun IsWandField_9859_51223 (T@Field_9859_9863) Bool)
(declare-fun WandMaskField_9859 (T@Field_9859_9863) T@Field_9859_21561)
(declare-fun |Seq#Singleton_22461| (T@Ref) T@Seq_22461)
(declare-fun |Seq#Singleton_3296| (Int) T@Seq_3296)
(declare-fun |p#sm| (T@Ref) T@Field_21556_21561)
(declare-fun |Seq#Append_22461| (T@Seq_22461 T@Seq_22461) T@Seq_22461)
(declare-fun |Seq#Append_3296| (T@Seq_3296 T@Seq_3296) T@Seq_3296)
(declare-fun dummyHeap () T@PolymorphicMapType_15347)
(declare-fun ZeroMask () T@PolymorphicMapType_15368)
(declare-fun InsidePredicate_21543_21543 (T@Field_21543_21544 T@FrameType T@Field_21543_21544 T@FrameType) Bool)
(declare-fun InsidePredicate_15407_15407 (T@Field_9859_9863 T@FrameType T@Field_9859_9863 T@FrameType) Bool)
(declare-fun IsPredicateField_9859_3418 (T@Field_21496_3418) Bool)
(declare-fun IsWandField_9859_3418 (T@Field_21496_3418) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9862_58512 (T@Field_21556_21561) Bool)
(declare-fun IsWandField_9862_58528 (T@Field_21556_21561) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9862_15421 (T@Field_9862_15421) Bool)
(declare-fun IsWandField_9862_15421 (T@Field_9862_15421) Bool)
(declare-fun IsPredicateField_9862_53 (T@Field_9862_53) Bool)
(declare-fun IsWandField_9862_53 (T@Field_9862_53) Bool)
(declare-fun IsPredicateField_9862_3418 (T@Field_9862_3418) Bool)
(declare-fun IsWandField_9862_3418 (T@Field_9862_3418) Bool)
(declare-fun IsPredicateField_9859_57681 (T@Field_9859_21561) Bool)
(declare-fun IsWandField_9859_57697 (T@Field_9859_21561) Bool)
(declare-fun IsPredicateField_9859_15421 (T@Field_15420_15421) Bool)
(declare-fun IsWandField_9859_15421 (T@Field_15420_15421) Bool)
(declare-fun IsPredicateField_9859_53 (T@Field_15407_53) Bool)
(declare-fun IsWandField_9859_53 (T@Field_15407_53) Bool)
(declare-fun HasDirectPerm_9862_47650 (T@PolymorphicMapType_15368 T@Ref T@Field_21556_21561) Bool)
(declare-fun HasDirectPerm_9862_15421 (T@PolymorphicMapType_15368 T@Ref T@Field_9862_15421) Bool)
(declare-fun HasDirectPerm_9862_53 (T@PolymorphicMapType_15368 T@Ref T@Field_9862_53) Bool)
(declare-fun HasDirectPerm_9862_3418 (T@PolymorphicMapType_15368 T@Ref T@Field_9862_3418) Bool)
(declare-fun HasDirectPerm_9859_46509 (T@PolymorphicMapType_15368 T@Ref T@Field_9859_21561) Bool)
(declare-fun HasDirectPerm_9859_15421 (T@PolymorphicMapType_15368 T@Ref T@Field_15420_15421) Bool)
(declare-fun HasDirectPerm_9859_53 (T@PolymorphicMapType_15368 T@Ref T@Field_15407_53) Bool)
(declare-fun HasDirectPerm_9859_3418 (T@PolymorphicMapType_15368 T@Ref T@Field_21496_3418) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15368 T@PolymorphicMapType_15368 T@PolymorphicMapType_15368) Bool)
(declare-fun |Seq#Equal_22461| (T@Seq_22461 T@Seq_22461) Bool)
(declare-fun |Seq#Equal_3296| (T@Seq_3296 T@Seq_3296) Bool)
(declare-fun |Seq#ContainsTrigger_9965| (T@Seq_22461 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3296| (T@Seq_3296 Int) Bool)
(declare-fun getPredWandId_9862_9863 (T@Field_21543_21544) Int)
(declare-fun |Seq#SkolemDiff_22461| (T@Seq_22461 T@Seq_22461) Int)
(declare-fun |Seq#SkolemDiff_3296| (T@Seq_3296 T@Seq_3296) Int)
(declare-fun InsidePredicate_21543_15407 (T@Field_21543_21544 T@FrameType T@Field_9859_9863 T@FrameType) Bool)
(declare-fun InsidePredicate_15407_21543 (T@Field_9859_9863 T@FrameType T@Field_21543_21544 T@FrameType) Bool)
(assert (forall ((s T@Seq_22461) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_22461| s)) (= (|Seq#Length_22461| (|Seq#Drop_22461| s n)) (- (|Seq#Length_22461| s) n))) (=> (< (|Seq#Length_22461| s) n) (= (|Seq#Length_22461| (|Seq#Drop_22461| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_22461| (|Seq#Drop_22461| s n)) (|Seq#Length_22461| s))))
 :qid |stdinbpl.339:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_22461| (|Seq#Drop_22461| s n)))
 :pattern ( (|Seq#Length_22461| s) (|Seq#Drop_22461| s n))
)))
(assert (forall ((s@@0 T@Seq_3296) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3296| s@@0)) (= (|Seq#Length_3296| (|Seq#Drop_3296| s@@0 n@@0)) (- (|Seq#Length_3296| s@@0) n@@0))) (=> (< (|Seq#Length_3296| s@@0) n@@0) (= (|Seq#Length_3296| (|Seq#Drop_3296| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3296| (|Seq#Drop_3296| s@@0 n@@0)) (|Seq#Length_3296| s@@0))))
 :qid |stdinbpl.339:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3296| (|Seq#Drop_3296| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3296| s@@0) (|Seq#Drop_3296| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15347) (Heap1 T@PolymorphicMapType_15347) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15347) (Mask T@PolymorphicMapType_15368) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15347) (Heap1@@0 T@PolymorphicMapType_15347) (Heap2 T@PolymorphicMapType_15347) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_21556_21561) ) (!  (not (select (|PolymorphicMapType_15896_21543_50415#PolymorphicMapType_15896| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15896_21543_50415#PolymorphicMapType_15896| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_21543_21544) ) (!  (not (select (|PolymorphicMapType_15896_21543_21544#PolymorphicMapType_15896| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15896_21543_21544#PolymorphicMapType_15896| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9862_15421) ) (!  (not (select (|PolymorphicMapType_15896_21543_15421#PolymorphicMapType_15896| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15896_21543_15421#PolymorphicMapType_15896| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9862_53) ) (!  (not (select (|PolymorphicMapType_15896_21543_53#PolymorphicMapType_15896| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15896_21543_53#PolymorphicMapType_15896| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9862_3418) ) (!  (not (select (|PolymorphicMapType_15896_21543_3418#PolymorphicMapType_15896| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15896_21543_3418#PolymorphicMapType_15896| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9859_21561) ) (!  (not (select (|PolymorphicMapType_15896_9859_49367#PolymorphicMapType_15896| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15896_9859_49367#PolymorphicMapType_15896| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9859_9863) ) (!  (not (select (|PolymorphicMapType_15896_9859_21544#PolymorphicMapType_15896| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15896_9859_21544#PolymorphicMapType_15896| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_15420_15421) ) (!  (not (select (|PolymorphicMapType_15896_9859_15421#PolymorphicMapType_15896| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15896_9859_15421#PolymorphicMapType_15896| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_15407_53) ) (!  (not (select (|PolymorphicMapType_15896_9859_53#PolymorphicMapType_15896| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15896_9859_53#PolymorphicMapType_15896| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_21496_3418) ) (!  (not (select (|PolymorphicMapType_15896_9859_3418#PolymorphicMapType_15896| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15896_9859_3418#PolymorphicMapType_15896| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((s@@1 T@Seq_22461) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_22461| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_22461| (|Seq#Drop_22461| s@@1 n@@1) j) (|Seq#Index_22461| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.360:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_22461| (|Seq#Drop_22461| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3296) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3296| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3296| (|Seq#Drop_3296| s@@2 n@@2) j@@0) (|Seq#Index_3296| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.360:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3296| (|Seq#Drop_3296| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_22461| |Seq#Empty_22461|) 0))
(assert (= (|Seq#Length_3296| |Seq#Empty_3296|) 0))
(assert (forall ((r_1 T@Ref) ) (! (IsPredicateField_9862_9863 (p_2 r_1))
 :qid |stdinbpl.625:15|
 :skolemid |59|
 :pattern ( (p_2 r_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15347) (r_1@@0 T@Ref) ) (! (|p#everUsed_9862| (p_2 r_1@@0))
 :qid |stdinbpl.644:15|
 :skolemid |63|
 :pattern ( (|p#trigger_9862| Heap@@0 (p_2 r_1@@0)))
)))
(assert (forall ((s@@3 T@Seq_22461) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_22461| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_22461| (|Seq#Update_22461| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_22461| (|Seq#Update_22461| s@@3 i v) n@@3) (|Seq#Index_22461| s@@3 n@@3)))))
 :qid |stdinbpl.315:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_22461| (|Seq#Update_22461| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_22461| s@@3 n@@3) (|Seq#Update_22461| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3296) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3296| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3296| (|Seq#Update_3296| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3296| (|Seq#Update_3296| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3296| s@@4 n@@4)))))
 :qid |stdinbpl.315:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3296| (|Seq#Update_3296| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3296| s@@4 n@@4) (|Seq#Update_3296| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_22461) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_22461| s@@5)) (= (|Seq#Length_22461| (|Seq#Take_22461| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_22461| s@@5) n@@5) (= (|Seq#Length_22461| (|Seq#Take_22461| s@@5 n@@5)) (|Seq#Length_22461| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_22461| (|Seq#Take_22461| s@@5 n@@5)) 0)))
 :qid |stdinbpl.326:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_22461| (|Seq#Take_22461| s@@5 n@@5)))
 :pattern ( (|Seq#Take_22461| s@@5 n@@5) (|Seq#Length_22461| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3296) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3296| s@@6)) (= (|Seq#Length_3296| (|Seq#Take_3296| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3296| s@@6) n@@6) (= (|Seq#Length_3296| (|Seq#Take_3296| s@@6 n@@6)) (|Seq#Length_3296| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3296| (|Seq#Take_3296| s@@6 n@@6)) 0)))
 :qid |stdinbpl.326:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3296| (|Seq#Take_3296| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3296| s@@6 n@@6) (|Seq#Length_3296| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3296| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.600:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3296| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_22461) (x T@Ref) ) (!  (=> (|Seq#Contains_9965| s@@7 x) (and (and (<= 0 (|Seq#Skolem_9965| s@@7 x)) (< (|Seq#Skolem_9965| s@@7 x) (|Seq#Length_22461| s@@7))) (= (|Seq#Index_22461| s@@7 (|Seq#Skolem_9965| s@@7 x)) x)))
 :qid |stdinbpl.458:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_9965| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3296) (x@@0 Int) ) (!  (=> (|Seq#Contains_3296| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3296| s@@8 x@@0)) (< (|Seq#Skolem_3296| s@@8 x@@0) (|Seq#Length_3296| s@@8))) (= (|Seq#Index_3296| s@@8 (|Seq#Skolem_3296| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.458:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3296| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_22461) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_22461| s@@9 n@@7) s@@9))
 :qid |stdinbpl.442:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_22461| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3296) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3296| s@@10 n@@8) s@@10))
 :qid |stdinbpl.442:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3296| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.295:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.293:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15347) (ExhaleHeap T@PolymorphicMapType_15347) (Mask@@0 T@PolymorphicMapType_15368) (pm_f_4 T@Field_21543_21544) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9862_9863 Mask@@0 null pm_f_4) (IsPredicateField_9862_9863 pm_f_4)) (= (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@1) null (PredicateMaskField_9862 pm_f_4)) (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap) null (PredicateMaskField_9862 pm_f_4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_9862_9863 pm_f_4) (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap) null (PredicateMaskField_9862 pm_f_4)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15347) (ExhaleHeap@@0 T@PolymorphicMapType_15347) (Mask@@1 T@PolymorphicMapType_15368) (pm_f_4@@0 T@Field_9859_9863) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9859_9863 Mask@@1 null pm_f_4@@0) (IsPredicateField_9859_47895 pm_f_4@@0)) (= (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@2) null (PredicateMaskField_9859 pm_f_4@@0)) (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@0) null (PredicateMaskField_9859 pm_f_4@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_9859_47895 pm_f_4@@0) (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@0) null (PredicateMaskField_9859 pm_f_4@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15347) (ExhaleHeap@@1 T@PolymorphicMapType_15347) (Mask@@2 T@PolymorphicMapType_15368) (pm_f_4@@1 T@Field_21543_21544) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9862_9863 Mask@@2 null pm_f_4@@1) (IsWandField_9862_51580 pm_f_4@@1)) (= (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@3) null (WandMaskField_9862 pm_f_4@@1)) (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@1) null (WandMaskField_9862 pm_f_4@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_9862_51580 pm_f_4@@1) (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@1) null (WandMaskField_9862 pm_f_4@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15347) (ExhaleHeap@@2 T@PolymorphicMapType_15347) (Mask@@3 T@PolymorphicMapType_15368) (pm_f_4@@2 T@Field_9859_9863) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_9859_9863 Mask@@3 null pm_f_4@@2) (IsWandField_9859_51223 pm_f_4@@2)) (= (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@4) null (WandMaskField_9859 pm_f_4@@2)) (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@2) null (WandMaskField_9859 pm_f_4@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_9859_51223 pm_f_4@@2) (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@2) null (WandMaskField_9859 pm_f_4@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_9965| (|Seq#Singleton_22461| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.583:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_9965| (|Seq#Singleton_22461| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3296| (|Seq#Singleton_3296| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.583:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3296| (|Seq#Singleton_3296| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_22461) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_22461| s@@11))) (= (|Seq#Index_22461| (|Seq#Take_22461| s@@11 n@@9) j@@3) (|Seq#Index_22461| s@@11 j@@3)))
 :qid |stdinbpl.334:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_22461| (|Seq#Take_22461| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_22461| s@@11 j@@3) (|Seq#Take_22461| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3296) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3296| s@@12))) (= (|Seq#Index_3296| (|Seq#Take_3296| s@@12 n@@10) j@@4) (|Seq#Index_3296| s@@12 j@@4)))
 :qid |stdinbpl.334:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3296| (|Seq#Take_3296| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3296| s@@12 j@@4) (|Seq#Take_3296| s@@12 n@@10))
)))
(assert (forall ((r_1@@1 T@Ref) (r2 T@Ref) ) (!  (=> (= (p_2 r_1@@1) (p_2 r2)) (= r_1@@1 r2))
 :qid |stdinbpl.635:15|
 :skolemid |61|
 :pattern ( (p_2 r_1@@1) (p_2 r2))
)))
(assert (forall ((r_1@@2 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|p#sm| r_1@@2) (|p#sm| r2@@0)) (= r_1@@2 r2@@0))
 :qid |stdinbpl.639:15|
 :skolemid |62|
 :pattern ( (|p#sm| r_1@@2) (|p#sm| r2@@0))
)))
(assert (forall ((s@@13 T@Seq_22461) (t T@Seq_22461) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_22461| s@@13))) (< n@@11 (|Seq#Length_22461| (|Seq#Append_22461| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_22461| s@@13)) (|Seq#Length_22461| s@@13)) n@@11) (= (|Seq#Take_22461| (|Seq#Append_22461| s@@13 t) n@@11) (|Seq#Append_22461| s@@13 (|Seq#Take_22461| t (|Seq#Sub| n@@11 (|Seq#Length_22461| s@@13)))))))
 :qid |stdinbpl.419:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_22461| (|Seq#Append_22461| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3296) (t@@0 T@Seq_3296) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3296| s@@14))) (< n@@12 (|Seq#Length_3296| (|Seq#Append_3296| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3296| s@@14)) (|Seq#Length_3296| s@@14)) n@@12) (= (|Seq#Take_3296| (|Seq#Append_3296| s@@14 t@@0) n@@12) (|Seq#Append_3296| s@@14 (|Seq#Take_3296| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3296| s@@14)))))))
 :qid |stdinbpl.419:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3296| (|Seq#Append_3296| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15347) (ExhaleHeap@@3 T@PolymorphicMapType_15347) (Mask@@4 T@PolymorphicMapType_15368) (pm_f_4@@3 T@Field_21543_21544) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9862_9863 Mask@@4 null pm_f_4@@3) (IsPredicateField_9862_9863 pm_f_4@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_4 T@Ref) (f_20 T@Field_21496_3418) ) (!  (=> (select (|PolymorphicMapType_15896_9859_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@5) null (PredicateMaskField_9862 pm_f_4@@3))) o2_4 f_20) (= (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@5) o2_4 f_20) (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4 f_20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4 f_20))
)) (forall ((o2_4@@0 T@Ref) (f_20@@0 T@Field_15407_53) ) (!  (=> (select (|PolymorphicMapType_15896_9859_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@5) null (PredicateMaskField_9862 pm_f_4@@3))) o2_4@@0 f_20@@0) (= (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@5) o2_4@@0 f_20@@0) (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@0 f_20@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@0 f_20@@0))
))) (forall ((o2_4@@1 T@Ref) (f_20@@1 T@Field_15420_15421) ) (!  (=> (select (|PolymorphicMapType_15896_9859_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@5) null (PredicateMaskField_9862 pm_f_4@@3))) o2_4@@1 f_20@@1) (= (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@5) o2_4@@1 f_20@@1) (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@1 f_20@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@1 f_20@@1))
))) (forall ((o2_4@@2 T@Ref) (f_20@@2 T@Field_9859_9863) ) (!  (=> (select (|PolymorphicMapType_15896_9859_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@5) null (PredicateMaskField_9862 pm_f_4@@3))) o2_4@@2 f_20@@2) (= (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@5) o2_4@@2 f_20@@2) (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@2 f_20@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@2 f_20@@2))
))) (forall ((o2_4@@3 T@Ref) (f_20@@3 T@Field_9859_21561) ) (!  (=> (select (|PolymorphicMapType_15896_9859_49367#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@5) null (PredicateMaskField_9862 pm_f_4@@3))) o2_4@@3 f_20@@3) (= (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@5) o2_4@@3 f_20@@3) (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@3 f_20@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@3 f_20@@3))
))) (forall ((o2_4@@4 T@Ref) (f_20@@4 T@Field_9862_3418) ) (!  (=> (select (|PolymorphicMapType_15896_21543_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@5) null (PredicateMaskField_9862 pm_f_4@@3))) o2_4@@4 f_20@@4) (= (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@5) o2_4@@4 f_20@@4) (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@4 f_20@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@4 f_20@@4))
))) (forall ((o2_4@@5 T@Ref) (f_20@@5 T@Field_9862_53) ) (!  (=> (select (|PolymorphicMapType_15896_21543_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@5) null (PredicateMaskField_9862 pm_f_4@@3))) o2_4@@5 f_20@@5) (= (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@5) o2_4@@5 f_20@@5) (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@5 f_20@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@5 f_20@@5))
))) (forall ((o2_4@@6 T@Ref) (f_20@@6 T@Field_9862_15421) ) (!  (=> (select (|PolymorphicMapType_15896_21543_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@5) null (PredicateMaskField_9862 pm_f_4@@3))) o2_4@@6 f_20@@6) (= (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@5) o2_4@@6 f_20@@6) (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@6 f_20@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@6 f_20@@6))
))) (forall ((o2_4@@7 T@Ref) (f_20@@7 T@Field_21543_21544) ) (!  (=> (select (|PolymorphicMapType_15896_21543_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@5) null (PredicateMaskField_9862 pm_f_4@@3))) o2_4@@7 f_20@@7) (= (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@5) o2_4@@7 f_20@@7) (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@7 f_20@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@7 f_20@@7))
))) (forall ((o2_4@@8 T@Ref) (f_20@@8 T@Field_21556_21561) ) (!  (=> (select (|PolymorphicMapType_15896_21543_50415#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@5) null (PredicateMaskField_9862 pm_f_4@@3))) o2_4@@8 f_20@@8) (= (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@5) o2_4@@8 f_20@@8) (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@8 f_20@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@3) o2_4@@8 f_20@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_9862_9863 pm_f_4@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15347) (ExhaleHeap@@4 T@PolymorphicMapType_15347) (Mask@@5 T@PolymorphicMapType_15368) (pm_f_4@@4 T@Field_9859_9863) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_9859_9863 Mask@@5 null pm_f_4@@4) (IsPredicateField_9859_47895 pm_f_4@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@9 T@Ref) (f_20@@9 T@Field_21496_3418) ) (!  (=> (select (|PolymorphicMapType_15896_9859_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@6) null (PredicateMaskField_9859 pm_f_4@@4))) o2_4@@9 f_20@@9) (= (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@6) o2_4@@9 f_20@@9) (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@9 f_20@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@9 f_20@@9))
)) (forall ((o2_4@@10 T@Ref) (f_20@@10 T@Field_15407_53) ) (!  (=> (select (|PolymorphicMapType_15896_9859_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@6) null (PredicateMaskField_9859 pm_f_4@@4))) o2_4@@10 f_20@@10) (= (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@6) o2_4@@10 f_20@@10) (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@10 f_20@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@10 f_20@@10))
))) (forall ((o2_4@@11 T@Ref) (f_20@@11 T@Field_15420_15421) ) (!  (=> (select (|PolymorphicMapType_15896_9859_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@6) null (PredicateMaskField_9859 pm_f_4@@4))) o2_4@@11 f_20@@11) (= (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@6) o2_4@@11 f_20@@11) (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@11 f_20@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@11 f_20@@11))
))) (forall ((o2_4@@12 T@Ref) (f_20@@12 T@Field_9859_9863) ) (!  (=> (select (|PolymorphicMapType_15896_9859_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@6) null (PredicateMaskField_9859 pm_f_4@@4))) o2_4@@12 f_20@@12) (= (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@6) o2_4@@12 f_20@@12) (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@12 f_20@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@12 f_20@@12))
))) (forall ((o2_4@@13 T@Ref) (f_20@@13 T@Field_9859_21561) ) (!  (=> (select (|PolymorphicMapType_15896_9859_49367#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@6) null (PredicateMaskField_9859 pm_f_4@@4))) o2_4@@13 f_20@@13) (= (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@6) o2_4@@13 f_20@@13) (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@13 f_20@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@13 f_20@@13))
))) (forall ((o2_4@@14 T@Ref) (f_20@@14 T@Field_9862_3418) ) (!  (=> (select (|PolymorphicMapType_15896_21543_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@6) null (PredicateMaskField_9859 pm_f_4@@4))) o2_4@@14 f_20@@14) (= (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@6) o2_4@@14 f_20@@14) (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@14 f_20@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@14 f_20@@14))
))) (forall ((o2_4@@15 T@Ref) (f_20@@15 T@Field_9862_53) ) (!  (=> (select (|PolymorphicMapType_15896_21543_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@6) null (PredicateMaskField_9859 pm_f_4@@4))) o2_4@@15 f_20@@15) (= (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@6) o2_4@@15 f_20@@15) (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@15 f_20@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@15 f_20@@15))
))) (forall ((o2_4@@16 T@Ref) (f_20@@16 T@Field_9862_15421) ) (!  (=> (select (|PolymorphicMapType_15896_21543_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@6) null (PredicateMaskField_9859 pm_f_4@@4))) o2_4@@16 f_20@@16) (= (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@6) o2_4@@16 f_20@@16) (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@16 f_20@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@16 f_20@@16))
))) (forall ((o2_4@@17 T@Ref) (f_20@@17 T@Field_21543_21544) ) (!  (=> (select (|PolymorphicMapType_15896_21543_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@6) null (PredicateMaskField_9859 pm_f_4@@4))) o2_4@@17 f_20@@17) (= (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@6) o2_4@@17 f_20@@17) (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@17 f_20@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@17 f_20@@17))
))) (forall ((o2_4@@18 T@Ref) (f_20@@18 T@Field_21556_21561) ) (!  (=> (select (|PolymorphicMapType_15896_21543_50415#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@6) null (PredicateMaskField_9859 pm_f_4@@4))) o2_4@@18 f_20@@18) (= (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@6) o2_4@@18 f_20@@18) (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@18 f_20@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@4) o2_4@@18 f_20@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_9859_47895 pm_f_4@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15347) (ExhaleHeap@@5 T@PolymorphicMapType_15347) (Mask@@6 T@PolymorphicMapType_15368) (pm_f_4@@5 T@Field_21543_21544) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_9862_9863 Mask@@6 null pm_f_4@@5) (IsWandField_9862_51580 pm_f_4@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@19 T@Ref) (f_20@@19 T@Field_21496_3418) ) (!  (=> (select (|PolymorphicMapType_15896_9859_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@7) null (WandMaskField_9862 pm_f_4@@5))) o2_4@@19 f_20@@19) (= (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@7) o2_4@@19 f_20@@19) (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@19 f_20@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@19 f_20@@19))
)) (forall ((o2_4@@20 T@Ref) (f_20@@20 T@Field_15407_53) ) (!  (=> (select (|PolymorphicMapType_15896_9859_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@7) null (WandMaskField_9862 pm_f_4@@5))) o2_4@@20 f_20@@20) (= (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@7) o2_4@@20 f_20@@20) (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@20 f_20@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@20 f_20@@20))
))) (forall ((o2_4@@21 T@Ref) (f_20@@21 T@Field_15420_15421) ) (!  (=> (select (|PolymorphicMapType_15896_9859_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@7) null (WandMaskField_9862 pm_f_4@@5))) o2_4@@21 f_20@@21) (= (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@7) o2_4@@21 f_20@@21) (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@21 f_20@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@21 f_20@@21))
))) (forall ((o2_4@@22 T@Ref) (f_20@@22 T@Field_9859_9863) ) (!  (=> (select (|PolymorphicMapType_15896_9859_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@7) null (WandMaskField_9862 pm_f_4@@5))) o2_4@@22 f_20@@22) (= (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@7) o2_4@@22 f_20@@22) (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@22 f_20@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@22 f_20@@22))
))) (forall ((o2_4@@23 T@Ref) (f_20@@23 T@Field_9859_21561) ) (!  (=> (select (|PolymorphicMapType_15896_9859_49367#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@7) null (WandMaskField_9862 pm_f_4@@5))) o2_4@@23 f_20@@23) (= (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@7) o2_4@@23 f_20@@23) (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@23 f_20@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@23 f_20@@23))
))) (forall ((o2_4@@24 T@Ref) (f_20@@24 T@Field_9862_3418) ) (!  (=> (select (|PolymorphicMapType_15896_21543_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@7) null (WandMaskField_9862 pm_f_4@@5))) o2_4@@24 f_20@@24) (= (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@7) o2_4@@24 f_20@@24) (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@24 f_20@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@24 f_20@@24))
))) (forall ((o2_4@@25 T@Ref) (f_20@@25 T@Field_9862_53) ) (!  (=> (select (|PolymorphicMapType_15896_21543_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@7) null (WandMaskField_9862 pm_f_4@@5))) o2_4@@25 f_20@@25) (= (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@7) o2_4@@25 f_20@@25) (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@25 f_20@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@25 f_20@@25))
))) (forall ((o2_4@@26 T@Ref) (f_20@@26 T@Field_9862_15421) ) (!  (=> (select (|PolymorphicMapType_15896_21543_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@7) null (WandMaskField_9862 pm_f_4@@5))) o2_4@@26 f_20@@26) (= (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@7) o2_4@@26 f_20@@26) (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@26 f_20@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@26 f_20@@26))
))) (forall ((o2_4@@27 T@Ref) (f_20@@27 T@Field_21543_21544) ) (!  (=> (select (|PolymorphicMapType_15896_21543_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@7) null (WandMaskField_9862 pm_f_4@@5))) o2_4@@27 f_20@@27) (= (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@7) o2_4@@27 f_20@@27) (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@27 f_20@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@27 f_20@@27))
))) (forall ((o2_4@@28 T@Ref) (f_20@@28 T@Field_21556_21561) ) (!  (=> (select (|PolymorphicMapType_15896_21543_50415#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@7) null (WandMaskField_9862 pm_f_4@@5))) o2_4@@28 f_20@@28) (= (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@7) o2_4@@28 f_20@@28) (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@28 f_20@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@5) o2_4@@28 f_20@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_9862_51580 pm_f_4@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15347) (ExhaleHeap@@6 T@PolymorphicMapType_15347) (Mask@@7 T@PolymorphicMapType_15368) (pm_f_4@@6 T@Field_9859_9863) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_9859_9863 Mask@@7 null pm_f_4@@6) (IsWandField_9859_51223 pm_f_4@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@29 T@Ref) (f_20@@29 T@Field_21496_3418) ) (!  (=> (select (|PolymorphicMapType_15896_9859_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@8) null (WandMaskField_9859 pm_f_4@@6))) o2_4@@29 f_20@@29) (= (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@8) o2_4@@29 f_20@@29) (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@29 f_20@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@29 f_20@@29))
)) (forall ((o2_4@@30 T@Ref) (f_20@@30 T@Field_15407_53) ) (!  (=> (select (|PolymorphicMapType_15896_9859_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@8) null (WandMaskField_9859 pm_f_4@@6))) o2_4@@30 f_20@@30) (= (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@8) o2_4@@30 f_20@@30) (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@30 f_20@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@30 f_20@@30))
))) (forall ((o2_4@@31 T@Ref) (f_20@@31 T@Field_15420_15421) ) (!  (=> (select (|PolymorphicMapType_15896_9859_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@8) null (WandMaskField_9859 pm_f_4@@6))) o2_4@@31 f_20@@31) (= (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@8) o2_4@@31 f_20@@31) (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@31 f_20@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@31 f_20@@31))
))) (forall ((o2_4@@32 T@Ref) (f_20@@32 T@Field_9859_9863) ) (!  (=> (select (|PolymorphicMapType_15896_9859_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@8) null (WandMaskField_9859 pm_f_4@@6))) o2_4@@32 f_20@@32) (= (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@8) o2_4@@32 f_20@@32) (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@32 f_20@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@32 f_20@@32))
))) (forall ((o2_4@@33 T@Ref) (f_20@@33 T@Field_9859_21561) ) (!  (=> (select (|PolymorphicMapType_15896_9859_49367#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@8) null (WandMaskField_9859 pm_f_4@@6))) o2_4@@33 f_20@@33) (= (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@8) o2_4@@33 f_20@@33) (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@33 f_20@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@33 f_20@@33))
))) (forall ((o2_4@@34 T@Ref) (f_20@@34 T@Field_9862_3418) ) (!  (=> (select (|PolymorphicMapType_15896_21543_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@8) null (WandMaskField_9859 pm_f_4@@6))) o2_4@@34 f_20@@34) (= (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@8) o2_4@@34 f_20@@34) (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@34 f_20@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@34 f_20@@34))
))) (forall ((o2_4@@35 T@Ref) (f_20@@35 T@Field_9862_53) ) (!  (=> (select (|PolymorphicMapType_15896_21543_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@8) null (WandMaskField_9859 pm_f_4@@6))) o2_4@@35 f_20@@35) (= (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@8) o2_4@@35 f_20@@35) (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@35 f_20@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@35 f_20@@35))
))) (forall ((o2_4@@36 T@Ref) (f_20@@36 T@Field_9862_15421) ) (!  (=> (select (|PolymorphicMapType_15896_21543_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@8) null (WandMaskField_9859 pm_f_4@@6))) o2_4@@36 f_20@@36) (= (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@8) o2_4@@36 f_20@@36) (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@36 f_20@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@36 f_20@@36))
))) (forall ((o2_4@@37 T@Ref) (f_20@@37 T@Field_21543_21544) ) (!  (=> (select (|PolymorphicMapType_15896_21543_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@8) null (WandMaskField_9859 pm_f_4@@6))) o2_4@@37 f_20@@37) (= (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@8) o2_4@@37 f_20@@37) (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@37 f_20@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@37 f_20@@37))
))) (forall ((o2_4@@38 T@Ref) (f_20@@38 T@Field_21556_21561) ) (!  (=> (select (|PolymorphicMapType_15896_21543_50415#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@8) null (WandMaskField_9859 pm_f_4@@6))) o2_4@@38 f_20@@38) (= (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@8) o2_4@@38 f_20@@38) (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@38 f_20@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@6) o2_4@@38 f_20@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_9859_51223 pm_f_4@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15347) (ExhaleHeap@@7 T@PolymorphicMapType_15347) (Mask@@8 T@PolymorphicMapType_15368) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@9) o_13 $allocated) (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@7) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@7) o_13 $allocated))
)))
(assert (forall ((p T@Field_21543_21544) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_21543_21543 p v_1 p w))
 :qid |stdinbpl.237:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_21543_21543 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9859_9863) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_15407_15407 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.237:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15407_15407 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_22461) (s1 T@Seq_22461) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_22461|)) (not (= s1 |Seq#Empty_22461|))) (<= (|Seq#Length_22461| s0) n@@13)) (< n@@13 (|Seq#Length_22461| (|Seq#Append_22461| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_22461| s0)) (|Seq#Length_22461| s0)) n@@13) (= (|Seq#Index_22461| (|Seq#Append_22461| s0 s1) n@@13) (|Seq#Index_22461| s1 (|Seq#Sub| n@@13 (|Seq#Length_22461| s0))))))
 :qid |stdinbpl.306:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_22461| (|Seq#Append_22461| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3296) (s1@@0 T@Seq_3296) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3296|)) (not (= s1@@0 |Seq#Empty_3296|))) (<= (|Seq#Length_3296| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3296| (|Seq#Append_3296| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3296| s0@@0)) (|Seq#Length_3296| s0@@0)) n@@14) (= (|Seq#Index_3296| (|Seq#Append_3296| s0@@0 s1@@0) n@@14) (|Seq#Index_3296| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3296| s0@@0))))))
 :qid |stdinbpl.306:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3296| (|Seq#Append_3296| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_9859_3418 f_7)))
(assert  (not (IsWandField_9859_3418 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15347) (ExhaleHeap@@8 T@PolymorphicMapType_15347) (Mask@@9 T@PolymorphicMapType_15368) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_15368) (o_2@@9 T@Ref) (f_4@@9 T@Field_21556_21561) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9862_58512 f_4@@9))) (not (IsWandField_9862_58528 f_4@@9))) (<= (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15368) (o_2@@10 T@Ref) (f_4@@10 T@Field_9862_15421) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9862_15421 f_4@@10))) (not (IsWandField_9862_15421 f_4@@10))) (<= (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15368) (o_2@@11 T@Ref) (f_4@@11 T@Field_9862_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9862_53 f_4@@11))) (not (IsWandField_9862_53 f_4@@11))) (<= (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15368) (o_2@@12 T@Ref) (f_4@@12 T@Field_21543_21544) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9862_9863 f_4@@12))) (not (IsWandField_9862_51580 f_4@@12))) (<= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15368) (o_2@@13 T@Ref) (f_4@@13 T@Field_9862_3418) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9862_3418 f_4@@13))) (not (IsWandField_9862_3418 f_4@@13))) (<= (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15368) (o_2@@14 T@Ref) (f_4@@14 T@Field_9859_21561) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9859_57681 f_4@@14))) (not (IsWandField_9859_57697 f_4@@14))) (<= (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15368) (o_2@@15 T@Ref) (f_4@@15 T@Field_15420_15421) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9859_15421 f_4@@15))) (not (IsWandField_9859_15421 f_4@@15))) (<= (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15368) (o_2@@16 T@Ref) (f_4@@16 T@Field_15407_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9859_53 f_4@@16))) (not (IsWandField_9859_53 f_4@@16))) (<= (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15368) (o_2@@17 T@Ref) (f_4@@17 T@Field_9859_9863) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9859_47895 f_4@@17))) (not (IsWandField_9859_51223 f_4@@17))) (<= (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15368) (o_2@@18 T@Ref) (f_4@@18 T@Field_21496_3418) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9859_3418 f_4@@18))) (not (IsWandField_9859_3418 f_4@@18))) (<= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15368) (o_2@@19 T@Ref) (f_4@@19 T@Field_21556_21561) ) (! (= (HasDirectPerm_9862_47650 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9862_47650 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15368) (o_2@@20 T@Ref) (f_4@@20 T@Field_9862_15421) ) (! (= (HasDirectPerm_9862_15421 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9862_15421 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15368) (o_2@@21 T@Ref) (f_4@@21 T@Field_9862_53) ) (! (= (HasDirectPerm_9862_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9862_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_15368) (o_2@@22 T@Ref) (f_4@@22 T@Field_21543_21544) ) (! (= (HasDirectPerm_9862_9863 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9862_9863 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15368) (o_2@@23 T@Ref) (f_4@@23 T@Field_9862_3418) ) (! (= (HasDirectPerm_9862_3418 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9862_3418 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15368) (o_2@@24 T@Ref) (f_4@@24 T@Field_9859_21561) ) (! (= (HasDirectPerm_9859_46509 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9859_46509 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_15368) (o_2@@25 T@Ref) (f_4@@25 T@Field_15420_15421) ) (! (= (HasDirectPerm_9859_15421 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9859_15421 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_15368) (o_2@@26 T@Ref) (f_4@@26 T@Field_15407_53) ) (! (= (HasDirectPerm_9859_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9859_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_15368) (o_2@@27 T@Ref) (f_4@@27 T@Field_9859_9863) ) (! (= (HasDirectPerm_9859_9863 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9859_9863 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_15368) (o_2@@28 T@Ref) (f_4@@28 T@Field_21496_3418) ) (! (= (HasDirectPerm_9859_3418 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9859_3418 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.225:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3296| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.598:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3296| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15347) (ExhaleHeap@@9 T@PolymorphicMapType_15347) (Mask@@30 T@PolymorphicMapType_15368) (o_13@@0 T@Ref) (f_20@@39 T@Field_21556_21561) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_9862_47650 Mask@@30 o_13@@0 f_20@@39) (= (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@11) o_13@@0 f_20@@39) (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@9) o_13@@0 f_20@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| ExhaleHeap@@9) o_13@@0 f_20@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15347) (ExhaleHeap@@10 T@PolymorphicMapType_15347) (Mask@@31 T@PolymorphicMapType_15368) (o_13@@1 T@Ref) (f_20@@40 T@Field_9862_15421) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_9862_15421 Mask@@31 o_13@@1 f_20@@40) (= (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@12) o_13@@1 f_20@@40) (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| ExhaleHeap@@10) o_13@@1 f_20@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| ExhaleHeap@@10) o_13@@1 f_20@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15347) (ExhaleHeap@@11 T@PolymorphicMapType_15347) (Mask@@32 T@PolymorphicMapType_15368) (o_13@@2 T@Ref) (f_20@@41 T@Field_9862_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_9862_53 Mask@@32 o_13@@2 f_20@@41) (= (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@13) o_13@@2 f_20@@41) (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| ExhaleHeap@@11) o_13@@2 f_20@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| ExhaleHeap@@11) o_13@@2 f_20@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15347) (ExhaleHeap@@12 T@PolymorphicMapType_15347) (Mask@@33 T@PolymorphicMapType_15368) (o_13@@3 T@Ref) (f_20@@42 T@Field_21543_21544) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_9862_9863 Mask@@33 o_13@@3 f_20@@42) (= (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@14) o_13@@3 f_20@@42) (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| ExhaleHeap@@12) o_13@@3 f_20@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| ExhaleHeap@@12) o_13@@3 f_20@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15347) (ExhaleHeap@@13 T@PolymorphicMapType_15347) (Mask@@34 T@PolymorphicMapType_15368) (o_13@@4 T@Ref) (f_20@@43 T@Field_9862_3418) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_9862_3418 Mask@@34 o_13@@4 f_20@@43) (= (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@15) o_13@@4 f_20@@43) (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| ExhaleHeap@@13) o_13@@4 f_20@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| ExhaleHeap@@13) o_13@@4 f_20@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15347) (ExhaleHeap@@14 T@PolymorphicMapType_15347) (Mask@@35 T@PolymorphicMapType_15368) (o_13@@5 T@Ref) (f_20@@44 T@Field_9859_21561) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_9859_46509 Mask@@35 o_13@@5 f_20@@44) (= (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@16) o_13@@5 f_20@@44) (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@14) o_13@@5 f_20@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| ExhaleHeap@@14) o_13@@5 f_20@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15347) (ExhaleHeap@@15 T@PolymorphicMapType_15347) (Mask@@36 T@PolymorphicMapType_15368) (o_13@@6 T@Ref) (f_20@@45 T@Field_15420_15421) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_9859_15421 Mask@@36 o_13@@6 f_20@@45) (= (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@17) o_13@@6 f_20@@45) (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| ExhaleHeap@@15) o_13@@6 f_20@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| ExhaleHeap@@15) o_13@@6 f_20@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15347) (ExhaleHeap@@16 T@PolymorphicMapType_15347) (Mask@@37 T@PolymorphicMapType_15368) (o_13@@7 T@Ref) (f_20@@46 T@Field_15407_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_9859_53 Mask@@37 o_13@@7 f_20@@46) (= (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@18) o_13@@7 f_20@@46) (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@16) o_13@@7 f_20@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| ExhaleHeap@@16) o_13@@7 f_20@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15347) (ExhaleHeap@@17 T@PolymorphicMapType_15347) (Mask@@38 T@PolymorphicMapType_15368) (o_13@@8 T@Ref) (f_20@@47 T@Field_9859_9863) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_9859_9863 Mask@@38 o_13@@8 f_20@@47) (= (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@19) o_13@@8 f_20@@47) (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| ExhaleHeap@@17) o_13@@8 f_20@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| ExhaleHeap@@17) o_13@@8 f_20@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15347) (ExhaleHeap@@18 T@PolymorphicMapType_15347) (Mask@@39 T@PolymorphicMapType_15368) (o_13@@9 T@Ref) (f_20@@48 T@Field_21496_3418) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_9859_3418 Mask@@39 o_13@@9 f_20@@48) (= (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@20) o_13@@9 f_20@@48) (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| ExhaleHeap@@18) o_13@@9 f_20@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| ExhaleHeap@@18) o_13@@9 f_20@@48))
)))
(assert (forall ((s0@@1 T@Seq_22461) (s1@@1 T@Seq_22461) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_22461|)) (not (= s1@@1 |Seq#Empty_22461|))) (= (|Seq#Length_22461| (|Seq#Append_22461| s0@@1 s1@@1)) (+ (|Seq#Length_22461| s0@@1) (|Seq#Length_22461| s1@@1))))
 :qid |stdinbpl.275:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_22461| (|Seq#Append_22461| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3296) (s1@@2 T@Seq_3296) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3296|)) (not (= s1@@2 |Seq#Empty_3296|))) (= (|Seq#Length_3296| (|Seq#Append_3296| s0@@2 s1@@2)) (+ (|Seq#Length_3296| s0@@2) (|Seq#Length_3296| s1@@2))))
 :qid |stdinbpl.275:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3296| (|Seq#Append_3296| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_21556_21561) ) (! (= (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_9862_15421) ) (! (= (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_9862_53) ) (! (= (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_21543_21544) ) (! (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_9862_3418) ) (! (= (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_9859_21561) ) (! (= (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_15420_15421) ) (! (= (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_15407_53) ) (! (= (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_9859_9863) ) (! (= (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_21496_3418) ) (! (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_22461) (t@@1 T@Seq_22461) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_22461| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_22461| s@@15)) (|Seq#Length_22461| s@@15)) n@@15) (= (|Seq#Drop_22461| (|Seq#Append_22461| s@@15 t@@1) n@@15) (|Seq#Drop_22461| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_22461| s@@15))))))
 :qid |stdinbpl.432:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_22461| (|Seq#Append_22461| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3296) (t@@2 T@Seq_3296) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3296| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3296| s@@16)) (|Seq#Length_3296| s@@16)) n@@16) (= (|Seq#Drop_3296| (|Seq#Append_3296| s@@16 t@@2) n@@16) (|Seq#Drop_3296| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3296| s@@16))))))
 :qid |stdinbpl.432:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3296| (|Seq#Append_3296| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15368) (SummandMask1 T@PolymorphicMapType_15368) (SummandMask2 T@PolymorphicMapType_15368) (o_2@@39 T@Ref) (f_4@@39 T@Field_21556_21561) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15368) (SummandMask1@@0 T@PolymorphicMapType_15368) (SummandMask2@@0 T@PolymorphicMapType_15368) (o_2@@40 T@Ref) (f_4@@40 T@Field_9862_15421) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15368) (SummandMask1@@1 T@PolymorphicMapType_15368) (SummandMask2@@1 T@PolymorphicMapType_15368) (o_2@@41 T@Ref) (f_4@@41 T@Field_9862_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15368) (SummandMask1@@2 T@PolymorphicMapType_15368) (SummandMask2@@2 T@PolymorphicMapType_15368) (o_2@@42 T@Ref) (f_4@@42 T@Field_21543_21544) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15368) (SummandMask1@@3 T@PolymorphicMapType_15368) (SummandMask2@@3 T@PolymorphicMapType_15368) (o_2@@43 T@Ref) (f_4@@43 T@Field_9862_3418) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15368) (SummandMask1@@4 T@PolymorphicMapType_15368) (SummandMask2@@4 T@PolymorphicMapType_15368) (o_2@@44 T@Ref) (f_4@@44 T@Field_9859_21561) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15368) (SummandMask1@@5 T@PolymorphicMapType_15368) (SummandMask2@@5 T@PolymorphicMapType_15368) (o_2@@45 T@Ref) (f_4@@45 T@Field_15420_15421) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15368) (SummandMask1@@6 T@PolymorphicMapType_15368) (SummandMask2@@6 T@PolymorphicMapType_15368) (o_2@@46 T@Ref) (f_4@@46 T@Field_15407_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_15368) (SummandMask1@@7 T@PolymorphicMapType_15368) (SummandMask2@@7 T@PolymorphicMapType_15368) (o_2@@47 T@Ref) (f_4@@47 T@Field_9859_9863) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_15368) (SummandMask1@@8 T@PolymorphicMapType_15368) (SummandMask2@@8 T@PolymorphicMapType_15368) (o_2@@48 T@Ref) (f_4@@48 T@Field_21496_3418) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3296| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3296| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.597:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3296| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_22461) (b T@Seq_22461) ) (!  (=> (|Seq#Equal_22461| a b) (= a b))
 :qid |stdinbpl.570:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_22461| a b))
)))
(assert (forall ((a@@0 T@Seq_3296) (b@@0 T@Seq_3296) ) (!  (=> (|Seq#Equal_3296| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.570:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3296| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_22461) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_22461| s@@17))) (|Seq#ContainsTrigger_9965| s@@17 (|Seq#Index_22461| s@@17 i@@3)))
 :qid |stdinbpl.463:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_22461| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3296) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3296| s@@18))) (|Seq#ContainsTrigger_3296| s@@18 (|Seq#Index_3296| s@@18 i@@4)))
 :qid |stdinbpl.463:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3296| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_22461) (s1@@3 T@Seq_22461) ) (!  (and (=> (= s0@@3 |Seq#Empty_22461|) (= (|Seq#Append_22461| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_22461|) (= (|Seq#Append_22461| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.281:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_22461| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3296) (s1@@4 T@Seq_3296) ) (!  (and (=> (= s0@@4 |Seq#Empty_3296|) (= (|Seq#Append_3296| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3296|) (= (|Seq#Append_3296| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.281:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3296| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_22461| (|Seq#Singleton_22461| t@@3) 0) t@@3)
 :qid |stdinbpl.285:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_22461| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3296| (|Seq#Singleton_3296| t@@4) 0) t@@4)
 :qid |stdinbpl.285:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3296| t@@4))
)))
(assert (forall ((s@@19 T@Seq_22461) ) (! (<= 0 (|Seq#Length_22461| s@@19))
 :qid |stdinbpl.264:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_22461| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3296) ) (! (<= 0 (|Seq#Length_3296| s@@20))
 :qid |stdinbpl.264:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3296| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_22461) (s1@@5 T@Seq_22461) ) (!  (=> (|Seq#Equal_22461| s0@@5 s1@@5) (and (= (|Seq#Length_22461| s0@@5) (|Seq#Length_22461| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_22461| s0@@5))) (= (|Seq#Index_22461| s0@@5 j@@6) (|Seq#Index_22461| s1@@5 j@@6)))
 :qid |stdinbpl.560:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_22461| s0@@5 j@@6))
 :pattern ( (|Seq#Index_22461| s1@@5 j@@6))
))))
 :qid |stdinbpl.557:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_22461| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3296) (s1@@6 T@Seq_3296) ) (!  (=> (|Seq#Equal_3296| s0@@6 s1@@6) (and (= (|Seq#Length_3296| s0@@6) (|Seq#Length_3296| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3296| s0@@6))) (= (|Seq#Index_3296| s0@@6 j@@7) (|Seq#Index_3296| s1@@6 j@@7)))
 :qid |stdinbpl.560:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3296| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3296| s1@@6 j@@7))
))))
 :qid |stdinbpl.557:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3296| s0@@6 s1@@6))
)))
(assert (forall ((r_1@@3 T@Ref) ) (! (= (getPredWandId_9862_9863 (p_2 r_1@@3)) 0)
 :qid |stdinbpl.629:15|
 :skolemid |60|
 :pattern ( (p_2 r_1@@3))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_22461| (|Seq#Singleton_22461| t@@5)) 1)
 :qid |stdinbpl.272:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_22461| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3296| (|Seq#Singleton_3296| t@@6)) 1)
 :qid |stdinbpl.272:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3296| t@@6))
)))
(assert (forall ((s@@21 T@Seq_22461) (t@@7 T@Seq_22461) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_22461| s@@21))) (= (|Seq#Take_22461| (|Seq#Append_22461| s@@21 t@@7) n@@17) (|Seq#Take_22461| s@@21 n@@17)))
 :qid |stdinbpl.414:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_22461| (|Seq#Append_22461| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3296) (t@@8 T@Seq_3296) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3296| s@@22))) (= (|Seq#Take_3296| (|Seq#Append_3296| s@@22 t@@8) n@@18) (|Seq#Take_3296| s@@22 n@@18)))
 :qid |stdinbpl.414:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3296| (|Seq#Append_3296| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_22461) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_22461| s@@23))) (= (|Seq#Length_22461| (|Seq#Update_22461| s@@23 i@@5 v@@2)) (|Seq#Length_22461| s@@23)))
 :qid |stdinbpl.313:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_22461| (|Seq#Update_22461| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_22461| s@@23) (|Seq#Update_22461| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3296) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3296| s@@24))) (= (|Seq#Length_3296| (|Seq#Update_3296| s@@24 i@@6 v@@3)) (|Seq#Length_3296| s@@24)))
 :qid |stdinbpl.313:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3296| (|Seq#Update_3296| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3296| s@@24) (|Seq#Update_3296| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15347) (o_12 T@Ref) (f_21 T@Field_21556_21561) (v@@4 T@PolymorphicMapType_15896) ) (! (succHeap Heap@@21 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@21) (store (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@21) o_12 f_21 v@@4) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@21) (store (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@21) o_12 f_21 v@@4) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@21) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15347) (o_12@@0 T@Ref) (f_21@@0 T@Field_21543_21544) (v@@5 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@22) (store (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@22) o_12@@0 f_21@@0 v@@5) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@22) (store (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@22) o_12@@0 f_21@@0 v@@5) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@22) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15347) (o_12@@1 T@Ref) (f_21@@1 T@Field_9862_3418) (v@@6 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@23) (store (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@23) o_12@@1 f_21@@1 v@@6) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@23) (store (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@23) o_12@@1 f_21@@1 v@@6) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@23) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15347) (o_12@@2 T@Ref) (f_21@@2 T@Field_9862_15421) (v@@7 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@24) (store (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@24) o_12@@2 f_21@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@24) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@24) (store (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@24) o_12@@2 f_21@@2 v@@7)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15347) (o_12@@3 T@Ref) (f_21@@3 T@Field_9862_53) (v@@8 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@25) (store (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@25) o_12@@3 f_21@@3 v@@8) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@25) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@25) (store (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@25) o_12@@3 f_21@@3 v@@8) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15347) (o_12@@4 T@Ref) (f_21@@4 T@Field_9859_21561) (v@@9 T@PolymorphicMapType_15896) ) (! (succHeap Heap@@26 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@26) (store (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@26) o_12@@4 f_21@@4 v@@9) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@26) (store (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@26) o_12@@4 f_21@@4 v@@9) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@26) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15347) (o_12@@5 T@Ref) (f_21@@5 T@Field_9859_9863) (v@@10 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@27) (store (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@27) o_12@@5 f_21@@5 v@@10) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@27) (store (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@27) o_12@@5 f_21@@5 v@@10) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@27) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15347) (o_12@@6 T@Ref) (f_21@@6 T@Field_21496_3418) (v@@11 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@28) (store (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@28) o_12@@6 f_21@@6 v@@11) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@28) (store (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@28) o_12@@6 f_21@@6 v@@11) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@28) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15347) (o_12@@7 T@Ref) (f_21@@7 T@Field_15420_15421) (v@@12 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@29) (store (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@29) o_12@@7 f_21@@7 v@@12) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@29) (store (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@29) o_12@@7 f_21@@7 v@@12) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@29) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15347) (o_12@@8 T@Ref) (f_21@@8 T@Field_15407_53) (v@@13 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_15347 (store (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@30) o_12@@8 f_21@@8 v@@13) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15347 (store (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@30) o_12@@8 f_21@@8 v@@13) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@30) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@30)))
)))
(assert (forall ((r_1@@4 T@Ref) ) (! (= (PredicateMaskField_9862 (p_2 r_1@@4)) (|p#sm| r_1@@4))
 :qid |stdinbpl.621:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_9862 (p_2 r_1@@4)))
)))
(assert (forall ((s@@25 T@Seq_22461) (t@@9 T@Seq_22461) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_22461| s@@25))) (= (|Seq#Drop_22461| (|Seq#Append_22461| s@@25 t@@9) n@@19) (|Seq#Append_22461| (|Seq#Drop_22461| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.428:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_22461| (|Seq#Append_22461| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3296) (t@@10 T@Seq_3296) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3296| s@@26))) (= (|Seq#Drop_3296| (|Seq#Append_3296| s@@26 t@@10) n@@20) (|Seq#Append_3296| (|Seq#Drop_3296| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.428:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3296| (|Seq#Append_3296| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_22461) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_22461| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_22461| (|Seq#Drop_22461| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_22461| s@@27 i@@7))))
 :qid |stdinbpl.364:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_22461| s@@27 n@@21) (|Seq#Index_22461| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3296) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3296| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3296| (|Seq#Drop_3296| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3296| s@@28 i@@8))))
 :qid |stdinbpl.364:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3296| s@@28 n@@22) (|Seq#Index_3296| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_22461) (s1@@7 T@Seq_22461) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_22461|)) (not (= s1@@7 |Seq#Empty_22461|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_22461| s0@@7))) (= (|Seq#Index_22461| (|Seq#Append_22461| s0@@7 s1@@7) n@@23) (|Seq#Index_22461| s0@@7 n@@23)))
 :qid |stdinbpl.304:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_22461| (|Seq#Append_22461| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_22461| s0@@7 n@@23) (|Seq#Append_22461| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3296) (s1@@8 T@Seq_3296) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3296|)) (not (= s1@@8 |Seq#Empty_3296|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3296| s0@@8))) (= (|Seq#Index_3296| (|Seq#Append_3296| s0@@8 s1@@8) n@@24) (|Seq#Index_3296| s0@@8 n@@24)))
 :qid |stdinbpl.304:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3296| (|Seq#Append_3296| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3296| s0@@8 n@@24) (|Seq#Append_3296| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_22461) (s1@@9 T@Seq_22461) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_22461|)) (not (= s1@@9 |Seq#Empty_22461|))) (<= 0 m)) (< m (|Seq#Length_22461| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_22461| s0@@9)) (|Seq#Length_22461| s0@@9)) m) (= (|Seq#Index_22461| (|Seq#Append_22461| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_22461| s0@@9))) (|Seq#Index_22461| s1@@9 m))))
 :qid |stdinbpl.309:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_22461| s1@@9 m) (|Seq#Append_22461| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3296) (s1@@10 T@Seq_3296) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3296|)) (not (= s1@@10 |Seq#Empty_3296|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3296| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3296| s0@@10)) (|Seq#Length_3296| s0@@10)) m@@0) (= (|Seq#Index_3296| (|Seq#Append_3296| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3296| s0@@10))) (|Seq#Index_3296| s1@@10 m@@0))))
 :qid |stdinbpl.309:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3296| s1@@10 m@@0) (|Seq#Append_3296| s0@@10 s1@@10))
)))
(assert (forall ((o_12@@9 T@Ref) (f_19 T@Field_15420_15421) (Heap@@31 T@PolymorphicMapType_15347) ) (!  (=> (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@31) o_12@@9 $allocated) (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@31) (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@31) o_12@@9 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@31) o_12@@9 f_19))
)))
(assert (forall ((s@@29 T@Seq_22461) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_22461| s@@29))) (= (|Seq#Index_22461| s@@29 i@@9) x@@3)) (|Seq#Contains_9965| s@@29 x@@3))
 :qid |stdinbpl.461:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_9965| s@@29 x@@3) (|Seq#Index_22461| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3296) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3296| s@@30))) (= (|Seq#Index_3296| s@@30 i@@10) x@@4)) (|Seq#Contains_3296| s@@30 x@@4))
 :qid |stdinbpl.461:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3296| s@@30 x@@4) (|Seq#Index_3296| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_22461) (s1@@11 T@Seq_22461) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_22461| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_22461| s0@@11 s1@@11))) (not (= (|Seq#Length_22461| s0@@11) (|Seq#Length_22461| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_22461| s0@@11 s1@@11))) (= (|Seq#Length_22461| s0@@11) (|Seq#Length_22461| s1@@11))) (= (|Seq#SkolemDiff_22461| s0@@11 s1@@11) (|Seq#SkolemDiff_22461| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_22461| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_22461| s0@@11 s1@@11) (|Seq#Length_22461| s0@@11))) (not (= (|Seq#Index_22461| s0@@11 (|Seq#SkolemDiff_22461| s0@@11 s1@@11)) (|Seq#Index_22461| s1@@11 (|Seq#SkolemDiff_22461| s0@@11 s1@@11))))))
 :qid |stdinbpl.565:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_22461| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3296) (s1@@12 T@Seq_3296) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3296| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3296| s0@@12 s1@@12))) (not (= (|Seq#Length_3296| s0@@12) (|Seq#Length_3296| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3296| s0@@12 s1@@12))) (= (|Seq#Length_3296| s0@@12) (|Seq#Length_3296| s1@@12))) (= (|Seq#SkolemDiff_3296| s0@@12 s1@@12) (|Seq#SkolemDiff_3296| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3296| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3296| s0@@12 s1@@12) (|Seq#Length_3296| s0@@12))) (not (= (|Seq#Index_3296| s0@@12 (|Seq#SkolemDiff_3296| s0@@12 s1@@12)) (|Seq#Index_3296| s1@@12 (|Seq#SkolemDiff_3296| s0@@12 s1@@12))))))
 :qid |stdinbpl.565:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3296| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_21543_21544) (v_1@@1 T@FrameType) (q T@Field_21543_21544) (w@@1 T@FrameType) (r T@Field_21543_21544) (u T@FrameType) ) (!  (=> (and (InsidePredicate_21543_21543 p@@2 v_1@@1 q w@@1) (InsidePredicate_21543_21543 q w@@1 r u)) (InsidePredicate_21543_21543 p@@2 v_1@@1 r u))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21543_21543 p@@2 v_1@@1 q w@@1) (InsidePredicate_21543_21543 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_21543_21544) (v_1@@2 T@FrameType) (q@@0 T@Field_21543_21544) (w@@2 T@FrameType) (r@@0 T@Field_9859_9863) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_21543_21543 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_21543_15407 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_21543_15407 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21543_21543 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_21543_15407 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_21543_21544) (v_1@@3 T@FrameType) (q@@1 T@Field_9859_9863) (w@@3 T@FrameType) (r@@1 T@Field_21543_21544) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_21543_15407 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_15407_21543 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_21543_21543 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21543_15407 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_15407_21543 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_21543_21544) (v_1@@4 T@FrameType) (q@@2 T@Field_9859_9863) (w@@4 T@FrameType) (r@@2 T@Field_9859_9863) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_21543_15407 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_15407_15407 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_21543_15407 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21543_15407 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_15407_15407 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_9859_9863) (v_1@@5 T@FrameType) (q@@3 T@Field_21543_21544) (w@@5 T@FrameType) (r@@3 T@Field_21543_21544) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_15407_21543 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_21543_21543 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_15407_21543 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15407_21543 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_21543_21543 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_9859_9863) (v_1@@6 T@FrameType) (q@@4 T@Field_21543_21544) (w@@6 T@FrameType) (r@@4 T@Field_9859_9863) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_15407_21543 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_21543_15407 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_15407_15407 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15407_21543 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_21543_15407 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_9859_9863) (v_1@@7 T@FrameType) (q@@5 T@Field_9859_9863) (w@@7 T@FrameType) (r@@5 T@Field_21543_21544) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_15407_15407 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_15407_21543 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_15407_21543 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15407_15407 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_15407_21543 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_9859_9863) (v_1@@8 T@FrameType) (q@@6 T@Field_9859_9863) (w@@8 T@FrameType) (r@@6 T@Field_9859_9863) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_15407_15407 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_15407_15407 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_15407_15407 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15407_15407 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_15407_15407 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_22461) ) (!  (=> (= (|Seq#Length_22461| s@@31) 0) (= s@@31 |Seq#Empty_22461|))
 :qid |stdinbpl.268:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_22461| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3296) ) (!  (=> (= (|Seq#Length_3296| s@@32) 0) (= s@@32 |Seq#Empty_3296|))
 :qid |stdinbpl.268:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3296| s@@32))
)))
(assert (forall ((s@@33 T@Seq_22461) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_22461| s@@33 n@@25) |Seq#Empty_22461|))
 :qid |stdinbpl.444:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_22461| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3296) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3296| s@@34 n@@26) |Seq#Empty_3296|))
 :qid |stdinbpl.444:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3296| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_15368)
(declare-fun QPMask@5 () T@PolymorphicMapType_15368)
(declare-fun r_1@@5 () T@Ref)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_15368)
(declare-fun PostHeap@0 () T@PolymorphicMapType_15347)
(declare-fun PostHeap@1 () T@PolymorphicMapType_15347)
(declare-fun FrameFragment_3418 (Int) T@FrameType)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_15368)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_15368)
(declare-fun PostHeap@2 () T@PolymorphicMapType_15347)
(declare-fun ys () T@Seq_22461)
(declare-fun neverTriggered16 (T@Ref) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_15368)
(declare-fun invRecv16 (T@Ref) T@Ref)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun getPredWandId_9859_3418 (T@Field_21496_3418) Int)
(declare-fun getPredWandId_9859_9863 (T@Field_9859_9863) Int)
(declare-fun getPredWandId_9859_53 (T@Field_15407_53) Int)
(declare-fun getPredWandId_9859_15421 (T@Field_15420_15421) Int)
(declare-fun getPredWandId_9859_73537 (T@Field_9859_21561) Int)
(declare-fun getPredWandId_9862_3418 (T@Field_9862_3418) Int)
(declare-fun getPredWandId_9862_53 (T@Field_9862_53) Int)
(declare-fun getPredWandId_9862_15421 (T@Field_9862_15421) Int)
(declare-fun getPredWandId_9862_74346 (T@Field_21556_21561) Int)
(declare-fun xs () T@Seq_22461)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) T@Ref)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_15368)
(declare-fun Mask@4 () T@PolymorphicMapType_15368)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_15368)
(declare-fun Heap@7 () T@PolymorphicMapType_15347)
(declare-fun neverTriggered17 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_15368)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) T@Ref)
(declare-fun neverTriggered18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref) T@Ref)
(declare-fun qpRange18 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_15368)
(declare-fun Heap@6 () T@PolymorphicMapType_15347)
(declare-fun Heap@5 () T@PolymorphicMapType_15347)
(declare-fun Mask@3 () T@PolymorphicMapType_15368)
(declare-fun Heap@2 () T@PolymorphicMapType_15347)
(declare-fun Heap@3 () T@PolymorphicMapType_15347)
(declare-fun Heap@4 () T@PolymorphicMapType_15347)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@2 () T@PolymorphicMapType_15368)
(declare-fun Mask@1 () T@PolymorphicMapType_15368)
(declare-fun Mask@0 () T@PolymorphicMapType_15368)
(declare-fun Heap@1 () T@PolymorphicMapType_15347)
(declare-fun Heap@@32 () T@PolymorphicMapType_15347)
(declare-fun Heap@0 () T@PolymorphicMapType_15347)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun QPMask@1 () T@PolymorphicMapType_15368)
(declare-fun neverTriggered14 (T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_15368)
(declare-fun invRecv14 (T@Ref) T@Ref)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) T@Ref)
(set-info :boogie-vc-id m4)
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
 (=> (= (ControlFlow 0 0) 53) (let ((anon13_correct true))
(let ((anon12_correct  (=> (= UnfoldingMask@2 (PolymorphicMapType_15368 (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@5) (store (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) null (p_2 r_1@@5) (- (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) null (p_2 r_1@@5)) FullPerm)) (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@5))) (=> (and (and (not (= r_1@@5 null)) (= UnfoldingMask@3 (PolymorphicMapType_15368 (store (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| UnfoldingMask@2) r_1@@5 f_7 (+ (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| UnfoldingMask@2) r_1@@5 f_7) FullPerm)) (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| UnfoldingMask@2) (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| UnfoldingMask@2) (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| UnfoldingMask@2) (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| UnfoldingMask@2) (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| UnfoldingMask@2) (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| UnfoldingMask@2) (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| UnfoldingMask@2) (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| UnfoldingMask@2) (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| UnfoldingMask@2)))) (and (state PostHeap@0 UnfoldingMask@3) (state PostHeap@0 UnfoldingMask@3))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (HasDirectPerm_9859_3418 UnfoldingMask@3 r_1@@5 f_7)) (=> (HasDirectPerm_9859_3418 UnfoldingMask@3 r_1@@5 f_7) (=> (and (and (= PostHeap@1 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| PostHeap@0) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| PostHeap@0) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| PostHeap@0) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| PostHeap@0) (store (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| PostHeap@0) null (|p#sm| r_1@@5) (PolymorphicMapType_15896 (store (|PolymorphicMapType_15896_9859_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| PostHeap@0) null (|p#sm| r_1@@5))) r_1@@5 f_7 true) (|PolymorphicMapType_15896_9859_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| PostHeap@0) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_9859_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| PostHeap@0) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_9859_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| PostHeap@0) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_9859_49367#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| PostHeap@0) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_21543_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| PostHeap@0) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_21543_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| PostHeap@0) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_21543_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| PostHeap@0) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_21543_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| PostHeap@0) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_21543_50415#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| PostHeap@0) null (|p#sm| r_1@@5))))) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| PostHeap@0) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| PostHeap@0) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| PostHeap@0) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| PostHeap@0) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| PostHeap@0))) (state PostHeap@1 QPMask@5)) (and (|p#trigger_9862| PostHeap@1 (p_2 r_1@@5)) (= (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| PostHeap@1) null (p_2 r_1@@5)) (FrameFragment_3418 (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| PostHeap@1) r_1@@5 f_7))))) (=> (and (and (and (= UnfoldingMask@4 (PolymorphicMapType_15368 (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@5) (store (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) null (p_2 r_1@@5) (- (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) null (p_2 r_1@@5)) FullPerm)) (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@5) (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@5))) (not (= r_1@@5 null))) (and (= UnfoldingMask@5 (PolymorphicMapType_15368 (store (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| UnfoldingMask@4) r_1@@5 f_7 (+ (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| UnfoldingMask@4) r_1@@5 f_7) FullPerm)) (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| UnfoldingMask@4) (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| UnfoldingMask@4) (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| UnfoldingMask@4) (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| UnfoldingMask@4) (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| UnfoldingMask@4) (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| UnfoldingMask@4) (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| UnfoldingMask@4) (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| UnfoldingMask@4) (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| UnfoldingMask@4))) (state PostHeap@1 UnfoldingMask@5))) (and (and (state PostHeap@1 UnfoldingMask@5) (= (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| PostHeap@1) r_1@@5 f_7) 4)) (and (= PostHeap@2 PostHeap@1) (= (ControlFlow 0 37) 35)))) anon13_correct))))))))
(let ((anon35_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 41) 37)) anon12_correct)))
(let ((anon35_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 39) (- 0 40)) (<= FullPerm (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) null (p_2 r_1@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) null (p_2 r_1@@5))) (=> (= (ControlFlow 0 39) 37) anon12_correct))))))
(let ((anon34_Then_correct  (=> (|Seq#Contains_9965| ys r_1@@5) (=> (and (|p#trigger_9862| PostHeap@0 (p_2 r_1@@5)) (= (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| PostHeap@0) null (p_2 r_1@@5)) (FrameFragment_3418 (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| PostHeap@0) r_1@@5 f_7)))) (and (=> (= (ControlFlow 0 42) 39) anon35_Then_correct) (=> (= (ControlFlow 0 42) 41) anon35_Else_correct))))))
(let ((anon34_Else_correct  (=> (not (|Seq#Contains_9965| ys r_1@@5)) (=> (and (= PostHeap@2 PostHeap@0) (= (ControlFlow 0 36) 35)) anon13_correct))))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 43) (- 0 44)) (forall ((x_8 T@Ref) (x_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_8 x_8_1)) (|Seq#Contains_9965| ys x_8)) (|Seq#Contains_9965| ys x_8_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_8 x_8_1)))
 :qid |stdinbpl.1502:17|
 :skolemid |156|
 :pattern ( (neverTriggered16 x_8) (neverTriggered16 x_8_1))
))) (=> (forall ((x_8@@0 T@Ref) (x_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_8@@0 x_8_1@@0)) (|Seq#Contains_9965| ys x_8@@0)) (|Seq#Contains_9965| ys x_8_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_8@@0 x_8_1@@0)))
 :qid |stdinbpl.1502:17|
 :skolemid |156|
 :pattern ( (neverTriggered16 x_8@@0) (neverTriggered16 x_8_1@@0))
)) (=> (forall ((x_8@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_9965| ys x_8@@1) (< NoPerm FullPerm)) (and (= (invRecv16 x_8@@1) x_8@@1) (qpRange16 x_8@@1)))
 :qid |stdinbpl.1508:22|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| PostHeap@0) null (p_2 x_8@@1)))
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@4) null (p_2 x_8@@1)))
 :pattern ( (|Seq#ContainsTrigger_9965| ys x_8@@1))
 :pattern ( (|Seq#Contains_9965| ys x_8@@1))
)) (=> (and (forall ((r_2_1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_9965| ys (invRecv16 r_2_1)) (< NoPerm FullPerm)) (qpRange16 r_2_1)) (= (invRecv16 r_2_1) r_2_1))
 :qid |stdinbpl.1512:22|
 :skolemid |158|
 :pattern ( (invRecv16 r_2_1))
)) (forall ((r_2_1@@0 T@Ref) ) (!  (=> (and (and (|Seq#Contains_9965| ys (invRecv16 r_2_1@@0)) (< NoPerm FullPerm)) (qpRange16 r_2_1@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv16 r_2_1@@0) r_2_1@@0)) (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) null (p_2 r_2_1@@0)) (+ (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@4) null (p_2 r_2_1@@0)) FullPerm))))
 :qid |stdinbpl.1518:22|
 :skolemid |159|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) null (p_2 r_2_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_21496_3418) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_9859_3418 f_5))) (not (= (getPredWandId_9859_3418 f_5) 0))) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@4) o_9 f_5) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@5) o_9 f_5)))
 :qid |stdinbpl.1524:29|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@4) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@5) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_9859_9863) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_9859_47895 f_5@@0))) (not (= (getPredWandId_9859_9863 f_5@@0) 0))) (= (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@4) o_9@@0 f_5@@0) (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@5) o_9@@0 f_5@@0)))
 :qid |stdinbpl.1524:29|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@4) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@5) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_15407_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_9859_53 f_5@@1))) (not (= (getPredWandId_9859_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@4) o_9@@1 f_5@@1) (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@5) o_9@@1 f_5@@1)))
 :qid |stdinbpl.1524:29|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@4) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@5) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_15420_15421) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_9859_15421 f_5@@2))) (not (= (getPredWandId_9859_15421 f_5@@2) 0))) (= (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@4) o_9@@2 f_5@@2) (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@5) o_9@@2 f_5@@2)))
 :qid |stdinbpl.1524:29|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@4) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@5) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_9859_21561) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_9859_57681 f_5@@3))) (not (= (getPredWandId_9859_73537 f_5@@3) 0))) (= (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@4) o_9@@3 f_5@@3) (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@5) o_9@@3 f_5@@3)))
 :qid |stdinbpl.1524:29|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@4) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@5) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_9862_3418) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_9862_3418 f_5@@4))) (not (= (getPredWandId_9862_3418 f_5@@4) 0))) (= (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@4) o_9@@4 f_5@@4) (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@5) o_9@@4 f_5@@4)))
 :qid |stdinbpl.1524:29|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@4) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@5) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_21543_21544) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_9862_9863 f_5@@5))) (not (= (getPredWandId_9862_9863 f_5@@5) 0))) (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@4) o_9@@5 f_5@@5) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) o_9@@5 f_5@@5)))
 :qid |stdinbpl.1524:29|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@4) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_9862_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_9862_53 f_5@@6))) (not (= (getPredWandId_9862_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@4) o_9@@6 f_5@@6) (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@5) o_9@@6 f_5@@6)))
 :qid |stdinbpl.1524:29|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@4) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@5) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_9862_15421) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_9862_15421 f_5@@7))) (not (= (getPredWandId_9862_15421 f_5@@7) 0))) (= (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@4) o_9@@7 f_5@@7) (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@5) o_9@@7 f_5@@7)))
 :qid |stdinbpl.1524:29|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@4) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@5) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_21556_21561) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_9862_58512 f_5@@8))) (not (= (getPredWandId_9862_74346 f_5@@8) 0))) (= (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@4) o_9@@8 f_5@@8) (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@5) o_9@@8 f_5@@8)))
 :qid |stdinbpl.1524:29|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@4) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@5) o_9@@8 f_5@@8))
))) (forall ((r_2_1@@1 T@Ref) ) (!  (=> (not (and (and (|Seq#Contains_9965| ys (invRecv16 r_2_1@@1)) (< NoPerm FullPerm)) (qpRange16 r_2_1@@1))) (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) null (p_2 r_2_1@@1)) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@4) null (p_2 r_2_1@@1))))
 :qid |stdinbpl.1528:22|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@5) null (p_2 r_2_1@@1)))
))) (and (state PostHeap@0 QPMask@5) (state PostHeap@0 QPMask@5))) (and (=> (= (ControlFlow 0 43) 42) anon34_Then_correct) (=> (= (ControlFlow 0 43) 36) anon34_Else_correct)))))))))
(let ((anon33_Then_correct true))
(let ((anon32_Else_correct  (and (=> (= (ControlFlow 0 45) (- 0 46)) (forall ((x_6 T@Ref) (x_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_6 x_6_1)) (|Seq#Contains_9965| xs x_6)) (|Seq#Contains_9965| xs x_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_6 x_6_1)))
 :qid |stdinbpl.1461:15|
 :skolemid |150|
))) (=> (forall ((x_6@@0 T@Ref) (x_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_6@@0 x_6_1@@0)) (|Seq#Contains_9965| xs x_6@@0)) (|Seq#Contains_9965| xs x_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_6@@0 x_6_1@@0)))
 :qid |stdinbpl.1461:15|
 :skolemid |150|
)) (=> (and (and (forall ((x_6@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_9965| xs x_6@@1) (< NoPerm FullPerm)) (and (qpRange15 x_6@@1) (= (invRecv15 x_6@@1) x_6@@1)))
 :qid |stdinbpl.1467:22|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| PostHeap@0) x_6@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@4) x_6@@1 f_7))
 :pattern ( (|Seq#ContainsTrigger_9965| xs x_6@@1))
 :pattern ( (|Seq#Contains_9965| xs x_6@@1))
)) (forall ((o_9@@9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_9965| xs (invRecv15 o_9@@9)) (< NoPerm FullPerm)) (qpRange15 o_9@@9)) (= (invRecv15 o_9@@9) o_9@@9))
 :qid |stdinbpl.1471:22|
 :skolemid |152|
 :pattern ( (invRecv15 o_9@@9))
))) (and (forall ((x_6@@2 T@Ref) ) (!  (=> (|Seq#Contains_9965| xs x_6@@2) (not (= x_6@@2 null)))
 :qid |stdinbpl.1477:22|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| PostHeap@0) x_6@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@4) x_6@@2 f_7))
 :pattern ( (|Seq#ContainsTrigger_9965| xs x_6@@2))
 :pattern ( (|Seq#Contains_9965| xs x_6@@2))
)) (forall ((o_9@@10 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_9965| xs (invRecv15 o_9@@10)) (< NoPerm FullPerm)) (qpRange15 o_9@@10)) (and (=> (< NoPerm FullPerm) (= (invRecv15 o_9@@10) o_9@@10)) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@4) o_9@@10 f_7) (+ (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ZeroMask) o_9@@10 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_9965| xs (invRecv15 o_9@@10)) (< NoPerm FullPerm)) (qpRange15 o_9@@10))) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@4) o_9@@10 f_7) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ZeroMask) o_9@@10 f_7))))
 :qid |stdinbpl.1483:22|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@4) o_9@@10 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@11 T@Ref) (f_5@@9 T@Field_15407_53) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| ZeroMask) o_9@@11 f_5@@9) (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@4) o_9@@11 f_5@@9)))
 :qid |stdinbpl.1487:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| ZeroMask) o_9@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@4) o_9@@11 f_5@@9))
)) (forall ((o_9@@12 T@Ref) (f_5@@10 T@Field_15420_15421) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| ZeroMask) o_9@@12 f_5@@10) (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@4) o_9@@12 f_5@@10)))
 :qid |stdinbpl.1487:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| ZeroMask) o_9@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@4) o_9@@12 f_5@@10))
))) (forall ((o_9@@13 T@Ref) (f_5@@11 T@Field_21496_3418) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ZeroMask) o_9@@13 f_5@@11) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@4) o_9@@13 f_5@@11)))
 :qid |stdinbpl.1487:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ZeroMask) o_9@@13 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@4) o_9@@13 f_5@@11))
))) (forall ((o_9@@14 T@Ref) (f_5@@12 T@Field_9859_9863) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| ZeroMask) o_9@@14 f_5@@12) (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@4) o_9@@14 f_5@@12)))
 :qid |stdinbpl.1487:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| ZeroMask) o_9@@14 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@4) o_9@@14 f_5@@12))
))) (forall ((o_9@@15 T@Ref) (f_5@@13 T@Field_9859_21561) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| ZeroMask) o_9@@15 f_5@@13) (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@4) o_9@@15 f_5@@13)))
 :qid |stdinbpl.1487:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| ZeroMask) o_9@@15 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@4) o_9@@15 f_5@@13))
))) (forall ((o_9@@16 T@Ref) (f_5@@14 T@Field_9862_53) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| ZeroMask) o_9@@16 f_5@@14) (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@4) o_9@@16 f_5@@14)))
 :qid |stdinbpl.1487:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| ZeroMask) o_9@@16 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@4) o_9@@16 f_5@@14))
))) (forall ((o_9@@17 T@Ref) (f_5@@15 T@Field_9862_15421) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| ZeroMask) o_9@@17 f_5@@15) (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@4) o_9@@17 f_5@@15)))
 :qid |stdinbpl.1487:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| ZeroMask) o_9@@17 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@4) o_9@@17 f_5@@15))
))) (forall ((o_9@@18 T@Ref) (f_5@@16 T@Field_9862_3418) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| ZeroMask) o_9@@18 f_5@@16) (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@4) o_9@@18 f_5@@16)))
 :qid |stdinbpl.1487:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| ZeroMask) o_9@@18 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@4) o_9@@18 f_5@@16))
))) (forall ((o_9@@19 T@Ref) (f_5@@17 T@Field_21543_21544) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| ZeroMask) o_9@@19 f_5@@17) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@4) o_9@@19 f_5@@17)))
 :qid |stdinbpl.1487:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| ZeroMask) o_9@@19 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@4) o_9@@19 f_5@@17))
))) (forall ((o_9@@20 T@Ref) (f_5@@18 T@Field_21556_21561) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| ZeroMask) o_9@@20 f_5@@18) (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@4) o_9@@20 f_5@@18)))
 :qid |stdinbpl.1487:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| ZeroMask) o_9@@20 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@4) o_9@@20 f_5@@18))
))) (state PostHeap@0 QPMask@4)) (and (=> (= (ControlFlow 0 45) 34) anon33_Then_correct) (=> (= (ControlFlow 0 45) 43) anon33_Else_correct))))))))
(let ((anon32_Then_correct true))
(let ((anon31_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 47) 33) anon32_Then_correct) (=> (= (ControlFlow 0 47) 45) anon32_Else_correct)))))
(let ((anon28_correct true))
(let ((anon27_correct  (=> (= UnfoldingMask@0 (PolymorphicMapType_15368 (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@4) (store (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@4) null (p_2 r_1@@5) (- (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@4) null (p_2 r_1@@5)) FullPerm)) (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| Mask@4) (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| Mask@4) (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| Mask@4) (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| Mask@4) (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| Mask@4) (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| Mask@4) (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| Mask@4) (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| Mask@4))) (=> (and (and (not (= r_1@@5 null)) (= UnfoldingMask@1 (PolymorphicMapType_15368 (store (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| UnfoldingMask@0) r_1@@5 f_7 (+ (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| UnfoldingMask@0) r_1@@5 f_7) FullPerm)) (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| UnfoldingMask@0) (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| UnfoldingMask@0) (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| UnfoldingMask@0) (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| UnfoldingMask@0) (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| UnfoldingMask@0) (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| UnfoldingMask@0) (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| UnfoldingMask@0) (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| UnfoldingMask@0) (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| UnfoldingMask@0)))) (and (state Heap@7 UnfoldingMask@1) (state Heap@7 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (= (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@7) r_1@@5 f_7) 4)) (=> (= (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@7) r_1@@5 f_7) 4) (=> (= (ControlFlow 0 5) 3) anon28_correct)))))))
(let ((anon42_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 9) 5)) anon27_correct)))
(let ((anon42_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= FullPerm (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@4) null (p_2 r_1@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@4) null (p_2 r_1@@5))) (=> (= (ControlFlow 0 7) 5) anon27_correct))))))
(let ((anon41_Then_correct  (=> (|Seq#Contains_9965| ys r_1@@5) (=> (and (|p#trigger_9862| Heap@7 (p_2 r_1@@5)) (= (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@7) null (p_2 r_1@@5)) (FrameFragment_3418 (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@7) r_1@@5 f_7)))) (and (=> (= (ControlFlow 0 10) 7) anon42_Then_correct) (=> (= (ControlFlow 0 10) 9) anon42_Else_correct))))))
(let ((anon41_Else_correct  (=> (and (not (|Seq#Contains_9965| ys r_1@@5)) (= (ControlFlow 0 4) 3)) anon28_correct)))
(let ((anon24_correct  (=> (state Heap@7 Mask@4) (and (=> (= (ControlFlow 0 11) (- 0 15)) (forall ((x_10 T@Ref) (x_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= x_10 x_10_2)) (|Seq#Contains_9965| xs x_10)) (|Seq#Contains_9965| xs x_10_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_10 x_10_2)))
 :qid |stdinbpl.1652:17|
 :skolemid |162|
 :pattern ( (neverTriggered17 x_10) (neverTriggered17 x_10_2))
))) (=> (forall ((x_10@@0 T@Ref) (x_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_10@@0 x_10_2@@0)) (|Seq#Contains_9965| xs x_10@@0)) (|Seq#Contains_9965| xs x_10_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_10@@0 x_10_2@@0)))
 :qid |stdinbpl.1652:17|
 :skolemid |162|
 :pattern ( (neverTriggered17 x_10@@0) (neverTriggered17 x_10_2@@0))
)) (and (=> (= (ControlFlow 0 11) (- 0 14)) (forall ((x_10@@1 T@Ref) ) (!  (=> (|Seq#Contains_9965| xs x_10@@1) (>= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@4) x_10@@1 f_7) FullPerm))
 :qid |stdinbpl.1659:17|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@7) x_10@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@2) x_10@@1 f_7))
 :pattern ( (|Seq#ContainsTrigger_9965| xs x_10@@1))
 :pattern ( (|Seq#Contains_9965| xs x_10@@1))
))) (=> (forall ((x_10@@2 T@Ref) ) (!  (=> (|Seq#Contains_9965| xs x_10@@2) (>= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@4) x_10@@2 f_7) FullPerm))
 :qid |stdinbpl.1659:17|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@7) x_10@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@2) x_10@@2 f_7))
 :pattern ( (|Seq#ContainsTrigger_9965| xs x_10@@2))
 :pattern ( (|Seq#Contains_9965| xs x_10@@2))
)) (=> (forall ((x_10@@3 T@Ref) ) (!  (=> (and (|Seq#Contains_9965| xs x_10@@3) (< NoPerm FullPerm)) (and (qpRange17 x_10@@3) (= (invRecv17 x_10@@3) x_10@@3)))
 :qid |stdinbpl.1665:22|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@7) x_10@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@2) x_10@@3 f_7))
 :pattern ( (|Seq#ContainsTrigger_9965| xs x_10@@3))
 :pattern ( (|Seq#Contains_9965| xs x_10@@3))
)) (=> (and (forall ((o_9@@21 T@Ref) ) (!  (=> (and (|Seq#Contains_9965| xs (invRecv17 o_9@@21)) (and (< NoPerm FullPerm) (qpRange17 o_9@@21))) (= (invRecv17 o_9@@21) o_9@@21))
 :qid |stdinbpl.1669:22|
 :skolemid |165|
 :pattern ( (invRecv17 o_9@@21))
)) (forall ((o_9@@22 T@Ref) ) (!  (and (=> (and (|Seq#Contains_9965| xs (invRecv17 o_9@@22)) (and (< NoPerm FullPerm) (qpRange17 o_9@@22))) (and (= (invRecv17 o_9@@22) o_9@@22) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@2) o_9@@22 f_7) (- (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@4) o_9@@22 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_9965| xs (invRecv17 o_9@@22)) (and (< NoPerm FullPerm) (qpRange17 o_9@@22)))) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@2) o_9@@22 f_7) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@4) o_9@@22 f_7))))
 :qid |stdinbpl.1675:22|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@2) o_9@@22 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_9@@23 T@Ref) (f_5@@19 T@Field_15407_53) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| Mask@4) o_9@@23 f_5@@19) (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@2) o_9@@23 f_5@@19)))
 :qid |stdinbpl.1681:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@2) o_9@@23 f_5@@19))
)) (forall ((o_9@@24 T@Ref) (f_5@@20 T@Field_15420_15421) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| Mask@4) o_9@@24 f_5@@20) (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@2) o_9@@24 f_5@@20)))
 :qid |stdinbpl.1681:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@2) o_9@@24 f_5@@20))
))) (forall ((o_9@@25 T@Ref) (f_5@@21 T@Field_21496_3418) ) (!  (=> (not (= f_5@@21 f_7)) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@4) o_9@@25 f_5@@21) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@2) o_9@@25 f_5@@21)))
 :qid |stdinbpl.1681:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@2) o_9@@25 f_5@@21))
))) (forall ((o_9@@26 T@Ref) (f_5@@22 T@Field_9859_9863) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| Mask@4) o_9@@26 f_5@@22) (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@2) o_9@@26 f_5@@22)))
 :qid |stdinbpl.1681:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@2) o_9@@26 f_5@@22))
))) (forall ((o_9@@27 T@Ref) (f_5@@23 T@Field_9859_21561) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| Mask@4) o_9@@27 f_5@@23) (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@2) o_9@@27 f_5@@23)))
 :qid |stdinbpl.1681:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@2) o_9@@27 f_5@@23))
))) (forall ((o_9@@28 T@Ref) (f_5@@24 T@Field_9862_53) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| Mask@4) o_9@@28 f_5@@24) (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@2) o_9@@28 f_5@@24)))
 :qid |stdinbpl.1681:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@2) o_9@@28 f_5@@24))
))) (forall ((o_9@@29 T@Ref) (f_5@@25 T@Field_9862_15421) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| Mask@4) o_9@@29 f_5@@25) (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@2) o_9@@29 f_5@@25)))
 :qid |stdinbpl.1681:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@2) o_9@@29 f_5@@25))
))) (forall ((o_9@@30 T@Ref) (f_5@@26 T@Field_9862_3418) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| Mask@4) o_9@@30 f_5@@26) (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@2) o_9@@30 f_5@@26)))
 :qid |stdinbpl.1681:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@2) o_9@@30 f_5@@26))
))) (forall ((o_9@@31 T@Ref) (f_5@@27 T@Field_21543_21544) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@4) o_9@@31 f_5@@27) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@2) o_9@@31 f_5@@27)))
 :qid |stdinbpl.1681:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@2) o_9@@31 f_5@@27))
))) (forall ((o_9@@32 T@Ref) (f_5@@28 T@Field_21556_21561) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| Mask@4) o_9@@32 f_5@@28) (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@2) o_9@@32 f_5@@28)))
 :qid |stdinbpl.1681:29|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@2) o_9@@32 f_5@@28))
))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (forall ((x_11 T@Ref) (x_11_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_11 x_11_1)) (|Seq#Contains_9965| ys x_11)) (|Seq#Contains_9965| ys x_11_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_11 x_11_1)))
 :qid |stdinbpl.1693:17|
 :skolemid |168|
 :pattern ( (neverTriggered18 x_11) (neverTriggered18 x_11_1))
))) (=> (forall ((x_11@@0 T@Ref) (x_11_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_11@@0 x_11_1@@0)) (|Seq#Contains_9965| ys x_11@@0)) (|Seq#Contains_9965| ys x_11_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_11@@0 x_11_1@@0)))
 :qid |stdinbpl.1693:17|
 :skolemid |168|
 :pattern ( (neverTriggered18 x_11@@0) (neverTriggered18 x_11_1@@0))
)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((x_11@@1 T@Ref) ) (!  (=> (|Seq#Contains_9965| ys x_11@@1) (>= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@2) null (p_2 x_11@@1)) FullPerm))
 :qid |stdinbpl.1700:17|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@7) null (p_2 x_11@@1)))
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@2) null (p_2 x_11@@1)))
 :pattern ( (|Seq#ContainsTrigger_9965| ys x_11@@1))
 :pattern ( (|Seq#Contains_9965| ys x_11@@1))
))) (=> (forall ((x_11@@2 T@Ref) ) (!  (=> (|Seq#Contains_9965| ys x_11@@2) (>= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@2) null (p_2 x_11@@2)) FullPerm))
 :qid |stdinbpl.1700:17|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@7) null (p_2 x_11@@2)))
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@2) null (p_2 x_11@@2)))
 :pattern ( (|Seq#ContainsTrigger_9965| ys x_11@@2))
 :pattern ( (|Seq#Contains_9965| ys x_11@@2))
)) (=> (and (and (forall ((x_11@@3 T@Ref) ) (!  (=> (and (|Seq#Contains_9965| ys x_11@@3) (< NoPerm FullPerm)) (and (= (invRecv18 x_11@@3) x_11@@3) (qpRange18 x_11@@3)))
 :qid |stdinbpl.1706:22|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@7) null (p_2 x_11@@3)))
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@2) null (p_2 x_11@@3)))
 :pattern ( (|Seq#ContainsTrigger_9965| ys x_11@@3))
 :pattern ( (|Seq#Contains_9965| ys x_11@@3))
)) (forall ((r_3_1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_9965| ys (invRecv18 r_3_1)) (< NoPerm FullPerm)) (qpRange18 r_3_1)) (= (invRecv18 r_3_1) r_3_1))
 :qid |stdinbpl.1710:22|
 :skolemid |171|
 :pattern ( (invRecv18 r_3_1))
))) (and (forall ((r_3_1@@0 T@Ref) ) (!  (=> (and (and (|Seq#Contains_9965| ys (invRecv18 r_3_1@@0)) (< NoPerm FullPerm)) (qpRange18 r_3_1@@0)) (and (= (invRecv18 r_3_1@@0) r_3_1@@0) (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@3) null (p_2 r_3_1@@0)) (- (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@2) null (p_2 r_3_1@@0)) FullPerm))))
 :qid |stdinbpl.1716:22|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@3) null (p_2 r_3_1@@0)))
)) (forall ((r_3_1@@1 T@Ref) ) (!  (=> (not (and (and (|Seq#Contains_9965| ys (invRecv18 r_3_1@@1)) (< NoPerm FullPerm)) (qpRange18 r_3_1@@1))) (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@3) null (p_2 r_3_1@@1)) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@2) null (p_2 r_3_1@@1))))
 :qid |stdinbpl.1720:22|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@3) null (p_2 r_3_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_9@@33 T@Ref) (f_5@@29 T@Field_21496_3418) ) (!  (=> (or (or (not (= o_9@@33 null)) (not (IsPredicateField_9859_3418 f_5@@29))) (not (= (getPredWandId_9859_3418 f_5@@29) 0))) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@2) o_9@@33 f_5@@29) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@3) o_9@@33 f_5@@29)))
 :qid |stdinbpl.1726:29|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@2) o_9@@33 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@3) o_9@@33 f_5@@29))
)) (forall ((o_9@@34 T@Ref) (f_5@@30 T@Field_9859_9863) ) (!  (=> (or (or (not (= o_9@@34 null)) (not (IsPredicateField_9859_47895 f_5@@30))) (not (= (getPredWandId_9859_9863 f_5@@30) 0))) (= (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@2) o_9@@34 f_5@@30) (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@3) o_9@@34 f_5@@30)))
 :qid |stdinbpl.1726:29|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@2) o_9@@34 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@3) o_9@@34 f_5@@30))
))) (forall ((o_9@@35 T@Ref) (f_5@@31 T@Field_15407_53) ) (!  (=> (or (or (not (= o_9@@35 null)) (not (IsPredicateField_9859_53 f_5@@31))) (not (= (getPredWandId_9859_53 f_5@@31) 0))) (= (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@2) o_9@@35 f_5@@31) (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@3) o_9@@35 f_5@@31)))
 :qid |stdinbpl.1726:29|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@2) o_9@@35 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@3) o_9@@35 f_5@@31))
))) (forall ((o_9@@36 T@Ref) (f_5@@32 T@Field_15420_15421) ) (!  (=> (or (or (not (= o_9@@36 null)) (not (IsPredicateField_9859_15421 f_5@@32))) (not (= (getPredWandId_9859_15421 f_5@@32) 0))) (= (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@2) o_9@@36 f_5@@32) (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@3) o_9@@36 f_5@@32)))
 :qid |stdinbpl.1726:29|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@2) o_9@@36 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@3) o_9@@36 f_5@@32))
))) (forall ((o_9@@37 T@Ref) (f_5@@33 T@Field_9859_21561) ) (!  (=> (or (or (not (= o_9@@37 null)) (not (IsPredicateField_9859_57681 f_5@@33))) (not (= (getPredWandId_9859_73537 f_5@@33) 0))) (= (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@2) o_9@@37 f_5@@33) (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@3) o_9@@37 f_5@@33)))
 :qid |stdinbpl.1726:29|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@2) o_9@@37 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@3) o_9@@37 f_5@@33))
))) (forall ((o_9@@38 T@Ref) (f_5@@34 T@Field_9862_3418) ) (!  (=> (or (or (not (= o_9@@38 null)) (not (IsPredicateField_9862_3418 f_5@@34))) (not (= (getPredWandId_9862_3418 f_5@@34) 0))) (= (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@2) o_9@@38 f_5@@34) (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@3) o_9@@38 f_5@@34)))
 :qid |stdinbpl.1726:29|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@2) o_9@@38 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@3) o_9@@38 f_5@@34))
))) (forall ((o_9@@39 T@Ref) (f_5@@35 T@Field_21543_21544) ) (!  (=> (or (or (not (= o_9@@39 null)) (not (IsPredicateField_9862_9863 f_5@@35))) (not (= (getPredWandId_9862_9863 f_5@@35) 0))) (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@2) o_9@@39 f_5@@35) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@3) o_9@@39 f_5@@35)))
 :qid |stdinbpl.1726:29|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@2) o_9@@39 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@3) o_9@@39 f_5@@35))
))) (forall ((o_9@@40 T@Ref) (f_5@@36 T@Field_9862_53) ) (!  (=> (or (or (not (= o_9@@40 null)) (not (IsPredicateField_9862_53 f_5@@36))) (not (= (getPredWandId_9862_53 f_5@@36) 0))) (= (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@2) o_9@@40 f_5@@36) (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@3) o_9@@40 f_5@@36)))
 :qid |stdinbpl.1726:29|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@2) o_9@@40 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@3) o_9@@40 f_5@@36))
))) (forall ((o_9@@41 T@Ref) (f_5@@37 T@Field_9862_15421) ) (!  (=> (or (or (not (= o_9@@41 null)) (not (IsPredicateField_9862_15421 f_5@@37))) (not (= (getPredWandId_9862_15421 f_5@@37) 0))) (= (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@2) o_9@@41 f_5@@37) (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@3) o_9@@41 f_5@@37)))
 :qid |stdinbpl.1726:29|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@2) o_9@@41 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@3) o_9@@41 f_5@@37))
))) (forall ((o_9@@42 T@Ref) (f_5@@38 T@Field_21556_21561) ) (!  (=> (or (or (not (= o_9@@42 null)) (not (IsPredicateField_9862_58512 f_5@@38))) (not (= (getPredWandId_9862_74346 f_5@@38) 0))) (= (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@2) o_9@@42 f_5@@38) (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@3) o_9@@42 f_5@@38)))
 :qid |stdinbpl.1726:29|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@2) o_9@@42 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@3) o_9@@42 f_5@@38))
))) (and (=> (= (ControlFlow 0 11) 10) anon41_Then_correct) (=> (= (ControlFlow 0 11) 4) anon41_Else_correct))))))))))))))))))
(let ((anon23_correct  (=> (and (= Heap@6 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@5) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@5) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@5) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@5) (store (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@5) null (|p#sm| r_1@@5) (PolymorphicMapType_15896 (store (|PolymorphicMapType_15896_9859_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@5) null (|p#sm| r_1@@5))) r_1@@5 f_7 true) (|PolymorphicMapType_15896_9859_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@5) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_9859_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@5) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_9859_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@5) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_9859_49367#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@5) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_21543_3418#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@5) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_21543_53#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@5) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_21543_15421#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@5) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_21543_21544#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@5) null (|p#sm| r_1@@5))) (|PolymorphicMapType_15896_21543_50415#PolymorphicMapType_15896| (select (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@5) null (|p#sm| r_1@@5))))) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@5) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@5) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@5) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@5) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@5))) (state Heap@6 Mask@3)) (=> (and (and (state Heap@6 Mask@3) (= Mask@4 Mask@3)) (and (= Heap@7 Heap@6) (= (ControlFlow 0 17) 11))) anon24_correct))))
(let ((anon40_Else_correct  (=> (HasDirectPerm_9862_9863 Mask@3 null (p_2 r_1@@5)) (=> (and (= Heap@5 Heap@2) (= (ControlFlow 0 19) 17)) anon23_correct))))
(let ((anon40_Then_correct  (=> (not (HasDirectPerm_9862_9863 Mask@3 null (p_2 r_1@@5))) (=> (and (and (= Heap@3 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@2) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@2) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@2) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@2) (store (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@2) null (|p#sm| r_1@@5) ZeroPMask) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@2) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@2) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@2) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@2) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@2))) (= Heap@4 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@3) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@3) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@3) (store (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@3) null (p_2 r_1@@5) freshVersion@0) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@3) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@3) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@3) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@3) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@3) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 18) 17))) anon23_correct))))
(let ((anon21_correct  (=> (and (= Mask@2 (PolymorphicMapType_15368 (store (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@1) r_1@@5 f_7 (- (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@1) r_1@@5 f_7) FullPerm)) (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@1) (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| Mask@1) (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| Mask@1) (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| Mask@1) (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| Mask@1) (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| Mask@1) (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| Mask@1) (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| Mask@1) (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| Mask@1))) (= Mask@3 (PolymorphicMapType_15368 (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@2) (store (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@2) null (p_2 r_1@@5) (+ (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@2) null (p_2 r_1@@5)) FullPerm)) (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| Mask@2) (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| Mask@2) (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| Mask@2) (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| Mask@2) (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| Mask@2) (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| Mask@2) (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| Mask@2) (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| Mask@2)))) (=> (and (and (state Heap@2 Mask@3) (state Heap@2 Mask@3)) (and (|p#trigger_9862| Heap@2 (p_2 r_1@@5)) (= (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@2) null (p_2 r_1@@5)) (FrameFragment_3418 (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@2) r_1@@5 f_7))))) (and (=> (= (ControlFlow 0 20) 18) anon40_Then_correct) (=> (= (ControlFlow 0 20) 19) anon40_Else_correct))))))
(let ((anon39_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 23) 20)) anon21_correct)))
(let ((anon39_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= FullPerm (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@1) r_1@@5 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@1) r_1@@5 f_7)) (=> (= (ControlFlow 0 21) 20) anon21_correct))))))
(let ((anon19_correct  (=> (not (= r_1@@5 null)) (=> (and (and (= Mask@1 (PolymorphicMapType_15368 (store (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@0) r_1@@5 f_7 (+ (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@0) r_1@@5 f_7) FullPerm)) (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| Mask@0) (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| Mask@0) (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| Mask@0) (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| Mask@0) (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| Mask@0) (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| Mask@0) (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| Mask@0) (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| Mask@0) (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| Mask@0))) (state Heap@1 Mask@1)) (and (state Heap@1 Mask@1) (state Heap@1 Mask@1))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (= FullPerm (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@1) r_1@@5 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| Mask@1) r_1@@5 f_7)) (=> (and (= Heap@2 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@1) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@1) (store (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@1) r_1@@5 f_7 4) (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@1) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@1) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@1) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@1) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@1) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@1) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@1))) (state Heap@2 Mask@1)) (and (=> (= (ControlFlow 0 24) 21) anon39_Then_correct) (=> (= (ControlFlow 0 24) 23) anon39_Else_correct)))))))))
(let ((anon38_Else_correct  (=> (HasDirectPerm_9862_9863 Mask@0 null (p_2 r_1@@5)) (=> (and (= Heap@1 Heap@@32) (= (ControlFlow 0 27) 24)) anon19_correct))))
(let ((anon38_Then_correct  (=> (and (and (not (HasDirectPerm_9862_9863 Mask@0 null (p_2 r_1@@5))) (= Heap@0 (PolymorphicMapType_15347 (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@32) (|PolymorphicMapType_15347_9602_9603#PolymorphicMapType_15347| Heap@@32) (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@32) (store (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@32) null (p_2 r_1@@5) newVersion@0) (|PolymorphicMapType_15347_9866_39662#PolymorphicMapType_15347| Heap@@32) (|PolymorphicMapType_15347_9859_9863#PolymorphicMapType_15347| Heap@@32) (|PolymorphicMapType_15347_9859_46551#PolymorphicMapType_15347| Heap@@32) (|PolymorphicMapType_15347_9862_3418#PolymorphicMapType_15347| Heap@@32) (|PolymorphicMapType_15347_9862_53#PolymorphicMapType_15347| Heap@@32) (|PolymorphicMapType_15347_9862_15421#PolymorphicMapType_15347| Heap@@32)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 26) 24))) anon19_correct)))
(let ((anon17_correct  (=> (= Mask@0 (PolymorphicMapType_15368 (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@1) (store (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@1) null (p_2 r_1@@5) (- (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@1) null (p_2 r_1@@5)) FullPerm)) (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@1) (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@1) (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@1) (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@1) (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@1) (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@1) (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@1) (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@1))) (and (=> (= (ControlFlow 0 28) 26) anon38_Then_correct) (=> (= (ControlFlow 0 28) 27) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 31) 28)) anon17_correct)))
(let ((anon37_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (<= FullPerm (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@1) null (p_2 r_1@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@1) null (p_2 r_1@@5))) (=> (= (ControlFlow 0 29) 28) anon17_correct))))))
(let ((anon36_Then_correct  (=> (|Seq#Contains_9965| ys r_1@@5) (=> (and (|p#trigger_9862| Heap@@32 (p_2 r_1@@5)) (= (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@32) null (p_2 r_1@@5)) (FrameFragment_3418 (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@32) r_1@@5 f_7)))) (and (=> (= (ControlFlow 0 32) 29) anon37_Then_correct) (=> (= (ControlFlow 0 32) 31) anon37_Else_correct))))))
(let ((anon36_Else_correct  (=> (and (and (not (|Seq#Contains_9965| ys r_1@@5)) (= Mask@4 QPMask@1)) (and (= Heap@7 Heap@@32) (= (ControlFlow 0 16) 11))) anon24_correct)))
(let ((anon30_Else_correct  (and (=> (= (ControlFlow 0 48) (- 0 49)) (forall ((x_3 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3 x_3_1)) (|Seq#Contains_9965| ys x_3)) (|Seq#Contains_9965| ys x_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_3 x_3_1)))
 :qid |stdinbpl.1410:17|
 :skolemid |144|
 :pattern ( (neverTriggered14 x_3) (neverTriggered14 x_3_1))
))) (=> (forall ((x_3@@0 T@Ref) (x_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@0 x_3_1@@0)) (|Seq#Contains_9965| ys x_3@@0)) (|Seq#Contains_9965| ys x_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_3@@0 x_3_1@@0)))
 :qid |stdinbpl.1410:17|
 :skolemid |144|
 :pattern ( (neverTriggered14 x_3@@0) (neverTriggered14 x_3_1@@0))
)) (=> (forall ((x_3@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_9965| ys x_3@@1) (< NoPerm FullPerm)) (and (= (invRecv14 x_3@@1) x_3@@1) (qpRange14 x_3@@1)))
 :qid |stdinbpl.1416:22|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_15347_9862_9863#PolymorphicMapType_15347| Heap@@32) null (p_2 x_3@@1)))
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@0) null (p_2 x_3@@1)))
 :pattern ( (|Seq#ContainsTrigger_9965| ys x_3@@1))
 :pattern ( (|Seq#Contains_9965| ys x_3@@1))
)) (=> (and (forall ((r_1_1_1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_9965| ys (invRecv14 r_1_1_1)) (< NoPerm FullPerm)) (qpRange14 r_1_1_1)) (= (invRecv14 r_1_1_1) r_1_1_1))
 :qid |stdinbpl.1420:22|
 :skolemid |146|
 :pattern ( (invRecv14 r_1_1_1))
)) (forall ((r_1_1_1@@0 T@Ref) ) (!  (=> (and (and (|Seq#Contains_9965| ys (invRecv14 r_1_1_1@@0)) (< NoPerm FullPerm)) (qpRange14 r_1_1_1@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv14 r_1_1_1@@0) r_1_1_1@@0)) (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@1) null (p_2 r_1_1_1@@0)) (+ (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@0) null (p_2 r_1_1_1@@0)) FullPerm))))
 :qid |stdinbpl.1426:22|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@1) null (p_2 r_1_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@39 T@Field_21496_3418) ) (!  (=> (or (or (not (= o_9@@43 null)) (not (IsPredicateField_9859_3418 f_5@@39))) (not (= (getPredWandId_9859_3418 f_5@@39) 0))) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@0) o_9@@43 f_5@@39) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@1) o_9@@43 f_5@@39)))
 :qid |stdinbpl.1432:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@0) o_9@@43 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@1) o_9@@43 f_5@@39))
)) (forall ((o_9@@44 T@Ref) (f_5@@40 T@Field_9859_9863) ) (!  (=> (or (or (not (= o_9@@44 null)) (not (IsPredicateField_9859_47895 f_5@@40))) (not (= (getPredWandId_9859_9863 f_5@@40) 0))) (= (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@0) o_9@@44 f_5@@40) (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@1) o_9@@44 f_5@@40)))
 :qid |stdinbpl.1432:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@0) o_9@@44 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@1) o_9@@44 f_5@@40))
))) (forall ((o_9@@45 T@Ref) (f_5@@41 T@Field_15407_53) ) (!  (=> (or (or (not (= o_9@@45 null)) (not (IsPredicateField_9859_53 f_5@@41))) (not (= (getPredWandId_9859_53 f_5@@41) 0))) (= (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@0) o_9@@45 f_5@@41) (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@1) o_9@@45 f_5@@41)))
 :qid |stdinbpl.1432:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@0) o_9@@45 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@1) o_9@@45 f_5@@41))
))) (forall ((o_9@@46 T@Ref) (f_5@@42 T@Field_15420_15421) ) (!  (=> (or (or (not (= o_9@@46 null)) (not (IsPredicateField_9859_15421 f_5@@42))) (not (= (getPredWandId_9859_15421 f_5@@42) 0))) (= (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@0) o_9@@46 f_5@@42) (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@1) o_9@@46 f_5@@42)))
 :qid |stdinbpl.1432:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@0) o_9@@46 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@1) o_9@@46 f_5@@42))
))) (forall ((o_9@@47 T@Ref) (f_5@@43 T@Field_9859_21561) ) (!  (=> (or (or (not (= o_9@@47 null)) (not (IsPredicateField_9859_57681 f_5@@43))) (not (= (getPredWandId_9859_73537 f_5@@43) 0))) (= (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@0) o_9@@47 f_5@@43) (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@1) o_9@@47 f_5@@43)))
 :qid |stdinbpl.1432:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@0) o_9@@47 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@1) o_9@@47 f_5@@43))
))) (forall ((o_9@@48 T@Ref) (f_5@@44 T@Field_9862_3418) ) (!  (=> (or (or (not (= o_9@@48 null)) (not (IsPredicateField_9862_3418 f_5@@44))) (not (= (getPredWandId_9862_3418 f_5@@44) 0))) (= (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@0) o_9@@48 f_5@@44) (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@1) o_9@@48 f_5@@44)))
 :qid |stdinbpl.1432:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@0) o_9@@48 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@1) o_9@@48 f_5@@44))
))) (forall ((o_9@@49 T@Ref) (f_5@@45 T@Field_21543_21544) ) (!  (=> (or (or (not (= o_9@@49 null)) (not (IsPredicateField_9862_9863 f_5@@45))) (not (= (getPredWandId_9862_9863 f_5@@45) 0))) (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@0) o_9@@49 f_5@@45) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@1) o_9@@49 f_5@@45)))
 :qid |stdinbpl.1432:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@0) o_9@@49 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@1) o_9@@49 f_5@@45))
))) (forall ((o_9@@50 T@Ref) (f_5@@46 T@Field_9862_53) ) (!  (=> (or (or (not (= o_9@@50 null)) (not (IsPredicateField_9862_53 f_5@@46))) (not (= (getPredWandId_9862_53 f_5@@46) 0))) (= (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@0) o_9@@50 f_5@@46) (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@1) o_9@@50 f_5@@46)))
 :qid |stdinbpl.1432:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@0) o_9@@50 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@1) o_9@@50 f_5@@46))
))) (forall ((o_9@@51 T@Ref) (f_5@@47 T@Field_9862_15421) ) (!  (=> (or (or (not (= o_9@@51 null)) (not (IsPredicateField_9862_15421 f_5@@47))) (not (= (getPredWandId_9862_15421 f_5@@47) 0))) (= (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@0) o_9@@51 f_5@@47) (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@1) o_9@@51 f_5@@47)))
 :qid |stdinbpl.1432:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@0) o_9@@51 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@1) o_9@@51 f_5@@47))
))) (forall ((o_9@@52 T@Ref) (f_5@@48 T@Field_21556_21561) ) (!  (=> (or (or (not (= o_9@@52 null)) (not (IsPredicateField_9862_58512 f_5@@48))) (not (= (getPredWandId_9862_74346 f_5@@48) 0))) (= (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@0) o_9@@52 f_5@@48) (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@1) o_9@@52 f_5@@48)))
 :qid |stdinbpl.1432:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@0) o_9@@52 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@1) o_9@@52 f_5@@48))
))) (forall ((r_1_1_1@@1 T@Ref) ) (!  (=> (not (and (and (|Seq#Contains_9965| ys (invRecv14 r_1_1_1@@1)) (< NoPerm FullPerm)) (qpRange14 r_1_1_1@@1))) (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@1) null (p_2 r_1_1_1@@1)) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@0) null (p_2 r_1_1_1@@1))))
 :qid |stdinbpl.1436:22|
 :skolemid |149|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@1) null (p_2 r_1_1_1@@1)))
))) (and (state Heap@@32 QPMask@1) (state Heap@@32 QPMask@1))) (and (and (=> (= (ControlFlow 0 48) 47) anon31_Then_correct) (=> (= (ControlFlow 0 48) 32) anon36_Then_correct)) (=> (= (ControlFlow 0 48) 16) anon36_Else_correct)))))))))
(let ((anon30_Then_correct true))
(let ((anon29_Else_correct  (and (=> (= (ControlFlow 0 50) (- 0 51)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (|Seq#Contains_9965| xs x_1)) (|Seq#Contains_9965| xs x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.1369:15|
 :skolemid |138|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (|Seq#Contains_9965| xs x_1@@0)) (|Seq#Contains_9965| xs x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.1369:15|
 :skolemid |138|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_9965| xs x_1@@1) (< NoPerm FullPerm)) (and (qpRange13 x_1@@1) (= (invRecv13 x_1@@1) x_1@@1)))
 :qid |stdinbpl.1375:22|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@32) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@0) x_1@@1 f_7))
 :pattern ( (|Seq#ContainsTrigger_9965| xs x_1@@1))
 :pattern ( (|Seq#Contains_9965| xs x_1@@1))
)) (forall ((o_9@@53 T@Ref) ) (!  (=> (and (and (|Seq#Contains_9965| xs (invRecv13 o_9@@53)) (< NoPerm FullPerm)) (qpRange13 o_9@@53)) (= (invRecv13 o_9@@53) o_9@@53))
 :qid |stdinbpl.1379:22|
 :skolemid |140|
 :pattern ( (invRecv13 o_9@@53))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (|Seq#Contains_9965| xs x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.1385:22|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_15347_9859_3418#PolymorphicMapType_15347| Heap@@32) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@0) x_1@@2 f_7))
 :pattern ( (|Seq#ContainsTrigger_9965| xs x_1@@2))
 :pattern ( (|Seq#Contains_9965| xs x_1@@2))
)) (forall ((o_9@@54 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_9965| xs (invRecv13 o_9@@54)) (< NoPerm FullPerm)) (qpRange13 o_9@@54)) (and (=> (< NoPerm FullPerm) (= (invRecv13 o_9@@54) o_9@@54)) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@0) o_9@@54 f_7) (+ (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ZeroMask) o_9@@54 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_9965| xs (invRecv13 o_9@@54)) (< NoPerm FullPerm)) (qpRange13 o_9@@54))) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@0) o_9@@54 f_7) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ZeroMask) o_9@@54 f_7))))
 :qid |stdinbpl.1391:22|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@0) o_9@@54 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@55 T@Ref) (f_5@@49 T@Field_15407_53) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| ZeroMask) o_9@@55 f_5@@49) (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@0) o_9@@55 f_5@@49)))
 :qid |stdinbpl.1395:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| ZeroMask) o_9@@55 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_15368_9859_53#PolymorphicMapType_15368| QPMask@0) o_9@@55 f_5@@49))
)) (forall ((o_9@@56 T@Ref) (f_5@@50 T@Field_15420_15421) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| ZeroMask) o_9@@56 f_5@@50) (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@0) o_9@@56 f_5@@50)))
 :qid |stdinbpl.1395:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| ZeroMask) o_9@@56 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_15368_9859_15421#PolymorphicMapType_15368| QPMask@0) o_9@@56 f_5@@50))
))) (forall ((o_9@@57 T@Ref) (f_5@@51 T@Field_21496_3418) ) (!  (=> (not (= f_5@@51 f_7)) (= (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ZeroMask) o_9@@57 f_5@@51) (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@0) o_9@@57 f_5@@51)))
 :qid |stdinbpl.1395:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| ZeroMask) o_9@@57 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_15368_9859_3418#PolymorphicMapType_15368| QPMask@0) o_9@@57 f_5@@51))
))) (forall ((o_9@@58 T@Ref) (f_5@@52 T@Field_9859_9863) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| ZeroMask) o_9@@58 f_5@@52) (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@0) o_9@@58 f_5@@52)))
 :qid |stdinbpl.1395:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| ZeroMask) o_9@@58 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_15368_9859_9863#PolymorphicMapType_15368| QPMask@0) o_9@@58 f_5@@52))
))) (forall ((o_9@@59 T@Ref) (f_5@@53 T@Field_9859_21561) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| ZeroMask) o_9@@59 f_5@@53) (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@0) o_9@@59 f_5@@53)))
 :qid |stdinbpl.1395:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| ZeroMask) o_9@@59 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_15368_9859_55809#PolymorphicMapType_15368| QPMask@0) o_9@@59 f_5@@53))
))) (forall ((o_9@@60 T@Ref) (f_5@@54 T@Field_9862_53) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| ZeroMask) o_9@@60 f_5@@54) (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@0) o_9@@60 f_5@@54)))
 :qid |stdinbpl.1395:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| ZeroMask) o_9@@60 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_15368_9862_53#PolymorphicMapType_15368| QPMask@0) o_9@@60 f_5@@54))
))) (forall ((o_9@@61 T@Ref) (f_5@@55 T@Field_9862_15421) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| ZeroMask) o_9@@61 f_5@@55) (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@0) o_9@@61 f_5@@55)))
 :qid |stdinbpl.1395:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| ZeroMask) o_9@@61 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_15368_9862_15421#PolymorphicMapType_15368| QPMask@0) o_9@@61 f_5@@55))
))) (forall ((o_9@@62 T@Ref) (f_5@@56 T@Field_9862_3418) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| ZeroMask) o_9@@62 f_5@@56) (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@0) o_9@@62 f_5@@56)))
 :qid |stdinbpl.1395:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| ZeroMask) o_9@@62 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_15368_9862_3418#PolymorphicMapType_15368| QPMask@0) o_9@@62 f_5@@56))
))) (forall ((o_9@@63 T@Ref) (f_5@@57 T@Field_21543_21544) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| ZeroMask) o_9@@63 f_5@@57) (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@0) o_9@@63 f_5@@57)))
 :qid |stdinbpl.1395:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| ZeroMask) o_9@@63 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_15368_9862_9863#PolymorphicMapType_15368| QPMask@0) o_9@@63 f_5@@57))
))) (forall ((o_9@@64 T@Ref) (f_5@@58 T@Field_21556_21561) ) (!  (=> true (= (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| ZeroMask) o_9@@64 f_5@@58) (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@0) o_9@@64 f_5@@58)))
 :qid |stdinbpl.1395:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| ZeroMask) o_9@@64 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_15368_9862_56220#PolymorphicMapType_15368| QPMask@0) o_9@@64 f_5@@58))
))) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 50) 2) anon30_Then_correct) (=> (= (ControlFlow 0 50) 48) anon30_Else_correct))))))))
(let ((anon29_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_15347_9599_53#PolymorphicMapType_15347| Heap@@32) r_1@@5 $allocated)) (and (=> (= (ControlFlow 0 52) 1) anon29_Then_correct) (=> (= (ControlFlow 0 52) 50) anon29_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 53) 52) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
