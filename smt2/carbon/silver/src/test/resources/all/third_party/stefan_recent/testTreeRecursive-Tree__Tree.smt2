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
(declare-sort T@Field_14686_53 0)
(declare-sort T@Field_14699_14700 0)
(declare-sort T@Field_20704_2989 0)
(declare-sort T@Field_21314_21315 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_25785_25790 0)
(declare-sort T@Field_8114_8165 0)
(declare-sort T@Field_8114_25790 0)
(declare-sort T@Field_8164_8115 0)
(declare-sort T@Field_8164_2989 0)
(declare-sort T@Field_8164_53 0)
(declare-datatypes ((T@PolymorphicMapType_14647 0)) (((PolymorphicMapType_14647 (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| (Array T@Ref T@Field_21314_21315 Real)) (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| (Array T@Ref T@Field_20704_2989 Real)) (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| (Array T@Ref T@Field_14699_14700 Real)) (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| (Array T@Ref T@Field_8164_2989 Real)) (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| (Array T@Ref T@Field_8164_8115 Real)) (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| (Array T@Ref T@Field_8164_53 Real)) (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| (Array T@Ref T@Field_25785_25790 Real)) (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| (Array T@Ref T@Field_8114_8165 Real)) (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| (Array T@Ref T@Field_14686_53 Real)) (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| (Array T@Ref T@Field_8114_25790 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15175 0)) (((PolymorphicMapType_15175 (|PolymorphicMapType_15175_8112_2989#PolymorphicMapType_15175| (Array T@Ref T@Field_20704_2989 Bool)) (|PolymorphicMapType_15175_8114_8115#PolymorphicMapType_15175| (Array T@Ref T@Field_14699_14700 Bool)) (|PolymorphicMapType_15175_8112_53#PolymorphicMapType_15175| (Array T@Ref T@Field_14686_53 Bool)) (|PolymorphicMapType_15175_8112_21315#PolymorphicMapType_15175| (Array T@Ref T@Field_8114_8165 Bool)) (|PolymorphicMapType_15175_8112_50176#PolymorphicMapType_15175| (Array T@Ref T@Field_8114_25790 Bool)) (|PolymorphicMapType_15175_21314_2989#PolymorphicMapType_15175| (Array T@Ref T@Field_8164_2989 Bool)) (|PolymorphicMapType_15175_21314_8115#PolymorphicMapType_15175| (Array T@Ref T@Field_8164_8115 Bool)) (|PolymorphicMapType_15175_21314_53#PolymorphicMapType_15175| (Array T@Ref T@Field_8164_53 Bool)) (|PolymorphicMapType_15175_21314_21315#PolymorphicMapType_15175| (Array T@Ref T@Field_21314_21315 Bool)) (|PolymorphicMapType_15175_21314_51224#PolymorphicMapType_15175| (Array T@Ref T@Field_25785_25790 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14626 0)) (((PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| (Array T@Ref T@Field_14686_53 Bool)) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| (Array T@Ref T@Field_14699_14700 T@Ref)) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| (Array T@Ref T@Field_20704_2989 Int)) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| (Array T@Ref T@Field_21314_21315 T@FrameType)) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| (Array T@Ref T@Field_25785_25790 T@PolymorphicMapType_15175)) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| (Array T@Ref T@Field_8114_8165 T@FrameType)) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| (Array T@Ref T@Field_8114_25790 T@PolymorphicMapType_15175)) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| (Array T@Ref T@Field_8164_8115 T@Ref)) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| (Array T@Ref T@Field_8164_2989 Int)) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| (Array T@Ref T@Field_8164_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_14686_53)
(declare-fun Tree__data () T@Field_20704_2989)
(declare-fun Tree__left () T@Field_14699_14700)
(declare-fun Tree__right () T@Field_14699_14700)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_3041| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_14626 T@PolymorphicMapType_14626) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_14626 T@PolymorphicMapType_14626) Bool)
(declare-fun state (T@PolymorphicMapType_14626 T@PolymorphicMapType_14647) Bool)
(declare-fun |Tree__contents'| (T@PolymorphicMapType_14626 T@Ref) T@Seq_2867)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Tree__contents#trigger| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_8165 (T@FrameType) T@FrameType)
(declare-fun null () T@Ref)
(declare-fun Tree__state (T@Ref) T@Field_21314_21315)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun GoodMask (T@PolymorphicMapType_14647) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15175)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3160| () T@Seq_2867)
(declare-fun IsPredicateField_8164_8165 (T@Field_21314_21315) Bool)
(declare-fun dummyFunction_20915 (T@Seq_2867) Bool)
(declare-fun |Tree__contents#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Tree__state#trigger_8164| (T@PolymorphicMapType_14626 T@Field_21314_21315) Bool)
(declare-fun |Tree__state#everUsed_8164| (T@Field_21314_21315) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun Tree__contents (T@PolymorphicMapType_14626 T@Ref) T@Seq_2867)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_14626 T@PolymorphicMapType_14626 T@PolymorphicMapType_14647) Bool)
(declare-fun PredicateMaskField_8164 (T@Field_21314_21315) T@Field_25785_25790)
(declare-fun HasDirectPerm_8164_8165 (T@PolymorphicMapType_14647 T@Ref T@Field_21314_21315) Bool)
(declare-fun IsPredicateField_8114_48719 (T@Field_8114_8165) Bool)
(declare-fun PredicateMaskField_8114 (T@Field_8114_8165) T@Field_8114_25790)
(declare-fun HasDirectPerm_8114_8165 (T@PolymorphicMapType_14647 T@Ref T@Field_8114_8165) Bool)
(declare-fun IsWandField_8164_52389 (T@Field_21314_21315) Bool)
(declare-fun WandMaskField_8164 (T@Field_21314_21315) T@Field_25785_25790)
(declare-fun IsWandField_8114_52032 (T@Field_8114_8165) Bool)
(declare-fun WandMaskField_8114 (T@Field_8114_8165) T@Field_8114_25790)
(declare-fun |Tree__contents#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |Seq#Singleton_2989| (Int) T@Seq_2867)
(declare-fun |Tree__state#sm| (T@Ref) T@Field_25785_25790)
(declare-fun |Seq#Append_3054| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_14626)
(declare-fun ZeroMask () T@PolymorphicMapType_14647)
(declare-fun InsidePredicate_14686_14686 (T@Field_8114_8165 T@FrameType T@Field_8114_8165 T@FrameType) Bool)
(declare-fun InsidePredicate_8164_8164 (T@Field_21314_21315 T@FrameType T@Field_21314_21315 T@FrameType) Bool)
(declare-fun IsPredicateField_8112_2989 (T@Field_20704_2989) Bool)
(declare-fun IsWandField_8112_2989 (T@Field_20704_2989) Bool)
(declare-fun IsPredicateField_8114_8115 (T@Field_14699_14700) Bool)
(declare-fun IsWandField_8114_8115 (T@Field_14699_14700) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8112_59292 (T@Field_8114_25790) Bool)
(declare-fun IsWandField_8112_59308 (T@Field_8114_25790) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8112_53 (T@Field_14686_53) Bool)
(declare-fun IsWandField_8112_53 (T@Field_14686_53) Bool)
(declare-fun IsPredicateField_8164_58489 (T@Field_25785_25790) Bool)
(declare-fun IsWandField_8164_58505 (T@Field_25785_25790) Bool)
(declare-fun IsPredicateField_8164_53 (T@Field_8164_53) Bool)
(declare-fun IsWandField_8164_53 (T@Field_8164_53) Bool)
(declare-fun IsPredicateField_8164_8115 (T@Field_8164_8115) Bool)
(declare-fun IsWandField_8164_8115 (T@Field_8164_8115) Bool)
(declare-fun IsPredicateField_8164_2989 (T@Field_8164_2989) Bool)
(declare-fun IsWandField_8164_2989 (T@Field_8164_2989) Bool)
(declare-fun HasDirectPerm_8164_48474 (T@PolymorphicMapType_14647 T@Ref T@Field_25785_25790) Bool)
(declare-fun HasDirectPerm_8164_53 (T@PolymorphicMapType_14647 T@Ref T@Field_8164_53) Bool)
(declare-fun HasDirectPerm_8164_2989 (T@PolymorphicMapType_14647 T@Ref T@Field_8164_2989) Bool)
(declare-fun HasDirectPerm_8164_8115 (T@PolymorphicMapType_14647 T@Ref T@Field_8164_8115) Bool)
(declare-fun HasDirectPerm_8114_47333 (T@PolymorphicMapType_14647 T@Ref T@Field_8114_25790) Bool)
(declare-fun HasDirectPerm_8114_53 (T@PolymorphicMapType_14647 T@Ref T@Field_14686_53) Bool)
(declare-fun HasDirectPerm_8112_2989 (T@PolymorphicMapType_14647 T@Ref T@Field_20704_2989) Bool)
(declare-fun HasDirectPerm_8114_8115 (T@PolymorphicMapType_14647 T@Ref T@Field_14699_14700) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_14647 T@PolymorphicMapType_14647 T@PolymorphicMapType_14647) Bool)
(declare-fun |Seq#Equal_3041| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_8164_8165 (T@Field_21314_21315) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_14686_8164 (T@Field_8114_8165 T@FrameType T@Field_21314_21315 T@FrameType) Bool)
(declare-fun InsidePredicate_8164_14686 (T@Field_21314_21315 T@FrameType T@Field_8114_8165 T@FrameType) Bool)
(assert (distinct Tree__left Tree__right)
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_3041| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_3041| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_3041| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_3041| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_3041| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_14626) (Heap1 T@PolymorphicMapType_14626) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_14626) (Mask T@PolymorphicMapType_14647) (t_2 T@Ref) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 0) (|Tree__contents#trigger| (FrameFragment_8165 (ite (not (= t_2 null)) (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap) null (Tree__state t_2)) EmptyFrame)) t_2))) (=> (not (= t_2 null)) (> (|Seq#Length_2867| (|Tree__contents'| Heap t_2)) 0)))
 :qid |stdinbpl.587:15|
 :skolemid |62|
 :pattern ( (state Heap Mask) (|Tree__contents'| Heap t_2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_14626) (Mask@@0 T@PolymorphicMapType_14647) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_14626) (Heap1@@0 T@PolymorphicMapType_14626) (Heap2 T@PolymorphicMapType_14626) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_25785_25790) ) (!  (not (select (|PolymorphicMapType_15175_21314_51224#PolymorphicMapType_15175| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15175_21314_51224#PolymorphicMapType_15175| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_21314_21315) ) (!  (not (select (|PolymorphicMapType_15175_21314_21315#PolymorphicMapType_15175| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15175_21314_21315#PolymorphicMapType_15175| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8164_53) ) (!  (not (select (|PolymorphicMapType_15175_21314_53#PolymorphicMapType_15175| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15175_21314_53#PolymorphicMapType_15175| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8164_8115) ) (!  (not (select (|PolymorphicMapType_15175_21314_8115#PolymorphicMapType_15175| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15175_21314_8115#PolymorphicMapType_15175| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8164_2989) ) (!  (not (select (|PolymorphicMapType_15175_21314_2989#PolymorphicMapType_15175| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15175_21314_2989#PolymorphicMapType_15175| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8114_25790) ) (!  (not (select (|PolymorphicMapType_15175_8112_50176#PolymorphicMapType_15175| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15175_8112_50176#PolymorphicMapType_15175| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8114_8165) ) (!  (not (select (|PolymorphicMapType_15175_8112_21315#PolymorphicMapType_15175| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15175_8112_21315#PolymorphicMapType_15175| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_14686_53) ) (!  (not (select (|PolymorphicMapType_15175_8112_53#PolymorphicMapType_15175| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15175_8112_53#PolymorphicMapType_15175| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_14699_14700) ) (!  (not (select (|PolymorphicMapType_15175_8114_8115#PolymorphicMapType_15175| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15175_8114_8115#PolymorphicMapType_15175| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_20704_2989) ) (!  (not (select (|PolymorphicMapType_15175_8112_2989#PolymorphicMapType_15175| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15175_8112_2989#PolymorphicMapType_15175| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_3041| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_3041| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_3160|) 0))
(assert (forall ((diz T@Ref) ) (! (IsPredicateField_8164_8165 (Tree__state diz))
 :qid |stdinbpl.759:15|
 :skolemid |66|
 :pattern ( (Tree__state diz))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_14626) (t_2@@0 T@Ref) ) (! (dummyFunction_20915 (|Tree__contents#triggerStateless| t_2@@0))
 :qid |stdinbpl.568:15|
 :skolemid |59|
 :pattern ( (|Tree__contents'| Heap@@1 t_2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_14626) (diz@@0 T@Ref) ) (! (|Tree__state#everUsed_8164| (Tree__state diz@@0))
 :qid |stdinbpl.778:15|
 :skolemid |70|
 :pattern ( (|Tree__state#trigger_8164| Heap@@2 (Tree__state diz@@0)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.537:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_14626) (t_2@@1 T@Ref) ) (!  (and (= (Tree__contents Heap@@3 t_2@@1) (|Tree__contents'| Heap@@3 t_2@@1)) (dummyFunction_20915 (|Tree__contents#triggerStateless| t_2@@1)))
 :qid |stdinbpl.564:15|
 :skolemid |58|
 :pattern ( (Tree__contents Heap@@3 t_2@@1))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3041| s@@4 n@@3) s@@4))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3041| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.230:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_14626) (ExhaleHeap T@PolymorphicMapType_14626) (Mask@@1 T@PolymorphicMapType_14647) (pm_f_22 T@Field_21314_21315) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_8164_8165 Mask@@1 null pm_f_22) (IsPredicateField_8164_8165 pm_f_22)) (= (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@4) null (PredicateMaskField_8164 pm_f_22)) (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap) null (PredicateMaskField_8164 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_8164_8165 pm_f_22) (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap) null (PredicateMaskField_8164 pm_f_22)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_14626) (ExhaleHeap@@0 T@PolymorphicMapType_14626) (Mask@@2 T@PolymorphicMapType_14647) (pm_f_22@@0 T@Field_8114_8165) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_8114_8165 Mask@@2 null pm_f_22@@0) (IsPredicateField_8114_48719 pm_f_22@@0)) (= (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@5) null (PredicateMaskField_8114 pm_f_22@@0)) (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@0) null (PredicateMaskField_8114 pm_f_22@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_8114_48719 pm_f_22@@0) (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@0) null (PredicateMaskField_8114 pm_f_22@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_14626) (ExhaleHeap@@1 T@PolymorphicMapType_14626) (Mask@@3 T@PolymorphicMapType_14647) (pm_f_22@@1 T@Field_21314_21315) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_8164_8165 Mask@@3 null pm_f_22@@1) (IsWandField_8164_52389 pm_f_22@@1)) (= (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@6) null (WandMaskField_8164 pm_f_22@@1)) (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@1) null (WandMaskField_8164 pm_f_22@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsWandField_8164_52389 pm_f_22@@1) (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@1) null (WandMaskField_8164 pm_f_22@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_14626) (ExhaleHeap@@2 T@PolymorphicMapType_14626) (Mask@@4 T@PolymorphicMapType_14647) (pm_f_22@@2 T@Field_8114_8165) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_8114_8165 Mask@@4 null pm_f_22@@2) (IsWandField_8114_52032 pm_f_22@@2)) (= (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@7) null (WandMaskField_8114 pm_f_22@@2)) (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@2) null (WandMaskField_8114 pm_f_22@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_8114_52032 pm_f_22@@2) (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@2) null (WandMaskField_8114 pm_f_22@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_14626) (Mask@@5 T@PolymorphicMapType_14647) (t_2@@2 T@Ref) ) (!  (=> (state Heap@@8 Mask@@5) (= (|Tree__contents'| Heap@@8 t_2@@2) (|Tree__contents#frame| (FrameFragment_8165 (ite (not (= t_2@@2 null)) (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@8) null (Tree__state t_2@@2)) EmptyFrame)) t_2@@2)))
 :qid |stdinbpl.581:15|
 :skolemid |61|
 :pattern ( (state Heap@@8 Mask@@5) (|Tree__contents'| Heap@@8 t_2@@2))
 :pattern ( (state Heap@@8 Mask@@5) (|Tree__contents#triggerStateless| t_2@@2) (|Tree__state#trigger_8164| Heap@@8 (Tree__state t_2@@2)) (|Tree__state#trigger_8164| Heap@@8 (Tree__state t_2@@2)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((diz@@1 T@Ref) (diz2 T@Ref) ) (!  (=> (= (Tree__state diz@@1) (Tree__state diz2)) (= diz@@1 diz2))
 :qid |stdinbpl.769:15|
 :skolemid |68|
 :pattern ( (Tree__state diz@@1) (Tree__state diz2))
)))
(assert (forall ((diz@@2 T@Ref) (diz2@@0 T@Ref) ) (!  (=> (= (|Tree__state#sm| diz@@2) (|Tree__state#sm| diz2@@0)) (= diz@@2 diz2@@0))
 :qid |stdinbpl.773:15|
 :skolemid |69|
 :pattern ( (|Tree__state#sm| diz@@2) (|Tree__state#sm| diz2@@0))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3054| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_3054| s@@6 t) n@@5) (|Seq#Append_3054| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3054| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_14626) (ExhaleHeap@@3 T@PolymorphicMapType_14626) (Mask@@6 T@PolymorphicMapType_14647) (pm_f_22@@3 T@Field_21314_21315) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_8164_8165 Mask@@6 null pm_f_22@@3) (IsPredicateField_8164_8165 pm_f_22@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_20704_2989) ) (!  (=> (select (|PolymorphicMapType_15175_8112_2989#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@9) null (PredicateMaskField_8164 pm_f_22@@3))) o2_22 f_37) (= (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@9) o2_22 f_37) (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_14699_14700) ) (!  (=> (select (|PolymorphicMapType_15175_8114_8115#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@9) null (PredicateMaskField_8164 pm_f_22@@3))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@9) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_14686_53) ) (!  (=> (select (|PolymorphicMapType_15175_8112_53#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@9) null (PredicateMaskField_8164 pm_f_22@@3))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@9) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_8114_8165) ) (!  (=> (select (|PolymorphicMapType_15175_8112_21315#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@9) null (PredicateMaskField_8164 pm_f_22@@3))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@9) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_8114_25790) ) (!  (=> (select (|PolymorphicMapType_15175_8112_50176#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@9) null (PredicateMaskField_8164 pm_f_22@@3))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@9) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@3 f_37@@3))
))) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_8164_2989) ) (!  (=> (select (|PolymorphicMapType_15175_21314_2989#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@9) null (PredicateMaskField_8164 pm_f_22@@3))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@9) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_8164_8115) ) (!  (=> (select (|PolymorphicMapType_15175_21314_8115#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@9) null (PredicateMaskField_8164 pm_f_22@@3))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@9) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_8164_53) ) (!  (=> (select (|PolymorphicMapType_15175_21314_53#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@9) null (PredicateMaskField_8164 pm_f_22@@3))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@9) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_21314_21315) ) (!  (=> (select (|PolymorphicMapType_15175_21314_21315#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@9) null (PredicateMaskField_8164 pm_f_22@@3))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@9) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_25785_25790) ) (!  (=> (select (|PolymorphicMapType_15175_21314_51224#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@9) null (PredicateMaskField_8164 pm_f_22@@3))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@9) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@3) o2_22@@8 f_37@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@6) (IsPredicateField_8164_8165 pm_f_22@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_14626) (ExhaleHeap@@4 T@PolymorphicMapType_14626) (Mask@@7 T@PolymorphicMapType_14647) (pm_f_22@@4 T@Field_8114_8165) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_8114_8165 Mask@@7 null pm_f_22@@4) (IsPredicateField_8114_48719 pm_f_22@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_20704_2989) ) (!  (=> (select (|PolymorphicMapType_15175_8112_2989#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@10) null (PredicateMaskField_8114 pm_f_22@@4))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@10) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@9 f_37@@9))
)) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_14699_14700) ) (!  (=> (select (|PolymorphicMapType_15175_8114_8115#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@10) null (PredicateMaskField_8114 pm_f_22@@4))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@10) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@10 f_37@@10))
))) (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_14686_53) ) (!  (=> (select (|PolymorphicMapType_15175_8112_53#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@10) null (PredicateMaskField_8114 pm_f_22@@4))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@10) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@11 f_37@@11))
))) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_8114_8165) ) (!  (=> (select (|PolymorphicMapType_15175_8112_21315#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@10) null (PredicateMaskField_8114 pm_f_22@@4))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@10) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_8114_25790) ) (!  (=> (select (|PolymorphicMapType_15175_8112_50176#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@10) null (PredicateMaskField_8114 pm_f_22@@4))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@10) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_8164_2989) ) (!  (=> (select (|PolymorphicMapType_15175_21314_2989#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@10) null (PredicateMaskField_8114 pm_f_22@@4))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@10) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@14 f_37@@14))
))) (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_8164_8115) ) (!  (=> (select (|PolymorphicMapType_15175_21314_8115#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@10) null (PredicateMaskField_8114 pm_f_22@@4))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@10) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@15 f_37@@15))
))) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_8164_53) ) (!  (=> (select (|PolymorphicMapType_15175_21314_53#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@10) null (PredicateMaskField_8114 pm_f_22@@4))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@10) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_21314_21315) ) (!  (=> (select (|PolymorphicMapType_15175_21314_21315#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@10) null (PredicateMaskField_8114 pm_f_22@@4))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@10) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_25785_25790) ) (!  (=> (select (|PolymorphicMapType_15175_21314_51224#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@10) null (PredicateMaskField_8114 pm_f_22@@4))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@10) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@4) o2_22@@18 f_37@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@7) (IsPredicateField_8114_48719 pm_f_22@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_14626) (ExhaleHeap@@5 T@PolymorphicMapType_14626) (Mask@@8 T@PolymorphicMapType_14647) (pm_f_22@@5 T@Field_21314_21315) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@8) (=> (and (HasDirectPerm_8164_8165 Mask@@8 null pm_f_22@@5) (IsWandField_8164_52389 pm_f_22@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@19 T@Ref) (f_37@@19 T@Field_20704_2989) ) (!  (=> (select (|PolymorphicMapType_15175_8112_2989#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@11) null (WandMaskField_8164 pm_f_22@@5))) o2_22@@19 f_37@@19) (= (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@11) o2_22@@19 f_37@@19) (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@19 f_37@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@19 f_37@@19))
)) (forall ((o2_22@@20 T@Ref) (f_37@@20 T@Field_14699_14700) ) (!  (=> (select (|PolymorphicMapType_15175_8114_8115#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@11) null (WandMaskField_8164 pm_f_22@@5))) o2_22@@20 f_37@@20) (= (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@11) o2_22@@20 f_37@@20) (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@20 f_37@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@20 f_37@@20))
))) (forall ((o2_22@@21 T@Ref) (f_37@@21 T@Field_14686_53) ) (!  (=> (select (|PolymorphicMapType_15175_8112_53#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@11) null (WandMaskField_8164 pm_f_22@@5))) o2_22@@21 f_37@@21) (= (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@11) o2_22@@21 f_37@@21) (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@21 f_37@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@21 f_37@@21))
))) (forall ((o2_22@@22 T@Ref) (f_37@@22 T@Field_8114_8165) ) (!  (=> (select (|PolymorphicMapType_15175_8112_21315#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@11) null (WandMaskField_8164 pm_f_22@@5))) o2_22@@22 f_37@@22) (= (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@11) o2_22@@22 f_37@@22) (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@22 f_37@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@22 f_37@@22))
))) (forall ((o2_22@@23 T@Ref) (f_37@@23 T@Field_8114_25790) ) (!  (=> (select (|PolymorphicMapType_15175_8112_50176#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@11) null (WandMaskField_8164 pm_f_22@@5))) o2_22@@23 f_37@@23) (= (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@11) o2_22@@23 f_37@@23) (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@23 f_37@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@23 f_37@@23))
))) (forall ((o2_22@@24 T@Ref) (f_37@@24 T@Field_8164_2989) ) (!  (=> (select (|PolymorphicMapType_15175_21314_2989#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@11) null (WandMaskField_8164 pm_f_22@@5))) o2_22@@24 f_37@@24) (= (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@11) o2_22@@24 f_37@@24) (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@24 f_37@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@24 f_37@@24))
))) (forall ((o2_22@@25 T@Ref) (f_37@@25 T@Field_8164_8115) ) (!  (=> (select (|PolymorphicMapType_15175_21314_8115#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@11) null (WandMaskField_8164 pm_f_22@@5))) o2_22@@25 f_37@@25) (= (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@11) o2_22@@25 f_37@@25) (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@25 f_37@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@25 f_37@@25))
))) (forall ((o2_22@@26 T@Ref) (f_37@@26 T@Field_8164_53) ) (!  (=> (select (|PolymorphicMapType_15175_21314_53#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@11) null (WandMaskField_8164 pm_f_22@@5))) o2_22@@26 f_37@@26) (= (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@11) o2_22@@26 f_37@@26) (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@26 f_37@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@26 f_37@@26))
))) (forall ((o2_22@@27 T@Ref) (f_37@@27 T@Field_21314_21315) ) (!  (=> (select (|PolymorphicMapType_15175_21314_21315#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@11) null (WandMaskField_8164 pm_f_22@@5))) o2_22@@27 f_37@@27) (= (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@11) o2_22@@27 f_37@@27) (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@27 f_37@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@27 f_37@@27))
))) (forall ((o2_22@@28 T@Ref) (f_37@@28 T@Field_25785_25790) ) (!  (=> (select (|PolymorphicMapType_15175_21314_51224#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@11) null (WandMaskField_8164 pm_f_22@@5))) o2_22@@28 f_37@@28) (= (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@11) o2_22@@28 f_37@@28) (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@28 f_37@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@5) o2_22@@28 f_37@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@8) (IsWandField_8164_52389 pm_f_22@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_14626) (ExhaleHeap@@6 T@PolymorphicMapType_14626) (Mask@@9 T@PolymorphicMapType_14647) (pm_f_22@@6 T@Field_8114_8165) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@9) (=> (and (HasDirectPerm_8114_8165 Mask@@9 null pm_f_22@@6) (IsWandField_8114_52032 pm_f_22@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@29 T@Ref) (f_37@@29 T@Field_20704_2989) ) (!  (=> (select (|PolymorphicMapType_15175_8112_2989#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@12) null (WandMaskField_8114 pm_f_22@@6))) o2_22@@29 f_37@@29) (= (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@12) o2_22@@29 f_37@@29) (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@29 f_37@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@29 f_37@@29))
)) (forall ((o2_22@@30 T@Ref) (f_37@@30 T@Field_14699_14700) ) (!  (=> (select (|PolymorphicMapType_15175_8114_8115#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@12) null (WandMaskField_8114 pm_f_22@@6))) o2_22@@30 f_37@@30) (= (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@12) o2_22@@30 f_37@@30) (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@30 f_37@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@30 f_37@@30))
))) (forall ((o2_22@@31 T@Ref) (f_37@@31 T@Field_14686_53) ) (!  (=> (select (|PolymorphicMapType_15175_8112_53#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@12) null (WandMaskField_8114 pm_f_22@@6))) o2_22@@31 f_37@@31) (= (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@12) o2_22@@31 f_37@@31) (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@31 f_37@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@31 f_37@@31))
))) (forall ((o2_22@@32 T@Ref) (f_37@@32 T@Field_8114_8165) ) (!  (=> (select (|PolymorphicMapType_15175_8112_21315#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@12) null (WandMaskField_8114 pm_f_22@@6))) o2_22@@32 f_37@@32) (= (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@12) o2_22@@32 f_37@@32) (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@32 f_37@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@32 f_37@@32))
))) (forall ((o2_22@@33 T@Ref) (f_37@@33 T@Field_8114_25790) ) (!  (=> (select (|PolymorphicMapType_15175_8112_50176#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@12) null (WandMaskField_8114 pm_f_22@@6))) o2_22@@33 f_37@@33) (= (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@12) o2_22@@33 f_37@@33) (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@33 f_37@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@33 f_37@@33))
))) (forall ((o2_22@@34 T@Ref) (f_37@@34 T@Field_8164_2989) ) (!  (=> (select (|PolymorphicMapType_15175_21314_2989#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@12) null (WandMaskField_8114 pm_f_22@@6))) o2_22@@34 f_37@@34) (= (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@12) o2_22@@34 f_37@@34) (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@34 f_37@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@34 f_37@@34))
))) (forall ((o2_22@@35 T@Ref) (f_37@@35 T@Field_8164_8115) ) (!  (=> (select (|PolymorphicMapType_15175_21314_8115#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@12) null (WandMaskField_8114 pm_f_22@@6))) o2_22@@35 f_37@@35) (= (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@12) o2_22@@35 f_37@@35) (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@35 f_37@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@35 f_37@@35))
))) (forall ((o2_22@@36 T@Ref) (f_37@@36 T@Field_8164_53) ) (!  (=> (select (|PolymorphicMapType_15175_21314_53#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@12) null (WandMaskField_8114 pm_f_22@@6))) o2_22@@36 f_37@@36) (= (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@12) o2_22@@36 f_37@@36) (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@36 f_37@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@36 f_37@@36))
))) (forall ((o2_22@@37 T@Ref) (f_37@@37 T@Field_21314_21315) ) (!  (=> (select (|PolymorphicMapType_15175_21314_21315#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@12) null (WandMaskField_8114 pm_f_22@@6))) o2_22@@37 f_37@@37) (= (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@12) o2_22@@37 f_37@@37) (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@37 f_37@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@37 f_37@@37))
))) (forall ((o2_22@@38 T@Ref) (f_37@@38 T@Field_25785_25790) ) (!  (=> (select (|PolymorphicMapType_15175_21314_51224#PolymorphicMapType_15175| (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@12) null (WandMaskField_8114 pm_f_22@@6))) o2_22@@38 f_37@@38) (= (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@12) o2_22@@38 f_37@@38) (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@38 f_37@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@6) o2_22@@38 f_37@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@9) (IsWandField_8114_52032 pm_f_22@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_14626) (ExhaleHeap@@7 T@PolymorphicMapType_14626) (Mask@@10 T@PolymorphicMapType_14647) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@13) o_46 $allocated) (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@7) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@7) o_46 $allocated))
)))
(assert (forall ((p T@Field_8114_8165) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14686_14686 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14686_14686 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_21314_21315) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8164_8164 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8164_8164 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3160|)) (not (= s1 |Seq#Empty_3160|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3054| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3054| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3054| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_8112_2989 Tree__data)))
(assert  (not (IsWandField_8112_2989 Tree__data)))
(assert  (not (IsPredicateField_8114_8115 Tree__left)))
(assert  (not (IsWandField_8114_8115 Tree__left)))
(assert  (not (IsPredicateField_8114_8115 Tree__right)))
(assert  (not (IsWandField_8114_8115 Tree__right)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_14626) (ExhaleHeap@@8 T@PolymorphicMapType_14626) (Mask@@11 T@PolymorphicMapType_14647) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_14626) (Mask@@12 T@PolymorphicMapType_14647) (t_2@@3 T@Ref) ) (!  (=> (and (state Heap@@15 Mask@@12) (< AssumeFunctionsAbove 0)) (= (Tree__contents Heap@@15 t_2@@3) (ite (= t_2@@3 null) |Seq#Empty_3160| (|Seq#Append_3054| (|Seq#Append_3054| (|Tree__contents'| Heap@@15 (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@15) t_2@@3 Tree__left)) (|Seq#Singleton_2989| (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@15) t_2@@3 Tree__data))) (|Tree__contents'| Heap@@15 (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@15) t_2@@3 Tree__right))))))
 :qid |stdinbpl.574:15|
 :skolemid |60|
 :pattern ( (state Heap@@15 Mask@@12) (Tree__contents Heap@@15 t_2@@3))
 :pattern ( (state Heap@@15 Mask@@12) (|Tree__contents#triggerStateless| t_2@@3) (|Tree__state#trigger_8164| Heap@@15 (Tree__state t_2@@3)) (|Tree__state#trigger_8164| Heap@@15 (Tree__state t_2@@3)))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_14647) (o_2@@9 T@Ref) (f_4@@9 T@Field_8114_25790) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| Mask@@13) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8112_59292 f_4@@9))) (not (IsWandField_8112_59308 f_4@@9))) (<= (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| Mask@@13) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| Mask@@13) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_14647) (o_2@@10 T@Ref) (f_4@@10 T@Field_14686_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| Mask@@14) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8112_53 f_4@@10))) (not (IsWandField_8112_53 f_4@@10))) (<= (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| Mask@@14) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| Mask@@14) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_14647) (o_2@@11 T@Ref) (f_4@@11 T@Field_14699_14700) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@@15) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8114_8115 f_4@@11))) (not (IsWandField_8114_8115 f_4@@11))) (<= (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@@15) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@@15) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_14647) (o_2@@12 T@Ref) (f_4@@12 T@Field_20704_2989) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@@16) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8112_2989 f_4@@12))) (not (IsWandField_8112_2989 f_4@@12))) (<= (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@@16) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@@16) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_14647) (o_2@@13 T@Ref) (f_4@@13 T@Field_8114_8165) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| Mask@@17) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8114_48719 f_4@@13))) (not (IsWandField_8114_52032 f_4@@13))) (<= (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| Mask@@17) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| Mask@@17) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_14647) (o_2@@14 T@Ref) (f_4@@14 T@Field_25785_25790) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| Mask@@18) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8164_58489 f_4@@14))) (not (IsWandField_8164_58505 f_4@@14))) (<= (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| Mask@@18) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| Mask@@18) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_14647) (o_2@@15 T@Ref) (f_4@@15 T@Field_8164_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| Mask@@19) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8164_53 f_4@@15))) (not (IsWandField_8164_53 f_4@@15))) (<= (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| Mask@@19) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| Mask@@19) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_14647) (o_2@@16 T@Ref) (f_4@@16 T@Field_8164_8115) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| Mask@@20) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8164_8115 f_4@@16))) (not (IsWandField_8164_8115 f_4@@16))) (<= (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| Mask@@20) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| Mask@@20) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_14647) (o_2@@17 T@Ref) (f_4@@17 T@Field_8164_2989) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| Mask@@21) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8164_2989 f_4@@17))) (not (IsWandField_8164_2989 f_4@@17))) (<= (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| Mask@@21) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| Mask@@21) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_14647) (o_2@@18 T@Ref) (f_4@@18 T@Field_21314_21315) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| Mask@@22) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8164_8165 f_4@@18))) (not (IsWandField_8164_52389 f_4@@18))) (<= (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| Mask@@22) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| Mask@@22) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_14647) (o_2@@19 T@Ref) (f_4@@19 T@Field_25785_25790) ) (! (= (HasDirectPerm_8164_48474 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8164_48474 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_14647) (o_2@@20 T@Ref) (f_4@@20 T@Field_8164_53) ) (! (= (HasDirectPerm_8164_53 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8164_53 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_14647) (o_2@@21 T@Ref) (f_4@@21 T@Field_21314_21315) ) (! (= (HasDirectPerm_8164_8165 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8164_8165 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_14647) (o_2@@22 T@Ref) (f_4@@22 T@Field_8164_2989) ) (! (= (HasDirectPerm_8164_2989 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8164_2989 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_14647) (o_2@@23 T@Ref) (f_4@@23 T@Field_8164_8115) ) (! (= (HasDirectPerm_8164_8115 Mask@@27 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| Mask@@27) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8164_8115 Mask@@27 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_14647) (o_2@@24 T@Ref) (f_4@@24 T@Field_8114_25790) ) (! (= (HasDirectPerm_8114_47333 Mask@@28 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| Mask@@28) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8114_47333 Mask@@28 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_14647) (o_2@@25 T@Ref) (f_4@@25 T@Field_14686_53) ) (! (= (HasDirectPerm_8114_53 Mask@@29 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| Mask@@29) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8114_53 Mask@@29 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_14647) (o_2@@26 T@Ref) (f_4@@26 T@Field_8114_8165) ) (! (= (HasDirectPerm_8114_8165 Mask@@30 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| Mask@@30) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8114_8165 Mask@@30 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_14647) (o_2@@27 T@Ref) (f_4@@27 T@Field_20704_2989) ) (! (= (HasDirectPerm_8112_2989 Mask@@31 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@@31) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8112_2989 Mask@@31 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_14647) (o_2@@28 T@Ref) (f_4@@28 T@Field_14699_14700) ) (! (= (HasDirectPerm_8114_8115 Mask@@32 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@@32) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8114_8115 Mask@@32 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.535:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_14626) (ExhaleHeap@@9 T@PolymorphicMapType_14626) (Mask@@33 T@PolymorphicMapType_14647) (o_46@@0 T@Ref) (f_37@@39 T@Field_25785_25790) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@33) (=> (HasDirectPerm_8164_48474 Mask@@33 o_46@@0 f_37@@39) (= (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@16) o_46@@0 f_37@@39) (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@9) o_46@@0 f_37@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@33) (select (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| ExhaleHeap@@9) o_46@@0 f_37@@39))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_14626) (ExhaleHeap@@10 T@PolymorphicMapType_14626) (Mask@@34 T@PolymorphicMapType_14647) (o_46@@1 T@Ref) (f_37@@40 T@Field_8164_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@34) (=> (HasDirectPerm_8164_53 Mask@@34 o_46@@1 f_37@@40) (= (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@17) o_46@@1 f_37@@40) (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| ExhaleHeap@@10) o_46@@1 f_37@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@34) (select (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| ExhaleHeap@@10) o_46@@1 f_37@@40))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_14626) (ExhaleHeap@@11 T@PolymorphicMapType_14626) (Mask@@35 T@PolymorphicMapType_14647) (o_46@@2 T@Ref) (f_37@@41 T@Field_21314_21315) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@35) (=> (HasDirectPerm_8164_8165 Mask@@35 o_46@@2 f_37@@41) (= (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@18) o_46@@2 f_37@@41) (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| ExhaleHeap@@11) o_46@@2 f_37@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@35) (select (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| ExhaleHeap@@11) o_46@@2 f_37@@41))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_14626) (ExhaleHeap@@12 T@PolymorphicMapType_14626) (Mask@@36 T@PolymorphicMapType_14647) (o_46@@3 T@Ref) (f_37@@42 T@Field_8164_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@36) (=> (HasDirectPerm_8164_2989 Mask@@36 o_46@@3 f_37@@42) (= (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@19) o_46@@3 f_37@@42) (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| ExhaleHeap@@12) o_46@@3 f_37@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@36) (select (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| ExhaleHeap@@12) o_46@@3 f_37@@42))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_14626) (ExhaleHeap@@13 T@PolymorphicMapType_14626) (Mask@@37 T@PolymorphicMapType_14647) (o_46@@4 T@Ref) (f_37@@43 T@Field_8164_8115) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@37) (=> (HasDirectPerm_8164_8115 Mask@@37 o_46@@4 f_37@@43) (= (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@20) o_46@@4 f_37@@43) (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| ExhaleHeap@@13) o_46@@4 f_37@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@37) (select (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| ExhaleHeap@@13) o_46@@4 f_37@@43))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_14626) (ExhaleHeap@@14 T@PolymorphicMapType_14626) (Mask@@38 T@PolymorphicMapType_14647) (o_46@@5 T@Ref) (f_37@@44 T@Field_8114_25790) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@38) (=> (HasDirectPerm_8114_47333 Mask@@38 o_46@@5 f_37@@44) (= (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@21) o_46@@5 f_37@@44) (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@14) o_46@@5 f_37@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@38) (select (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| ExhaleHeap@@14) o_46@@5 f_37@@44))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_14626) (ExhaleHeap@@15 T@PolymorphicMapType_14626) (Mask@@39 T@PolymorphicMapType_14647) (o_46@@6 T@Ref) (f_37@@45 T@Field_14686_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@39) (=> (HasDirectPerm_8114_53 Mask@@39 o_46@@6 f_37@@45) (= (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@22) o_46@@6 f_37@@45) (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@15) o_46@@6 f_37@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@39) (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| ExhaleHeap@@15) o_46@@6 f_37@@45))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_14626) (ExhaleHeap@@16 T@PolymorphicMapType_14626) (Mask@@40 T@PolymorphicMapType_14647) (o_46@@7 T@Ref) (f_37@@46 T@Field_8114_8165) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@40) (=> (HasDirectPerm_8114_8165 Mask@@40 o_46@@7 f_37@@46) (= (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@23) o_46@@7 f_37@@46) (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| ExhaleHeap@@16) o_46@@7 f_37@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@40) (select (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| ExhaleHeap@@16) o_46@@7 f_37@@46))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_14626) (ExhaleHeap@@17 T@PolymorphicMapType_14626) (Mask@@41 T@PolymorphicMapType_14647) (o_46@@8 T@Ref) (f_37@@47 T@Field_20704_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@41) (=> (HasDirectPerm_8112_2989 Mask@@41 o_46@@8 f_37@@47) (= (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@24) o_46@@8 f_37@@47) (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| ExhaleHeap@@17) o_46@@8 f_37@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@41) (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| ExhaleHeap@@17) o_46@@8 f_37@@47))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_14626) (ExhaleHeap@@18 T@PolymorphicMapType_14626) (Mask@@42 T@PolymorphicMapType_14647) (o_46@@9 T@Ref) (f_37@@48 T@Field_14699_14700) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@42) (=> (HasDirectPerm_8114_8115 Mask@@42 o_46@@9 f_37@@48) (= (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@25) o_46@@9 f_37@@48) (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| ExhaleHeap@@18) o_46@@9 f_37@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@42) (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| ExhaleHeap@@18) o_46@@9 f_37@@48))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3160|)) (not (= s1@@0 |Seq#Empty_3160|))) (= (|Seq#Length_2867| (|Seq#Append_3054| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3054| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8114_25790) ) (! (= (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_14686_53) ) (! (= (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_14699_14700) ) (! (= (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_20704_2989) ) (! (= (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_8114_8165) ) (! (= (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_25785_25790) ) (! (= (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8164_53) ) (! (= (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8164_8115) ) (! (= (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8164_2989) ) (! (= (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_21314_21315) ) (! (= (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_3041| (|Seq#Append_3054| s@@7 t@@0) n@@7) (|Seq#Drop_3041| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3041| (|Seq#Append_3054| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_14647) (SummandMask1 T@PolymorphicMapType_14647) (SummandMask2 T@PolymorphicMapType_14647) (o_2@@39 T@Ref) (f_4@@39 T@Field_8114_25790) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_14647) (SummandMask1@@0 T@PolymorphicMapType_14647) (SummandMask2@@0 T@PolymorphicMapType_14647) (o_2@@40 T@Ref) (f_4@@40 T@Field_14686_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_14647) (SummandMask1@@1 T@PolymorphicMapType_14647) (SummandMask2@@1 T@PolymorphicMapType_14647) (o_2@@41 T@Ref) (f_4@@41 T@Field_14699_14700) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_14647) (SummandMask1@@2 T@PolymorphicMapType_14647) (SummandMask2@@2 T@PolymorphicMapType_14647) (o_2@@42 T@Ref) (f_4@@42 T@Field_20704_2989) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_14647) (SummandMask1@@3 T@PolymorphicMapType_14647) (SummandMask2@@3 T@PolymorphicMapType_14647) (o_2@@43 T@Ref) (f_4@@43 T@Field_8114_8165) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_14647) (SummandMask1@@4 T@PolymorphicMapType_14647) (SummandMask2@@4 T@PolymorphicMapType_14647) (o_2@@44 T@Ref) (f_4@@44 T@Field_25785_25790) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_14647) (SummandMask1@@5 T@PolymorphicMapType_14647) (SummandMask2@@5 T@PolymorphicMapType_14647) (o_2@@45 T@Ref) (f_4@@45 T@Field_8164_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_14647) (SummandMask1@@6 T@PolymorphicMapType_14647) (SummandMask2@@6 T@PolymorphicMapType_14647) (o_2@@46 T@Ref) (f_4@@46 T@Field_8164_8115) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_14647) (SummandMask1@@7 T@PolymorphicMapType_14647) (SummandMask2@@7 T@PolymorphicMapType_14647) (o_2@@47 T@Ref) (f_4@@47 T@Field_8164_2989) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_14647) (SummandMask1@@8 T@PolymorphicMapType_14647) (SummandMask2@@8 T@PolymorphicMapType_14647) (o_2@@48 T@Ref) (f_4@@48 T@Field_21314_21315) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.534:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3041| a b) (= a b))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3041| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_3160|) (= (|Seq#Append_3054| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3160|) (= (|Seq#Append_3054| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3054| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2989| t@@1) 0) t@@1)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2989| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3041| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3041| s0@@2 s1@@2))
)))
(assert (forall ((diz@@3 T@Ref) ) (! (= (getPredWandId_8164_8165 (Tree__state diz@@3)) 0)
 :qid |stdinbpl.763:15|
 :skolemid |67|
 :pattern ( (Tree__state diz@@3))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2989| t@@2)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2989| t@@2))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_3054| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3054| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_14626) (o_12 T@Ref) (f_24 T@Field_25785_25790) (v@@2 T@PolymorphicMapType_15175) ) (! (succHeap Heap@@26 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@26) (store (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@26) o_12 f_24 v@@2) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@26) (store (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@26) o_12 f_24 v@@2) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@26) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_14626) (o_12@@0 T@Ref) (f_24@@0 T@Field_21314_21315) (v@@3 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@27) (store (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@27) o_12@@0 f_24@@0 v@@3) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@27) (store (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@27) o_12@@0 f_24@@0 v@@3) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@27) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_14626) (o_12@@1 T@Ref) (f_24@@1 T@Field_8164_2989) (v@@4 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@28) (store (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@28) o_12@@1 f_24@@1 v@@4) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@28) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@28) (store (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@28) o_12@@1 f_24@@1 v@@4) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_14626) (o_12@@2 T@Ref) (f_24@@2 T@Field_8164_8115) (v@@5 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@29) (store (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@29) o_12@@2 f_24@@2 v@@5) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@29) (store (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@29) o_12@@2 f_24@@2 v@@5) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@29) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_14626) (o_12@@3 T@Ref) (f_24@@3 T@Field_8164_53) (v@@6 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@30) (store (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@30) o_12@@3 f_24@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@30) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@30) (store (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@30) o_12@@3 f_24@@3 v@@6)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_14626) (o_12@@4 T@Ref) (f_24@@4 T@Field_8114_25790) (v@@7 T@PolymorphicMapType_15175) ) (! (succHeap Heap@@31 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@31) (store (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@31) o_12@@4 f_24@@4 v@@7) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@31) (store (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@31) o_12@@4 f_24@@4 v@@7) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@31) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_14626) (o_12@@5 T@Ref) (f_24@@5 T@Field_8114_8165) (v@@8 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@32) (store (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@32) o_12@@5 f_24@@5 v@@8) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@32) (store (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@32) o_12@@5 f_24@@5 v@@8) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@32) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_14626) (o_12@@6 T@Ref) (f_24@@6 T@Field_20704_2989) (v@@9 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@33) (store (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@33) o_12@@6 f_24@@6 v@@9) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@33) (store (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@33) o_12@@6 f_24@@6 v@@9) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@33) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_14626) (o_12@@7 T@Ref) (f_24@@7 T@Field_14699_14700) (v@@10 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@34) (store (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@34) o_12@@7 f_24@@7 v@@10) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@34) (store (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@34) o_12@@7 f_24@@7 v@@10) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@34) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_14626) (o_12@@8 T@Ref) (f_24@@8 T@Field_14686_53) (v@@11 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_14626 (store (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@35) o_12@@8 f_24@@8 v@@11) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14626 (store (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@35) o_12@@8 f_24@@8 v@@11) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@35) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@35)))
)))
(assert (forall ((diz@@4 T@Ref) ) (! (= (PredicateMaskField_8164 (Tree__state diz@@4)) (|Tree__state#sm| diz@@4))
 :qid |stdinbpl.755:15|
 :skolemid |65|
 :pattern ( (PredicateMaskField_8164 (Tree__state diz@@4)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_3041| (|Seq#Append_3054| s@@12 t@@4) n@@9) (|Seq#Append_3054| (|Seq#Drop_3041| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3041| (|Seq#Append_3054| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_3041| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3041| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3160|)) (not (= s1@@3 |Seq#Empty_3160|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_3054| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3054| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_3054| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3160|)) (not (= s1@@4 |Seq#Empty_3160|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3054| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3054| s0@@4 s1@@4))
)))
(assert (forall ((o_12@@9 T@Ref) (f_16 T@Field_14699_14700) (Heap@@36 T@PolymorphicMapType_14626) ) (!  (=> (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@36) o_12@@9 $allocated) (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@36) (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@36) o_12@@9 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@36) o_12@@9 f_16))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3041| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3041| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3041| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3041| s0@@5 s1@@5))
)))
(assert (forall ((p@@2 T@Field_8114_8165) (v_1@@1 T@FrameType) (q T@Field_8114_8165) (w@@1 T@FrameType) (r T@Field_8114_8165) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14686_14686 p@@2 v_1@@1 q w@@1) (InsidePredicate_14686_14686 q w@@1 r u)) (InsidePredicate_14686_14686 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14686_14686 p@@2 v_1@@1 q w@@1) (InsidePredicate_14686_14686 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_8114_8165) (v_1@@2 T@FrameType) (q@@0 T@Field_8114_8165) (w@@2 T@FrameType) (r@@0 T@Field_21314_21315) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14686_14686 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14686_8164 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14686_8164 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14686_14686 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14686_8164 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_8114_8165) (v_1@@3 T@FrameType) (q@@1 T@Field_21314_21315) (w@@3 T@FrameType) (r@@1 T@Field_8114_8165) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14686_8164 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8164_14686 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14686_14686 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14686_8164 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8164_14686 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_8114_8165) (v_1@@4 T@FrameType) (q@@2 T@Field_21314_21315) (w@@4 T@FrameType) (r@@2 T@Field_21314_21315) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14686_8164 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8164_8164 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14686_8164 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14686_8164 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8164_8164 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_21314_21315) (v_1@@5 T@FrameType) (q@@3 T@Field_8114_8165) (w@@5 T@FrameType) (r@@3 T@Field_8114_8165) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8164_14686 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14686_14686 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8164_14686 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8164_14686 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14686_14686 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_21314_21315) (v_1@@6 T@FrameType) (q@@4 T@Field_8114_8165) (w@@6 T@FrameType) (r@@4 T@Field_21314_21315) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8164_14686 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14686_8164 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8164_8164 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8164_14686 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14686_8164 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_21314_21315) (v_1@@7 T@FrameType) (q@@5 T@Field_21314_21315) (w@@7 T@FrameType) (r@@5 T@Field_8114_8165) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8164_8164 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8164_14686 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8164_14686 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8164_8164 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8164_14686 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_21314_21315) (v_1@@8 T@FrameType) (q@@6 T@Field_21314_21315) (w@@8 T@FrameType) (r@@6 T@Field_21314_21315) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8164_8164 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8164_8164 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8164_8164 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8164_8164 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8164_8164 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_3160|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_3160|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun AssertMask@2 () T@PolymorphicMapType_14647)
(declare-fun AssertMask@1 () T@PolymorphicMapType_14647)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_14647)
(declare-fun Heap@3 () T@PolymorphicMapType_14626)
(declare-fun AssertMask@0 () T@PolymorphicMapType_14647)
(declare-fun Heap@@37 () T@PolymorphicMapType_14626)
(declare-fun diz@@5 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_14626)
(declare-fun Mask@0 () T@PolymorphicMapType_14647)
(declare-fun Mask@1 () T@PolymorphicMapType_14647)
(declare-fun Heap@1 () T@PolymorphicMapType_14626)
(declare-fun Heap@2 () T@PolymorphicMapType_14626)
(declare-fun PostHeap@0 () T@PolymorphicMapType_14626)
(declare-fun sys__result () T@Ref)
(declare-fun PostMask@0 () T@PolymorphicMapType_14647)
(declare-fun PostMask@1 () T@PolymorphicMapType_14647)
(declare-fun PostMask@2 () T@PolymorphicMapType_14647)
(declare-fun current_thread_id () Int)
(set-info :boogie-vc-id Tree__Tree)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon8_correct  (=> (= AssertMask@2 (PolymorphicMapType_14647 (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| AssertMask@1) (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| AssertMask@1) (store (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| AssertMask@1) freshObj@0 Tree__right (- (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| AssertMask@1) freshObj@0 Tree__right) FullPerm)) (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| AssertMask@1) (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| AssertMask@1) (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| AssertMask@1) (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| AssertMask@1) (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| AssertMask@1) (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| AssertMask@1) (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| AssertMask@1))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (HasDirectPerm_8114_8115 Mask@2 freshObj@0 Tree__right)) (=> (HasDirectPerm_8114_8115 Mask@2 freshObj@0 Tree__right) (=> (= (ControlFlow 0 6) (- 0 7)) (= (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@3) freshObj@0 Tree__right) null)))))))
(let ((anon18_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 11) 6)) anon8_correct)))
(let ((anon18_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| AssertMask@1) freshObj@0 Tree__right))) (=> (<= FullPerm (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| AssertMask@1) freshObj@0 Tree__right)) (=> (= (ControlFlow 0 9) 6) anon8_correct))))))
(let ((anon6_correct  (=> (= AssertMask@1 (PolymorphicMapType_14647 (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| AssertMask@0) (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| AssertMask@0) (store (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| AssertMask@0) freshObj@0 Tree__left (- (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| AssertMask@0) freshObj@0 Tree__left) FullPerm)) (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| AssertMask@0) (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| AssertMask@0) (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| AssertMask@0) (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| AssertMask@0) (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| AssertMask@0) (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| AssertMask@0) (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| AssertMask@0))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (HasDirectPerm_8114_8115 Mask@2 freshObj@0 Tree__left)) (=> (HasDirectPerm_8114_8115 Mask@2 freshObj@0 Tree__left) (and (=> (= (ControlFlow 0 12) (- 0 13)) (= (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@3) freshObj@0 Tree__left) null)) (=> (= (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@3) freshObj@0 Tree__left) null) (and (=> (= (ControlFlow 0 12) 9) anon18_Then_correct) (=> (= (ControlFlow 0 12) 11) anon18_Else_correct)))))))))
(let ((anon17_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 17) 12)) anon6_correct)))
(let ((anon17_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= FullPerm (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| AssertMask@0) freshObj@0 Tree__left))) (=> (<= FullPerm (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| AssertMask@0) freshObj@0 Tree__left)) (=> (= (ControlFlow 0 15) 12) anon6_correct))))))
(let ((anon4_correct  (=> (= AssertMask@0 (PolymorphicMapType_14647 (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| Mask@2) (store (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@2) freshObj@0 Tree__data (- (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@2) freshObj@0 Tree__data) FullPerm)) (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@2) (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| Mask@2) (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| Mask@2) (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| Mask@2) (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| Mask@2) (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| Mask@2) (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| Mask@2) (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| Mask@2))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (HasDirectPerm_8112_2989 Mask@2 freshObj@0 Tree__data)) (=> (HasDirectPerm_8112_2989 Mask@2 freshObj@0 Tree__data) (and (=> (= (ControlFlow 0 18) (- 0 19)) (= (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@3) freshObj@0 Tree__data) 0)) (=> (= (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@3) freshObj@0 Tree__data) 0) (and (=> (= (ControlFlow 0 18) 15) anon17_Then_correct) (=> (= (ControlFlow 0 18) 17) anon17_Else_correct)))))))))
(let ((anon16_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 23) 18)) anon4_correct)))
(let ((anon16_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= FullPerm (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@2) freshObj@0 Tree__data))) (=> (<= FullPerm (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@2) freshObj@0 Tree__data)) (=> (= (ControlFlow 0 21) 18) anon4_correct))))))
(let ((anon15_Else_correct  (=> (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@37) diz@@5 $allocated) (=> (and (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@37) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_14626 (store (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@@37) freshObj@0 $allocated true) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@@37) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@@37) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@@37) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@@37) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@@37) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@@37) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@@37) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@@37) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@@37)))) (and (= Mask@0 (PolymorphicMapType_14647 (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| ZeroMask) (store (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| ZeroMask) freshObj@0 Tree__data (+ (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| ZeroMask) freshObj@0 Tree__data) FullPerm)) (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| ZeroMask))) (= Mask@1 (PolymorphicMapType_14647 (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| Mask@0) (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@0) (store (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@0) freshObj@0 Tree__left (+ (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@0) freshObj@0 Tree__left) FullPerm)) (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| Mask@0) (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| Mask@0) (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| Mask@0) (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| Mask@0) (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| Mask@0) (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| Mask@0) (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| Mask@0))))) (and (and (= Mask@2 (PolymorphicMapType_14647 (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| Mask@1) (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@1) (store (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@1) freshObj@0 Tree__right (+ (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@1) freshObj@0 Tree__right) FullPerm)) (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| Mask@1) (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| Mask@1) (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| Mask@1) (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| Mask@1) (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| Mask@1) (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| Mask@1) (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| Mask@1))) (state Heap@0 Mask@2)) (and (state Heap@0 Mask@2) (state Heap@0 Mask@2)))) (and (=> (= (ControlFlow 0 24) (- 0 28)) (= FullPerm (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@2) freshObj@0 Tree__data))) (=> (= FullPerm (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| Mask@2) freshObj@0 Tree__data)) (=> (and (= Heap@1 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@0) (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@0) (store (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@0) freshObj@0 Tree__data 0) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@0) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@0) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@0) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@0) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@0) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@0) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@0))) (state Heap@1 Mask@2)) (and (=> (= (ControlFlow 0 24) (- 0 27)) (= FullPerm (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@2) freshObj@0 Tree__left))) (=> (= FullPerm (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@2) freshObj@0 Tree__left)) (=> (and (= Heap@2 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@1) (store (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@1) freshObj@0 Tree__left null) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@1) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@1) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@1) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@1) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@1) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@1) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@1) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@1))) (state Heap@2 Mask@2)) (and (=> (= (ControlFlow 0 24) (- 0 26)) (= FullPerm (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@2) freshObj@0 Tree__right))) (=> (= FullPerm (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| Mask@2) freshObj@0 Tree__right)) (=> (= Heap@3 (PolymorphicMapType_14626 (|PolymorphicMapType_14626_7924_53#PolymorphicMapType_14626| Heap@2) (store (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| Heap@2) freshObj@0 Tree__right null) (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| Heap@2) (|PolymorphicMapType_14626_8164_8165#PolymorphicMapType_14626| Heap@2) (|PolymorphicMapType_14626_8168_25877#PolymorphicMapType_14626| Heap@2) (|PolymorphicMapType_14626_8114_8165#PolymorphicMapType_14626| Heap@2) (|PolymorphicMapType_14626_8114_47375#PolymorphicMapType_14626| Heap@2) (|PolymorphicMapType_14626_8164_8115#PolymorphicMapType_14626| Heap@2) (|PolymorphicMapType_14626_8164_2989#PolymorphicMapType_14626| Heap@2) (|PolymorphicMapType_14626_8164_53#PolymorphicMapType_14626| Heap@2))) (=> (and (state Heap@3 Mask@2) (state Heap@3 Mask@2)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (not (= freshObj@0 null))) (=> (not (= freshObj@0 null)) (and (=> (= (ControlFlow 0 24) 21) anon16_Then_correct) (=> (= (ControlFlow 0 24) 23) anon16_Else_correct))))))))))))))))))
(let ((anon15_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (= sys__result null))) (=> (and (and (state PostHeap@0 ZeroMask) (not (= sys__result null))) (and (= PostMask@0 (PolymorphicMapType_14647 (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| ZeroMask) (store (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| ZeroMask) sys__result Tree__data (+ (select (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| ZeroMask) sys__result Tree__data) FullPerm)) (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| ZeroMask) (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| ZeroMask))) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_8112_2989 PostMask@0 sys__result Tree__data)) (=> (HasDirectPerm_8112_2989 PostMask@0 sys__result Tree__data) (=> (= (select (|PolymorphicMapType_14626_8112_2989#PolymorphicMapType_14626| PostHeap@0) sys__result Tree__data) 0) (=> (and (and (state PostHeap@0 PostMask@0) (not (= sys__result null))) (and (= PostMask@1 (PolymorphicMapType_14647 (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| PostMask@0) (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| PostMask@0) (store (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| PostMask@0) sys__result Tree__left (+ (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| PostMask@0) sys__result Tree__left) FullPerm)) (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| PostMask@0) (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| PostMask@0) (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| PostMask@0) (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| PostMask@0) (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| PostMask@0) (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| PostMask@0) (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| PostMask@0))) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_8114_8115 PostMask@1 sys__result Tree__left)) (=> (HasDirectPerm_8114_8115 PostMask@1 sys__result Tree__left) (=> (and (= (select (|PolymorphicMapType_14626_7927_7928#PolymorphicMapType_14626| PostHeap@0) sys__result Tree__left) null) (state PostHeap@0 PostMask@1)) (=> (and (and (not (= sys__result null)) (= PostMask@2 (PolymorphicMapType_14647 (|PolymorphicMapType_14647_8164_8165#PolymorphicMapType_14647| PostMask@1) (|PolymorphicMapType_14647_8112_2989#PolymorphicMapType_14647| PostMask@1) (store (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| PostMask@1) sys__result Tree__right (+ (select (|PolymorphicMapType_14647_8114_8115#PolymorphicMapType_14647| PostMask@1) sys__result Tree__right) FullPerm)) (|PolymorphicMapType_14647_8164_2989#PolymorphicMapType_14647| PostMask@1) (|PolymorphicMapType_14647_8164_8115#PolymorphicMapType_14647| PostMask@1) (|PolymorphicMapType_14647_8164_53#PolymorphicMapType_14647| PostMask@1) (|PolymorphicMapType_14647_8164_56615#PolymorphicMapType_14647| PostMask@1) (|PolymorphicMapType_14647_8112_8165#PolymorphicMapType_14647| PostMask@1) (|PolymorphicMapType_14647_8112_53#PolymorphicMapType_14647| PostMask@1) (|PolymorphicMapType_14647_8112_57014#PolymorphicMapType_14647| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_8114_8115 PostMask@2 sys__result Tree__right)))))))))))))
(let ((anon0_correct  (=> (state Heap@@37 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (>= current_thread_id 0) (state Heap@@37 ZeroMask))) (and (=> (= (ControlFlow 0 29) 2) anon15_Then_correct) (=> (= (ControlFlow 0 29) 24) anon15_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 30) 29) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
