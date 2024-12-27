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
(declare-sort T@Field_29288_53 0)
(declare-sort T@Field_29301_29302 0)
(declare-sort T@Field_35505_4186 0)
(declare-sort T@Field_35582_35583 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_19785_35583 0)
(declare-sort T@Field_19785_35600 0)
(declare-sort T@Field_35582_4186 0)
(declare-sort T@Field_35582_53 0)
(declare-sort T@Field_35582_29302 0)
(declare-sort T@Field_35595_35600 0)
(declare-datatypes ((T@PolymorphicMapType_29249 0)) (((PolymorphicMapType_29249 (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| (Array T@Ref T@Field_35505_4186 Real)) (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| (Array T@Ref T@Field_35582_35583 Real)) (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| (Array T@Ref T@Field_19785_35583 Real)) (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| (Array T@Ref T@Field_29288_53 Real)) (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| (Array T@Ref T@Field_29301_29302 Real)) (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| (Array T@Ref T@Field_19785_35600 Real)) (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| (Array T@Ref T@Field_35582_4186 Real)) (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| (Array T@Ref T@Field_35582_53 Real)) (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| (Array T@Ref T@Field_35582_29302 Real)) (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| (Array T@Ref T@Field_35595_35600 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29777 0)) (((PolymorphicMapType_29777 (|PolymorphicMapType_29777_29288_53#PolymorphicMapType_29777| (Array T@Ref T@Field_29288_53 Bool)) (|PolymorphicMapType_29777_29288_29302#PolymorphicMapType_29777| (Array T@Ref T@Field_29301_29302 Bool)) (|PolymorphicMapType_29777_29288_4186#PolymorphicMapType_29777| (Array T@Ref T@Field_35505_4186 Bool)) (|PolymorphicMapType_29777_29288_35583#PolymorphicMapType_29777| (Array T@Ref T@Field_19785_35583 Bool)) (|PolymorphicMapType_29777_29288_92553#PolymorphicMapType_29777| (Array T@Ref T@Field_19785_35600 Bool)) (|PolymorphicMapType_29777_35582_53#PolymorphicMapType_29777| (Array T@Ref T@Field_35582_53 Bool)) (|PolymorphicMapType_29777_35582_29302#PolymorphicMapType_29777| (Array T@Ref T@Field_35582_29302 Bool)) (|PolymorphicMapType_29777_35582_4186#PolymorphicMapType_29777| (Array T@Ref T@Field_35582_4186 Bool)) (|PolymorphicMapType_29777_35582_35583#PolymorphicMapType_29777| (Array T@Ref T@Field_35582_35583 Bool)) (|PolymorphicMapType_29777_35582_93601#PolymorphicMapType_29777| (Array T@Ref T@Field_35595_35600 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29228 0)) (((PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| (Array T@Ref T@Field_29288_53 Bool)) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| (Array T@Ref T@Field_29301_29302 T@Ref)) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| (Array T@Ref T@Field_35505_4186 Int)) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| (Array T@Ref T@Field_35582_35583 T@FrameType)) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| (Array T@Ref T@Field_19785_35583 T@FrameType)) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| (Array T@Ref T@Field_19785_35600 T@PolymorphicMapType_29777)) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| (Array T@Ref T@Field_35582_4186 Int)) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| (Array T@Ref T@Field_35582_53 Bool)) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| (Array T@Ref T@Field_35582_29302 T@Ref)) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| (Array T@Ref T@Field_35595_35600 T@PolymorphicMapType_29777)) ) ) ))
(declare-fun $allocated () T@Field_29288_53)
(declare-fun f_7 () T@Field_35505_4186)
(declare-fun g () T@Field_35505_4186)
(declare-sort T@Seq_36500 0)
(declare-fun |Seq#Length_36500| (T@Seq_36500) Int)
(declare-fun |Seq#Drop_36500| (T@Seq_36500 Int) T@Seq_36500)
(declare-sort T@Seq_4064 0)
(declare-fun |Seq#Length_4064| (T@Seq_4064) Int)
(declare-fun |Seq#Drop_4064| (T@Seq_4064 Int) T@Seq_4064)
(declare-fun succHeap (T@PolymorphicMapType_29228 T@PolymorphicMapType_29228) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_29228 T@PolymorphicMapType_29228) Bool)
(declare-fun state (T@PolymorphicMapType_29228 T@PolymorphicMapType_29249) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_29249) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_29777)
(declare-fun |Seq#Index_36500| (T@Seq_36500 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_4064| (T@Seq_4064 Int) Int)
(declare-fun |Seq#Empty_36500| () T@Seq_36500)
(declare-fun |Seq#Empty_4064| () T@Seq_4064)
(declare-fun pred_3 (T@Ref) T@Field_35582_35583)
(declare-fun IsPredicateField_19790_19791 (T@Field_35582_35583) Bool)
(declare-fun |pred#trigger_19790| (T@PolymorphicMapType_29228 T@Field_35582_35583) Bool)
(declare-fun |pred#everUsed_19790| (T@Field_35582_35583) Bool)
(declare-fun |Seq#Update_36500| (T@Seq_36500 Int T@Ref) T@Seq_36500)
(declare-fun |Seq#Update_4064| (T@Seq_4064 Int Int) T@Seq_4064)
(declare-fun |Seq#Take_36500| (T@Seq_36500 Int) T@Seq_36500)
(declare-fun |Seq#Take_4064| (T@Seq_4064 Int) T@Seq_4064)
(declare-fun |Seq#Contains_4064| (T@Seq_4064 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_4064)
(declare-fun |Seq#Contains_19816| (T@Seq_36500 T@Ref) Bool)
(declare-fun |Seq#Skolem_19816| (T@Seq_36500 T@Ref) Int)
(declare-fun |Seq#Skolem_4064| (T@Seq_4064 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_29228 T@PolymorphicMapType_29228 T@PolymorphicMapType_29249) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_19790 (T@Field_35582_35583) T@Field_35595_35600)
(declare-fun HasDirectPerm_35582_35583 (T@PolymorphicMapType_29249 T@Ref T@Field_35582_35583) Bool)
(declare-fun IsPredicateField_19785_91069 (T@Field_19785_35583) Bool)
(declare-fun PredicateMaskField_19785 (T@Field_19785_35583) T@Field_19785_35600)
(declare-fun HasDirectPerm_19785_35583 (T@PolymorphicMapType_29249 T@Ref T@Field_19785_35583) Bool)
(declare-fun IsWandField_35582_94766 (T@Field_35582_35583) Bool)
(declare-fun WandMaskField_35582 (T@Field_35582_35583) T@Field_35595_35600)
(declare-fun IsWandField_19785_94409 (T@Field_19785_35583) Bool)
(declare-fun WandMaskField_19785 (T@Field_19785_35583) T@Field_19785_35600)
(declare-fun |Seq#Singleton_36500| (T@Ref) T@Seq_36500)
(declare-fun |Seq#Singleton_4064| (Int) T@Seq_4064)
(declare-fun |pred#sm| (T@Ref) T@Field_35595_35600)
(declare-fun |Seq#Append_36500| (T@Seq_36500 T@Seq_36500) T@Seq_36500)
(declare-fun |Seq#Append_4064| (T@Seq_4064 T@Seq_4064) T@Seq_4064)
(declare-fun dummyHeap () T@PolymorphicMapType_29228)
(declare-fun ZeroMask () T@PolymorphicMapType_29249)
(declare-fun InsidePredicate_35582_35582 (T@Field_35582_35583 T@FrameType T@Field_35582_35583 T@FrameType) Bool)
(declare-fun InsidePredicate_29288_29288 (T@Field_19785_35583 T@FrameType T@Field_19785_35583 T@FrameType) Bool)
(declare-fun IsPredicateField_19785_4186 (T@Field_35505_4186) Bool)
(declare-fun IsWandField_19785_4186 (T@Field_35505_4186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_19790_101698 (T@Field_35595_35600) Bool)
(declare-fun IsWandField_19790_101714 (T@Field_35595_35600) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_19790_29302 (T@Field_35582_29302) Bool)
(declare-fun IsWandField_19790_29302 (T@Field_35582_29302) Bool)
(declare-fun IsPredicateField_19790_53 (T@Field_35582_53) Bool)
(declare-fun IsWandField_19790_53 (T@Field_35582_53) Bool)
(declare-fun IsPredicateField_19790_4186 (T@Field_35582_4186) Bool)
(declare-fun IsWandField_19790_4186 (T@Field_35582_4186) Bool)
(declare-fun IsPredicateField_19785_100867 (T@Field_19785_35600) Bool)
(declare-fun IsWandField_19785_100883 (T@Field_19785_35600) Bool)
(declare-fun IsPredicateField_19785_29302 (T@Field_29301_29302) Bool)
(declare-fun IsWandField_19785_29302 (T@Field_29301_29302) Bool)
(declare-fun IsPredicateField_19785_53 (T@Field_29288_53) Bool)
(declare-fun IsWandField_19785_53 (T@Field_29288_53) Bool)
(declare-fun HasDirectPerm_35582_90781 (T@PolymorphicMapType_29249 T@Ref T@Field_35595_35600) Bool)
(declare-fun HasDirectPerm_35582_29302 (T@PolymorphicMapType_29249 T@Ref T@Field_35582_29302) Bool)
(declare-fun HasDirectPerm_35582_53 (T@PolymorphicMapType_29249 T@Ref T@Field_35582_53) Bool)
(declare-fun HasDirectPerm_35582_4186 (T@PolymorphicMapType_29249 T@Ref T@Field_35582_4186) Bool)
(declare-fun HasDirectPerm_19785_89620 (T@PolymorphicMapType_29249 T@Ref T@Field_19785_35600) Bool)
(declare-fun HasDirectPerm_19785_29302 (T@PolymorphicMapType_29249 T@Ref T@Field_29301_29302) Bool)
(declare-fun HasDirectPerm_19785_53 (T@PolymorphicMapType_29249 T@Ref T@Field_29288_53) Bool)
(declare-fun HasDirectPerm_19785_4186 (T@PolymorphicMapType_29249 T@Ref T@Field_35505_4186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_29249 T@PolymorphicMapType_29249 T@PolymorphicMapType_29249) Bool)
(declare-fun |Seq#Equal_36500| (T@Seq_36500 T@Seq_36500) Bool)
(declare-fun |Seq#Equal_4064| (T@Seq_4064 T@Seq_4064) Bool)
(declare-fun |Seq#ContainsTrigger_19816| (T@Seq_36500 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_4064| (T@Seq_4064 Int) Bool)
(declare-fun getPredWandId_19790_19791 (T@Field_35582_35583) Int)
(declare-fun |Seq#SkolemDiff_36500| (T@Seq_36500 T@Seq_36500) Int)
(declare-fun |Seq#SkolemDiff_4064| (T@Seq_4064 T@Seq_4064) Int)
(declare-fun InsidePredicate_35582_29288 (T@Field_35582_35583 T@FrameType T@Field_19785_35583 T@FrameType) Bool)
(declare-fun InsidePredicate_29288_35582 (T@Field_19785_35583 T@FrameType T@Field_35582_35583 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_36500) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_36500| s)) (= (|Seq#Length_36500| (|Seq#Drop_36500| s n)) (- (|Seq#Length_36500| s) n))) (=> (< (|Seq#Length_36500| s) n) (= (|Seq#Length_36500| (|Seq#Drop_36500| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_36500| (|Seq#Drop_36500| s n)) (|Seq#Length_36500| s))))
 :qid |stdinbpl.435:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_36500| (|Seq#Drop_36500| s n)))
 :pattern ( (|Seq#Length_36500| s) (|Seq#Drop_36500| s n))
)))
(assert (forall ((s@@0 T@Seq_4064) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_4064| s@@0)) (= (|Seq#Length_4064| (|Seq#Drop_4064| s@@0 n@@0)) (- (|Seq#Length_4064| s@@0) n@@0))) (=> (< (|Seq#Length_4064| s@@0) n@@0) (= (|Seq#Length_4064| (|Seq#Drop_4064| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_4064| (|Seq#Drop_4064| s@@0 n@@0)) (|Seq#Length_4064| s@@0))))
 :qid |stdinbpl.435:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_4064| (|Seq#Drop_4064| s@@0 n@@0)))
 :pattern ( (|Seq#Length_4064| s@@0) (|Seq#Drop_4064| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_29228) (Heap1 T@PolymorphicMapType_29228) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_29228) (Mask T@PolymorphicMapType_29249) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_29228) (Heap1@@0 T@PolymorphicMapType_29228) (Heap2 T@PolymorphicMapType_29228) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_35595_35600) ) (!  (not (select (|PolymorphicMapType_29777_35582_93601#PolymorphicMapType_29777| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29777_35582_93601#PolymorphicMapType_29777| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_35582_35583) ) (!  (not (select (|PolymorphicMapType_29777_35582_35583#PolymorphicMapType_29777| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29777_35582_35583#PolymorphicMapType_29777| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_35582_4186) ) (!  (not (select (|PolymorphicMapType_29777_35582_4186#PolymorphicMapType_29777| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29777_35582_4186#PolymorphicMapType_29777| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_35582_29302) ) (!  (not (select (|PolymorphicMapType_29777_35582_29302#PolymorphicMapType_29777| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29777_35582_29302#PolymorphicMapType_29777| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_35582_53) ) (!  (not (select (|PolymorphicMapType_29777_35582_53#PolymorphicMapType_29777| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29777_35582_53#PolymorphicMapType_29777| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_19785_35600) ) (!  (not (select (|PolymorphicMapType_29777_29288_92553#PolymorphicMapType_29777| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29777_29288_92553#PolymorphicMapType_29777| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_19785_35583) ) (!  (not (select (|PolymorphicMapType_29777_29288_35583#PolymorphicMapType_29777| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29777_29288_35583#PolymorphicMapType_29777| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_35505_4186) ) (!  (not (select (|PolymorphicMapType_29777_29288_4186#PolymorphicMapType_29777| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29777_29288_4186#PolymorphicMapType_29777| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_29301_29302) ) (!  (not (select (|PolymorphicMapType_29777_29288_29302#PolymorphicMapType_29777| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29777_29288_29302#PolymorphicMapType_29777| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_29288_53) ) (!  (not (select (|PolymorphicMapType_29777_29288_53#PolymorphicMapType_29777| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29777_29288_53#PolymorphicMapType_29777| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((s@@1 T@Seq_36500) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_36500| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_36500| (|Seq#Drop_36500| s@@1 n@@1) j) (|Seq#Index_36500| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.456:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_36500| (|Seq#Drop_36500| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_4064) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_4064| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_4064| (|Seq#Drop_4064| s@@2 n@@2) j@@0) (|Seq#Index_4064| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.456:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_4064| (|Seq#Drop_4064| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_36500| |Seq#Empty_36500|) 0))
(assert (= (|Seq#Length_4064| |Seq#Empty_4064|) 0))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_19790_19791 (pred_3 x))
 :qid |stdinbpl.724:15|
 :skolemid |59|
 :pattern ( (pred_3 x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_29228) (x@@0 T@Ref) ) (! (|pred#everUsed_19790| (pred_3 x@@0))
 :qid |stdinbpl.743:15|
 :skolemid |63|
 :pattern ( (|pred#trigger_19790| Heap@@0 (pred_3 x@@0)))
)))
(assert (forall ((s@@3 T@Seq_36500) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_36500| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_36500| (|Seq#Update_36500| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_36500| (|Seq#Update_36500| s@@3 i v) n@@3) (|Seq#Index_36500| s@@3 n@@3)))))
 :qid |stdinbpl.411:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_36500| (|Seq#Update_36500| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_36500| s@@3 n@@3) (|Seq#Update_36500| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_4064) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_4064| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_4064| (|Seq#Update_4064| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_4064| (|Seq#Update_4064| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_4064| s@@4 n@@4)))))
 :qid |stdinbpl.411:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_4064| (|Seq#Update_4064| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_4064| s@@4 n@@4) (|Seq#Update_4064| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_36500) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_36500| s@@5)) (= (|Seq#Length_36500| (|Seq#Take_36500| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_36500| s@@5) n@@5) (= (|Seq#Length_36500| (|Seq#Take_36500| s@@5 n@@5)) (|Seq#Length_36500| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_36500| (|Seq#Take_36500| s@@5 n@@5)) 0)))
 :qid |stdinbpl.422:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_36500| (|Seq#Take_36500| s@@5 n@@5)))
 :pattern ( (|Seq#Take_36500| s@@5 n@@5) (|Seq#Length_36500| s@@5))
)))
(assert (forall ((s@@6 T@Seq_4064) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_4064| s@@6)) (= (|Seq#Length_4064| (|Seq#Take_4064| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_4064| s@@6) n@@6) (= (|Seq#Length_4064| (|Seq#Take_4064| s@@6 n@@6)) (|Seq#Length_4064| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_4064| (|Seq#Take_4064| s@@6 n@@6)) 0)))
 :qid |stdinbpl.422:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_4064| (|Seq#Take_4064| s@@6 n@@6)))
 :pattern ( (|Seq#Take_4064| s@@6 n@@6) (|Seq#Length_4064| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_4064| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.696:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_4064| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_36500) (x@@1 T@Ref) ) (!  (=> (|Seq#Contains_19816| s@@7 x@@1) (and (and (<= 0 (|Seq#Skolem_19816| s@@7 x@@1)) (< (|Seq#Skolem_19816| s@@7 x@@1) (|Seq#Length_36500| s@@7))) (= (|Seq#Index_36500| s@@7 (|Seq#Skolem_19816| s@@7 x@@1)) x@@1)))
 :qid |stdinbpl.554:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_19816| s@@7 x@@1))
)))
(assert (forall ((s@@8 T@Seq_4064) (x@@2 Int) ) (!  (=> (|Seq#Contains_4064| s@@8 x@@2) (and (and (<= 0 (|Seq#Skolem_4064| s@@8 x@@2)) (< (|Seq#Skolem_4064| s@@8 x@@2) (|Seq#Length_4064| s@@8))) (= (|Seq#Index_4064| s@@8 (|Seq#Skolem_4064| s@@8 x@@2)) x@@2)))
 :qid |stdinbpl.554:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_4064| s@@8 x@@2))
)))
(assert (forall ((s@@9 T@Seq_36500) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_36500| s@@9 n@@7) s@@9))
 :qid |stdinbpl.538:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_36500| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_4064) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_4064| s@@10 n@@8) s@@10))
 :qid |stdinbpl.538:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4064| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.391:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.389:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_29228) (ExhaleHeap T@PolymorphicMapType_29228) (Mask@@0 T@PolymorphicMapType_29249) (pm_f_43 T@Field_35582_35583) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_35582_35583 Mask@@0 null pm_f_43) (IsPredicateField_19790_19791 pm_f_43)) (= (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@1) null (PredicateMaskField_19790 pm_f_43)) (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap) null (PredicateMaskField_19790 pm_f_43)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_19790_19791 pm_f_43) (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap) null (PredicateMaskField_19790 pm_f_43)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_29228) (ExhaleHeap@@0 T@PolymorphicMapType_29228) (Mask@@1 T@PolymorphicMapType_29249) (pm_f_43@@0 T@Field_19785_35583) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_19785_35583 Mask@@1 null pm_f_43@@0) (IsPredicateField_19785_91069 pm_f_43@@0)) (= (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@2) null (PredicateMaskField_19785 pm_f_43@@0)) (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@0) null (PredicateMaskField_19785 pm_f_43@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_19785_91069 pm_f_43@@0) (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@0) null (PredicateMaskField_19785 pm_f_43@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_29228) (ExhaleHeap@@1 T@PolymorphicMapType_29228) (Mask@@2 T@PolymorphicMapType_29249) (pm_f_43@@1 T@Field_35582_35583) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_35582_35583 Mask@@2 null pm_f_43@@1) (IsWandField_35582_94766 pm_f_43@@1)) (= (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@3) null (WandMaskField_35582 pm_f_43@@1)) (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@1) null (WandMaskField_35582 pm_f_43@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_35582_94766 pm_f_43@@1) (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@1) null (WandMaskField_35582 pm_f_43@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_29228) (ExhaleHeap@@2 T@PolymorphicMapType_29228) (Mask@@3 T@PolymorphicMapType_29249) (pm_f_43@@2 T@Field_19785_35583) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_19785_35583 Mask@@3 null pm_f_43@@2) (IsWandField_19785_94409 pm_f_43@@2)) (= (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@4) null (WandMaskField_19785 pm_f_43@@2)) (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@2) null (WandMaskField_19785 pm_f_43@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_19785_94409 pm_f_43@@2) (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@2) null (WandMaskField_19785 pm_f_43@@2)))
)))
(assert (forall ((x@@3 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_19816| (|Seq#Singleton_36500| x@@3) y) (= x@@3 y))
 :qid |stdinbpl.679:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_19816| (|Seq#Singleton_36500| x@@3) y))
)))
(assert (forall ((x@@4 Int) (y@@0 Int) ) (! (= (|Seq#Contains_4064| (|Seq#Singleton_4064| x@@4) y@@0) (= x@@4 y@@0))
 :qid |stdinbpl.679:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_4064| (|Seq#Singleton_4064| x@@4) y@@0))
)))
(assert (forall ((s@@11 T@Seq_36500) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_36500| s@@11))) (= (|Seq#Index_36500| (|Seq#Take_36500| s@@11 n@@9) j@@3) (|Seq#Index_36500| s@@11 j@@3)))
 :qid |stdinbpl.430:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_36500| (|Seq#Take_36500| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_36500| s@@11 j@@3) (|Seq#Take_36500| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_4064) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_4064| s@@12))) (= (|Seq#Index_4064| (|Seq#Take_4064| s@@12 n@@10) j@@4) (|Seq#Index_4064| s@@12 j@@4)))
 :qid |stdinbpl.430:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_4064| (|Seq#Take_4064| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_4064| s@@12 j@@4) (|Seq#Take_4064| s@@12 n@@10))
)))
(assert (forall ((x@@5 T@Ref) (x2 T@Ref) ) (!  (=> (= (pred_3 x@@5) (pred_3 x2)) (= x@@5 x2))
 :qid |stdinbpl.734:15|
 :skolemid |61|
 :pattern ( (pred_3 x@@5) (pred_3 x2))
)))
(assert (forall ((x@@6 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|pred#sm| x@@6) (|pred#sm| x2@@0)) (= x@@6 x2@@0))
 :qid |stdinbpl.738:15|
 :skolemid |62|
 :pattern ( (|pred#sm| x@@6) (|pred#sm| x2@@0))
)))
(assert (forall ((s@@13 T@Seq_36500) (t T@Seq_36500) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_36500| s@@13))) (< n@@11 (|Seq#Length_36500| (|Seq#Append_36500| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_36500| s@@13)) (|Seq#Length_36500| s@@13)) n@@11) (= (|Seq#Take_36500| (|Seq#Append_36500| s@@13 t) n@@11) (|Seq#Append_36500| s@@13 (|Seq#Take_36500| t (|Seq#Sub| n@@11 (|Seq#Length_36500| s@@13)))))))
 :qid |stdinbpl.515:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_36500| (|Seq#Append_36500| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_4064) (t@@0 T@Seq_4064) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_4064| s@@14))) (< n@@12 (|Seq#Length_4064| (|Seq#Append_4064| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_4064| s@@14)) (|Seq#Length_4064| s@@14)) n@@12) (= (|Seq#Take_4064| (|Seq#Append_4064| s@@14 t@@0) n@@12) (|Seq#Append_4064| s@@14 (|Seq#Take_4064| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_4064| s@@14)))))))
 :qid |stdinbpl.515:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4064| (|Seq#Append_4064| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_29228) (ExhaleHeap@@3 T@PolymorphicMapType_29228) (Mask@@4 T@PolymorphicMapType_29249) (pm_f_43@@3 T@Field_35582_35583) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_35582_35583 Mask@@4 null pm_f_43@@3) (IsPredicateField_19790_19791 pm_f_43@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_43 T@Ref) (f_64 T@Field_29288_53) ) (!  (=> (select (|PolymorphicMapType_29777_29288_53#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@5) null (PredicateMaskField_19790 pm_f_43@@3))) o2_43 f_64) (= (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@5) o2_43 f_64) (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43 f_64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43 f_64))
)) (forall ((o2_43@@0 T@Ref) (f_64@@0 T@Field_29301_29302) ) (!  (=> (select (|PolymorphicMapType_29777_29288_29302#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@5) null (PredicateMaskField_19790 pm_f_43@@3))) o2_43@@0 f_64@@0) (= (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@5) o2_43@@0 f_64@@0) (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@0 f_64@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@0 f_64@@0))
))) (forall ((o2_43@@1 T@Ref) (f_64@@1 T@Field_35505_4186) ) (!  (=> (select (|PolymorphicMapType_29777_29288_4186#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@5) null (PredicateMaskField_19790 pm_f_43@@3))) o2_43@@1 f_64@@1) (= (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@5) o2_43@@1 f_64@@1) (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@1 f_64@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@1 f_64@@1))
))) (forall ((o2_43@@2 T@Ref) (f_64@@2 T@Field_19785_35583) ) (!  (=> (select (|PolymorphicMapType_29777_29288_35583#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@5) null (PredicateMaskField_19790 pm_f_43@@3))) o2_43@@2 f_64@@2) (= (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@5) o2_43@@2 f_64@@2) (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@2 f_64@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@2 f_64@@2))
))) (forall ((o2_43@@3 T@Ref) (f_64@@3 T@Field_19785_35600) ) (!  (=> (select (|PolymorphicMapType_29777_29288_92553#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@5) null (PredicateMaskField_19790 pm_f_43@@3))) o2_43@@3 f_64@@3) (= (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@5) o2_43@@3 f_64@@3) (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@3 f_64@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@3 f_64@@3))
))) (forall ((o2_43@@4 T@Ref) (f_64@@4 T@Field_35582_53) ) (!  (=> (select (|PolymorphicMapType_29777_35582_53#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@5) null (PredicateMaskField_19790 pm_f_43@@3))) o2_43@@4 f_64@@4) (= (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@5) o2_43@@4 f_64@@4) (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@4 f_64@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@4 f_64@@4))
))) (forall ((o2_43@@5 T@Ref) (f_64@@5 T@Field_35582_29302) ) (!  (=> (select (|PolymorphicMapType_29777_35582_29302#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@5) null (PredicateMaskField_19790 pm_f_43@@3))) o2_43@@5 f_64@@5) (= (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@5) o2_43@@5 f_64@@5) (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@5 f_64@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@5 f_64@@5))
))) (forall ((o2_43@@6 T@Ref) (f_64@@6 T@Field_35582_4186) ) (!  (=> (select (|PolymorphicMapType_29777_35582_4186#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@5) null (PredicateMaskField_19790 pm_f_43@@3))) o2_43@@6 f_64@@6) (= (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@5) o2_43@@6 f_64@@6) (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@6 f_64@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@6 f_64@@6))
))) (forall ((o2_43@@7 T@Ref) (f_64@@7 T@Field_35582_35583) ) (!  (=> (select (|PolymorphicMapType_29777_35582_35583#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@5) null (PredicateMaskField_19790 pm_f_43@@3))) o2_43@@7 f_64@@7) (= (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@5) o2_43@@7 f_64@@7) (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@7 f_64@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@7 f_64@@7))
))) (forall ((o2_43@@8 T@Ref) (f_64@@8 T@Field_35595_35600) ) (!  (=> (select (|PolymorphicMapType_29777_35582_93601#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@5) null (PredicateMaskField_19790 pm_f_43@@3))) o2_43@@8 f_64@@8) (= (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@5) o2_43@@8 f_64@@8) (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@8 f_64@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@3) o2_43@@8 f_64@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_19790_19791 pm_f_43@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_29228) (ExhaleHeap@@4 T@PolymorphicMapType_29228) (Mask@@5 T@PolymorphicMapType_29249) (pm_f_43@@4 T@Field_19785_35583) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_19785_35583 Mask@@5 null pm_f_43@@4) (IsPredicateField_19785_91069 pm_f_43@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_43@@9 T@Ref) (f_64@@9 T@Field_29288_53) ) (!  (=> (select (|PolymorphicMapType_29777_29288_53#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@6) null (PredicateMaskField_19785 pm_f_43@@4))) o2_43@@9 f_64@@9) (= (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@6) o2_43@@9 f_64@@9) (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@9 f_64@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@9 f_64@@9))
)) (forall ((o2_43@@10 T@Ref) (f_64@@10 T@Field_29301_29302) ) (!  (=> (select (|PolymorphicMapType_29777_29288_29302#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@6) null (PredicateMaskField_19785 pm_f_43@@4))) o2_43@@10 f_64@@10) (= (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@6) o2_43@@10 f_64@@10) (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@10 f_64@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@10 f_64@@10))
))) (forall ((o2_43@@11 T@Ref) (f_64@@11 T@Field_35505_4186) ) (!  (=> (select (|PolymorphicMapType_29777_29288_4186#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@6) null (PredicateMaskField_19785 pm_f_43@@4))) o2_43@@11 f_64@@11) (= (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@6) o2_43@@11 f_64@@11) (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@11 f_64@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@11 f_64@@11))
))) (forall ((o2_43@@12 T@Ref) (f_64@@12 T@Field_19785_35583) ) (!  (=> (select (|PolymorphicMapType_29777_29288_35583#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@6) null (PredicateMaskField_19785 pm_f_43@@4))) o2_43@@12 f_64@@12) (= (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@6) o2_43@@12 f_64@@12) (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@12 f_64@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@12 f_64@@12))
))) (forall ((o2_43@@13 T@Ref) (f_64@@13 T@Field_19785_35600) ) (!  (=> (select (|PolymorphicMapType_29777_29288_92553#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@6) null (PredicateMaskField_19785 pm_f_43@@4))) o2_43@@13 f_64@@13) (= (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@6) o2_43@@13 f_64@@13) (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@13 f_64@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@13 f_64@@13))
))) (forall ((o2_43@@14 T@Ref) (f_64@@14 T@Field_35582_53) ) (!  (=> (select (|PolymorphicMapType_29777_35582_53#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@6) null (PredicateMaskField_19785 pm_f_43@@4))) o2_43@@14 f_64@@14) (= (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@6) o2_43@@14 f_64@@14) (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@14 f_64@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@14 f_64@@14))
))) (forall ((o2_43@@15 T@Ref) (f_64@@15 T@Field_35582_29302) ) (!  (=> (select (|PolymorphicMapType_29777_35582_29302#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@6) null (PredicateMaskField_19785 pm_f_43@@4))) o2_43@@15 f_64@@15) (= (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@6) o2_43@@15 f_64@@15) (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@15 f_64@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@15 f_64@@15))
))) (forall ((o2_43@@16 T@Ref) (f_64@@16 T@Field_35582_4186) ) (!  (=> (select (|PolymorphicMapType_29777_35582_4186#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@6) null (PredicateMaskField_19785 pm_f_43@@4))) o2_43@@16 f_64@@16) (= (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@6) o2_43@@16 f_64@@16) (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@16 f_64@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@16 f_64@@16))
))) (forall ((o2_43@@17 T@Ref) (f_64@@17 T@Field_35582_35583) ) (!  (=> (select (|PolymorphicMapType_29777_35582_35583#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@6) null (PredicateMaskField_19785 pm_f_43@@4))) o2_43@@17 f_64@@17) (= (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@6) o2_43@@17 f_64@@17) (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@17 f_64@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@17 f_64@@17))
))) (forall ((o2_43@@18 T@Ref) (f_64@@18 T@Field_35595_35600) ) (!  (=> (select (|PolymorphicMapType_29777_35582_93601#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@6) null (PredicateMaskField_19785 pm_f_43@@4))) o2_43@@18 f_64@@18) (= (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@6) o2_43@@18 f_64@@18) (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@18 f_64@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@4) o2_43@@18 f_64@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_19785_91069 pm_f_43@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_29228) (ExhaleHeap@@5 T@PolymorphicMapType_29228) (Mask@@6 T@PolymorphicMapType_29249) (pm_f_43@@5 T@Field_35582_35583) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_35582_35583 Mask@@6 null pm_f_43@@5) (IsWandField_35582_94766 pm_f_43@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_43@@19 T@Ref) (f_64@@19 T@Field_29288_53) ) (!  (=> (select (|PolymorphicMapType_29777_29288_53#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@7) null (WandMaskField_35582 pm_f_43@@5))) o2_43@@19 f_64@@19) (= (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@7) o2_43@@19 f_64@@19) (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@19 f_64@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@19 f_64@@19))
)) (forall ((o2_43@@20 T@Ref) (f_64@@20 T@Field_29301_29302) ) (!  (=> (select (|PolymorphicMapType_29777_29288_29302#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@7) null (WandMaskField_35582 pm_f_43@@5))) o2_43@@20 f_64@@20) (= (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@7) o2_43@@20 f_64@@20) (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@20 f_64@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@20 f_64@@20))
))) (forall ((o2_43@@21 T@Ref) (f_64@@21 T@Field_35505_4186) ) (!  (=> (select (|PolymorphicMapType_29777_29288_4186#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@7) null (WandMaskField_35582 pm_f_43@@5))) o2_43@@21 f_64@@21) (= (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@7) o2_43@@21 f_64@@21) (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@21 f_64@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@21 f_64@@21))
))) (forall ((o2_43@@22 T@Ref) (f_64@@22 T@Field_19785_35583) ) (!  (=> (select (|PolymorphicMapType_29777_29288_35583#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@7) null (WandMaskField_35582 pm_f_43@@5))) o2_43@@22 f_64@@22) (= (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@7) o2_43@@22 f_64@@22) (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@22 f_64@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@22 f_64@@22))
))) (forall ((o2_43@@23 T@Ref) (f_64@@23 T@Field_19785_35600) ) (!  (=> (select (|PolymorphicMapType_29777_29288_92553#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@7) null (WandMaskField_35582 pm_f_43@@5))) o2_43@@23 f_64@@23) (= (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@7) o2_43@@23 f_64@@23) (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@23 f_64@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@23 f_64@@23))
))) (forall ((o2_43@@24 T@Ref) (f_64@@24 T@Field_35582_53) ) (!  (=> (select (|PolymorphicMapType_29777_35582_53#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@7) null (WandMaskField_35582 pm_f_43@@5))) o2_43@@24 f_64@@24) (= (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@7) o2_43@@24 f_64@@24) (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@24 f_64@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@24 f_64@@24))
))) (forall ((o2_43@@25 T@Ref) (f_64@@25 T@Field_35582_29302) ) (!  (=> (select (|PolymorphicMapType_29777_35582_29302#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@7) null (WandMaskField_35582 pm_f_43@@5))) o2_43@@25 f_64@@25) (= (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@7) o2_43@@25 f_64@@25) (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@25 f_64@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@25 f_64@@25))
))) (forall ((o2_43@@26 T@Ref) (f_64@@26 T@Field_35582_4186) ) (!  (=> (select (|PolymorphicMapType_29777_35582_4186#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@7) null (WandMaskField_35582 pm_f_43@@5))) o2_43@@26 f_64@@26) (= (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@7) o2_43@@26 f_64@@26) (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@26 f_64@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@26 f_64@@26))
))) (forall ((o2_43@@27 T@Ref) (f_64@@27 T@Field_35582_35583) ) (!  (=> (select (|PolymorphicMapType_29777_35582_35583#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@7) null (WandMaskField_35582 pm_f_43@@5))) o2_43@@27 f_64@@27) (= (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@7) o2_43@@27 f_64@@27) (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@27 f_64@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@27 f_64@@27))
))) (forall ((o2_43@@28 T@Ref) (f_64@@28 T@Field_35595_35600) ) (!  (=> (select (|PolymorphicMapType_29777_35582_93601#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@7) null (WandMaskField_35582 pm_f_43@@5))) o2_43@@28 f_64@@28) (= (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@7) o2_43@@28 f_64@@28) (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@28 f_64@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@5) o2_43@@28 f_64@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_35582_94766 pm_f_43@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_29228) (ExhaleHeap@@6 T@PolymorphicMapType_29228) (Mask@@7 T@PolymorphicMapType_29249) (pm_f_43@@6 T@Field_19785_35583) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_19785_35583 Mask@@7 null pm_f_43@@6) (IsWandField_19785_94409 pm_f_43@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_43@@29 T@Ref) (f_64@@29 T@Field_29288_53) ) (!  (=> (select (|PolymorphicMapType_29777_29288_53#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@8) null (WandMaskField_19785 pm_f_43@@6))) o2_43@@29 f_64@@29) (= (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@8) o2_43@@29 f_64@@29) (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@29 f_64@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@29 f_64@@29))
)) (forall ((o2_43@@30 T@Ref) (f_64@@30 T@Field_29301_29302) ) (!  (=> (select (|PolymorphicMapType_29777_29288_29302#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@8) null (WandMaskField_19785 pm_f_43@@6))) o2_43@@30 f_64@@30) (= (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@8) o2_43@@30 f_64@@30) (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@30 f_64@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@30 f_64@@30))
))) (forall ((o2_43@@31 T@Ref) (f_64@@31 T@Field_35505_4186) ) (!  (=> (select (|PolymorphicMapType_29777_29288_4186#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@8) null (WandMaskField_19785 pm_f_43@@6))) o2_43@@31 f_64@@31) (= (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@8) o2_43@@31 f_64@@31) (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@31 f_64@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@31 f_64@@31))
))) (forall ((o2_43@@32 T@Ref) (f_64@@32 T@Field_19785_35583) ) (!  (=> (select (|PolymorphicMapType_29777_29288_35583#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@8) null (WandMaskField_19785 pm_f_43@@6))) o2_43@@32 f_64@@32) (= (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@8) o2_43@@32 f_64@@32) (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@32 f_64@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@32 f_64@@32))
))) (forall ((o2_43@@33 T@Ref) (f_64@@33 T@Field_19785_35600) ) (!  (=> (select (|PolymorphicMapType_29777_29288_92553#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@8) null (WandMaskField_19785 pm_f_43@@6))) o2_43@@33 f_64@@33) (= (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@8) o2_43@@33 f_64@@33) (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@33 f_64@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@33 f_64@@33))
))) (forall ((o2_43@@34 T@Ref) (f_64@@34 T@Field_35582_53) ) (!  (=> (select (|PolymorphicMapType_29777_35582_53#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@8) null (WandMaskField_19785 pm_f_43@@6))) o2_43@@34 f_64@@34) (= (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@8) o2_43@@34 f_64@@34) (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@34 f_64@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@34 f_64@@34))
))) (forall ((o2_43@@35 T@Ref) (f_64@@35 T@Field_35582_29302) ) (!  (=> (select (|PolymorphicMapType_29777_35582_29302#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@8) null (WandMaskField_19785 pm_f_43@@6))) o2_43@@35 f_64@@35) (= (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@8) o2_43@@35 f_64@@35) (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@35 f_64@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@35 f_64@@35))
))) (forall ((o2_43@@36 T@Ref) (f_64@@36 T@Field_35582_4186) ) (!  (=> (select (|PolymorphicMapType_29777_35582_4186#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@8) null (WandMaskField_19785 pm_f_43@@6))) o2_43@@36 f_64@@36) (= (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@8) o2_43@@36 f_64@@36) (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@36 f_64@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@36 f_64@@36))
))) (forall ((o2_43@@37 T@Ref) (f_64@@37 T@Field_35582_35583) ) (!  (=> (select (|PolymorphicMapType_29777_35582_35583#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@8) null (WandMaskField_19785 pm_f_43@@6))) o2_43@@37 f_64@@37) (= (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@8) o2_43@@37 f_64@@37) (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@37 f_64@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@37 f_64@@37))
))) (forall ((o2_43@@38 T@Ref) (f_64@@38 T@Field_35595_35600) ) (!  (=> (select (|PolymorphicMapType_29777_35582_93601#PolymorphicMapType_29777| (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@8) null (WandMaskField_19785 pm_f_43@@6))) o2_43@@38 f_64@@38) (= (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@8) o2_43@@38 f_64@@38) (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@38 f_64@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@6) o2_43@@38 f_64@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_19785_94409 pm_f_43@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_29228) (ExhaleHeap@@7 T@PolymorphicMapType_29228) (Mask@@8 T@PolymorphicMapType_29249) (o_78 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@9) o_78 $allocated) (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@7) o_78 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@7) o_78 $allocated))
)))
(assert (forall ((p T@Field_35582_35583) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_35582_35582 p v_1 p w))
 :qid |stdinbpl.333:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35582_35582 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_19785_35583) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_29288_29288 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.333:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29288_29288 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_36500) (s1 T@Seq_36500) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_36500|)) (not (= s1 |Seq#Empty_36500|))) (<= (|Seq#Length_36500| s0) n@@13)) (< n@@13 (|Seq#Length_36500| (|Seq#Append_36500| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_36500| s0)) (|Seq#Length_36500| s0)) n@@13) (= (|Seq#Index_36500| (|Seq#Append_36500| s0 s1) n@@13) (|Seq#Index_36500| s1 (|Seq#Sub| n@@13 (|Seq#Length_36500| s0))))))
 :qid |stdinbpl.402:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_36500| (|Seq#Append_36500| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_4064) (s1@@0 T@Seq_4064) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_4064|)) (not (= s1@@0 |Seq#Empty_4064|))) (<= (|Seq#Length_4064| s0@@0) n@@14)) (< n@@14 (|Seq#Length_4064| (|Seq#Append_4064| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_4064| s0@@0)) (|Seq#Length_4064| s0@@0)) n@@14) (= (|Seq#Index_4064| (|Seq#Append_4064| s0@@0 s1@@0) n@@14) (|Seq#Index_4064| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_4064| s0@@0))))))
 :qid |stdinbpl.402:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_4064| (|Seq#Append_4064| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_19785_4186 f_7)))
(assert  (not (IsWandField_19785_4186 f_7)))
(assert  (not (IsPredicateField_19785_4186 g)))
(assert  (not (IsWandField_19785_4186 g)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_29228) (ExhaleHeap@@8 T@PolymorphicMapType_29228) (Mask@@9 T@PolymorphicMapType_29249) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_29249) (o_2@@9 T@Ref) (f_4@@9 T@Field_35595_35600) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_19790_101698 f_4@@9))) (not (IsWandField_19790_101714 f_4@@9))) (<= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_29249) (o_2@@10 T@Ref) (f_4@@10 T@Field_35582_29302) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_19790_29302 f_4@@10))) (not (IsWandField_19790_29302 f_4@@10))) (<= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_29249) (o_2@@11 T@Ref) (f_4@@11 T@Field_35582_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_19790_53 f_4@@11))) (not (IsWandField_19790_53 f_4@@11))) (<= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_29249) (o_2@@12 T@Ref) (f_4@@12 T@Field_35582_35583) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_19790_19791 f_4@@12))) (not (IsWandField_35582_94766 f_4@@12))) (<= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_29249) (o_2@@13 T@Ref) (f_4@@13 T@Field_35582_4186) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_19790_4186 f_4@@13))) (not (IsWandField_19790_4186 f_4@@13))) (<= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_29249) (o_2@@14 T@Ref) (f_4@@14 T@Field_19785_35600) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_19785_100867 f_4@@14))) (not (IsWandField_19785_100883 f_4@@14))) (<= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_29249) (o_2@@15 T@Ref) (f_4@@15 T@Field_29301_29302) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_19785_29302 f_4@@15))) (not (IsWandField_19785_29302 f_4@@15))) (<= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_29249) (o_2@@16 T@Ref) (f_4@@16 T@Field_29288_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_19785_53 f_4@@16))) (not (IsWandField_19785_53 f_4@@16))) (<= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_29249) (o_2@@17 T@Ref) (f_4@@17 T@Field_19785_35583) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_19785_91069 f_4@@17))) (not (IsWandField_19785_94409 f_4@@17))) (<= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_29249) (o_2@@18 T@Ref) (f_4@@18 T@Field_35505_4186) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_19785_4186 f_4@@18))) (not (IsWandField_19785_4186 f_4@@18))) (<= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_29249) (o_2@@19 T@Ref) (f_4@@19 T@Field_35595_35600) ) (! (= (HasDirectPerm_35582_90781 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_35582_90781 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_29249) (o_2@@20 T@Ref) (f_4@@20 T@Field_35582_35583) ) (! (= (HasDirectPerm_35582_35583 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_35582_35583 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_29249) (o_2@@21 T@Ref) (f_4@@21 T@Field_35582_29302) ) (! (= (HasDirectPerm_35582_29302 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_35582_29302 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_29249) (o_2@@22 T@Ref) (f_4@@22 T@Field_35582_53) ) (! (= (HasDirectPerm_35582_53 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_35582_53 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_29249) (o_2@@23 T@Ref) (f_4@@23 T@Field_35582_4186) ) (! (= (HasDirectPerm_35582_4186 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_35582_4186 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_29249) (o_2@@24 T@Ref) (f_4@@24 T@Field_19785_35600) ) (! (= (HasDirectPerm_19785_89620 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19785_89620 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_29249) (o_2@@25 T@Ref) (f_4@@25 T@Field_19785_35583) ) (! (= (HasDirectPerm_19785_35583 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19785_35583 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_29249) (o_2@@26 T@Ref) (f_4@@26 T@Field_29301_29302) ) (! (= (HasDirectPerm_19785_29302 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19785_29302 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_29249) (o_2@@27 T@Ref) (f_4@@27 T@Field_29288_53) ) (! (= (HasDirectPerm_19785_53 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19785_53 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_29249) (o_2@@28 T@Ref) (f_4@@28 T@Field_35505_4186) ) (! (= (HasDirectPerm_19785_4186 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19785_4186 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.321:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_4064| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.694:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_4064| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_29228) (ExhaleHeap@@9 T@PolymorphicMapType_29228) (Mask@@30 T@PolymorphicMapType_29249) (o_78@@0 T@Ref) (f_64@@39 T@Field_35595_35600) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_35582_90781 Mask@@30 o_78@@0 f_64@@39) (= (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@11) o_78@@0 f_64@@39) (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@9) o_78@@0 f_64@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| ExhaleHeap@@9) o_78@@0 f_64@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_29228) (ExhaleHeap@@10 T@PolymorphicMapType_29228) (Mask@@31 T@PolymorphicMapType_29249) (o_78@@1 T@Ref) (f_64@@40 T@Field_35582_35583) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_35582_35583 Mask@@31 o_78@@1 f_64@@40) (= (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@12) o_78@@1 f_64@@40) (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| ExhaleHeap@@10) o_78@@1 f_64@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| ExhaleHeap@@10) o_78@@1 f_64@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_29228) (ExhaleHeap@@11 T@PolymorphicMapType_29228) (Mask@@32 T@PolymorphicMapType_29249) (o_78@@2 T@Ref) (f_64@@41 T@Field_35582_29302) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_35582_29302 Mask@@32 o_78@@2 f_64@@41) (= (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@13) o_78@@2 f_64@@41) (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| ExhaleHeap@@11) o_78@@2 f_64@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| ExhaleHeap@@11) o_78@@2 f_64@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_29228) (ExhaleHeap@@12 T@PolymorphicMapType_29228) (Mask@@33 T@PolymorphicMapType_29249) (o_78@@3 T@Ref) (f_64@@42 T@Field_35582_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_35582_53 Mask@@33 o_78@@3 f_64@@42) (= (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@14) o_78@@3 f_64@@42) (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| ExhaleHeap@@12) o_78@@3 f_64@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| ExhaleHeap@@12) o_78@@3 f_64@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_29228) (ExhaleHeap@@13 T@PolymorphicMapType_29228) (Mask@@34 T@PolymorphicMapType_29249) (o_78@@4 T@Ref) (f_64@@43 T@Field_35582_4186) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_35582_4186 Mask@@34 o_78@@4 f_64@@43) (= (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@15) o_78@@4 f_64@@43) (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| ExhaleHeap@@13) o_78@@4 f_64@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| ExhaleHeap@@13) o_78@@4 f_64@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_29228) (ExhaleHeap@@14 T@PolymorphicMapType_29228) (Mask@@35 T@PolymorphicMapType_29249) (o_78@@5 T@Ref) (f_64@@44 T@Field_19785_35600) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_19785_89620 Mask@@35 o_78@@5 f_64@@44) (= (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@16) o_78@@5 f_64@@44) (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@14) o_78@@5 f_64@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| ExhaleHeap@@14) o_78@@5 f_64@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_29228) (ExhaleHeap@@15 T@PolymorphicMapType_29228) (Mask@@36 T@PolymorphicMapType_29249) (o_78@@6 T@Ref) (f_64@@45 T@Field_19785_35583) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_19785_35583 Mask@@36 o_78@@6 f_64@@45) (= (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@17) o_78@@6 f_64@@45) (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| ExhaleHeap@@15) o_78@@6 f_64@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| ExhaleHeap@@15) o_78@@6 f_64@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_29228) (ExhaleHeap@@16 T@PolymorphicMapType_29228) (Mask@@37 T@PolymorphicMapType_29249) (o_78@@7 T@Ref) (f_64@@46 T@Field_29301_29302) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_19785_29302 Mask@@37 o_78@@7 f_64@@46) (= (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@18) o_78@@7 f_64@@46) (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| ExhaleHeap@@16) o_78@@7 f_64@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| ExhaleHeap@@16) o_78@@7 f_64@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_29228) (ExhaleHeap@@17 T@PolymorphicMapType_29228) (Mask@@38 T@PolymorphicMapType_29249) (o_78@@8 T@Ref) (f_64@@47 T@Field_29288_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_19785_53 Mask@@38 o_78@@8 f_64@@47) (= (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@19) o_78@@8 f_64@@47) (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@17) o_78@@8 f_64@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| ExhaleHeap@@17) o_78@@8 f_64@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_29228) (ExhaleHeap@@18 T@PolymorphicMapType_29228) (Mask@@39 T@PolymorphicMapType_29249) (o_78@@9 T@Ref) (f_64@@48 T@Field_35505_4186) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_19785_4186 Mask@@39 o_78@@9 f_64@@48) (= (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@20) o_78@@9 f_64@@48) (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| ExhaleHeap@@18) o_78@@9 f_64@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| ExhaleHeap@@18) o_78@@9 f_64@@48))
)))
(assert (forall ((s0@@1 T@Seq_36500) (s1@@1 T@Seq_36500) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_36500|)) (not (= s1@@1 |Seq#Empty_36500|))) (= (|Seq#Length_36500| (|Seq#Append_36500| s0@@1 s1@@1)) (+ (|Seq#Length_36500| s0@@1) (|Seq#Length_36500| s1@@1))))
 :qid |stdinbpl.371:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_36500| (|Seq#Append_36500| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_4064) (s1@@2 T@Seq_4064) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_4064|)) (not (= s1@@2 |Seq#Empty_4064|))) (= (|Seq#Length_4064| (|Seq#Append_4064| s0@@2 s1@@2)) (+ (|Seq#Length_4064| s0@@2) (|Seq#Length_4064| s1@@2))))
 :qid |stdinbpl.371:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_4064| (|Seq#Append_4064| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_35595_35600) ) (! (= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_35582_29302) ) (! (= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_35582_53) ) (! (= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_35582_35583) ) (! (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_35582_4186) ) (! (= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_19785_35600) ) (! (= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_29301_29302) ) (! (= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_29288_53) ) (! (= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_19785_35583) ) (! (= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_35505_4186) ) (! (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_36500) (t@@1 T@Seq_36500) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_36500| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_36500| s@@15)) (|Seq#Length_36500| s@@15)) n@@15) (= (|Seq#Drop_36500| (|Seq#Append_36500| s@@15 t@@1) n@@15) (|Seq#Drop_36500| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_36500| s@@15))))))
 :qid |stdinbpl.528:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_36500| (|Seq#Append_36500| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_4064) (t@@2 T@Seq_4064) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_4064| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_4064| s@@16)) (|Seq#Length_4064| s@@16)) n@@16) (= (|Seq#Drop_4064| (|Seq#Append_4064| s@@16 t@@2) n@@16) (|Seq#Drop_4064| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_4064| s@@16))))))
 :qid |stdinbpl.528:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4064| (|Seq#Append_4064| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_29249) (SummandMask1 T@PolymorphicMapType_29249) (SummandMask2 T@PolymorphicMapType_29249) (o_2@@39 T@Ref) (f_4@@39 T@Field_35595_35600) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_29249) (SummandMask1@@0 T@PolymorphicMapType_29249) (SummandMask2@@0 T@PolymorphicMapType_29249) (o_2@@40 T@Ref) (f_4@@40 T@Field_35582_29302) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_29249) (SummandMask1@@1 T@PolymorphicMapType_29249) (SummandMask2@@1 T@PolymorphicMapType_29249) (o_2@@41 T@Ref) (f_4@@41 T@Field_35582_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_29249) (SummandMask1@@2 T@PolymorphicMapType_29249) (SummandMask2@@2 T@PolymorphicMapType_29249) (o_2@@42 T@Ref) (f_4@@42 T@Field_35582_35583) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_29249) (SummandMask1@@3 T@PolymorphicMapType_29249) (SummandMask2@@3 T@PolymorphicMapType_29249) (o_2@@43 T@Ref) (f_4@@43 T@Field_35582_4186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_29249) (SummandMask1@@4 T@PolymorphicMapType_29249) (SummandMask2@@4 T@PolymorphicMapType_29249) (o_2@@44 T@Ref) (f_4@@44 T@Field_19785_35600) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_29249) (SummandMask1@@5 T@PolymorphicMapType_29249) (SummandMask2@@5 T@PolymorphicMapType_29249) (o_2@@45 T@Ref) (f_4@@45 T@Field_29301_29302) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_29249) (SummandMask1@@6 T@PolymorphicMapType_29249) (SummandMask2@@6 T@PolymorphicMapType_29249) (o_2@@46 T@Ref) (f_4@@46 T@Field_29288_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_29249) (SummandMask1@@7 T@PolymorphicMapType_29249) (SummandMask2@@7 T@PolymorphicMapType_29249) (o_2@@47 T@Ref) (f_4@@47 T@Field_19785_35583) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_29249) (SummandMask1@@8 T@PolymorphicMapType_29249) (SummandMask2@@8 T@PolymorphicMapType_29249) (o_2@@48 T@Ref) (f_4@@48 T@Field_35505_4186) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_4064| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_4064| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.693:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_4064| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_36500) (b T@Seq_36500) ) (!  (=> (|Seq#Equal_36500| a b) (= a b))
 :qid |stdinbpl.666:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_36500| a b))
)))
(assert (forall ((a@@0 T@Seq_4064) (b@@0 T@Seq_4064) ) (!  (=> (|Seq#Equal_4064| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.666:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_4064| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_36500) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_36500| s@@17))) (|Seq#ContainsTrigger_19816| s@@17 (|Seq#Index_36500| s@@17 i@@3)))
 :qid |stdinbpl.559:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_36500| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_4064) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_4064| s@@18))) (|Seq#ContainsTrigger_4064| s@@18 (|Seq#Index_4064| s@@18 i@@4)))
 :qid |stdinbpl.559:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_4064| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_36500) (s1@@3 T@Seq_36500) ) (!  (and (=> (= s0@@3 |Seq#Empty_36500|) (= (|Seq#Append_36500| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_36500|) (= (|Seq#Append_36500| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.377:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_36500| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_4064) (s1@@4 T@Seq_4064) ) (!  (and (=> (= s0@@4 |Seq#Empty_4064|) (= (|Seq#Append_4064| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_4064|) (= (|Seq#Append_4064| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.377:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_4064| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_36500| (|Seq#Singleton_36500| t@@3) 0) t@@3)
 :qid |stdinbpl.381:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_36500| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_4064| (|Seq#Singleton_4064| t@@4) 0) t@@4)
 :qid |stdinbpl.381:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4064| t@@4))
)))
(assert (forall ((s@@19 T@Seq_36500) ) (! (<= 0 (|Seq#Length_36500| s@@19))
 :qid |stdinbpl.360:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_36500| s@@19))
)))
(assert (forall ((s@@20 T@Seq_4064) ) (! (<= 0 (|Seq#Length_4064| s@@20))
 :qid |stdinbpl.360:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_4064| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_36500) (s1@@5 T@Seq_36500) ) (!  (=> (|Seq#Equal_36500| s0@@5 s1@@5) (and (= (|Seq#Length_36500| s0@@5) (|Seq#Length_36500| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_36500| s0@@5))) (= (|Seq#Index_36500| s0@@5 j@@6) (|Seq#Index_36500| s1@@5 j@@6)))
 :qid |stdinbpl.656:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_36500| s0@@5 j@@6))
 :pattern ( (|Seq#Index_36500| s1@@5 j@@6))
))))
 :qid |stdinbpl.653:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_36500| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_4064) (s1@@6 T@Seq_4064) ) (!  (=> (|Seq#Equal_4064| s0@@6 s1@@6) (and (= (|Seq#Length_4064| s0@@6) (|Seq#Length_4064| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_4064| s0@@6))) (= (|Seq#Index_4064| s0@@6 j@@7) (|Seq#Index_4064| s1@@6 j@@7)))
 :qid |stdinbpl.656:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_4064| s0@@6 j@@7))
 :pattern ( (|Seq#Index_4064| s1@@6 j@@7))
))))
 :qid |stdinbpl.653:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_4064| s0@@6 s1@@6))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_19790_19791 (pred_3 x@@7)) 0)
 :qid |stdinbpl.728:15|
 :skolemid |60|
 :pattern ( (pred_3 x@@7))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_36500| (|Seq#Singleton_36500| t@@5)) 1)
 :qid |stdinbpl.368:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_36500| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_4064| (|Seq#Singleton_4064| t@@6)) 1)
 :qid |stdinbpl.368:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4064| t@@6))
)))
(assert (forall ((s@@21 T@Seq_36500) (t@@7 T@Seq_36500) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_36500| s@@21))) (= (|Seq#Take_36500| (|Seq#Append_36500| s@@21 t@@7) n@@17) (|Seq#Take_36500| s@@21 n@@17)))
 :qid |stdinbpl.510:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_36500| (|Seq#Append_36500| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_4064) (t@@8 T@Seq_4064) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_4064| s@@22))) (= (|Seq#Take_4064| (|Seq#Append_4064| s@@22 t@@8) n@@18) (|Seq#Take_4064| s@@22 n@@18)))
 :qid |stdinbpl.510:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4064| (|Seq#Append_4064| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_36500) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_36500| s@@23))) (= (|Seq#Length_36500| (|Seq#Update_36500| s@@23 i@@5 v@@2)) (|Seq#Length_36500| s@@23)))
 :qid |stdinbpl.409:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_36500| (|Seq#Update_36500| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_36500| s@@23) (|Seq#Update_36500| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_4064) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_4064| s@@24))) (= (|Seq#Length_4064| (|Seq#Update_4064| s@@24 i@@6 v@@3)) (|Seq#Length_4064| s@@24)))
 :qid |stdinbpl.409:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_4064| (|Seq#Update_4064| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_4064| s@@24) (|Seq#Update_4064| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_29228) (o_51 T@Ref) (f_81 T@Field_35595_35600) (v@@4 T@PolymorphicMapType_29777) ) (! (succHeap Heap@@21 (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@21) (store (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@21) o_51 f_81 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@21) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@21) (store (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@21) o_51 f_81 v@@4)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_29228) (o_51@@0 T@Ref) (f_81@@0 T@Field_35582_35583) (v@@5 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@22) (store (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@22) o_51@@0 f_81@@0 v@@5) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@22) (store (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@22) o_51@@0 f_81@@0 v@@5) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@22) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_29228) (o_51@@1 T@Ref) (f_81@@1 T@Field_35582_4186) (v@@6 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@23) (store (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@23) o_51@@1 f_81@@1 v@@6) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@23) (store (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@23) o_51@@1 f_81@@1 v@@6) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@23) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_29228) (o_51@@2 T@Ref) (f_81@@2 T@Field_35582_29302) (v@@7 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@24) (store (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@24) o_51@@2 f_81@@2 v@@7) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@24) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@24) (store (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@24) o_51@@2 f_81@@2 v@@7) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_29228) (o_51@@3 T@Ref) (f_81@@3 T@Field_35582_53) (v@@8 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@25) (store (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@25) o_51@@3 f_81@@3 v@@8) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@25) (store (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@25) o_51@@3 f_81@@3 v@@8) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@25) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_29228) (o_51@@4 T@Ref) (f_81@@4 T@Field_19785_35600) (v@@9 T@PolymorphicMapType_29777) ) (! (succHeap Heap@@26 (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@26) (store (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@26) o_51@@4 f_81@@4 v@@9) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@26) (store (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@26) o_51@@4 f_81@@4 v@@9) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@26) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_29228) (o_51@@5 T@Ref) (f_81@@5 T@Field_19785_35583) (v@@10 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@27) (store (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@27) o_51@@5 f_81@@5 v@@10) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@27) (store (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@27) o_51@@5 f_81@@5 v@@10) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@27) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_29228) (o_51@@6 T@Ref) (f_81@@6 T@Field_35505_4186) (v@@11 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@28) (store (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@28) o_51@@6 f_81@@6 v@@11) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@28) (store (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@28) o_51@@6 f_81@@6 v@@11) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@28) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_29228) (o_51@@7 T@Ref) (f_81@@7 T@Field_29301_29302) (v@@12 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@29) (store (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@29) o_51@@7 f_81@@7 v@@12) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29228 (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@29) (store (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@29) o_51@@7 f_81@@7 v@@12) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@29) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_29228) (o_51@@8 T@Ref) (f_81@@8 T@Field_29288_53) (v@@13 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_29228 (store (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@30) o_51@@8 f_81@@8 v@@13) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29228 (store (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@30) o_51@@8 f_81@@8 v@@13) (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_19785_35583#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_19785_89662#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_35582_4186#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_35582_53#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_35582_29302#PolymorphicMapType_29228| Heap@@30) (|PolymorphicMapType_29228_35582_90823#PolymorphicMapType_29228| Heap@@30)))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (PredicateMaskField_19790 (pred_3 x@@8)) (|pred#sm| x@@8))
 :qid |stdinbpl.720:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_19790 (pred_3 x@@8)))
)))
(assert (forall ((s@@25 T@Seq_36500) (t@@9 T@Seq_36500) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_36500| s@@25))) (= (|Seq#Drop_36500| (|Seq#Append_36500| s@@25 t@@9) n@@19) (|Seq#Append_36500| (|Seq#Drop_36500| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.524:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_36500| (|Seq#Append_36500| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_4064) (t@@10 T@Seq_4064) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_4064| s@@26))) (= (|Seq#Drop_4064| (|Seq#Append_4064| s@@26 t@@10) n@@20) (|Seq#Append_4064| (|Seq#Drop_4064| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.524:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4064| (|Seq#Append_4064| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_36500) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_36500| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_36500| (|Seq#Drop_36500| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_36500| s@@27 i@@7))))
 :qid |stdinbpl.460:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_36500| s@@27 n@@21) (|Seq#Index_36500| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_4064) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_4064| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_4064| (|Seq#Drop_4064| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_4064| s@@28 i@@8))))
 :qid |stdinbpl.460:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4064| s@@28 n@@22) (|Seq#Index_4064| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_36500) (s1@@7 T@Seq_36500) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_36500|)) (not (= s1@@7 |Seq#Empty_36500|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_36500| s0@@7))) (= (|Seq#Index_36500| (|Seq#Append_36500| s0@@7 s1@@7) n@@23) (|Seq#Index_36500| s0@@7 n@@23)))
 :qid |stdinbpl.400:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_36500| (|Seq#Append_36500| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_36500| s0@@7 n@@23) (|Seq#Append_36500| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_4064) (s1@@8 T@Seq_4064) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_4064|)) (not (= s1@@8 |Seq#Empty_4064|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_4064| s0@@8))) (= (|Seq#Index_4064| (|Seq#Append_4064| s0@@8 s1@@8) n@@24) (|Seq#Index_4064| s0@@8 n@@24)))
 :qid |stdinbpl.400:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_4064| (|Seq#Append_4064| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_4064| s0@@8 n@@24) (|Seq#Append_4064| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_36500) (s1@@9 T@Seq_36500) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_36500|)) (not (= s1@@9 |Seq#Empty_36500|))) (<= 0 m)) (< m (|Seq#Length_36500| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_36500| s0@@9)) (|Seq#Length_36500| s0@@9)) m) (= (|Seq#Index_36500| (|Seq#Append_36500| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_36500| s0@@9))) (|Seq#Index_36500| s1@@9 m))))
 :qid |stdinbpl.405:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_36500| s1@@9 m) (|Seq#Append_36500| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_4064) (s1@@10 T@Seq_4064) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_4064|)) (not (= s1@@10 |Seq#Empty_4064|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_4064| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_4064| s0@@10)) (|Seq#Length_4064| s0@@10)) m@@0) (= (|Seq#Index_4064| (|Seq#Append_4064| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_4064| s0@@10))) (|Seq#Index_4064| s1@@10 m@@0))))
 :qid |stdinbpl.405:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_4064| s1@@10 m@@0) (|Seq#Append_4064| s0@@10 s1@@10))
)))
(assert (forall ((o_51@@9 T@Ref) (f_50 T@Field_29301_29302) (Heap@@31 T@PolymorphicMapType_29228) ) (!  (=> (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@31) o_51@@9 $allocated) (select (|PolymorphicMapType_29228_19397_53#PolymorphicMapType_29228| Heap@@31) (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@31) o_51@@9 f_50) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_29228_19400_19401#PolymorphicMapType_29228| Heap@@31) o_51@@9 f_50))
)))
(assert (forall ((s@@29 T@Seq_36500) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_36500| s@@29))) (= (|Seq#Index_36500| s@@29 i@@9) x@@9)) (|Seq#Contains_19816| s@@29 x@@9))
 :qid |stdinbpl.557:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_19816| s@@29 x@@9) (|Seq#Index_36500| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_4064) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_4064| s@@30))) (= (|Seq#Index_4064| s@@30 i@@10) x@@10)) (|Seq#Contains_4064| s@@30 x@@10))
 :qid |stdinbpl.557:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_4064| s@@30 x@@10) (|Seq#Index_4064| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_36500) (s1@@11 T@Seq_36500) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_36500| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_36500| s0@@11 s1@@11))) (not (= (|Seq#Length_36500| s0@@11) (|Seq#Length_36500| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_36500| s0@@11 s1@@11))) (= (|Seq#Length_36500| s0@@11) (|Seq#Length_36500| s1@@11))) (= (|Seq#SkolemDiff_36500| s0@@11 s1@@11) (|Seq#SkolemDiff_36500| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_36500| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_36500| s0@@11 s1@@11) (|Seq#Length_36500| s0@@11))) (not (= (|Seq#Index_36500| s0@@11 (|Seq#SkolemDiff_36500| s0@@11 s1@@11)) (|Seq#Index_36500| s1@@11 (|Seq#SkolemDiff_36500| s0@@11 s1@@11))))))
 :qid |stdinbpl.661:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_36500| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_4064) (s1@@12 T@Seq_4064) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_4064| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_4064| s0@@12 s1@@12))) (not (= (|Seq#Length_4064| s0@@12) (|Seq#Length_4064| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_4064| s0@@12 s1@@12))) (= (|Seq#Length_4064| s0@@12) (|Seq#Length_4064| s1@@12))) (= (|Seq#SkolemDiff_4064| s0@@12 s1@@12) (|Seq#SkolemDiff_4064| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_4064| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_4064| s0@@12 s1@@12) (|Seq#Length_4064| s0@@12))) (not (= (|Seq#Index_4064| s0@@12 (|Seq#SkolemDiff_4064| s0@@12 s1@@12)) (|Seq#Index_4064| s1@@12 (|Seq#SkolemDiff_4064| s0@@12 s1@@12))))))
 :qid |stdinbpl.661:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_4064| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_35582_35583) (v_1@@1 T@FrameType) (q T@Field_35582_35583) (w@@1 T@FrameType) (r T@Field_35582_35583) (u T@FrameType) ) (!  (=> (and (InsidePredicate_35582_35582 p@@2 v_1@@1 q w@@1) (InsidePredicate_35582_35582 q w@@1 r u)) (InsidePredicate_35582_35582 p@@2 v_1@@1 r u))
 :qid |stdinbpl.328:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35582_35582 p@@2 v_1@@1 q w@@1) (InsidePredicate_35582_35582 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_35582_35583) (v_1@@2 T@FrameType) (q@@0 T@Field_35582_35583) (w@@2 T@FrameType) (r@@0 T@Field_19785_35583) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_35582_35582 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_35582_29288 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_35582_29288 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.328:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35582_35582 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_35582_29288 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_35582_35583) (v_1@@3 T@FrameType) (q@@1 T@Field_19785_35583) (w@@3 T@FrameType) (r@@1 T@Field_35582_35583) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_35582_29288 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_29288_35582 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_35582_35582 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.328:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35582_29288 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_29288_35582 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_35582_35583) (v_1@@4 T@FrameType) (q@@2 T@Field_19785_35583) (w@@4 T@FrameType) (r@@2 T@Field_19785_35583) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_35582_29288 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_29288_29288 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_35582_29288 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.328:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35582_29288 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_29288_29288 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_19785_35583) (v_1@@5 T@FrameType) (q@@3 T@Field_35582_35583) (w@@5 T@FrameType) (r@@3 T@Field_35582_35583) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_29288_35582 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_35582_35582 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_29288_35582 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.328:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29288_35582 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_35582_35582 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_19785_35583) (v_1@@6 T@FrameType) (q@@4 T@Field_35582_35583) (w@@6 T@FrameType) (r@@4 T@Field_19785_35583) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_29288_35582 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_35582_29288 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_29288_29288 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.328:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29288_35582 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_35582_29288 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_19785_35583) (v_1@@7 T@FrameType) (q@@5 T@Field_19785_35583) (w@@7 T@FrameType) (r@@5 T@Field_35582_35583) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_29288_29288 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_29288_35582 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_29288_35582 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.328:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29288_29288 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_29288_35582 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_19785_35583) (v_1@@8 T@FrameType) (q@@6 T@Field_19785_35583) (w@@8 T@FrameType) (r@@6 T@Field_19785_35583) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_29288_29288 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_29288_29288 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_29288_29288 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.328:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29288_29288 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_29288_29288 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_36500) ) (!  (=> (= (|Seq#Length_36500| s@@31) 0) (= s@@31 |Seq#Empty_36500|))
 :qid |stdinbpl.364:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_36500| s@@31))
)))
(assert (forall ((s@@32 T@Seq_4064) ) (!  (=> (= (|Seq#Length_4064| s@@32) 0) (= s@@32 |Seq#Empty_4064|))
 :qid |stdinbpl.364:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_4064| s@@32))
)))
(assert (forall ((s@@33 T@Seq_36500) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_36500| s@@33 n@@25) |Seq#Empty_36500|))
 :qid |stdinbpl.540:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_36500| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_4064) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_4064| s@@34 n@@26) |Seq#Empty_4064|))
 :qid |stdinbpl.540:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4064| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs () T@Seq_36500)
(declare-fun x_45 () T@Ref)
(declare-fun QPMask@8 () T@PolymorphicMapType_29249)
(declare-fun neverTriggered47 (T@Ref) Bool)
(declare-fun PostHeap@0 () T@PolymorphicMapType_29228)
(declare-fun QPMask@7 () T@PolymorphicMapType_29249)
(declare-fun invRecv47 (T@Ref) T@Ref)
(declare-fun qpRange47 (T@Ref) Bool)
(declare-fun getPredWandId_19785_4186 (T@Field_35505_4186) Int)
(declare-fun getPredWandId_19785_19791 (T@Field_19785_35583) Int)
(declare-fun getPredWandId_19785_53 (T@Field_29288_53) Int)
(declare-fun getPredWandId_19785_29302 (T@Field_29301_29302) Int)
(declare-fun getPredWandId_19785_116723 (T@Field_19785_35600) Int)
(declare-fun getPredWandId_19790_4186 (T@Field_35582_4186) Int)
(declare-fun getPredWandId_19790_53 (T@Field_35582_53) Int)
(declare-fun getPredWandId_19790_29302 (T@Field_35582_29302) Int)
(declare-fun getPredWandId_19790_117532 (T@Field_35595_35600) Int)
(declare-fun qpRange46 (T@Ref) Bool)
(declare-fun invRecv46 (T@Ref) T@Ref)
(declare-fun QPMask@6 () T@PolymorphicMapType_29249)
(declare-fun qpRange45 (T@Ref) Bool)
(declare-fun invRecv45 (T@Ref) T@Ref)
(declare-fun x_24_2 () T@Ref)
(declare-fun Heap@@32 () T@PolymorphicMapType_29228)
(declare-fun neverTriggered48 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_29249)
(declare-fun QPMask@2 () T@PolymorphicMapType_29249)
(declare-fun qpRange48 (T@Ref) Bool)
(declare-fun invRecv48 (T@Ref) T@Ref)
(declare-fun neverTriggered49 (T@Ref) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_29249)
(declare-fun qpRange49 (T@Ref) Bool)
(declare-fun invRecv49 (T@Ref) T@Ref)
(declare-fun neverTriggered50 (T@Ref) Bool)
(declare-fun invRecv50 (T@Ref) T@Ref)
(declare-fun qpRange50 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_29249)
(declare-fun x_44 () T@Ref)
(declare-fun neverTriggered44 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_29249)
(declare-fun invRecv44 (T@Ref) T@Ref)
(declare-fun qpRange44 (T@Ref) Bool)
(declare-fun qpRange43 (T@Ref) Bool)
(declare-fun invRecv43 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_29249)
(declare-fun qpRange42 (T@Ref) Bool)
(declare-fun invRecv42 (T@Ref) T@Ref)
(set-info :boogie-vc-id m9)
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
 (=> (= (ControlFlow 0 0) 43) (let ((anon20_correct true))
(let ((anon37_Else_correct  (=> (and (not (|Seq#Contains_19816| xs x_45)) (= (ControlFlow 0 27) 24)) anon20_correct)))
(let ((anon37_Then_correct  (=> (|Seq#Contains_19816| xs x_45) (and (=> (= (ControlFlow 0 25) (- 0 26)) (HasDirectPerm_19785_4186 QPMask@8 x_45 f_7)) (=> (HasDirectPerm_19785_4186 QPMask@8 x_45 f_7) (=> (= (ControlFlow 0 25) 24) anon20_correct))))))
(let ((anon36_Else_correct true))
(let ((anon35_Else_correct  (and (=> (= (ControlFlow 0 28) (- 0 29)) (forall ((x_15_2 T@Ref) (x_15_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_15_2 x_15_3)) (|Seq#Contains_19816| xs x_15_2)) (|Seq#Contains_19816| xs x_15_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_15_2 x_15_3)))
 :qid |stdinbpl.3100:17|
 :skolemid |350|
 :pattern ( (neverTriggered47 x_15_2) (neverTriggered47 x_15_3))
))) (=> (forall ((x_15_2@@0 T@Ref) (x_15_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_15_2@@0 x_15_3@@0)) (|Seq#Contains_19816| xs x_15_2@@0)) (|Seq#Contains_19816| xs x_15_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_15_2@@0 x_15_3@@0)))
 :qid |stdinbpl.3100:17|
 :skolemid |350|
 :pattern ( (neverTriggered47 x_15_2@@0) (neverTriggered47 x_15_3@@0))
)) (=> (forall ((x_15_2@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_19816| xs x_15_2@@1) (< NoPerm FullPerm)) (and (= (invRecv47 x_15_2@@1) x_15_2@@1) (qpRange47 x_15_2@@1)))
 :qid |stdinbpl.3106:22|
 :skolemid |351|
 :pattern ( (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| PostHeap@0) null (pred_3 x_15_2@@1)))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@7) null (pred_3 x_15_2@@1)))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_15_2@@1))
 :pattern ( (|Seq#Contains_19816| xs x_15_2@@1))
)) (=> (and (forall ((x_16_1_1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19816| xs (invRecv47 x_16_1_1)) (< NoPerm FullPerm)) (qpRange47 x_16_1_1)) (= (invRecv47 x_16_1_1) x_16_1_1))
 :qid |stdinbpl.3110:22|
 :skolemid |352|
 :pattern ( (invRecv47 x_16_1_1))
)) (forall ((x_16_1_1@@0 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19816| xs (invRecv47 x_16_1_1@@0)) (< NoPerm FullPerm)) (qpRange47 x_16_1_1@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv47 x_16_1_1@@0) x_16_1_1@@0)) (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@8) null (pred_3 x_16_1_1@@0)) (+ (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@7) null (pred_3 x_16_1_1@@0)) FullPerm))))
 :qid |stdinbpl.3116:22|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@8) null (pred_3 x_16_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_35505_4186) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_19785_4186 f_5))) (not (= (getPredWandId_19785_4186 f_5) 0))) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@7) o_4 f_5) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@8) o_4 f_5)))
 :qid |stdinbpl.3122:29|
 :skolemid |354|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@7) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@8) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_19785_35583) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_19785_91069 f_5@@0))) (not (= (getPredWandId_19785_19791 f_5@@0) 0))) (= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@7) o_4@@0 f_5@@0) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@8) o_4@@0 f_5@@0)))
 :qid |stdinbpl.3122:29|
 :skolemid |354|
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@7) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@8) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_29288_53) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_19785_53 f_5@@1))) (not (= (getPredWandId_19785_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@7) o_4@@1 f_5@@1) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@8) o_4@@1 f_5@@1)))
 :qid |stdinbpl.3122:29|
 :skolemid |354|
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@7) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@8) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_29301_29302) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_19785_29302 f_5@@2))) (not (= (getPredWandId_19785_29302 f_5@@2) 0))) (= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@7) o_4@@2 f_5@@2) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@8) o_4@@2 f_5@@2)))
 :qid |stdinbpl.3122:29|
 :skolemid |354|
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@7) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@8) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_19785_35600) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_19785_100867 f_5@@3))) (not (= (getPredWandId_19785_116723 f_5@@3) 0))) (= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@7) o_4@@3 f_5@@3) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@8) o_4@@3 f_5@@3)))
 :qid |stdinbpl.3122:29|
 :skolemid |354|
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@7) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@8) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_35582_4186) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_19790_4186 f_5@@4))) (not (= (getPredWandId_19790_4186 f_5@@4) 0))) (= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@7) o_4@@4 f_5@@4) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@8) o_4@@4 f_5@@4)))
 :qid |stdinbpl.3122:29|
 :skolemid |354|
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@7) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@8) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_35582_35583) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_19790_19791 f_5@@5))) (not (= (getPredWandId_19790_19791 f_5@@5) 0))) (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@7) o_4@@5 f_5@@5) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@8) o_4@@5 f_5@@5)))
 :qid |stdinbpl.3122:29|
 :skolemid |354|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@7) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@8) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_35582_53) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_19790_53 f_5@@6))) (not (= (getPredWandId_19790_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@7) o_4@@6 f_5@@6) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@8) o_4@@6 f_5@@6)))
 :qid |stdinbpl.3122:29|
 :skolemid |354|
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@7) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@8) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_35582_29302) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsPredicateField_19790_29302 f_5@@7))) (not (= (getPredWandId_19790_29302 f_5@@7) 0))) (= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@7) o_4@@7 f_5@@7) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@8) o_4@@7 f_5@@7)))
 :qid |stdinbpl.3122:29|
 :skolemid |354|
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@7) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@8) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_35595_35600) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsPredicateField_19790_101698 f_5@@8))) (not (= (getPredWandId_19790_117532 f_5@@8) 0))) (= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@7) o_4@@8 f_5@@8) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@8) o_4@@8 f_5@@8)))
 :qid |stdinbpl.3122:29|
 :skolemid |354|
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@7) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@8) o_4@@8 f_5@@8))
))) (and (forall ((x_16_1_1@@1 T@Ref) ) (!  (=> (not (and (and (|Seq#Contains_19816| xs (invRecv47 x_16_1_1@@1)) (< NoPerm FullPerm)) (qpRange47 x_16_1_1@@1))) (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@8) null (pred_3 x_16_1_1@@1)) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@7) null (pred_3 x_16_1_1@@1))))
 :qid |stdinbpl.3126:22|
 :skolemid |355|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@8) null (pred_3 x_16_1_1@@1)))
)) (state PostHeap@0 QPMask@8))) (and (and (=> (= (ControlFlow 0 28) 23) anon36_Else_correct) (=> (= (ControlFlow 0 28) 25) anon37_Then_correct)) (=> (= (ControlFlow 0 28) 27) anon37_Else_correct)))))))))
(let ((anon35_Then_correct true))
(let ((anon34_Else_correct  (and (=> (= (ControlFlow 0 30) (- 0 31)) (forall ((x_13_2 T@Ref) (x_13_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_13_2 x_13_3)) (|Seq#Contains_19816| xs x_13_2)) (|Seq#Contains_19816| xs x_13_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_13_2 x_13_3)))
 :qid |stdinbpl.3059:15|
 :skolemid |344|
))) (=> (forall ((x_13_2@@0 T@Ref) (x_13_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_13_2@@0 x_13_3@@0)) (|Seq#Contains_19816| xs x_13_2@@0)) (|Seq#Contains_19816| xs x_13_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_13_2@@0 x_13_3@@0)))
 :qid |stdinbpl.3059:15|
 :skolemid |344|
)) (=> (and (and (forall ((x_13_2@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_19816| xs x_13_2@@1) (< NoPerm FullPerm)) (and (qpRange46 x_13_2@@1) (= (invRecv46 x_13_2@@1) x_13_2@@1)))
 :qid |stdinbpl.3065:22|
 :skolemid |345|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| PostHeap@0) x_13_2@@1 g))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@7) x_13_2@@1 g))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_13_2@@1))
 :pattern ( (|Seq#Contains_19816| xs x_13_2@@1))
)) (forall ((o_4@@9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19816| xs (invRecv46 o_4@@9)) (< NoPerm FullPerm)) (qpRange46 o_4@@9)) (= (invRecv46 o_4@@9) o_4@@9))
 :qid |stdinbpl.3069:22|
 :skolemid |346|
 :pattern ( (invRecv46 o_4@@9))
))) (and (forall ((x_13_2@@2 T@Ref) ) (!  (=> (|Seq#Contains_19816| xs x_13_2@@2) (not (= x_13_2@@2 null)))
 :qid |stdinbpl.3075:22|
 :skolemid |347|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| PostHeap@0) x_13_2@@2 g))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@7) x_13_2@@2 g))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_13_2@@2))
 :pattern ( (|Seq#Contains_19816| xs x_13_2@@2))
)) (forall ((o_4@@10 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_19816| xs (invRecv46 o_4@@10)) (< NoPerm FullPerm)) (qpRange46 o_4@@10)) (and (=> (< NoPerm FullPerm) (= (invRecv46 o_4@@10) o_4@@10)) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@7) o_4@@10 g) (+ (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@6) o_4@@10 g) FullPerm)))) (=> (not (and (and (|Seq#Contains_19816| xs (invRecv46 o_4@@10)) (< NoPerm FullPerm)) (qpRange46 o_4@@10))) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@7) o_4@@10 g) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@6) o_4@@10 g))))
 :qid |stdinbpl.3081:22|
 :skolemid |348|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@7) o_4@@10 g))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@11 T@Ref) (f_5@@9 T@Field_29288_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@6) o_4@@11 f_5@@9) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@7) o_4@@11 f_5@@9)))
 :qid |stdinbpl.3085:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@6) o_4@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@7) o_4@@11 f_5@@9))
)) (forall ((o_4@@12 T@Ref) (f_5@@10 T@Field_29301_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@6) o_4@@12 f_5@@10) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@7) o_4@@12 f_5@@10)))
 :qid |stdinbpl.3085:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@6) o_4@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@7) o_4@@12 f_5@@10))
))) (forall ((o_4@@13 T@Ref) (f_5@@11 T@Field_35505_4186) ) (!  (=> (not (= f_5@@11 g)) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@6) o_4@@13 f_5@@11) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@7) o_4@@13 f_5@@11)))
 :qid |stdinbpl.3085:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@6) o_4@@13 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@7) o_4@@13 f_5@@11))
))) (forall ((o_4@@14 T@Ref) (f_5@@12 T@Field_19785_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@6) o_4@@14 f_5@@12) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@7) o_4@@14 f_5@@12)))
 :qid |stdinbpl.3085:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@6) o_4@@14 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@7) o_4@@14 f_5@@12))
))) (forall ((o_4@@15 T@Ref) (f_5@@13 T@Field_19785_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@6) o_4@@15 f_5@@13) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@7) o_4@@15 f_5@@13)))
 :qid |stdinbpl.3085:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@6) o_4@@15 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@7) o_4@@15 f_5@@13))
))) (forall ((o_4@@16 T@Ref) (f_5@@14 T@Field_35582_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@6) o_4@@16 f_5@@14) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@7) o_4@@16 f_5@@14)))
 :qid |stdinbpl.3085:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@6) o_4@@16 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@7) o_4@@16 f_5@@14))
))) (forall ((o_4@@17 T@Ref) (f_5@@15 T@Field_35582_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@6) o_4@@17 f_5@@15) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@7) o_4@@17 f_5@@15)))
 :qid |stdinbpl.3085:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@6) o_4@@17 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@7) o_4@@17 f_5@@15))
))) (forall ((o_4@@18 T@Ref) (f_5@@16 T@Field_35582_4186) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@6) o_4@@18 f_5@@16) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@7) o_4@@18 f_5@@16)))
 :qid |stdinbpl.3085:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@6) o_4@@18 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@7) o_4@@18 f_5@@16))
))) (forall ((o_4@@19 T@Ref) (f_5@@17 T@Field_35582_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@6) o_4@@19 f_5@@17) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@7) o_4@@19 f_5@@17)))
 :qid |stdinbpl.3085:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@6) o_4@@19 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@7) o_4@@19 f_5@@17))
))) (forall ((o_4@@20 T@Ref) (f_5@@18 T@Field_35595_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@6) o_4@@20 f_5@@18) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@7) o_4@@20 f_5@@18)))
 :qid |stdinbpl.3085:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@6) o_4@@20 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@7) o_4@@20 f_5@@18))
))) (state PostHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 30) 22) anon35_Then_correct) (=> (= (ControlFlow 0 30) 28) anon35_Else_correct))))))))
(let ((anon34_Then_correct true))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 32) (- 0 33)) (forall ((x_11_1 T@Ref) (x_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= x_11_1 x_11_2)) (|Seq#Contains_19816| xs x_11_1)) (|Seq#Contains_19816| xs x_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_11_1 x_11_2)))
 :qid |stdinbpl.3020:15|
 :skolemid |338|
))) (=> (forall ((x_11_1@@0 T@Ref) (x_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_11_1@@0 x_11_2@@0)) (|Seq#Contains_19816| xs x_11_1@@0)) (|Seq#Contains_19816| xs x_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_11_1@@0 x_11_2@@0)))
 :qid |stdinbpl.3020:15|
 :skolemid |338|
)) (=> (and (and (forall ((x_11_1@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_19816| xs x_11_1@@1) (< NoPerm FullPerm)) (and (qpRange45 x_11_1@@1) (= (invRecv45 x_11_1@@1) x_11_1@@1)))
 :qid |stdinbpl.3026:22|
 :skolemid |339|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| PostHeap@0) x_11_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@6) x_11_1@@1 f_7))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_11_1@@1))
 :pattern ( (|Seq#Contains_19816| xs x_11_1@@1))
)) (forall ((o_4@@21 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19816| xs (invRecv45 o_4@@21)) (< NoPerm FullPerm)) (qpRange45 o_4@@21)) (= (invRecv45 o_4@@21) o_4@@21))
 :qid |stdinbpl.3030:22|
 :skolemid |340|
 :pattern ( (invRecv45 o_4@@21))
))) (and (forall ((x_11_1@@2 T@Ref) ) (!  (=> (|Seq#Contains_19816| xs x_11_1@@2) (not (= x_11_1@@2 null)))
 :qid |stdinbpl.3036:22|
 :skolemid |341|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| PostHeap@0) x_11_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@6) x_11_1@@2 f_7))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_11_1@@2))
 :pattern ( (|Seq#Contains_19816| xs x_11_1@@2))
)) (forall ((o_4@@22 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_19816| xs (invRecv45 o_4@@22)) (< NoPerm FullPerm)) (qpRange45 o_4@@22)) (and (=> (< NoPerm FullPerm) (= (invRecv45 o_4@@22) o_4@@22)) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@6) o_4@@22 f_7) (+ (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ZeroMask) o_4@@22 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_19816| xs (invRecv45 o_4@@22)) (< NoPerm FullPerm)) (qpRange45 o_4@@22))) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@6) o_4@@22 f_7) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ZeroMask) o_4@@22 f_7))))
 :qid |stdinbpl.3042:22|
 :skolemid |342|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@6) o_4@@22 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@23 T@Ref) (f_5@@19 T@Field_29288_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| ZeroMask) o_4@@23 f_5@@19) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@6) o_4@@23 f_5@@19)))
 :qid |stdinbpl.3046:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| ZeroMask) o_4@@23 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@6) o_4@@23 f_5@@19))
)) (forall ((o_4@@24 T@Ref) (f_5@@20 T@Field_29301_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| ZeroMask) o_4@@24 f_5@@20) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@6) o_4@@24 f_5@@20)))
 :qid |stdinbpl.3046:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| ZeroMask) o_4@@24 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@6) o_4@@24 f_5@@20))
))) (forall ((o_4@@25 T@Ref) (f_5@@21 T@Field_35505_4186) ) (!  (=> (not (= f_5@@21 f_7)) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ZeroMask) o_4@@25 f_5@@21) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@6) o_4@@25 f_5@@21)))
 :qid |stdinbpl.3046:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ZeroMask) o_4@@25 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@6) o_4@@25 f_5@@21))
))) (forall ((o_4@@26 T@Ref) (f_5@@22 T@Field_19785_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| ZeroMask) o_4@@26 f_5@@22) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@6) o_4@@26 f_5@@22)))
 :qid |stdinbpl.3046:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| ZeroMask) o_4@@26 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@6) o_4@@26 f_5@@22))
))) (forall ((o_4@@27 T@Ref) (f_5@@23 T@Field_19785_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| ZeroMask) o_4@@27 f_5@@23) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@6) o_4@@27 f_5@@23)))
 :qid |stdinbpl.3046:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| ZeroMask) o_4@@27 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@6) o_4@@27 f_5@@23))
))) (forall ((o_4@@28 T@Ref) (f_5@@24 T@Field_35582_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| ZeroMask) o_4@@28 f_5@@24) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@6) o_4@@28 f_5@@24)))
 :qid |stdinbpl.3046:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| ZeroMask) o_4@@28 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@6) o_4@@28 f_5@@24))
))) (forall ((o_4@@29 T@Ref) (f_5@@25 T@Field_35582_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| ZeroMask) o_4@@29 f_5@@25) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@6) o_4@@29 f_5@@25)))
 :qid |stdinbpl.3046:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| ZeroMask) o_4@@29 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@6) o_4@@29 f_5@@25))
))) (forall ((o_4@@30 T@Ref) (f_5@@26 T@Field_35582_4186) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| ZeroMask) o_4@@30 f_5@@26) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@6) o_4@@30 f_5@@26)))
 :qid |stdinbpl.3046:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| ZeroMask) o_4@@30 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@6) o_4@@30 f_5@@26))
))) (forall ((o_4@@31 T@Ref) (f_5@@27 T@Field_35582_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| ZeroMask) o_4@@31 f_5@@27) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@6) o_4@@31 f_5@@27)))
 :qid |stdinbpl.3046:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| ZeroMask) o_4@@31 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@6) o_4@@31 f_5@@27))
))) (forall ((o_4@@32 T@Ref) (f_5@@28 T@Field_35595_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| ZeroMask) o_4@@32 f_5@@28) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@6) o_4@@32 f_5@@28)))
 :qid |stdinbpl.3046:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| ZeroMask) o_4@@32 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@6) o_4@@32 f_5@@28))
))) (state PostHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 32) 21) anon34_Then_correct) (=> (= (ControlFlow 0 32) 30) anon34_Else_correct))))))))
(let ((anon33_Then_correct true))
(let ((anon32_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 34) 20) anon33_Then_correct) (=> (= (ControlFlow 0 34) 32) anon33_Else_correct)))))
(let ((anon25_correct true))
(let ((anon39_Else_correct  (=> (and (not (|Seq#Contains_19816| xs x_24_2)) (= (ControlFlow 0 12) 9)) anon25_correct)))
(let ((anon39_Then_correct  (=> (|Seq#Contains_19816| xs x_24_2) (and (=> (= (ControlFlow 0 10) (- 0 11)) (> (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_24_2 f_7) 0)) (=> (> (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_24_2 f_7) 0) (=> (= (ControlFlow 0 10) 9) anon25_correct))))))
(let ((anon38_Else_correct true))
(let ((anon32_Else_correct  (and (=> (= (ControlFlow 0 13) (- 0 19)) (forall ((x_20_2 T@Ref) (x_20_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_20_2 x_20_3)) (|Seq#Contains_19816| xs x_20_2)) (|Seq#Contains_19816| xs x_20_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_20_2 x_20_3)))
 :qid |stdinbpl.3160:17|
 :skolemid |357|
 :pattern ( (neverTriggered48 x_20_2) (neverTriggered48 x_20_3))
))) (=> (forall ((x_20_2@@0 T@Ref) (x_20_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_20_2@@0 x_20_3@@0)) (|Seq#Contains_19816| xs x_20_2@@0)) (|Seq#Contains_19816| xs x_20_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_20_2@@0 x_20_3@@0)))
 :qid |stdinbpl.3160:17|
 :skolemid |357|
 :pattern ( (neverTriggered48 x_20_2@@0) (neverTriggered48 x_20_3@@0))
)) (and (=> (= (ControlFlow 0 13) (- 0 18)) (forall ((x_20_2@@1 T@Ref) ) (!  (=> (|Seq#Contains_19816| xs x_20_2@@1) (>= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@2) x_20_2@@1 f_7) FullPerm))
 :qid |stdinbpl.3167:17|
 :skolemid |358|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_20_2@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) x_20_2@@1 f_7))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_20_2@@1))
 :pattern ( (|Seq#Contains_19816| xs x_20_2@@1))
))) (=> (forall ((x_20_2@@2 T@Ref) ) (!  (=> (|Seq#Contains_19816| xs x_20_2@@2) (>= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@2) x_20_2@@2 f_7) FullPerm))
 :qid |stdinbpl.3167:17|
 :skolemid |358|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_20_2@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) x_20_2@@2 f_7))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_20_2@@2))
 :pattern ( (|Seq#Contains_19816| xs x_20_2@@2))
)) (=> (forall ((x_20_2@@3 T@Ref) ) (!  (=> (and (|Seq#Contains_19816| xs x_20_2@@3) (< NoPerm FullPerm)) (and (qpRange48 x_20_2@@3) (= (invRecv48 x_20_2@@3) x_20_2@@3)))
 :qid |stdinbpl.3173:22|
 :skolemid |359|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_20_2@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) x_20_2@@3 f_7))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_20_2@@3))
 :pattern ( (|Seq#Contains_19816| xs x_20_2@@3))
)) (=> (and (forall ((o_4@@33 T@Ref) ) (!  (=> (and (|Seq#Contains_19816| xs (invRecv48 o_4@@33)) (and (< NoPerm FullPerm) (qpRange48 o_4@@33))) (= (invRecv48 o_4@@33) o_4@@33))
 :qid |stdinbpl.3177:22|
 :skolemid |360|
 :pattern ( (invRecv48 o_4@@33))
)) (forall ((o_4@@34 T@Ref) ) (!  (and (=> (and (|Seq#Contains_19816| xs (invRecv48 o_4@@34)) (and (< NoPerm FullPerm) (qpRange48 o_4@@34))) (and (= (invRecv48 o_4@@34) o_4@@34) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) o_4@@34 f_7) (- (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@2) o_4@@34 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_19816| xs (invRecv48 o_4@@34)) (and (< NoPerm FullPerm) (qpRange48 o_4@@34)))) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) o_4@@34 f_7) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@2) o_4@@34 f_7))))
 :qid |stdinbpl.3183:22|
 :skolemid |361|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) o_4@@34 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@35 T@Ref) (f_5@@29 T@Field_29288_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@2) o_4@@35 f_5@@29) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@3) o_4@@35 f_5@@29)))
 :qid |stdinbpl.3189:29|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@3) o_4@@35 f_5@@29))
)) (forall ((o_4@@36 T@Ref) (f_5@@30 T@Field_29301_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@2) o_4@@36 f_5@@30) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@3) o_4@@36 f_5@@30)))
 :qid |stdinbpl.3189:29|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@3) o_4@@36 f_5@@30))
))) (forall ((o_4@@37 T@Ref) (f_5@@31 T@Field_35505_4186) ) (!  (=> (not (= f_5@@31 f_7)) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@2) o_4@@37 f_5@@31) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) o_4@@37 f_5@@31)))
 :qid |stdinbpl.3189:29|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) o_4@@37 f_5@@31))
))) (forall ((o_4@@38 T@Ref) (f_5@@32 T@Field_19785_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@2) o_4@@38 f_5@@32) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@3) o_4@@38 f_5@@32)))
 :qid |stdinbpl.3189:29|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@3) o_4@@38 f_5@@32))
))) (forall ((o_4@@39 T@Ref) (f_5@@33 T@Field_19785_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@2) o_4@@39 f_5@@33) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@3) o_4@@39 f_5@@33)))
 :qid |stdinbpl.3189:29|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@3) o_4@@39 f_5@@33))
))) (forall ((o_4@@40 T@Ref) (f_5@@34 T@Field_35582_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@2) o_4@@40 f_5@@34) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@3) o_4@@40 f_5@@34)))
 :qid |stdinbpl.3189:29|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@3) o_4@@40 f_5@@34))
))) (forall ((o_4@@41 T@Ref) (f_5@@35 T@Field_35582_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@2) o_4@@41 f_5@@35) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@3) o_4@@41 f_5@@35)))
 :qid |stdinbpl.3189:29|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@3) o_4@@41 f_5@@35))
))) (forall ((o_4@@42 T@Ref) (f_5@@36 T@Field_35582_4186) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@2) o_4@@42 f_5@@36) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@3) o_4@@42 f_5@@36)))
 :qid |stdinbpl.3189:29|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@3) o_4@@42 f_5@@36))
))) (forall ((o_4@@43 T@Ref) (f_5@@37 T@Field_35582_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@2) o_4@@43 f_5@@37) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@3) o_4@@43 f_5@@37)))
 :qid |stdinbpl.3189:29|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@3) o_4@@43 f_5@@37))
))) (forall ((o_4@@44 T@Ref) (f_5@@38 T@Field_35595_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@2) o_4@@44 f_5@@38) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@3) o_4@@44 f_5@@38)))
 :qid |stdinbpl.3189:29|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@3) o_4@@44 f_5@@38))
))) (and (=> (= (ControlFlow 0 13) (- 0 17)) (forall ((x_21_1 T@Ref) (x_21_2 T@Ref) ) (!  (=> (and (and (and (and (not (= x_21_1 x_21_2)) (|Seq#Contains_19816| xs x_21_1)) (|Seq#Contains_19816| xs x_21_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_21_1 x_21_2)))
 :qid |stdinbpl.3201:17|
 :skolemid |363|
 :pattern ( (neverTriggered49 x_21_1) (neverTriggered49 x_21_2))
))) (=> (forall ((x_21_1@@0 T@Ref) (x_21_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_21_1@@0 x_21_2@@0)) (|Seq#Contains_19816| xs x_21_1@@0)) (|Seq#Contains_19816| xs x_21_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_21_1@@0 x_21_2@@0)))
 :qid |stdinbpl.3201:17|
 :skolemid |363|
 :pattern ( (neverTriggered49 x_21_1@@0) (neverTriggered49 x_21_2@@0))
)) (and (=> (= (ControlFlow 0 13) (- 0 16)) (forall ((x_21_1@@1 T@Ref) ) (!  (=> (|Seq#Contains_19816| xs x_21_1@@1) (>= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) x_21_1@@1 g) FullPerm))
 :qid |stdinbpl.3208:17|
 :skolemid |364|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_21_1@@1 g))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@4) x_21_1@@1 g))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_21_1@@1))
 :pattern ( (|Seq#Contains_19816| xs x_21_1@@1))
))) (=> (forall ((x_21_1@@2 T@Ref) ) (!  (=> (|Seq#Contains_19816| xs x_21_1@@2) (>= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) x_21_1@@2 g) FullPerm))
 :qid |stdinbpl.3208:17|
 :skolemid |364|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_21_1@@2 g))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@4) x_21_1@@2 g))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_21_1@@2))
 :pattern ( (|Seq#Contains_19816| xs x_21_1@@2))
)) (=> (forall ((x_21_1@@3 T@Ref) ) (!  (=> (and (|Seq#Contains_19816| xs x_21_1@@3) (< NoPerm FullPerm)) (and (qpRange49 x_21_1@@3) (= (invRecv49 x_21_1@@3) x_21_1@@3)))
 :qid |stdinbpl.3214:22|
 :skolemid |365|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_21_1@@3 g))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@4) x_21_1@@3 g))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_21_1@@3))
 :pattern ( (|Seq#Contains_19816| xs x_21_1@@3))
)) (=> (and (forall ((o_4@@45 T@Ref) ) (!  (=> (and (|Seq#Contains_19816| xs (invRecv49 o_4@@45)) (and (< NoPerm FullPerm) (qpRange49 o_4@@45))) (= (invRecv49 o_4@@45) o_4@@45))
 :qid |stdinbpl.3218:22|
 :skolemid |366|
 :pattern ( (invRecv49 o_4@@45))
)) (forall ((o_4@@46 T@Ref) ) (!  (and (=> (and (|Seq#Contains_19816| xs (invRecv49 o_4@@46)) (and (< NoPerm FullPerm) (qpRange49 o_4@@46))) (and (= (invRecv49 o_4@@46) o_4@@46) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@4) o_4@@46 g) (- (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) o_4@@46 g) FullPerm)))) (=> (not (and (|Seq#Contains_19816| xs (invRecv49 o_4@@46)) (and (< NoPerm FullPerm) (qpRange49 o_4@@46)))) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@4) o_4@@46 g) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) o_4@@46 g))))
 :qid |stdinbpl.3224:22|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@4) o_4@@46 g))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@47 T@Ref) (f_5@@39 T@Field_29288_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@3) o_4@@47 f_5@@39) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@4) o_4@@47 f_5@@39)))
 :qid |stdinbpl.3230:29|
 :skolemid |368|
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@4) o_4@@47 f_5@@39))
)) (forall ((o_4@@48 T@Ref) (f_5@@40 T@Field_29301_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@3) o_4@@48 f_5@@40) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@4) o_4@@48 f_5@@40)))
 :qid |stdinbpl.3230:29|
 :skolemid |368|
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@4) o_4@@48 f_5@@40))
))) (forall ((o_4@@49 T@Ref) (f_5@@41 T@Field_35505_4186) ) (!  (=> (not (= f_5@@41 g)) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@3) o_4@@49 f_5@@41) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@4) o_4@@49 f_5@@41)))
 :qid |stdinbpl.3230:29|
 :skolemid |368|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@4) o_4@@49 f_5@@41))
))) (forall ((o_4@@50 T@Ref) (f_5@@42 T@Field_19785_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@3) o_4@@50 f_5@@42) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@4) o_4@@50 f_5@@42)))
 :qid |stdinbpl.3230:29|
 :skolemid |368|
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@4) o_4@@50 f_5@@42))
))) (forall ((o_4@@51 T@Ref) (f_5@@43 T@Field_19785_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@3) o_4@@51 f_5@@43) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@4) o_4@@51 f_5@@43)))
 :qid |stdinbpl.3230:29|
 :skolemid |368|
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@4) o_4@@51 f_5@@43))
))) (forall ((o_4@@52 T@Ref) (f_5@@44 T@Field_35582_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@3) o_4@@52 f_5@@44) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@4) o_4@@52 f_5@@44)))
 :qid |stdinbpl.3230:29|
 :skolemid |368|
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@4) o_4@@52 f_5@@44))
))) (forall ((o_4@@53 T@Ref) (f_5@@45 T@Field_35582_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@3) o_4@@53 f_5@@45) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@4) o_4@@53 f_5@@45)))
 :qid |stdinbpl.3230:29|
 :skolemid |368|
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@4) o_4@@53 f_5@@45))
))) (forall ((o_4@@54 T@Ref) (f_5@@46 T@Field_35582_4186) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@3) o_4@@54 f_5@@46) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@4) o_4@@54 f_5@@46)))
 :qid |stdinbpl.3230:29|
 :skolemid |368|
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@4) o_4@@54 f_5@@46))
))) (forall ((o_4@@55 T@Ref) (f_5@@47 T@Field_35582_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@3) o_4@@55 f_5@@47) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@4) o_4@@55 f_5@@47)))
 :qid |stdinbpl.3230:29|
 :skolemid |368|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@4) o_4@@55 f_5@@47))
))) (forall ((o_4@@56 T@Ref) (f_5@@48 T@Field_35595_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@3) o_4@@56 f_5@@48) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@4) o_4@@56 f_5@@48)))
 :qid |stdinbpl.3230:29|
 :skolemid |368|
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@4) o_4@@56 f_5@@48))
))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (forall ((x_22_1 T@Ref) (x_22_2 T@Ref) ) (!  (=> (and (and (and (and (not (= x_22_1 x_22_2)) (|Seq#Contains_19816| xs x_22_1)) (|Seq#Contains_19816| xs x_22_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_22_1 x_22_2)))
 :qid |stdinbpl.3242:17|
 :skolemid |369|
 :pattern ( (neverTriggered50 x_22_1) (neverTriggered50 x_22_2))
))) (=> (forall ((x_22_1@@0 T@Ref) (x_22_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_22_1@@0 x_22_2@@0)) (|Seq#Contains_19816| xs x_22_1@@0)) (|Seq#Contains_19816| xs x_22_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_22_1@@0 x_22_2@@0)))
 :qid |stdinbpl.3242:17|
 :skolemid |369|
 :pattern ( (neverTriggered50 x_22_1@@0) (neverTriggered50 x_22_2@@0))
)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((x_22_1@@1 T@Ref) ) (!  (=> (|Seq#Contains_19816| xs x_22_1@@1) (>= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@4) null (pred_3 x_22_1@@1)) FullPerm))
 :qid |stdinbpl.3249:17|
 :skolemid |370|
 :pattern ( (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@32) null (pred_3 x_22_1@@1)))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@4) null (pred_3 x_22_1@@1)))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_22_1@@1))
 :pattern ( (|Seq#Contains_19816| xs x_22_1@@1))
))) (=> (forall ((x_22_1@@2 T@Ref) ) (!  (=> (|Seq#Contains_19816| xs x_22_1@@2) (>= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@4) null (pred_3 x_22_1@@2)) FullPerm))
 :qid |stdinbpl.3249:17|
 :skolemid |370|
 :pattern ( (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@32) null (pred_3 x_22_1@@2)))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@4) null (pred_3 x_22_1@@2)))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_22_1@@2))
 :pattern ( (|Seq#Contains_19816| xs x_22_1@@2))
)) (=> (and (and (forall ((x_22_1@@3 T@Ref) ) (!  (=> (and (|Seq#Contains_19816| xs x_22_1@@3) (< NoPerm FullPerm)) (and (= (invRecv50 x_22_1@@3) x_22_1@@3) (qpRange50 x_22_1@@3)))
 :qid |stdinbpl.3255:22|
 :skolemid |371|
 :pattern ( (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@32) null (pred_3 x_22_1@@3)))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@4) null (pred_3 x_22_1@@3)))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_22_1@@3))
 :pattern ( (|Seq#Contains_19816| xs x_22_1@@3))
)) (forall ((x_23_1_1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19816| xs (invRecv50 x_23_1_1)) (< NoPerm FullPerm)) (qpRange50 x_23_1_1)) (= (invRecv50 x_23_1_1) x_23_1_1))
 :qid |stdinbpl.3259:22|
 :skolemid |372|
 :pattern ( (invRecv50 x_23_1_1))
))) (and (forall ((x_23_1_1@@0 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19816| xs (invRecv50 x_23_1_1@@0)) (< NoPerm FullPerm)) (qpRange50 x_23_1_1@@0)) (and (= (invRecv50 x_23_1_1@@0) x_23_1_1@@0) (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@5) null (pred_3 x_23_1_1@@0)) (- (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@4) null (pred_3 x_23_1_1@@0)) FullPerm))))
 :qid |stdinbpl.3265:22|
 :skolemid |373|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@5) null (pred_3 x_23_1_1@@0)))
)) (forall ((x_23_1_1@@1 T@Ref) ) (!  (=> (not (and (and (|Seq#Contains_19816| xs (invRecv50 x_23_1_1@@1)) (< NoPerm FullPerm)) (qpRange50 x_23_1_1@@1))) (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@5) null (pred_3 x_23_1_1@@1)) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@4) null (pred_3 x_23_1_1@@1))))
 :qid |stdinbpl.3269:22|
 :skolemid |374|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@5) null (pred_3 x_23_1_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@57 T@Ref) (f_5@@49 T@Field_35505_4186) ) (!  (=> (or (or (not (= o_4@@57 null)) (not (IsPredicateField_19785_4186 f_5@@49))) (not (= (getPredWandId_19785_4186 f_5@@49) 0))) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@4) o_4@@57 f_5@@49) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@5) o_4@@57 f_5@@49)))
 :qid |stdinbpl.3275:29|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@4) o_4@@57 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@5) o_4@@57 f_5@@49))
)) (forall ((o_4@@58 T@Ref) (f_5@@50 T@Field_19785_35583) ) (!  (=> (or (or (not (= o_4@@58 null)) (not (IsPredicateField_19785_91069 f_5@@50))) (not (= (getPredWandId_19785_19791 f_5@@50) 0))) (= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@4) o_4@@58 f_5@@50) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@5) o_4@@58 f_5@@50)))
 :qid |stdinbpl.3275:29|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@4) o_4@@58 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@5) o_4@@58 f_5@@50))
))) (forall ((o_4@@59 T@Ref) (f_5@@51 T@Field_29288_53) ) (!  (=> (or (or (not (= o_4@@59 null)) (not (IsPredicateField_19785_53 f_5@@51))) (not (= (getPredWandId_19785_53 f_5@@51) 0))) (= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@4) o_4@@59 f_5@@51) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@5) o_4@@59 f_5@@51)))
 :qid |stdinbpl.3275:29|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@4) o_4@@59 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@5) o_4@@59 f_5@@51))
))) (forall ((o_4@@60 T@Ref) (f_5@@52 T@Field_29301_29302) ) (!  (=> (or (or (not (= o_4@@60 null)) (not (IsPredicateField_19785_29302 f_5@@52))) (not (= (getPredWandId_19785_29302 f_5@@52) 0))) (= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@4) o_4@@60 f_5@@52) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@5) o_4@@60 f_5@@52)))
 :qid |stdinbpl.3275:29|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@4) o_4@@60 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@5) o_4@@60 f_5@@52))
))) (forall ((o_4@@61 T@Ref) (f_5@@53 T@Field_19785_35600) ) (!  (=> (or (or (not (= o_4@@61 null)) (not (IsPredicateField_19785_100867 f_5@@53))) (not (= (getPredWandId_19785_116723 f_5@@53) 0))) (= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@4) o_4@@61 f_5@@53) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@5) o_4@@61 f_5@@53)))
 :qid |stdinbpl.3275:29|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@4) o_4@@61 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@5) o_4@@61 f_5@@53))
))) (forall ((o_4@@62 T@Ref) (f_5@@54 T@Field_35582_4186) ) (!  (=> (or (or (not (= o_4@@62 null)) (not (IsPredicateField_19790_4186 f_5@@54))) (not (= (getPredWandId_19790_4186 f_5@@54) 0))) (= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@4) o_4@@62 f_5@@54) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@5) o_4@@62 f_5@@54)))
 :qid |stdinbpl.3275:29|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@4) o_4@@62 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@5) o_4@@62 f_5@@54))
))) (forall ((o_4@@63 T@Ref) (f_5@@55 T@Field_35582_35583) ) (!  (=> (or (or (not (= o_4@@63 null)) (not (IsPredicateField_19790_19791 f_5@@55))) (not (= (getPredWandId_19790_19791 f_5@@55) 0))) (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@4) o_4@@63 f_5@@55) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@5) o_4@@63 f_5@@55)))
 :qid |stdinbpl.3275:29|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@4) o_4@@63 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@5) o_4@@63 f_5@@55))
))) (forall ((o_4@@64 T@Ref) (f_5@@56 T@Field_35582_53) ) (!  (=> (or (or (not (= o_4@@64 null)) (not (IsPredicateField_19790_53 f_5@@56))) (not (= (getPredWandId_19790_53 f_5@@56) 0))) (= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@4) o_4@@64 f_5@@56) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@5) o_4@@64 f_5@@56)))
 :qid |stdinbpl.3275:29|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@4) o_4@@64 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@5) o_4@@64 f_5@@56))
))) (forall ((o_4@@65 T@Ref) (f_5@@57 T@Field_35582_29302) ) (!  (=> (or (or (not (= o_4@@65 null)) (not (IsPredicateField_19790_29302 f_5@@57))) (not (= (getPredWandId_19790_29302 f_5@@57) 0))) (= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@4) o_4@@65 f_5@@57) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@5) o_4@@65 f_5@@57)))
 :qid |stdinbpl.3275:29|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@4) o_4@@65 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@5) o_4@@65 f_5@@57))
))) (forall ((o_4@@66 T@Ref) (f_5@@58 T@Field_35595_35600) ) (!  (=> (or (or (not (= o_4@@66 null)) (not (IsPredicateField_19790_101698 f_5@@58))) (not (= (getPredWandId_19790_117532 f_5@@58) 0))) (= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@4) o_4@@66 f_5@@58) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@5) o_4@@66 f_5@@58)))
 :qid |stdinbpl.3275:29|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@4) o_4@@66 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@5) o_4@@66 f_5@@58))
))) (and (and (=> (= (ControlFlow 0 13) 8) anon38_Else_correct) (=> (= (ControlFlow 0 13) 10) anon39_Then_correct)) (=> (= (ControlFlow 0 13) 12) anon39_Else_correct))))))))))))))))))))))))
(let ((anon30_Else_correct  (=> (and (forall ((x_9_2 T@Ref) ) (!  (=> (|Seq#Contains_19816| xs x_9_2) (> (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_9_2 f_7) 0))
 :qid |stdinbpl.2997:20|
 :skolemid |337|
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_9_2))
 :pattern ( (|Seq#Contains_19816| xs x_9_2))
)) (state Heap@@32 QPMask@2)) (and (=> (= (ControlFlow 0 35) 34) anon32_Then_correct) (=> (= (ControlFlow 0 35) 13) anon32_Else_correct)))))
(let ((anon9_correct true))
(let ((anon31_Else_correct  (=> (and (not (|Seq#Contains_19816| xs x_44)) (= (ControlFlow 0 7) 4)) anon9_correct)))
(let ((anon31_Then_correct  (=> (|Seq#Contains_19816| xs x_44) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_19785_4186 QPMask@2 x_44 f_7)) (=> (HasDirectPerm_19785_4186 QPMask@2 x_44 f_7) (=> (= (ControlFlow 0 5) 4) anon9_correct))))))
(let ((anon29_Else_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((x_5 T@Ref) (x_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5 x_5_1)) (|Seq#Contains_19816| xs x_5)) (|Seq#Contains_19816| xs x_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_5 x_5_1)))
 :qid |stdinbpl.2956:17|
 :skolemid |331|
 :pattern ( (neverTriggered44 x_5) (neverTriggered44 x_5_1))
))) (=> (forall ((x_5@@0 T@Ref) (x_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5@@0 x_5_1@@0)) (|Seq#Contains_19816| xs x_5@@0)) (|Seq#Contains_19816| xs x_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_5@@0 x_5_1@@0)))
 :qid |stdinbpl.2956:17|
 :skolemid |331|
 :pattern ( (neverTriggered44 x_5@@0) (neverTriggered44 x_5_1@@0))
)) (=> (forall ((x_5@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_19816| xs x_5@@1) (< NoPerm FullPerm)) (and (= (invRecv44 x_5@@1) x_5@@1) (qpRange44 x_5@@1)))
 :qid |stdinbpl.2962:22|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_29228_19790_19791#PolymorphicMapType_29228| Heap@@32) null (pred_3 x_5@@1)))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@1) null (pred_3 x_5@@1)))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_5@@1))
 :pattern ( (|Seq#Contains_19816| xs x_5@@1))
)) (=> (and (forall ((x_6_1_1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19816| xs (invRecv44 x_6_1_1)) (< NoPerm FullPerm)) (qpRange44 x_6_1_1)) (= (invRecv44 x_6_1_1) x_6_1_1))
 :qid |stdinbpl.2966:22|
 :skolemid |333|
 :pattern ( (invRecv44 x_6_1_1))
)) (forall ((x_6_1_1@@0 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19816| xs (invRecv44 x_6_1_1@@0)) (< NoPerm FullPerm)) (qpRange44 x_6_1_1@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv44 x_6_1_1@@0) x_6_1_1@@0)) (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@2) null (pred_3 x_6_1_1@@0)) (+ (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@1) null (pred_3 x_6_1_1@@0)) FullPerm))))
 :qid |stdinbpl.2972:22|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@2) null (pred_3 x_6_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@67 T@Ref) (f_5@@59 T@Field_35505_4186) ) (!  (=> (or (or (not (= o_4@@67 null)) (not (IsPredicateField_19785_4186 f_5@@59))) (not (= (getPredWandId_19785_4186 f_5@@59) 0))) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@1) o_4@@67 f_5@@59) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@2) o_4@@67 f_5@@59)))
 :qid |stdinbpl.2978:29|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@1) o_4@@67 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@2) o_4@@67 f_5@@59))
)) (forall ((o_4@@68 T@Ref) (f_5@@60 T@Field_19785_35583) ) (!  (=> (or (or (not (= o_4@@68 null)) (not (IsPredicateField_19785_91069 f_5@@60))) (not (= (getPredWandId_19785_19791 f_5@@60) 0))) (= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@1) o_4@@68 f_5@@60) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@2) o_4@@68 f_5@@60)))
 :qid |stdinbpl.2978:29|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@1) o_4@@68 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@2) o_4@@68 f_5@@60))
))) (forall ((o_4@@69 T@Ref) (f_5@@61 T@Field_29288_53) ) (!  (=> (or (or (not (= o_4@@69 null)) (not (IsPredicateField_19785_53 f_5@@61))) (not (= (getPredWandId_19785_53 f_5@@61) 0))) (= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@1) o_4@@69 f_5@@61) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@2) o_4@@69 f_5@@61)))
 :qid |stdinbpl.2978:29|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@1) o_4@@69 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@2) o_4@@69 f_5@@61))
))) (forall ((o_4@@70 T@Ref) (f_5@@62 T@Field_29301_29302) ) (!  (=> (or (or (not (= o_4@@70 null)) (not (IsPredicateField_19785_29302 f_5@@62))) (not (= (getPredWandId_19785_29302 f_5@@62) 0))) (= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@1) o_4@@70 f_5@@62) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@2) o_4@@70 f_5@@62)))
 :qid |stdinbpl.2978:29|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@1) o_4@@70 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@2) o_4@@70 f_5@@62))
))) (forall ((o_4@@71 T@Ref) (f_5@@63 T@Field_19785_35600) ) (!  (=> (or (or (not (= o_4@@71 null)) (not (IsPredicateField_19785_100867 f_5@@63))) (not (= (getPredWandId_19785_116723 f_5@@63) 0))) (= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@1) o_4@@71 f_5@@63) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@2) o_4@@71 f_5@@63)))
 :qid |stdinbpl.2978:29|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@1) o_4@@71 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@2) o_4@@71 f_5@@63))
))) (forall ((o_4@@72 T@Ref) (f_5@@64 T@Field_35582_4186) ) (!  (=> (or (or (not (= o_4@@72 null)) (not (IsPredicateField_19790_4186 f_5@@64))) (not (= (getPredWandId_19790_4186 f_5@@64) 0))) (= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@1) o_4@@72 f_5@@64) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@2) o_4@@72 f_5@@64)))
 :qid |stdinbpl.2978:29|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@1) o_4@@72 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@2) o_4@@72 f_5@@64))
))) (forall ((o_4@@73 T@Ref) (f_5@@65 T@Field_35582_35583) ) (!  (=> (or (or (not (= o_4@@73 null)) (not (IsPredicateField_19790_19791 f_5@@65))) (not (= (getPredWandId_19790_19791 f_5@@65) 0))) (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@1) o_4@@73 f_5@@65) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@2) o_4@@73 f_5@@65)))
 :qid |stdinbpl.2978:29|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@1) o_4@@73 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@2) o_4@@73 f_5@@65))
))) (forall ((o_4@@74 T@Ref) (f_5@@66 T@Field_35582_53) ) (!  (=> (or (or (not (= o_4@@74 null)) (not (IsPredicateField_19790_53 f_5@@66))) (not (= (getPredWandId_19790_53 f_5@@66) 0))) (= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@1) o_4@@74 f_5@@66) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@2) o_4@@74 f_5@@66)))
 :qid |stdinbpl.2978:29|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@1) o_4@@74 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@2) o_4@@74 f_5@@66))
))) (forall ((o_4@@75 T@Ref) (f_5@@67 T@Field_35582_29302) ) (!  (=> (or (or (not (= o_4@@75 null)) (not (IsPredicateField_19790_29302 f_5@@67))) (not (= (getPredWandId_19790_29302 f_5@@67) 0))) (= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@1) o_4@@75 f_5@@67) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@2) o_4@@75 f_5@@67)))
 :qid |stdinbpl.2978:29|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@1) o_4@@75 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@2) o_4@@75 f_5@@67))
))) (forall ((o_4@@76 T@Ref) (f_5@@68 T@Field_35595_35600) ) (!  (=> (or (or (not (= o_4@@76 null)) (not (IsPredicateField_19790_101698 f_5@@68))) (not (= (getPredWandId_19790_117532 f_5@@68) 0))) (= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@1) o_4@@76 f_5@@68) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@2) o_4@@76 f_5@@68)))
 :qid |stdinbpl.2978:29|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@1) o_4@@76 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@2) o_4@@76 f_5@@68))
))) (and (forall ((x_6_1_1@@1 T@Ref) ) (!  (=> (not (and (and (|Seq#Contains_19816| xs (invRecv44 x_6_1_1@@1)) (< NoPerm FullPerm)) (qpRange44 x_6_1_1@@1))) (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@2) null (pred_3 x_6_1_1@@1)) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@1) null (pred_3 x_6_1_1@@1))))
 :qid |stdinbpl.2982:22|
 :skolemid |336|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@2) null (pred_3 x_6_1_1@@1)))
)) (state Heap@@32 QPMask@2))) (and (and (=> (= (ControlFlow 0 36) 35) anon30_Else_correct) (=> (= (ControlFlow 0 36) 5) anon31_Then_correct)) (=> (= (ControlFlow 0 36) 7) anon31_Else_correct)))))))))
(let ((anon29_Then_correct true))
(let ((anon28_Else_correct  (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((x_3 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3 x_3_1)) (|Seq#Contains_19816| xs x_3)) (|Seq#Contains_19816| xs x_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_3 x_3_1)))
 :qid |stdinbpl.2915:15|
 :skolemid |325|
))) (=> (forall ((x_3@@0 T@Ref) (x_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@0 x_3_1@@0)) (|Seq#Contains_19816| xs x_3@@0)) (|Seq#Contains_19816| xs x_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_3@@0 x_3_1@@0)))
 :qid |stdinbpl.2915:15|
 :skolemid |325|
)) (=> (and (and (forall ((x_3@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_19816| xs x_3@@1) (< NoPerm FullPerm)) (and (qpRange43 x_3@@1) (= (invRecv43 x_3@@1) x_3@@1)))
 :qid |stdinbpl.2921:22|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_3@@1 g))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@1) x_3@@1 g))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_3@@1))
 :pattern ( (|Seq#Contains_19816| xs x_3@@1))
)) (forall ((o_4@@77 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19816| xs (invRecv43 o_4@@77)) (< NoPerm FullPerm)) (qpRange43 o_4@@77)) (= (invRecv43 o_4@@77) o_4@@77))
 :qid |stdinbpl.2925:22|
 :skolemid |327|
 :pattern ( (invRecv43 o_4@@77))
))) (and (forall ((x_3@@2 T@Ref) ) (!  (=> (|Seq#Contains_19816| xs x_3@@2) (not (= x_3@@2 null)))
 :qid |stdinbpl.2931:22|
 :skolemid |328|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_3@@2 g))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@1) x_3@@2 g))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_3@@2))
 :pattern ( (|Seq#Contains_19816| xs x_3@@2))
)) (forall ((o_4@@78 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_19816| xs (invRecv43 o_4@@78)) (< NoPerm FullPerm)) (qpRange43 o_4@@78)) (and (=> (< NoPerm FullPerm) (= (invRecv43 o_4@@78) o_4@@78)) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@1) o_4@@78 g) (+ (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@0) o_4@@78 g) FullPerm)))) (=> (not (and (and (|Seq#Contains_19816| xs (invRecv43 o_4@@78)) (< NoPerm FullPerm)) (qpRange43 o_4@@78))) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@1) o_4@@78 g) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@0) o_4@@78 g))))
 :qid |stdinbpl.2937:22|
 :skolemid |329|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@1) o_4@@78 g))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@79 T@Ref) (f_5@@69 T@Field_29288_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@0) o_4@@79 f_5@@69) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@1) o_4@@79 f_5@@69)))
 :qid |stdinbpl.2941:29|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@0) o_4@@79 f_5@@69))
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@1) o_4@@79 f_5@@69))
)) (forall ((o_4@@80 T@Ref) (f_5@@70 T@Field_29301_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@0) o_4@@80 f_5@@70) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@1) o_4@@80 f_5@@70)))
 :qid |stdinbpl.2941:29|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@0) o_4@@80 f_5@@70))
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@1) o_4@@80 f_5@@70))
))) (forall ((o_4@@81 T@Ref) (f_5@@71 T@Field_35505_4186) ) (!  (=> (not (= f_5@@71 g)) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@0) o_4@@81 f_5@@71) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@1) o_4@@81 f_5@@71)))
 :qid |stdinbpl.2941:29|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@0) o_4@@81 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@1) o_4@@81 f_5@@71))
))) (forall ((o_4@@82 T@Ref) (f_5@@72 T@Field_19785_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@0) o_4@@82 f_5@@72) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@1) o_4@@82 f_5@@72)))
 :qid |stdinbpl.2941:29|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@0) o_4@@82 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@1) o_4@@82 f_5@@72))
))) (forall ((o_4@@83 T@Ref) (f_5@@73 T@Field_19785_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@0) o_4@@83 f_5@@73) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@1) o_4@@83 f_5@@73)))
 :qid |stdinbpl.2941:29|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@0) o_4@@83 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@1) o_4@@83 f_5@@73))
))) (forall ((o_4@@84 T@Ref) (f_5@@74 T@Field_35582_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@0) o_4@@84 f_5@@74) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@1) o_4@@84 f_5@@74)))
 :qid |stdinbpl.2941:29|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@0) o_4@@84 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@1) o_4@@84 f_5@@74))
))) (forall ((o_4@@85 T@Ref) (f_5@@75 T@Field_35582_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@0) o_4@@85 f_5@@75) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@1) o_4@@85 f_5@@75)))
 :qid |stdinbpl.2941:29|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@0) o_4@@85 f_5@@75))
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@1) o_4@@85 f_5@@75))
))) (forall ((o_4@@86 T@Ref) (f_5@@76 T@Field_35582_4186) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@0) o_4@@86 f_5@@76) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@1) o_4@@86 f_5@@76)))
 :qid |stdinbpl.2941:29|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@0) o_4@@86 f_5@@76))
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@1) o_4@@86 f_5@@76))
))) (forall ((o_4@@87 T@Ref) (f_5@@77 T@Field_35582_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@0) o_4@@87 f_5@@77) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@1) o_4@@87 f_5@@77)))
 :qid |stdinbpl.2941:29|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@0) o_4@@87 f_5@@77))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@1) o_4@@87 f_5@@77))
))) (forall ((o_4@@88 T@Ref) (f_5@@78 T@Field_35595_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@0) o_4@@88 f_5@@78) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@1) o_4@@88 f_5@@78)))
 :qid |stdinbpl.2941:29|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@0) o_4@@88 f_5@@78))
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@1) o_4@@88 f_5@@78))
))) (state Heap@@32 QPMask@1)) (and (=> (= (ControlFlow 0 38) 3) anon29_Then_correct) (=> (= (ControlFlow 0 38) 36) anon29_Else_correct))))))))
(let ((anon28_Then_correct true))
(let ((anon27_Else_correct  (and (=> (= (ControlFlow 0 40) (- 0 41)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (|Seq#Contains_19816| xs x_1)) (|Seq#Contains_19816| xs x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.2876:15|
 :skolemid |319|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (|Seq#Contains_19816| xs x_1@@0)) (|Seq#Contains_19816| xs x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.2876:15|
 :skolemid |319|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_19816| xs x_1@@1) (< NoPerm FullPerm)) (and (qpRange42 x_1@@1) (= (invRecv42 x_1@@1) x_1@@1)))
 :qid |stdinbpl.2882:22|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@0) x_1@@1 f_7))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_1@@1))
 :pattern ( (|Seq#Contains_19816| xs x_1@@1))
)) (forall ((o_4@@89 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19816| xs (invRecv42 o_4@@89)) (< NoPerm FullPerm)) (qpRange42 o_4@@89)) (= (invRecv42 o_4@@89) o_4@@89))
 :qid |stdinbpl.2886:22|
 :skolemid |321|
 :pattern ( (invRecv42 o_4@@89))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (|Seq#Contains_19816| xs x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.2892:22|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_29228_19785_4186#PolymorphicMapType_29228| Heap@@32) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@0) x_1@@2 f_7))
 :pattern ( (|Seq#ContainsTrigger_19816| xs x_1@@2))
 :pattern ( (|Seq#Contains_19816| xs x_1@@2))
)) (forall ((o_4@@90 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_19816| xs (invRecv42 o_4@@90)) (< NoPerm FullPerm)) (qpRange42 o_4@@90)) (and (=> (< NoPerm FullPerm) (= (invRecv42 o_4@@90) o_4@@90)) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@0) o_4@@90 f_7) (+ (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ZeroMask) o_4@@90 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_19816| xs (invRecv42 o_4@@90)) (< NoPerm FullPerm)) (qpRange42 o_4@@90))) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@0) o_4@@90 f_7) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ZeroMask) o_4@@90 f_7))))
 :qid |stdinbpl.2898:22|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@0) o_4@@90 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@91 T@Ref) (f_5@@79 T@Field_29288_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| ZeroMask) o_4@@91 f_5@@79) (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@0) o_4@@91 f_5@@79)))
 :qid |stdinbpl.2902:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| ZeroMask) o_4@@91 f_5@@79))
 :pattern ( (select (|PolymorphicMapType_29249_19785_53#PolymorphicMapType_29249| QPMask@0) o_4@@91 f_5@@79))
)) (forall ((o_4@@92 T@Ref) (f_5@@80 T@Field_29301_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| ZeroMask) o_4@@92 f_5@@80) (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@0) o_4@@92 f_5@@80)))
 :qid |stdinbpl.2902:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| ZeroMask) o_4@@92 f_5@@80))
 :pattern ( (select (|PolymorphicMapType_29249_19785_29302#PolymorphicMapType_29249| QPMask@0) o_4@@92 f_5@@80))
))) (forall ((o_4@@93 T@Ref) (f_5@@81 T@Field_35505_4186) ) (!  (=> (not (= f_5@@81 f_7)) (= (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ZeroMask) o_4@@93 f_5@@81) (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@0) o_4@@93 f_5@@81)))
 :qid |stdinbpl.2902:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| ZeroMask) o_4@@93 f_5@@81))
 :pattern ( (select (|PolymorphicMapType_29249_19785_4186#PolymorphicMapType_29249| QPMask@0) o_4@@93 f_5@@81))
))) (forall ((o_4@@94 T@Ref) (f_5@@82 T@Field_19785_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| ZeroMask) o_4@@94 f_5@@82) (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@0) o_4@@94 f_5@@82)))
 :qid |stdinbpl.2902:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| ZeroMask) o_4@@94 f_5@@82))
 :pattern ( (select (|PolymorphicMapType_29249_19785_19791#PolymorphicMapType_29249| QPMask@0) o_4@@94 f_5@@82))
))) (forall ((o_4@@95 T@Ref) (f_5@@83 T@Field_19785_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| ZeroMask) o_4@@95 f_5@@83) (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@0) o_4@@95 f_5@@83)))
 :qid |stdinbpl.2902:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| ZeroMask) o_4@@95 f_5@@83))
 :pattern ( (select (|PolymorphicMapType_29249_19785_98995#PolymorphicMapType_29249| QPMask@0) o_4@@95 f_5@@83))
))) (forall ((o_4@@96 T@Ref) (f_5@@84 T@Field_35582_53) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| ZeroMask) o_4@@96 f_5@@84) (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@0) o_4@@96 f_5@@84)))
 :qid |stdinbpl.2902:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| ZeroMask) o_4@@96 f_5@@84))
 :pattern ( (select (|PolymorphicMapType_29249_19790_53#PolymorphicMapType_29249| QPMask@0) o_4@@96 f_5@@84))
))) (forall ((o_4@@97 T@Ref) (f_5@@85 T@Field_35582_29302) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| ZeroMask) o_4@@97 f_5@@85) (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@0) o_4@@97 f_5@@85)))
 :qid |stdinbpl.2902:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| ZeroMask) o_4@@97 f_5@@85))
 :pattern ( (select (|PolymorphicMapType_29249_19790_29302#PolymorphicMapType_29249| QPMask@0) o_4@@97 f_5@@85))
))) (forall ((o_4@@98 T@Ref) (f_5@@86 T@Field_35582_4186) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| ZeroMask) o_4@@98 f_5@@86) (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@0) o_4@@98 f_5@@86)))
 :qid |stdinbpl.2902:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| ZeroMask) o_4@@98 f_5@@86))
 :pattern ( (select (|PolymorphicMapType_29249_19790_4186#PolymorphicMapType_29249| QPMask@0) o_4@@98 f_5@@86))
))) (forall ((o_4@@99 T@Ref) (f_5@@87 T@Field_35582_35583) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| ZeroMask) o_4@@99 f_5@@87) (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@0) o_4@@99 f_5@@87)))
 :qid |stdinbpl.2902:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| ZeroMask) o_4@@99 f_5@@87))
 :pattern ( (select (|PolymorphicMapType_29249_19790_19791#PolymorphicMapType_29249| QPMask@0) o_4@@99 f_5@@87))
))) (forall ((o_4@@100 T@Ref) (f_5@@88 T@Field_35595_35600) ) (!  (=> true (= (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| ZeroMask) o_4@@100 f_5@@88) (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@0) o_4@@100 f_5@@88)))
 :qid |stdinbpl.2902:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| ZeroMask) o_4@@100 f_5@@88))
 :pattern ( (select (|PolymorphicMapType_29249_19790_99406#PolymorphicMapType_29249| QPMask@0) o_4@@100 f_5@@88))
))) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 40) 2) anon28_Then_correct) (=> (= (ControlFlow 0 40) 38) anon28_Else_correct))))))))
(let ((anon27_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 42) 1) anon27_Then_correct) (=> (= (ControlFlow 0 42) 40) anon27_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 43) 42) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid