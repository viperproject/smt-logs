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
(declare-sort T@Field_7424_53 0)
(declare-sort T@Field_7437_7438 0)
(declare-sort T@Field_13452_13457 0)
(declare-sort T@Seq_13455 0)
(declare-sort T@Field_14521_14522 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_4786_14522 0)
(declare-sort T@Field_4786_18478 0)
(declare-sort T@Field_14521_15164 0)
(declare-sort T@Field_14521_53 0)
(declare-sort T@Field_14521_7438 0)
(declare-sort T@Field_18473_18478 0)
(declare-datatypes ((T@PolymorphicMapType_7385 0)) (((PolymorphicMapType_7385 (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| (Array T@Ref T@Field_13452_13457 Real)) (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| (Array T@Ref T@Field_14521_14522 Real)) (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| (Array T@Ref T@Field_4786_14522 Real)) (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| (Array T@Ref T@Field_7424_53 Real)) (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| (Array T@Ref T@Field_7437_7438 Real)) (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| (Array T@Ref T@Field_4786_18478 Real)) (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| (Array T@Ref T@Field_14521_15164 Real)) (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| (Array T@Ref T@Field_14521_53 Real)) (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| (Array T@Ref T@Field_14521_7438 Real)) (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| (Array T@Ref T@Field_18473_18478 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7913 0)) (((PolymorphicMapType_7913 (|PolymorphicMapType_7913_7424_53#PolymorphicMapType_7913| (Array T@Ref T@Field_7424_53 Bool)) (|PolymorphicMapType_7913_7424_7438#PolymorphicMapType_7913| (Array T@Ref T@Field_7437_7438 Bool)) (|PolymorphicMapType_7913_7424_13457#PolymorphicMapType_7913| (Array T@Ref T@Field_13452_13457 Bool)) (|PolymorphicMapType_7913_7424_14522#PolymorphicMapType_7913| (Array T@Ref T@Field_4786_14522 Bool)) (|PolymorphicMapType_7913_7424_23098#PolymorphicMapType_7913| (Array T@Ref T@Field_4786_18478 Bool)) (|PolymorphicMapType_7913_14521_53#PolymorphicMapType_7913| (Array T@Ref T@Field_14521_53 Bool)) (|PolymorphicMapType_7913_14521_7438#PolymorphicMapType_7913| (Array T@Ref T@Field_14521_7438 Bool)) (|PolymorphicMapType_7913_14521_13457#PolymorphicMapType_7913| (Array T@Ref T@Field_14521_15164 Bool)) (|PolymorphicMapType_7913_14521_14522#PolymorphicMapType_7913| (Array T@Ref T@Field_14521_14522 Bool)) (|PolymorphicMapType_7913_14521_24152#PolymorphicMapType_7913| (Array T@Ref T@Field_18473_18478 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7364 0)) (((PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| (Array T@Ref T@Field_7424_53 Bool)) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| (Array T@Ref T@Field_7437_7438 T@Ref)) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| (Array T@Ref T@Field_13452_13457 T@Seq_13455)) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| (Array T@Ref T@Field_14521_14522 T@FrameType)) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| (Array T@Ref T@Field_4786_14522 T@FrameType)) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| (Array T@Ref T@Field_4786_18478 T@PolymorphicMapType_7913)) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| (Array T@Ref T@Field_14521_15164 T@Seq_13455)) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| (Array T@Ref T@Field_14521_53 Bool)) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| (Array T@Ref T@Field_14521_7438 T@Ref)) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| (Array T@Ref T@Field_18473_18478 T@PolymorphicMapType_7913)) ) ) ))
(declare-fun $allocated () T@Field_7424_53)
(declare-fun list_acc () T@Field_13452_13457)
(declare-fun |Seq#Length_4787| (T@Seq_13455) Int)
(declare-fun |Seq#Drop_4787| (T@Seq_13455 Int) T@Seq_13455)
(declare-sort T@Seq_2915 0)
(declare-fun |Seq#Length_2915| (T@Seq_2915) Int)
(declare-fun |Seq#Drop_2915| (T@Seq_2915 Int) T@Seq_2915)
(declare-fun succHeap (T@PolymorphicMapType_7364 T@PolymorphicMapType_7364) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7364 T@PolymorphicMapType_7364) Bool)
(declare-fun state (T@PolymorphicMapType_7364 T@PolymorphicMapType_7385) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7385) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7913)
(declare-fun |extension_len_rec'| (T@PolymorphicMapType_7364 T@Ref Int) Int)
(declare-fun dummyFunction_3484 (Int) Bool)
(declare-fun |extension_len_rec#triggerStateless| (T@Ref Int) Int)
(declare-fun |Seq#Index_4787| (T@Seq_13455 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2915| (T@Seq_2915 Int) Int)
(declare-fun |Seq#Empty_4787| () T@Seq_13455)
(declare-fun |Seq#Empty_2915| () T@Seq_2915)
(declare-fun ExtensionHeader_State (T@Ref) T@Field_14521_14522)
(declare-fun IsPredicateField_4838_4839 (T@Field_14521_14522) Bool)
(declare-fun |ExtensionHeader_State#trigger_4838| (T@PolymorphicMapType_7364 T@Field_14521_14522) Bool)
(declare-fun |ExtensionHeader_State#everUsed_4838| (T@Field_14521_14522) Bool)
(declare-fun |Seq#Update_4787| (T@Seq_13455 Int T@Ref) T@Seq_13455)
(declare-fun |Seq#Update_2915| (T@Seq_2915 Int Int) T@Seq_2915)
(declare-fun |Seq#Take_4787| (T@Seq_13455 Int) T@Seq_13455)
(declare-fun |Seq#Take_2915| (T@Seq_2915 Int) T@Seq_2915)
(declare-fun |Seq#Contains_2915| (T@Seq_2915 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2915)
(declare-fun |Seq#Contains_4787| (T@Seq_13455 T@Ref) Bool)
(declare-fun |Seq#Skolem_4787| (T@Seq_13455 T@Ref) Int)
(declare-fun |Seq#Skolem_2915| (T@Seq_2915 Int) Int)
(declare-fun |extension_len_rec#frame| (T@FrameType T@Ref Int) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_14046 (T@Seq_13455) T@FrameType)
(declare-fun FrameFragment_3293 (Int) T@FrameType)
(declare-fun |extension_len_rec#condqp1| (T@PolymorphicMapType_7364 T@Ref Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7364 T@PolymorphicMapType_7364 T@PolymorphicMapType_7385) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4838 (T@Field_14521_14522) T@Field_18473_18478)
(declare-fun HasDirectPerm_14521_14522 (T@PolymorphicMapType_7385 T@Ref T@Field_14521_14522) Bool)
(declare-fun IsPredicateField_4786_21608 (T@Field_4786_14522) Bool)
(declare-fun PredicateMaskField_4786 (T@Field_4786_14522) T@Field_4786_18478)
(declare-fun HasDirectPerm_4786_14522 (T@PolymorphicMapType_7385 T@Ref T@Field_4786_14522) Bool)
(declare-fun IsWandField_14521_25317 (T@Field_14521_14522) Bool)
(declare-fun WandMaskField_14521 (T@Field_14521_14522) T@Field_18473_18478)
(declare-fun IsWandField_4786_24960 (T@Field_4786_14522) Bool)
(declare-fun WandMaskField_4786 (T@Field_4786_14522) T@Field_4786_18478)
(declare-fun |Seq#Singleton_4787| (T@Ref) T@Seq_13455)
(declare-fun |Seq#Singleton_2915| (Int) T@Seq_2915)
(declare-fun |ExtensionHeader_State#sm| (T@Ref) T@Field_18473_18478)
(declare-fun |Seq#Append_13455| (T@Seq_13455 T@Seq_13455) T@Seq_13455)
(declare-fun |Seq#Append_2915| (T@Seq_2915 T@Seq_2915) T@Seq_2915)
(declare-fun dummyHeap () T@PolymorphicMapType_7364)
(declare-fun ZeroMask () T@PolymorphicMapType_7385)
(declare-fun InsidePredicate_14521_14521 (T@Field_14521_14522 T@FrameType T@Field_14521_14522 T@FrameType) Bool)
(declare-fun InsidePredicate_7424_7424 (T@Field_4786_14522 T@FrameType T@Field_4786_14522 T@FrameType) Bool)
(declare-fun IsPredicateField_4786_13479 (T@Field_13452_13457) Bool)
(declare-fun IsWandField_4786_13505 (T@Field_13452_13457) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4838_32262 (T@Field_18473_18478) Bool)
(declare-fun IsWandField_4838_32278 (T@Field_18473_18478) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4838_7438 (T@Field_14521_7438) Bool)
(declare-fun IsWandField_4838_7438 (T@Field_14521_7438) Bool)
(declare-fun IsPredicateField_4838_53 (T@Field_14521_53) Bool)
(declare-fun IsWandField_4838_53 (T@Field_14521_53) Bool)
(declare-fun IsPredicateField_4838_15012 (T@Field_14521_15164) Bool)
(declare-fun IsWandField_4838_15012 (T@Field_14521_15164) Bool)
(declare-fun IsPredicateField_4786_31431 (T@Field_4786_18478) Bool)
(declare-fun IsWandField_4786_31447 (T@Field_4786_18478) Bool)
(declare-fun IsPredicateField_4786_7438 (T@Field_7437_7438) Bool)
(declare-fun IsWandField_4786_7438 (T@Field_7437_7438) Bool)
(declare-fun IsPredicateField_4786_53 (T@Field_7424_53) Bool)
(declare-fun IsWandField_4786_53 (T@Field_7424_53) Bool)
(declare-fun HasDirectPerm_14521_21320 (T@PolymorphicMapType_7385 T@Ref T@Field_18473_18478) Bool)
(declare-fun HasDirectPerm_14521_7438 (T@PolymorphicMapType_7385 T@Ref T@Field_14521_7438) Bool)
(declare-fun HasDirectPerm_14521_53 (T@PolymorphicMapType_7385 T@Ref T@Field_14521_53) Bool)
(declare-fun HasDirectPerm_14521_15164 (T@PolymorphicMapType_7385 T@Ref T@Field_14521_15164) Bool)
(declare-fun HasDirectPerm_4786_20151 (T@PolymorphicMapType_7385 T@Ref T@Field_4786_18478) Bool)
(declare-fun HasDirectPerm_4786_7438 (T@PolymorphicMapType_7385 T@Ref T@Field_7437_7438) Bool)
(declare-fun HasDirectPerm_4786_53 (T@PolymorphicMapType_7385 T@Ref T@Field_7424_53) Bool)
(declare-fun HasDirectPerm_4786_15164 (T@PolymorphicMapType_7385 T@Ref T@Field_13452_13457) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun extension_len_rec (T@PolymorphicMapType_7364 T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun sumMask (T@PolymorphicMapType_7385 T@PolymorphicMapType_7385 T@PolymorphicMapType_7385) Bool)
(declare-fun |Seq#Equal_13455| (T@Seq_13455 T@Seq_13455) Bool)
(declare-fun |Seq#Equal_2915| (T@Seq_2915 T@Seq_2915) Bool)
(declare-fun |Seq#ContainsTrigger_4787| (T@Seq_13455 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2915| (T@Seq_2915 Int) Bool)
(declare-fun |sk_extension_len_rec#condqp1| (Int Int) T@Ref)
(declare-fun getPredWandId_4838_4839 (T@Field_14521_14522) Int)
(declare-fun |Seq#SkolemDiff_13455| (T@Seq_13455 T@Seq_13455) Int)
(declare-fun |Seq#SkolemDiff_2915| (T@Seq_2915 T@Seq_2915) Int)
(declare-fun InsidePredicate_14521_7424 (T@Field_14521_14522 T@FrameType T@Field_4786_14522 T@FrameType) Bool)
(declare-fun InsidePredicate_7424_14521 (T@Field_4786_14522 T@FrameType T@Field_14521_14522 T@FrameType) Bool)
(assert (forall ((s T@Seq_13455) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_4787| s)) (= (|Seq#Length_4787| (|Seq#Drop_4787| s n)) (- (|Seq#Length_4787| s) n))) (=> (< (|Seq#Length_4787| s) n) (= (|Seq#Length_4787| (|Seq#Drop_4787| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_4787| (|Seq#Drop_4787| s n)) (|Seq#Length_4787| s))))
 :qid |stdinbpl.294:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_4787| (|Seq#Drop_4787| s n)))
 :pattern ( (|Seq#Length_4787| s) (|Seq#Drop_4787| s n))
)))
(assert (forall ((s@@0 T@Seq_2915) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2915| s@@0)) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) (- (|Seq#Length_2915| s@@0) n@@0))) (=> (< (|Seq#Length_2915| s@@0) n@@0) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) (|Seq#Length_2915| s@@0))))
 :qid |stdinbpl.294:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2915| s@@0) (|Seq#Drop_2915| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_7364) (Heap1 T@PolymorphicMapType_7364) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7364) (Mask T@PolymorphicMapType_7385) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7364) (Heap1@@0 T@PolymorphicMapType_7364) (Heap2 T@PolymorphicMapType_7364) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18473_18478) ) (!  (not (select (|PolymorphicMapType_7913_14521_24152#PolymorphicMapType_7913| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7913_14521_24152#PolymorphicMapType_7913| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14521_14522) ) (!  (not (select (|PolymorphicMapType_7913_14521_14522#PolymorphicMapType_7913| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7913_14521_14522#PolymorphicMapType_7913| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14521_15164) ) (!  (not (select (|PolymorphicMapType_7913_14521_13457#PolymorphicMapType_7913| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7913_14521_13457#PolymorphicMapType_7913| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14521_7438) ) (!  (not (select (|PolymorphicMapType_7913_14521_7438#PolymorphicMapType_7913| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7913_14521_7438#PolymorphicMapType_7913| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14521_53) ) (!  (not (select (|PolymorphicMapType_7913_14521_53#PolymorphicMapType_7913| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7913_14521_53#PolymorphicMapType_7913| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4786_18478) ) (!  (not (select (|PolymorphicMapType_7913_7424_23098#PolymorphicMapType_7913| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7913_7424_23098#PolymorphicMapType_7913| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4786_14522) ) (!  (not (select (|PolymorphicMapType_7913_7424_14522#PolymorphicMapType_7913| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7913_7424_14522#PolymorphicMapType_7913| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_13452_13457) ) (!  (not (select (|PolymorphicMapType_7913_7424_13457#PolymorphicMapType_7913| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7913_7424_13457#PolymorphicMapType_7913| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7437_7438) ) (!  (not (select (|PolymorphicMapType_7913_7424_7438#PolymorphicMapType_7913| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7913_7424_7438#PolymorphicMapType_7913| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7424_53) ) (!  (not (select (|PolymorphicMapType_7913_7424_53#PolymorphicMapType_7913| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7913_7424_53#PolymorphicMapType_7913| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7364) (hdrs T@Ref) (index Int) ) (! (dummyFunction_3484 (|extension_len_rec#triggerStateless| hdrs index))
 :qid |stdinbpl.580:15|
 :skolemid |59|
 :pattern ( (|extension_len_rec'| Heap@@0 hdrs index))
)))
(assert (forall ((s@@1 T@Seq_13455) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_4787| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_4787| (|Seq#Drop_4787| s@@1 n@@1) j) (|Seq#Index_4787| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.315:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_4787| (|Seq#Drop_4787| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2915) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2915| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2915| (|Seq#Drop_2915| s@@2 n@@2) j@@0) (|Seq#Index_2915| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.315:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2915| (|Seq#Drop_2915| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_4787| |Seq#Empty_4787|) 0))
(assert (= (|Seq#Length_2915| |Seq#Empty_2915|) 0))
(assert (forall ((r_1 T@Ref) ) (! (IsPredicateField_4838_4839 (ExtensionHeader_State r_1))
 :qid |stdinbpl.778:15|
 :skolemid |76|
 :pattern ( (ExtensionHeader_State r_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7364) (r_1@@0 T@Ref) ) (! (|ExtensionHeader_State#everUsed_4838| (ExtensionHeader_State r_1@@0))
 :qid |stdinbpl.797:15|
 :skolemid |80|
 :pattern ( (|ExtensionHeader_State#trigger_4838| Heap@@1 (ExtensionHeader_State r_1@@0)))
)))
(assert (forall ((s@@3 T@Seq_13455) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_4787| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_4787| (|Seq#Update_4787| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_4787| (|Seq#Update_4787| s@@3 i v) n@@3) (|Seq#Index_4787| s@@3 n@@3)))))
 :qid |stdinbpl.270:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_4787| (|Seq#Update_4787| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_4787| s@@3 n@@3) (|Seq#Update_4787| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2915) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2915| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2915| s@@4 n@@4)))))
 :qid |stdinbpl.270:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2915| s@@4 n@@4) (|Seq#Update_2915| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_13455) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_4787| s@@5)) (= (|Seq#Length_4787| (|Seq#Take_4787| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_4787| s@@5) n@@5) (= (|Seq#Length_4787| (|Seq#Take_4787| s@@5 n@@5)) (|Seq#Length_4787| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_4787| (|Seq#Take_4787| s@@5 n@@5)) 0)))
 :qid |stdinbpl.281:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_4787| (|Seq#Take_4787| s@@5 n@@5)))
 :pattern ( (|Seq#Take_4787| s@@5 n@@5) (|Seq#Length_4787| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2915) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2915| s@@6)) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2915| s@@6) n@@6) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) (|Seq#Length_2915| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) 0)))
 :qid |stdinbpl.281:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2915| s@@6 n@@6) (|Seq#Length_2915| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2915| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.555:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2915| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_13455) (x T@Ref) ) (!  (=> (|Seq#Contains_4787| s@@7 x) (and (and (<= 0 (|Seq#Skolem_4787| s@@7 x)) (< (|Seq#Skolem_4787| s@@7 x) (|Seq#Length_4787| s@@7))) (= (|Seq#Index_4787| s@@7 (|Seq#Skolem_4787| s@@7 x)) x)))
 :qid |stdinbpl.413:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_4787| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2915) (x@@0 Int) ) (!  (=> (|Seq#Contains_2915| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2915| s@@8 x@@0)) (< (|Seq#Skolem_2915| s@@8 x@@0) (|Seq#Length_2915| s@@8))) (= (|Seq#Index_2915| s@@8 (|Seq#Skolem_2915| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.413:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2915| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_13455) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_4787| s@@9 n@@7) s@@9))
 :qid |stdinbpl.397:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4787| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2915) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2915| s@@10 n@@8) s@@10))
 :qid |stdinbpl.397:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2915| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.250:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.248:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7364) (Mask@@0 T@PolymorphicMapType_7385) (hdrs@@0 T@Ref) (index@@0 Int) ) (!  (=> (state Heap@@2 Mask@@0) (= (|extension_len_rec'| Heap@@2 hdrs@@0 index@@0) (|extension_len_rec#frame| (CombineFrames (FrameFragment_14046 (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@2) hdrs@@0 list_acc)) (FrameFragment_3293 (|extension_len_rec#condqp1| Heap@@2 hdrs@@0 index@@0))) hdrs@@0 index@@0)))
 :qid |stdinbpl.593:15|
 :skolemid |61|
 :pattern ( (state Heap@@2 Mask@@0) (|extension_len_rec'| Heap@@2 hdrs@@0 index@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7364) (ExhaleHeap T@PolymorphicMapType_7364) (Mask@@1 T@PolymorphicMapType_7385) (pm_f_2 T@Field_14521_14522) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_14521_14522 Mask@@1 null pm_f_2) (IsPredicateField_4838_4839 pm_f_2)) (= (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@3) null (PredicateMaskField_4838 pm_f_2)) (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap) null (PredicateMaskField_4838 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_4838_4839 pm_f_2) (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap) null (PredicateMaskField_4838 pm_f_2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7364) (ExhaleHeap@@0 T@PolymorphicMapType_7364) (Mask@@2 T@PolymorphicMapType_7385) (pm_f_2@@0 T@Field_4786_14522) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_4786_14522 Mask@@2 null pm_f_2@@0) (IsPredicateField_4786_21608 pm_f_2@@0)) (= (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@4) null (PredicateMaskField_4786 pm_f_2@@0)) (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@0) null (PredicateMaskField_4786 pm_f_2@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsPredicateField_4786_21608 pm_f_2@@0) (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@0) null (PredicateMaskField_4786 pm_f_2@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7364) (ExhaleHeap@@1 T@PolymorphicMapType_7364) (Mask@@3 T@PolymorphicMapType_7385) (pm_f_2@@1 T@Field_14521_14522) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_14521_14522 Mask@@3 null pm_f_2@@1) (IsWandField_14521_25317 pm_f_2@@1)) (= (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@5) null (WandMaskField_14521 pm_f_2@@1)) (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@1) null (WandMaskField_14521 pm_f_2@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsWandField_14521_25317 pm_f_2@@1) (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@1) null (WandMaskField_14521 pm_f_2@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7364) (ExhaleHeap@@2 T@PolymorphicMapType_7364) (Mask@@4 T@PolymorphicMapType_7385) (pm_f_2@@2 T@Field_4786_14522) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_4786_14522 Mask@@4 null pm_f_2@@2) (IsWandField_4786_24960 pm_f_2@@2)) (= (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@6) null (WandMaskField_4786 pm_f_2@@2)) (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@2) null (WandMaskField_4786 pm_f_2@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_4786_24960 pm_f_2@@2) (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@2) null (WandMaskField_4786 pm_f_2@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_4787| (|Seq#Singleton_4787| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.538:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_4787| (|Seq#Singleton_4787| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2915| (|Seq#Singleton_2915| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.538:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2915| (|Seq#Singleton_2915| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_13455) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_4787| s@@11))) (= (|Seq#Index_4787| (|Seq#Take_4787| s@@11 n@@9) j@@3) (|Seq#Index_4787| s@@11 j@@3)))
 :qid |stdinbpl.289:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_4787| (|Seq#Take_4787| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_4787| s@@11 j@@3) (|Seq#Take_4787| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2915) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2915| s@@12))) (= (|Seq#Index_2915| (|Seq#Take_2915| s@@12 n@@10) j@@4) (|Seq#Index_2915| s@@12 j@@4)))
 :qid |stdinbpl.289:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2915| (|Seq#Take_2915| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2915| s@@12 j@@4) (|Seq#Take_2915| s@@12 n@@10))
)))
(assert (forall ((r_1@@1 T@Ref) (r2 T@Ref) ) (!  (=> (= (ExtensionHeader_State r_1@@1) (ExtensionHeader_State r2)) (= r_1@@1 r2))
 :qid |stdinbpl.788:15|
 :skolemid |78|
 :pattern ( (ExtensionHeader_State r_1@@1) (ExtensionHeader_State r2))
)))
(assert (forall ((r_1@@2 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|ExtensionHeader_State#sm| r_1@@2) (|ExtensionHeader_State#sm| r2@@0)) (= r_1@@2 r2@@0))
 :qid |stdinbpl.792:15|
 :skolemid |79|
 :pattern ( (|ExtensionHeader_State#sm| r_1@@2) (|ExtensionHeader_State#sm| r2@@0))
)))
(assert (forall ((s@@13 T@Seq_13455) (t T@Seq_13455) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_4787| s@@13))) (< n@@11 (|Seq#Length_4787| (|Seq#Append_13455| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_4787| s@@13)) (|Seq#Length_4787| s@@13)) n@@11) (= (|Seq#Take_4787| (|Seq#Append_13455| s@@13 t) n@@11) (|Seq#Append_13455| s@@13 (|Seq#Take_4787| t (|Seq#Sub| n@@11 (|Seq#Length_4787| s@@13)))))))
 :qid |stdinbpl.374:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4787| (|Seq#Append_13455| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2915) (t@@0 T@Seq_2915) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2915| s@@14))) (< n@@12 (|Seq#Length_2915| (|Seq#Append_2915| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2915| s@@14)) (|Seq#Length_2915| s@@14)) n@@12) (= (|Seq#Take_2915| (|Seq#Append_2915| s@@14 t@@0) n@@12) (|Seq#Append_2915| s@@14 (|Seq#Take_2915| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2915| s@@14)))))))
 :qid |stdinbpl.374:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2915| (|Seq#Append_2915| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7364) (ExhaleHeap@@3 T@PolymorphicMapType_7364) (Mask@@5 T@PolymorphicMapType_7385) (pm_f_2@@3 T@Field_14521_14522) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_14521_14522 Mask@@5 null pm_f_2@@3) (IsPredicateField_4838_4839 pm_f_2@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_7424_53) ) (!  (=> (select (|PolymorphicMapType_7913_7424_53#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@7) null (PredicateMaskField_4838 pm_f_2@@3))) o2_2 f_9) (= (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@7) o2_2 f_9) (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_7437_7438) ) (!  (=> (select (|PolymorphicMapType_7913_7424_7438#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@7) null (PredicateMaskField_4838 pm_f_2@@3))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@7) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_13452_13457) ) (!  (=> (select (|PolymorphicMapType_7913_7424_13457#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@7) null (PredicateMaskField_4838 pm_f_2@@3))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@7) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_4786_14522) ) (!  (=> (select (|PolymorphicMapType_7913_7424_14522#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@7) null (PredicateMaskField_4838 pm_f_2@@3))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@7) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_4786_18478) ) (!  (=> (select (|PolymorphicMapType_7913_7424_23098#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@7) null (PredicateMaskField_4838 pm_f_2@@3))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@7) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@3 f_9@@3))
))) (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_14521_53) ) (!  (=> (select (|PolymorphicMapType_7913_14521_53#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@7) null (PredicateMaskField_4838 pm_f_2@@3))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@7) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@4 f_9@@4))
))) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_14521_7438) ) (!  (=> (select (|PolymorphicMapType_7913_14521_7438#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@7) null (PredicateMaskField_4838 pm_f_2@@3))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@7) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_14521_15164) ) (!  (=> (select (|PolymorphicMapType_7913_14521_13457#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@7) null (PredicateMaskField_4838 pm_f_2@@3))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@7) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@6 f_9@@6))
))) (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_14521_14522) ) (!  (=> (select (|PolymorphicMapType_7913_14521_14522#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@7) null (PredicateMaskField_4838 pm_f_2@@3))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@7) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@7 f_9@@7))
))) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_18473_18478) ) (!  (=> (select (|PolymorphicMapType_7913_14521_24152#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@7) null (PredicateMaskField_4838 pm_f_2@@3))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@7) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@3) o2_2@@8 f_9@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (IsPredicateField_4838_4839 pm_f_2@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7364) (ExhaleHeap@@4 T@PolymorphicMapType_7364) (Mask@@6 T@PolymorphicMapType_7385) (pm_f_2@@4 T@Field_4786_14522) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_4786_14522 Mask@@6 null pm_f_2@@4) (IsPredicateField_4786_21608 pm_f_2@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@9 T@Ref) (f_9@@9 T@Field_7424_53) ) (!  (=> (select (|PolymorphicMapType_7913_7424_53#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@8) null (PredicateMaskField_4786 pm_f_2@@4))) o2_2@@9 f_9@@9) (= (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@8) o2_2@@9 f_9@@9) (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@9 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@9 f_9@@9))
)) (forall ((o2_2@@10 T@Ref) (f_9@@10 T@Field_7437_7438) ) (!  (=> (select (|PolymorphicMapType_7913_7424_7438#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@8) null (PredicateMaskField_4786 pm_f_2@@4))) o2_2@@10 f_9@@10) (= (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@8) o2_2@@10 f_9@@10) (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@10 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@10 f_9@@10))
))) (forall ((o2_2@@11 T@Ref) (f_9@@11 T@Field_13452_13457) ) (!  (=> (select (|PolymorphicMapType_7913_7424_13457#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@8) null (PredicateMaskField_4786 pm_f_2@@4))) o2_2@@11 f_9@@11) (= (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@8) o2_2@@11 f_9@@11) (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@11 f_9@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@11 f_9@@11))
))) (forall ((o2_2@@12 T@Ref) (f_9@@12 T@Field_4786_14522) ) (!  (=> (select (|PolymorphicMapType_7913_7424_14522#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@8) null (PredicateMaskField_4786 pm_f_2@@4))) o2_2@@12 f_9@@12) (= (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@8) o2_2@@12 f_9@@12) (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@12 f_9@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@12 f_9@@12))
))) (forall ((o2_2@@13 T@Ref) (f_9@@13 T@Field_4786_18478) ) (!  (=> (select (|PolymorphicMapType_7913_7424_23098#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@8) null (PredicateMaskField_4786 pm_f_2@@4))) o2_2@@13 f_9@@13) (= (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@8) o2_2@@13 f_9@@13) (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@13 f_9@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@13 f_9@@13))
))) (forall ((o2_2@@14 T@Ref) (f_9@@14 T@Field_14521_53) ) (!  (=> (select (|PolymorphicMapType_7913_14521_53#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@8) null (PredicateMaskField_4786 pm_f_2@@4))) o2_2@@14 f_9@@14) (= (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@8) o2_2@@14 f_9@@14) (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@14 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@14 f_9@@14))
))) (forall ((o2_2@@15 T@Ref) (f_9@@15 T@Field_14521_7438) ) (!  (=> (select (|PolymorphicMapType_7913_14521_7438#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@8) null (PredicateMaskField_4786 pm_f_2@@4))) o2_2@@15 f_9@@15) (= (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@8) o2_2@@15 f_9@@15) (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@15 f_9@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@15 f_9@@15))
))) (forall ((o2_2@@16 T@Ref) (f_9@@16 T@Field_14521_15164) ) (!  (=> (select (|PolymorphicMapType_7913_14521_13457#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@8) null (PredicateMaskField_4786 pm_f_2@@4))) o2_2@@16 f_9@@16) (= (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@8) o2_2@@16 f_9@@16) (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@16 f_9@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@16 f_9@@16))
))) (forall ((o2_2@@17 T@Ref) (f_9@@17 T@Field_14521_14522) ) (!  (=> (select (|PolymorphicMapType_7913_14521_14522#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@8) null (PredicateMaskField_4786 pm_f_2@@4))) o2_2@@17 f_9@@17) (= (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@8) o2_2@@17 f_9@@17) (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@17 f_9@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@17 f_9@@17))
))) (forall ((o2_2@@18 T@Ref) (f_9@@18 T@Field_18473_18478) ) (!  (=> (select (|PolymorphicMapType_7913_14521_24152#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@8) null (PredicateMaskField_4786 pm_f_2@@4))) o2_2@@18 f_9@@18) (= (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@8) o2_2@@18 f_9@@18) (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@18 f_9@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@4) o2_2@@18 f_9@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (IsPredicateField_4786_21608 pm_f_2@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7364) (ExhaleHeap@@5 T@PolymorphicMapType_7364) (Mask@@7 T@PolymorphicMapType_7385) (pm_f_2@@5 T@Field_14521_14522) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_14521_14522 Mask@@7 null pm_f_2@@5) (IsWandField_14521_25317 pm_f_2@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@19 T@Ref) (f_9@@19 T@Field_7424_53) ) (!  (=> (select (|PolymorphicMapType_7913_7424_53#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@9) null (WandMaskField_14521 pm_f_2@@5))) o2_2@@19 f_9@@19) (= (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@9) o2_2@@19 f_9@@19) (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@19 f_9@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@19 f_9@@19))
)) (forall ((o2_2@@20 T@Ref) (f_9@@20 T@Field_7437_7438) ) (!  (=> (select (|PolymorphicMapType_7913_7424_7438#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@9) null (WandMaskField_14521 pm_f_2@@5))) o2_2@@20 f_9@@20) (= (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@9) o2_2@@20 f_9@@20) (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@20 f_9@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@20 f_9@@20))
))) (forall ((o2_2@@21 T@Ref) (f_9@@21 T@Field_13452_13457) ) (!  (=> (select (|PolymorphicMapType_7913_7424_13457#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@9) null (WandMaskField_14521 pm_f_2@@5))) o2_2@@21 f_9@@21) (= (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@9) o2_2@@21 f_9@@21) (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@21 f_9@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@21 f_9@@21))
))) (forall ((o2_2@@22 T@Ref) (f_9@@22 T@Field_4786_14522) ) (!  (=> (select (|PolymorphicMapType_7913_7424_14522#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@9) null (WandMaskField_14521 pm_f_2@@5))) o2_2@@22 f_9@@22) (= (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@9) o2_2@@22 f_9@@22) (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@22 f_9@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@22 f_9@@22))
))) (forall ((o2_2@@23 T@Ref) (f_9@@23 T@Field_4786_18478) ) (!  (=> (select (|PolymorphicMapType_7913_7424_23098#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@9) null (WandMaskField_14521 pm_f_2@@5))) o2_2@@23 f_9@@23) (= (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@9) o2_2@@23 f_9@@23) (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@23 f_9@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@23 f_9@@23))
))) (forall ((o2_2@@24 T@Ref) (f_9@@24 T@Field_14521_53) ) (!  (=> (select (|PolymorphicMapType_7913_14521_53#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@9) null (WandMaskField_14521 pm_f_2@@5))) o2_2@@24 f_9@@24) (= (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@9) o2_2@@24 f_9@@24) (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@24 f_9@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@24 f_9@@24))
))) (forall ((o2_2@@25 T@Ref) (f_9@@25 T@Field_14521_7438) ) (!  (=> (select (|PolymorphicMapType_7913_14521_7438#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@9) null (WandMaskField_14521 pm_f_2@@5))) o2_2@@25 f_9@@25) (= (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@9) o2_2@@25 f_9@@25) (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@25 f_9@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@25 f_9@@25))
))) (forall ((o2_2@@26 T@Ref) (f_9@@26 T@Field_14521_15164) ) (!  (=> (select (|PolymorphicMapType_7913_14521_13457#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@9) null (WandMaskField_14521 pm_f_2@@5))) o2_2@@26 f_9@@26) (= (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@9) o2_2@@26 f_9@@26) (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@26 f_9@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@26 f_9@@26))
))) (forall ((o2_2@@27 T@Ref) (f_9@@27 T@Field_14521_14522) ) (!  (=> (select (|PolymorphicMapType_7913_14521_14522#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@9) null (WandMaskField_14521 pm_f_2@@5))) o2_2@@27 f_9@@27) (= (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@9) o2_2@@27 f_9@@27) (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@27 f_9@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@27 f_9@@27))
))) (forall ((o2_2@@28 T@Ref) (f_9@@28 T@Field_18473_18478) ) (!  (=> (select (|PolymorphicMapType_7913_14521_24152#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@9) null (WandMaskField_14521 pm_f_2@@5))) o2_2@@28 f_9@@28) (= (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@9) o2_2@@28 f_9@@28) (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@28 f_9@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@5) o2_2@@28 f_9@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (IsWandField_14521_25317 pm_f_2@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7364) (ExhaleHeap@@6 T@PolymorphicMapType_7364) (Mask@@8 T@PolymorphicMapType_7385) (pm_f_2@@6 T@Field_4786_14522) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_4786_14522 Mask@@8 null pm_f_2@@6) (IsWandField_4786_24960 pm_f_2@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@29 T@Ref) (f_9@@29 T@Field_7424_53) ) (!  (=> (select (|PolymorphicMapType_7913_7424_53#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@10) null (WandMaskField_4786 pm_f_2@@6))) o2_2@@29 f_9@@29) (= (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@10) o2_2@@29 f_9@@29) (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@29 f_9@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@29 f_9@@29))
)) (forall ((o2_2@@30 T@Ref) (f_9@@30 T@Field_7437_7438) ) (!  (=> (select (|PolymorphicMapType_7913_7424_7438#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@10) null (WandMaskField_4786 pm_f_2@@6))) o2_2@@30 f_9@@30) (= (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@10) o2_2@@30 f_9@@30) (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@30 f_9@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@30 f_9@@30))
))) (forall ((o2_2@@31 T@Ref) (f_9@@31 T@Field_13452_13457) ) (!  (=> (select (|PolymorphicMapType_7913_7424_13457#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@10) null (WandMaskField_4786 pm_f_2@@6))) o2_2@@31 f_9@@31) (= (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@10) o2_2@@31 f_9@@31) (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@31 f_9@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@31 f_9@@31))
))) (forall ((o2_2@@32 T@Ref) (f_9@@32 T@Field_4786_14522) ) (!  (=> (select (|PolymorphicMapType_7913_7424_14522#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@10) null (WandMaskField_4786 pm_f_2@@6))) o2_2@@32 f_9@@32) (= (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@10) o2_2@@32 f_9@@32) (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@32 f_9@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@32 f_9@@32))
))) (forall ((o2_2@@33 T@Ref) (f_9@@33 T@Field_4786_18478) ) (!  (=> (select (|PolymorphicMapType_7913_7424_23098#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@10) null (WandMaskField_4786 pm_f_2@@6))) o2_2@@33 f_9@@33) (= (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@10) o2_2@@33 f_9@@33) (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@33 f_9@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@33 f_9@@33))
))) (forall ((o2_2@@34 T@Ref) (f_9@@34 T@Field_14521_53) ) (!  (=> (select (|PolymorphicMapType_7913_14521_53#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@10) null (WandMaskField_4786 pm_f_2@@6))) o2_2@@34 f_9@@34) (= (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@10) o2_2@@34 f_9@@34) (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@34 f_9@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@34 f_9@@34))
))) (forall ((o2_2@@35 T@Ref) (f_9@@35 T@Field_14521_7438) ) (!  (=> (select (|PolymorphicMapType_7913_14521_7438#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@10) null (WandMaskField_4786 pm_f_2@@6))) o2_2@@35 f_9@@35) (= (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@10) o2_2@@35 f_9@@35) (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@35 f_9@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@35 f_9@@35))
))) (forall ((o2_2@@36 T@Ref) (f_9@@36 T@Field_14521_15164) ) (!  (=> (select (|PolymorphicMapType_7913_14521_13457#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@10) null (WandMaskField_4786 pm_f_2@@6))) o2_2@@36 f_9@@36) (= (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@10) o2_2@@36 f_9@@36) (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@36 f_9@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@36 f_9@@36))
))) (forall ((o2_2@@37 T@Ref) (f_9@@37 T@Field_14521_14522) ) (!  (=> (select (|PolymorphicMapType_7913_14521_14522#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@10) null (WandMaskField_4786 pm_f_2@@6))) o2_2@@37 f_9@@37) (= (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@10) o2_2@@37 f_9@@37) (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@37 f_9@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@37 f_9@@37))
))) (forall ((o2_2@@38 T@Ref) (f_9@@38 T@Field_18473_18478) ) (!  (=> (select (|PolymorphicMapType_7913_14521_24152#PolymorphicMapType_7913| (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@10) null (WandMaskField_4786 pm_f_2@@6))) o2_2@@38 f_9@@38) (= (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@10) o2_2@@38 f_9@@38) (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@38 f_9@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@6) o2_2@@38 f_9@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (IsWandField_4786_24960 pm_f_2@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7364) (ExhaleHeap@@7 T@PolymorphicMapType_7364) (Mask@@9 T@PolymorphicMapType_7385) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@11) o_6 $allocated) (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@7) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@7) o_6 $allocated))
)))
(assert (forall ((p T@Field_14521_14522) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14521_14521 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14521_14521 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4786_14522) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7424_7424 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7424_7424 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_13455) (s1 T@Seq_13455) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4787|)) (not (= s1 |Seq#Empty_4787|))) (<= (|Seq#Length_4787| s0) n@@13)) (< n@@13 (|Seq#Length_4787| (|Seq#Append_13455| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_4787| s0)) (|Seq#Length_4787| s0)) n@@13) (= (|Seq#Index_4787| (|Seq#Append_13455| s0 s1) n@@13) (|Seq#Index_4787| s1 (|Seq#Sub| n@@13 (|Seq#Length_4787| s0))))))
 :qid |stdinbpl.261:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_4787| (|Seq#Append_13455| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2915) (s1@@0 T@Seq_2915) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2915|)) (not (= s1@@0 |Seq#Empty_2915|))) (<= (|Seq#Length_2915| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2915| (|Seq#Append_2915| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2915| s0@@0)) (|Seq#Length_2915| s0@@0)) n@@14) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@0 s1@@0) n@@14) (|Seq#Index_2915| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2915| s0@@0))))))
 :qid |stdinbpl.261:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2915| (|Seq#Append_2915| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_4786_13479 list_acc)))
(assert  (not (IsWandField_4786_13505 list_acc)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7364) (ExhaleHeap@@8 T@PolymorphicMapType_7364) (Mask@@10 T@PolymorphicMapType_7385) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7385) (o_2@@9 T@Ref) (f_4@@9 T@Field_18473_18478) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4838_32262 f_4@@9))) (not (IsWandField_4838_32278 f_4@@9))) (<= (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7385) (o_2@@10 T@Ref) (f_4@@10 T@Field_14521_7438) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4838_7438 f_4@@10))) (not (IsWandField_4838_7438 f_4@@10))) (<= (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7385) (o_2@@11 T@Ref) (f_4@@11 T@Field_14521_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4838_53 f_4@@11))) (not (IsWandField_4838_53 f_4@@11))) (<= (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7385) (o_2@@12 T@Ref) (f_4@@12 T@Field_14521_14522) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4838_4839 f_4@@12))) (not (IsWandField_14521_25317 f_4@@12))) (<= (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7385) (o_2@@13 T@Ref) (f_4@@13 T@Field_14521_15164) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4838_15012 f_4@@13))) (not (IsWandField_4838_15012 f_4@@13))) (<= (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7385) (o_2@@14 T@Ref) (f_4@@14 T@Field_4786_18478) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4786_31431 f_4@@14))) (not (IsWandField_4786_31447 f_4@@14))) (<= (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7385) (o_2@@15 T@Ref) (f_4@@15 T@Field_7437_7438) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4786_7438 f_4@@15))) (not (IsWandField_4786_7438 f_4@@15))) (<= (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7385) (o_2@@16 T@Ref) (f_4@@16 T@Field_7424_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4786_53 f_4@@16))) (not (IsWandField_4786_53 f_4@@16))) (<= (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7385) (o_2@@17 T@Ref) (f_4@@17 T@Field_4786_14522) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4786_21608 f_4@@17))) (not (IsWandField_4786_24960 f_4@@17))) (<= (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7385) (o_2@@18 T@Ref) (f_4@@18 T@Field_13452_13457) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4786_13479 f_4@@18))) (not (IsWandField_4786_13505 f_4@@18))) (<= (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7385) (o_2@@19 T@Ref) (f_4@@19 T@Field_18473_18478) ) (! (= (HasDirectPerm_14521_21320 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14521_21320 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7385) (o_2@@20 T@Ref) (f_4@@20 T@Field_14521_14522) ) (! (= (HasDirectPerm_14521_14522 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14521_14522 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7385) (o_2@@21 T@Ref) (f_4@@21 T@Field_14521_7438) ) (! (= (HasDirectPerm_14521_7438 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14521_7438 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7385) (o_2@@22 T@Ref) (f_4@@22 T@Field_14521_53) ) (! (= (HasDirectPerm_14521_53 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14521_53 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7385) (o_2@@23 T@Ref) (f_4@@23 T@Field_14521_15164) ) (! (= (HasDirectPerm_14521_15164 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14521_15164 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7385) (o_2@@24 T@Ref) (f_4@@24 T@Field_4786_18478) ) (! (= (HasDirectPerm_4786_20151 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4786_20151 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7385) (o_2@@25 T@Ref) (f_4@@25 T@Field_4786_14522) ) (! (= (HasDirectPerm_4786_14522 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4786_14522 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7385) (o_2@@26 T@Ref) (f_4@@26 T@Field_7437_7438) ) (! (= (HasDirectPerm_4786_7438 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4786_7438 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7385) (o_2@@27 T@Ref) (f_4@@27 T@Field_7424_53) ) (! (= (HasDirectPerm_4786_53 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4786_53 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_7385) (o_2@@28 T@Ref) (f_4@@28 T@Field_13452_13457) ) (! (= (HasDirectPerm_4786_15164 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4786_15164 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2915| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.553:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2915| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7364) (ExhaleHeap@@9 T@PolymorphicMapType_7364) (Mask@@31 T@PolymorphicMapType_7385) (o_6@@0 T@Ref) (f_9@@39 T@Field_18473_18478) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_14521_21320 Mask@@31 o_6@@0 f_9@@39) (= (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@13) o_6@@0 f_9@@39) (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@9) o_6@@0 f_9@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| ExhaleHeap@@9) o_6@@0 f_9@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7364) (ExhaleHeap@@10 T@PolymorphicMapType_7364) (Mask@@32 T@PolymorphicMapType_7385) (o_6@@1 T@Ref) (f_9@@40 T@Field_14521_14522) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_14521_14522 Mask@@32 o_6@@1 f_9@@40) (= (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@14) o_6@@1 f_9@@40) (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| ExhaleHeap@@10) o_6@@1 f_9@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| ExhaleHeap@@10) o_6@@1 f_9@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7364) (ExhaleHeap@@11 T@PolymorphicMapType_7364) (Mask@@33 T@PolymorphicMapType_7385) (o_6@@2 T@Ref) (f_9@@41 T@Field_14521_7438) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_14521_7438 Mask@@33 o_6@@2 f_9@@41) (= (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@15) o_6@@2 f_9@@41) (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| ExhaleHeap@@11) o_6@@2 f_9@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| ExhaleHeap@@11) o_6@@2 f_9@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7364) (ExhaleHeap@@12 T@PolymorphicMapType_7364) (Mask@@34 T@PolymorphicMapType_7385) (o_6@@3 T@Ref) (f_9@@42 T@Field_14521_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_14521_53 Mask@@34 o_6@@3 f_9@@42) (= (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@16) o_6@@3 f_9@@42) (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| ExhaleHeap@@12) o_6@@3 f_9@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| ExhaleHeap@@12) o_6@@3 f_9@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7364) (ExhaleHeap@@13 T@PolymorphicMapType_7364) (Mask@@35 T@PolymorphicMapType_7385) (o_6@@4 T@Ref) (f_9@@43 T@Field_14521_15164) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_14521_15164 Mask@@35 o_6@@4 f_9@@43) (= (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@17) o_6@@4 f_9@@43) (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| ExhaleHeap@@13) o_6@@4 f_9@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| ExhaleHeap@@13) o_6@@4 f_9@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7364) (ExhaleHeap@@14 T@PolymorphicMapType_7364) (Mask@@36 T@PolymorphicMapType_7385) (o_6@@5 T@Ref) (f_9@@44 T@Field_4786_18478) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_4786_20151 Mask@@36 o_6@@5 f_9@@44) (= (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@18) o_6@@5 f_9@@44) (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@14) o_6@@5 f_9@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| ExhaleHeap@@14) o_6@@5 f_9@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7364) (ExhaleHeap@@15 T@PolymorphicMapType_7364) (Mask@@37 T@PolymorphicMapType_7385) (o_6@@6 T@Ref) (f_9@@45 T@Field_4786_14522) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_4786_14522 Mask@@37 o_6@@6 f_9@@45) (= (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@19) o_6@@6 f_9@@45) (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| ExhaleHeap@@15) o_6@@6 f_9@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| ExhaleHeap@@15) o_6@@6 f_9@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7364) (ExhaleHeap@@16 T@PolymorphicMapType_7364) (Mask@@38 T@PolymorphicMapType_7385) (o_6@@7 T@Ref) (f_9@@46 T@Field_7437_7438) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_4786_7438 Mask@@38 o_6@@7 f_9@@46) (= (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@20) o_6@@7 f_9@@46) (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| ExhaleHeap@@16) o_6@@7 f_9@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| ExhaleHeap@@16) o_6@@7 f_9@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7364) (ExhaleHeap@@17 T@PolymorphicMapType_7364) (Mask@@39 T@PolymorphicMapType_7385) (o_6@@8 T@Ref) (f_9@@47 T@Field_7424_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_4786_53 Mask@@39 o_6@@8 f_9@@47) (= (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@21) o_6@@8 f_9@@47) (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@17) o_6@@8 f_9@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| ExhaleHeap@@17) o_6@@8 f_9@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7364) (ExhaleHeap@@18 T@PolymorphicMapType_7364) (Mask@@40 T@PolymorphicMapType_7385) (o_6@@9 T@Ref) (f_9@@48 T@Field_13452_13457) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_4786_15164 Mask@@40 o_6@@9 f_9@@48) (= (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@22) o_6@@9 f_9@@48) (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| ExhaleHeap@@18) o_6@@9 f_9@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| ExhaleHeap@@18) o_6@@9 f_9@@48))
)))
(assert (forall ((s0@@1 T@Seq_13455) (s1@@1 T@Seq_13455) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_4787|)) (not (= s1@@1 |Seq#Empty_4787|))) (= (|Seq#Length_4787| (|Seq#Append_13455| s0@@1 s1@@1)) (+ (|Seq#Length_4787| s0@@1) (|Seq#Length_4787| s1@@1))))
 :qid |stdinbpl.230:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_4787| (|Seq#Append_13455| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2915) (s1@@2 T@Seq_2915) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2915|)) (not (= s1@@2 |Seq#Empty_2915|))) (= (|Seq#Length_2915| (|Seq#Append_2915| s0@@2 s1@@2)) (+ (|Seq#Length_2915| s0@@2) (|Seq#Length_2915| s1@@2))))
 :qid |stdinbpl.230:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2915| (|Seq#Append_2915| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_18473_18478) ) (! (= (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_14521_7438) ) (! (= (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_14521_53) ) (! (= (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_14521_14522) ) (! (= (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_14521_15164) ) (! (= (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_4786_18478) ) (! (= (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_7437_7438) ) (! (= (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_7424_53) ) (! (= (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4786_14522) ) (! (= (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_13452_13457) ) (! (= (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_13455) (t@@1 T@Seq_13455) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_4787| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_4787| s@@15)) (|Seq#Length_4787| s@@15)) n@@15) (= (|Seq#Drop_4787| (|Seq#Append_13455| s@@15 t@@1) n@@15) (|Seq#Drop_4787| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_4787| s@@15))))))
 :qid |stdinbpl.387:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4787| (|Seq#Append_13455| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2915) (t@@2 T@Seq_2915) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2915| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2915| s@@16)) (|Seq#Length_2915| s@@16)) n@@16) (= (|Seq#Drop_2915| (|Seq#Append_2915| s@@16 t@@2) n@@16) (|Seq#Drop_2915| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2915| s@@16))))))
 :qid |stdinbpl.387:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2915| (|Seq#Append_2915| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7364) (hdrs@@1 T@Ref) (index@@1 Int) ) (!  (and (= (extension_len_rec Heap@@23 hdrs@@1 index@@1) (|extension_len_rec'| Heap@@23 hdrs@@1 index@@1)) (dummyFunction_3484 (|extension_len_rec#triggerStateless| hdrs@@1 index@@1)))
 :qid |stdinbpl.576:15|
 :skolemid |58|
 :pattern ( (extension_len_rec Heap@@23 hdrs@@1 index@@1))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7364) (Mask@@41 T@PolymorphicMapType_7385) (hdrs@@2 T@Ref) (index@@2 Int) ) (!  (=> (and (state Heap@@24 Mask@@41) (< AssumeFunctionsAbove 0)) (=> (and (>= index@@2 0) (<= index@@2 (|Seq#Length_4787| (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@24) hdrs@@2 list_acc)))) (= (extension_len_rec Heap@@24 hdrs@@2 index@@2) (ite (= index@@2 (|Seq#Length_4787| (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@24) hdrs@@2 list_acc))) 0 (|extension_len_rec'| Heap@@24 hdrs@@2 (+ index@@2 1))))))
 :qid |stdinbpl.586:15|
 :skolemid |60|
 :pattern ( (state Heap@@24 Mask@@41) (extension_len_rec Heap@@24 hdrs@@2 index@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7385) (SummandMask1 T@PolymorphicMapType_7385) (SummandMask2 T@PolymorphicMapType_7385) (o_2@@39 T@Ref) (f_4@@39 T@Field_18473_18478) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7385_4838_29970#PolymorphicMapType_7385| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7385) (SummandMask1@@0 T@PolymorphicMapType_7385) (SummandMask2@@0 T@PolymorphicMapType_7385) (o_2@@40 T@Ref) (f_4@@40 T@Field_14521_7438) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7385_4838_7438#PolymorphicMapType_7385| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7385) (SummandMask1@@1 T@PolymorphicMapType_7385) (SummandMask2@@1 T@PolymorphicMapType_7385) (o_2@@41 T@Ref) (f_4@@41 T@Field_14521_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7385_4838_53#PolymorphicMapType_7385| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7385) (SummandMask1@@2 T@PolymorphicMapType_7385) (SummandMask2@@2 T@PolymorphicMapType_7385) (o_2@@42 T@Ref) (f_4@@42 T@Field_14521_14522) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7385_4838_4839#PolymorphicMapType_7385| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7385) (SummandMask1@@3 T@PolymorphicMapType_7385) (SummandMask2@@3 T@PolymorphicMapType_7385) (o_2@@43 T@Ref) (f_4@@43 T@Field_14521_15164) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7385_4838_15012#PolymorphicMapType_7385| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7385) (SummandMask1@@4 T@PolymorphicMapType_7385) (SummandMask2@@4 T@PolymorphicMapType_7385) (o_2@@44 T@Ref) (f_4@@44 T@Field_4786_18478) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7385_4786_29556#PolymorphicMapType_7385| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7385) (SummandMask1@@5 T@PolymorphicMapType_7385) (SummandMask2@@5 T@PolymorphicMapType_7385) (o_2@@45 T@Ref) (f_4@@45 T@Field_7437_7438) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7385_4786_7438#PolymorphicMapType_7385| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7385) (SummandMask1@@6 T@PolymorphicMapType_7385) (SummandMask2@@6 T@PolymorphicMapType_7385) (o_2@@46 T@Ref) (f_4@@46 T@Field_7424_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7385_4786_53#PolymorphicMapType_7385| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_7385) (SummandMask1@@7 T@PolymorphicMapType_7385) (SummandMask2@@7 T@PolymorphicMapType_7385) (o_2@@47 T@Ref) (f_4@@47 T@Field_4786_14522) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7385_4786_4839#PolymorphicMapType_7385| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_7385) (SummandMask1@@8 T@PolymorphicMapType_7385) (SummandMask2@@8 T@PolymorphicMapType_7385) (o_2@@48 T@Ref) (f_4@@48 T@Field_13452_13457) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7385_4786_15012#PolymorphicMapType_7385| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.552:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_13455) (b T@Seq_13455) ) (!  (=> (|Seq#Equal_13455| a b) (= a b))
 :qid |stdinbpl.525:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_13455| a b))
)))
(assert (forall ((a@@0 T@Seq_2915) (b@@0 T@Seq_2915) ) (!  (=> (|Seq#Equal_2915| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.525:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2915| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_13455) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_4787| s@@17))) (|Seq#ContainsTrigger_4787| s@@17 (|Seq#Index_4787| s@@17 i@@3)))
 :qid |stdinbpl.418:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_4787| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2915) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2915| s@@18))) (|Seq#ContainsTrigger_2915| s@@18 (|Seq#Index_2915| s@@18 i@@4)))
 :qid |stdinbpl.418:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2915| s@@18 i@@4))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_7364) (Heap1Heap T@PolymorphicMapType_7364) (hdrs@@3 T@Ref) (index@@3 Int) ) (!  (=> (and (=  (and (|Seq#Contains_4787| (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap2Heap) hdrs@@3 list_acc) (|sk_extension_len_rec#condqp1| (|extension_len_rec#condqp1| Heap2Heap hdrs@@3 index@@3) (|extension_len_rec#condqp1| Heap1Heap hdrs@@3 index@@3))) (< NoPerm (/ (to_real 1) (to_real 200))))  (and (|Seq#Contains_4787| (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap1Heap) hdrs@@3 list_acc) (|sk_extension_len_rec#condqp1| (|extension_len_rec#condqp1| Heap2Heap hdrs@@3 index@@3) (|extension_len_rec#condqp1| Heap1Heap hdrs@@3 index@@3))) (< NoPerm (/ (to_real 1) (to_real 200))))) (=> (and (|Seq#Contains_4787| (select (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap2Heap) hdrs@@3 list_acc) (|sk_extension_len_rec#condqp1| (|extension_len_rec#condqp1| Heap2Heap hdrs@@3 index@@3) (|extension_len_rec#condqp1| Heap1Heap hdrs@@3 index@@3))) (< NoPerm (/ (to_real 1) (to_real 200)))) (= (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap2Heap) null (ExtensionHeader_State (|sk_extension_len_rec#condqp1| (|extension_len_rec#condqp1| Heap2Heap hdrs@@3 index@@3) (|extension_len_rec#condqp1| Heap1Heap hdrs@@3 index@@3)))) (select (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap1Heap) null (ExtensionHeader_State (|sk_extension_len_rec#condqp1| (|extension_len_rec#condqp1| Heap2Heap hdrs@@3 index@@3) (|extension_len_rec#condqp1| Heap1Heap hdrs@@3 index@@3))))))) (= (|extension_len_rec#condqp1| Heap2Heap hdrs@@3 index@@3) (|extension_len_rec#condqp1| Heap1Heap hdrs@@3 index@@3)))
 :qid |stdinbpl.603:15|
 :skolemid |62|
 :pattern ( (|extension_len_rec#condqp1| Heap2Heap hdrs@@3 index@@3) (|extension_len_rec#condqp1| Heap1Heap hdrs@@3 index@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((s0@@3 T@Seq_13455) (s1@@3 T@Seq_13455) ) (!  (and (=> (= s0@@3 |Seq#Empty_4787|) (= (|Seq#Append_13455| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_4787|) (= (|Seq#Append_13455| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.236:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_13455| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2915) (s1@@4 T@Seq_2915) ) (!  (and (=> (= s0@@4 |Seq#Empty_2915|) (= (|Seq#Append_2915| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2915|) (= (|Seq#Append_2915| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.236:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2915| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_4787| (|Seq#Singleton_4787| t@@3) 0) t@@3)
 :qid |stdinbpl.240:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4787| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2915| (|Seq#Singleton_2915| t@@4) 0) t@@4)
 :qid |stdinbpl.240:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2915| t@@4))
)))
(assert (forall ((s@@19 T@Seq_13455) ) (! (<= 0 (|Seq#Length_4787| s@@19))
 :qid |stdinbpl.219:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_4787| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2915) ) (! (<= 0 (|Seq#Length_2915| s@@20))
 :qid |stdinbpl.219:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2915| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_13455) (s1@@5 T@Seq_13455) ) (!  (=> (|Seq#Equal_13455| s0@@5 s1@@5) (and (= (|Seq#Length_4787| s0@@5) (|Seq#Length_4787| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_4787| s0@@5))) (= (|Seq#Index_4787| s0@@5 j@@6) (|Seq#Index_4787| s1@@5 j@@6)))
 :qid |stdinbpl.515:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_4787| s0@@5 j@@6))
 :pattern ( (|Seq#Index_4787| s1@@5 j@@6))
))))
 :qid |stdinbpl.512:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_13455| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2915) (s1@@6 T@Seq_2915) ) (!  (=> (|Seq#Equal_2915| s0@@6 s1@@6) (and (= (|Seq#Length_2915| s0@@6) (|Seq#Length_2915| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2915| s0@@6))) (= (|Seq#Index_2915| s0@@6 j@@7) (|Seq#Index_2915| s1@@6 j@@7)))
 :qid |stdinbpl.515:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2915| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2915| s1@@6 j@@7))
))))
 :qid |stdinbpl.512:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2915| s0@@6 s1@@6))
)))
(assert (forall ((r_1@@3 T@Ref) ) (! (= (getPredWandId_4838_4839 (ExtensionHeader_State r_1@@3)) 0)
 :qid |stdinbpl.782:15|
 :skolemid |77|
 :pattern ( (ExtensionHeader_State r_1@@3))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_4787| (|Seq#Singleton_4787| t@@5)) 1)
 :qid |stdinbpl.227:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4787| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2915| (|Seq#Singleton_2915| t@@6)) 1)
 :qid |stdinbpl.227:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2915| t@@6))
)))
(assert (forall ((s@@21 T@Seq_13455) (t@@7 T@Seq_13455) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_4787| s@@21))) (= (|Seq#Take_4787| (|Seq#Append_13455| s@@21 t@@7) n@@17) (|Seq#Take_4787| s@@21 n@@17)))
 :qid |stdinbpl.369:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4787| (|Seq#Append_13455| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2915) (t@@8 T@Seq_2915) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2915| s@@22))) (= (|Seq#Take_2915| (|Seq#Append_2915| s@@22 t@@8) n@@18) (|Seq#Take_2915| s@@22 n@@18)))
 :qid |stdinbpl.369:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2915| (|Seq#Append_2915| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_13455) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_4787| s@@23))) (= (|Seq#Length_4787| (|Seq#Update_4787| s@@23 i@@5 v@@2)) (|Seq#Length_4787| s@@23)))
 :qid |stdinbpl.268:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_4787| (|Seq#Update_4787| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_4787| s@@23) (|Seq#Update_4787| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2915) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2915| s@@24))) (= (|Seq#Length_2915| (|Seq#Update_2915| s@@24 i@@6 v@@3)) (|Seq#Length_2915| s@@24)))
 :qid |stdinbpl.268:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2915| (|Seq#Update_2915| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2915| s@@24) (|Seq#Update_2915| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7364) (o_5 T@Ref) (f_10 T@Field_18473_18478) (v@@4 T@PolymorphicMapType_7913) ) (! (succHeap Heap@@25 (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@25) (store (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@25) o_5 f_10 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@25) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@25) (store (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@25) o_5 f_10 v@@4)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7364) (o_5@@0 T@Ref) (f_10@@0 T@Field_14521_14522) (v@@5 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@26) (store (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@26) o_5@@0 f_10@@0 v@@5) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@26) (store (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@26) o_5@@0 f_10@@0 v@@5) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@26) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7364) (o_5@@1 T@Ref) (f_10@@1 T@Field_14521_15164) (v@@6 T@Seq_13455) ) (! (succHeap Heap@@27 (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@27) (store (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@27) o_5@@1 f_10@@1 v@@6) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@27) (store (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@27) o_5@@1 f_10@@1 v@@6) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@27) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7364) (o_5@@2 T@Ref) (f_10@@2 T@Field_14521_7438) (v@@7 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@28) (store (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@28) o_5@@2 f_10@@2 v@@7) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@28) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@28) (store (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@28) o_5@@2 f_10@@2 v@@7) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7364) (o_5@@3 T@Ref) (f_10@@3 T@Field_14521_53) (v@@8 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@29) (store (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@29) o_5@@3 f_10@@3 v@@8) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@29) (store (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@29) o_5@@3 f_10@@3 v@@8) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@29) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7364) (o_5@@4 T@Ref) (f_10@@4 T@Field_4786_18478) (v@@9 T@PolymorphicMapType_7913) ) (! (succHeap Heap@@30 (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@30) (store (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@30) o_5@@4 f_10@@4 v@@9) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@30) (store (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@30) o_5@@4 f_10@@4 v@@9) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@30) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7364) (o_5@@5 T@Ref) (f_10@@5 T@Field_4786_14522) (v@@10 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@31) (store (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@31) o_5@@5 f_10@@5 v@@10) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@31) (store (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@31) o_5@@5 f_10@@5 v@@10) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@31) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7364) (o_5@@6 T@Ref) (f_10@@6 T@Field_13452_13457) (v@@11 T@Seq_13455) ) (! (succHeap Heap@@32 (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@32) (store (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@32) o_5@@6 f_10@@6 v@@11) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@32) (store (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@32) o_5@@6 f_10@@6 v@@11) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@32) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7364) (o_5@@7 T@Ref) (f_10@@7 T@Field_7437_7438) (v@@12 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@33) (store (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@33) o_5@@7 f_10@@7 v@@12) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7364 (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@33) (store (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@33) o_5@@7 f_10@@7 v@@12) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@33) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7364) (o_5@@8 T@Ref) (f_10@@8 T@Field_7424_53) (v@@13 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_7364 (store (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@34) o_5@@8 f_10@@8 v@@13) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7364 (store (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@34) o_5@@8 f_10@@8 v@@13) (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_4786_13771#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_4838_4839#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_4786_14522#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_4786_20193#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_14521_15164#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_14521_53#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_14521_7438#PolymorphicMapType_7364| Heap@@34) (|PolymorphicMapType_7364_14521_21362#PolymorphicMapType_7364| Heap@@34)))
)))
(assert (forall ((r_1@@4 T@Ref) ) (! (= (PredicateMaskField_4838 (ExtensionHeader_State r_1@@4)) (|ExtensionHeader_State#sm| r_1@@4))
 :qid |stdinbpl.774:15|
 :skolemid |75|
 :pattern ( (PredicateMaskField_4838 (ExtensionHeader_State r_1@@4)))
)))
(assert (forall ((s@@25 T@Seq_13455) (t@@9 T@Seq_13455) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_4787| s@@25))) (= (|Seq#Drop_4787| (|Seq#Append_13455| s@@25 t@@9) n@@19) (|Seq#Append_13455| (|Seq#Drop_4787| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.383:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4787| (|Seq#Append_13455| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2915) (t@@10 T@Seq_2915) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2915| s@@26))) (= (|Seq#Drop_2915| (|Seq#Append_2915| s@@26 t@@10) n@@20) (|Seq#Append_2915| (|Seq#Drop_2915| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.383:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2915| (|Seq#Append_2915| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_13455) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_4787| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_4787| (|Seq#Drop_4787| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_4787| s@@27 i@@7))))
 :qid |stdinbpl.319:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4787| s@@27 n@@21) (|Seq#Index_4787| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2915) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2915| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2915| (|Seq#Drop_2915| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2915| s@@28 i@@8))))
 :qid |stdinbpl.319:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2915| s@@28 n@@22) (|Seq#Index_2915| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_13455) (s1@@7 T@Seq_13455) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_4787|)) (not (= s1@@7 |Seq#Empty_4787|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_4787| s0@@7))) (= (|Seq#Index_4787| (|Seq#Append_13455| s0@@7 s1@@7) n@@23) (|Seq#Index_4787| s0@@7 n@@23)))
 :qid |stdinbpl.259:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_4787| (|Seq#Append_13455| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_4787| s0@@7 n@@23) (|Seq#Append_13455| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2915) (s1@@8 T@Seq_2915) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2915|)) (not (= s1@@8 |Seq#Empty_2915|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2915| s0@@8))) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@8 s1@@8) n@@24) (|Seq#Index_2915| s0@@8 n@@24)))
 :qid |stdinbpl.259:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2915| (|Seq#Append_2915| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2915| s0@@8 n@@24) (|Seq#Append_2915| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_13455) (s1@@9 T@Seq_13455) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_4787|)) (not (= s1@@9 |Seq#Empty_4787|))) (<= 0 m)) (< m (|Seq#Length_4787| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_4787| s0@@9)) (|Seq#Length_4787| s0@@9)) m) (= (|Seq#Index_4787| (|Seq#Append_13455| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_4787| s0@@9))) (|Seq#Index_4787| s1@@9 m))))
 :qid |stdinbpl.264:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_4787| s1@@9 m) (|Seq#Append_13455| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2915) (s1@@10 T@Seq_2915) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2915|)) (not (= s1@@10 |Seq#Empty_2915|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2915| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2915| s0@@10)) (|Seq#Length_2915| s0@@10)) m@@0) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2915| s0@@10))) (|Seq#Index_2915| s1@@10 m@@0))))
 :qid |stdinbpl.264:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2915| s1@@10 m@@0) (|Seq#Append_2915| s0@@10 s1@@10))
)))
(assert (forall ((o_5@@9 T@Ref) (f_3 T@Field_7437_7438) (Heap@@35 T@PolymorphicMapType_7364) ) (!  (=> (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@35) o_5@@9 $allocated) (select (|PolymorphicMapType_7364_4590_53#PolymorphicMapType_7364| Heap@@35) (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@35) o_5@@9 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7364_4593_4594#PolymorphicMapType_7364| Heap@@35) o_5@@9 f_3))
)))
(assert (forall ((s@@29 T@Seq_13455) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_4787| s@@29))) (= (|Seq#Index_4787| s@@29 i@@9) x@@3)) (|Seq#Contains_4787| s@@29 x@@3))
 :qid |stdinbpl.416:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_4787| s@@29 x@@3) (|Seq#Index_4787| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2915) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2915| s@@30))) (= (|Seq#Index_2915| s@@30 i@@10) x@@4)) (|Seq#Contains_2915| s@@30 x@@4))
 :qid |stdinbpl.416:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2915| s@@30 x@@4) (|Seq#Index_2915| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_13455) (s1@@11 T@Seq_13455) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_13455| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_13455| s0@@11 s1@@11))) (not (= (|Seq#Length_4787| s0@@11) (|Seq#Length_4787| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_13455| s0@@11 s1@@11))) (= (|Seq#Length_4787| s0@@11) (|Seq#Length_4787| s1@@11))) (= (|Seq#SkolemDiff_13455| s0@@11 s1@@11) (|Seq#SkolemDiff_13455| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_13455| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_13455| s0@@11 s1@@11) (|Seq#Length_4787| s0@@11))) (not (= (|Seq#Index_4787| s0@@11 (|Seq#SkolemDiff_13455| s0@@11 s1@@11)) (|Seq#Index_4787| s1@@11 (|Seq#SkolemDiff_13455| s0@@11 s1@@11))))))
 :qid |stdinbpl.520:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_13455| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2915) (s1@@12 T@Seq_2915) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2915| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2915| s0@@12 s1@@12))) (not (= (|Seq#Length_2915| s0@@12) (|Seq#Length_2915| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2915| s0@@12 s1@@12))) (= (|Seq#Length_2915| s0@@12) (|Seq#Length_2915| s1@@12))) (= (|Seq#SkolemDiff_2915| s0@@12 s1@@12) (|Seq#SkolemDiff_2915| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2915| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2915| s0@@12 s1@@12) (|Seq#Length_2915| s0@@12))) (not (= (|Seq#Index_2915| s0@@12 (|Seq#SkolemDiff_2915| s0@@12 s1@@12)) (|Seq#Index_2915| s1@@12 (|Seq#SkolemDiff_2915| s0@@12 s1@@12))))))
 :qid |stdinbpl.520:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2915| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_14521_14522) (v_1@@1 T@FrameType) (q T@Field_14521_14522) (w@@1 T@FrameType) (r T@Field_14521_14522) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14521_14521 p@@2 v_1@@1 q w@@1) (InsidePredicate_14521_14521 q w@@1 r u)) (InsidePredicate_14521_14521 p@@2 v_1@@1 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14521_14521 p@@2 v_1@@1 q w@@1) (InsidePredicate_14521_14521 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14521_14522) (v_1@@2 T@FrameType) (q@@0 T@Field_14521_14522) (w@@2 T@FrameType) (r@@0 T@Field_4786_14522) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14521_14521 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14521_7424 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14521_7424 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14521_14521 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14521_7424 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14521_14522) (v_1@@3 T@FrameType) (q@@1 T@Field_4786_14522) (w@@3 T@FrameType) (r@@1 T@Field_14521_14522) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14521_7424 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7424_14521 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14521_14521 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14521_7424 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7424_14521 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14521_14522) (v_1@@4 T@FrameType) (q@@2 T@Field_4786_14522) (w@@4 T@FrameType) (r@@2 T@Field_4786_14522) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14521_7424 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7424_7424 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14521_7424 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14521_7424 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7424_7424 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4786_14522) (v_1@@5 T@FrameType) (q@@3 T@Field_14521_14522) (w@@5 T@FrameType) (r@@3 T@Field_14521_14522) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7424_14521 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14521_14521 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7424_14521 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7424_14521 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14521_14521 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4786_14522) (v_1@@6 T@FrameType) (q@@4 T@Field_14521_14522) (w@@6 T@FrameType) (r@@4 T@Field_4786_14522) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7424_14521 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14521_7424 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7424_7424 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7424_14521 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14521_7424 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4786_14522) (v_1@@7 T@FrameType) (q@@5 T@Field_4786_14522) (w@@7 T@FrameType) (r@@5 T@Field_14521_14522) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7424_7424 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7424_14521 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7424_14521 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7424_7424 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7424_14521 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4786_14522) (v_1@@8 T@FrameType) (q@@6 T@Field_4786_14522) (w@@8 T@FrameType) (r@@6 T@Field_4786_14522) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7424_7424 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7424_7424 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7424_7424 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7424_7424 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7424_7424 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_13455) ) (!  (=> (= (|Seq#Length_4787| s@@31) 0) (= s@@31 |Seq#Empty_4787|))
 :qid |stdinbpl.223:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_4787| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2915) ) (!  (=> (= (|Seq#Length_2915| s@@32) 0) (= s@@32 |Seq#Empty_2915|))
 :qid |stdinbpl.223:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2915| s@@32))
)))
(assert (forall ((s@@33 T@Seq_13455) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_4787| s@@33 n@@25) |Seq#Empty_4787|))
 :qid |stdinbpl.399:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4787| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2915) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2915| s@@34 n@@26) |Seq#Empty_2915|))
 :qid |stdinbpl.399:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2915| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |ExtensionHeader_State#definedness|)
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
