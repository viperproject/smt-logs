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
(declare-sort T@Field_16731_53 0)
(declare-sort T@Field_16744_16745 0)
(declare-sort T@Field_25623_5254 0)
(declare-sort T@Field_11227_43580 0)
(declare-sort T@Field_11227_43447 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_16692 0)) (((PolymorphicMapType_16692 (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| (Array T@Ref T@Field_25623_5254 Real)) (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| (Array T@Ref T@Field_16731_53 Real)) (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| (Array T@Ref T@Field_16744_16745 Real)) (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| (Array T@Ref T@Field_11227_43447 Real)) (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| (Array T@Ref T@Field_11227_43580 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17220 0)) (((PolymorphicMapType_17220 (|PolymorphicMapType_17220_16731_53#PolymorphicMapType_17220| (Array T@Ref T@Field_16731_53 Bool)) (|PolymorphicMapType_17220_16731_16745#PolymorphicMapType_17220| (Array T@Ref T@Field_16744_16745 Bool)) (|PolymorphicMapType_17220_16731_5254#PolymorphicMapType_17220| (Array T@Ref T@Field_25623_5254 Bool)) (|PolymorphicMapType_17220_16731_43447#PolymorphicMapType_17220| (Array T@Ref T@Field_11227_43447 Bool)) (|PolymorphicMapType_17220_16731_44758#PolymorphicMapType_17220| (Array T@Ref T@Field_11227_43580 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16671 0)) (((PolymorphicMapType_16671 (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| (Array T@Ref T@Field_16731_53 Bool)) (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| (Array T@Ref T@Field_16744_16745 T@Ref)) (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| (Array T@Ref T@Field_25623_5254 Int)) (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| (Array T@Ref T@Field_11227_43580 T@PolymorphicMapType_17220)) (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| (Array T@Ref T@Field_11227_43447 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_16731_53)
(declare-fun f_7 () T@Field_25623_5254)
(declare-sort T@Seq_28173 0)
(declare-fun |Seq#Length_11329| (T@Seq_28173) Int)
(declare-fun |Seq#Drop_11329| (T@Seq_28173 Int) T@Seq_28173)
(declare-sort T@Seq_3131 0)
(declare-fun |Seq#Length_3131| (T@Seq_3131) Int)
(declare-fun |Seq#Drop_3131| (T@Seq_3131 Int) T@Seq_3131)
(declare-fun succHeap (T@PolymorphicMapType_16671 T@PolymorphicMapType_16671) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16671 T@PolymorphicMapType_16671) Bool)
(declare-fun state (T@PolymorphicMapType_16671 T@PolymorphicMapType_16692) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_16692) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_17220)
(declare-fun |fun01'| (T@PolymorphicMapType_16671 (Array T@Ref Bool) T@Ref) Int)
(declare-fun dummyFunction_5678 (Int) Bool)
(declare-fun |fun01#triggerStateless| ((Array T@Ref Bool) T@Ref) Int)
(declare-fun |fun02'| (T@PolymorphicMapType_16671 T@Seq_28173 T@Seq_28173) Bool)
(declare-fun dummyFunction_6870 (Bool) Bool)
(declare-fun |fun02#triggerStateless| (T@Seq_28173 T@Seq_28173) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_11329| (T@Seq_28173 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3131| (T@Seq_3131 Int) Int)
(declare-fun |Seq#Empty_11329| () T@Seq_28173)
(declare-fun |Seq#Empty_3131| () T@Seq_3131)
(declare-fun |Seq#Update_11329| (T@Seq_28173 Int T@Ref) T@Seq_28173)
(declare-fun |Seq#Update_3131| (T@Seq_3131 Int Int) T@Seq_3131)
(declare-fun |Seq#Take_11329| (T@Seq_28173 Int) T@Seq_28173)
(declare-fun |Seq#Take_3131| (T@Seq_3131 Int) T@Seq_3131)
(declare-fun |Seq#Contains_3131| (T@Seq_3131 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3131)
(declare-fun |Seq#Contains_28173| (T@Seq_28173 T@Ref) Bool)
(declare-fun |Seq#Skolem_28173| (T@Seq_28173 T@Ref) Int)
(declare-fun |Seq#Skolem_3131| (T@Seq_3131 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16671 T@PolymorphicMapType_16671 T@PolymorphicMapType_16692) Bool)
(declare-fun IsPredicateField_11227_43538 (T@Field_11227_43447) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11227 (T@Field_11227_43447) T@Field_11227_43580)
(declare-fun HasDirectPerm_11227_43511 (T@PolymorphicMapType_16692 T@Ref T@Field_11227_43447) Bool)
(declare-fun IsWandField_11227_45285 (T@Field_11227_43447) Bool)
(declare-fun WandMaskField_11227 (T@Field_11227_43447) T@Field_11227_43580)
(declare-fun |Seq#Singleton_11329| (T@Ref) T@Seq_28173)
(declare-fun |Seq#Singleton_3131| (Int) T@Seq_3131)
(declare-fun |Seq#Append_28173| (T@Seq_28173 T@Seq_28173) T@Seq_28173)
(declare-fun |Seq#Append_3131| (T@Seq_3131 T@Seq_3131) T@Seq_3131)
(declare-fun dummyHeap () T@PolymorphicMapType_16671)
(declare-fun ZeroMask () T@PolymorphicMapType_16692)
(declare-fun InsidePredicate_16731_16731 (T@Field_11227_43447 T@FrameType T@Field_11227_43447 T@FrameType) Bool)
(declare-fun IsPredicateField_11227_5254 (T@Field_25623_5254) Bool)
(declare-fun IsWandField_11227_5254 (T@Field_25623_5254) Bool)
(declare-fun fun01 (T@PolymorphicMapType_16671 (Array T@Ref Bool) T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11227_48831 (T@Field_11227_43580) Bool)
(declare-fun IsWandField_11227_48847 (T@Field_11227_43580) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11227_16745 (T@Field_16744_16745) Bool)
(declare-fun IsWandField_11227_16745 (T@Field_16744_16745) Bool)
(declare-fun IsPredicateField_11227_53 (T@Field_16731_53) Bool)
(declare-fun IsWandField_11227_53 (T@Field_16731_53) Bool)
(declare-fun HasDirectPerm_11227_49285 (T@PolymorphicMapType_16692 T@Ref T@Field_11227_43580) Bool)
(declare-fun HasDirectPerm_11227_16745 (T@PolymorphicMapType_16692 T@Ref T@Field_16744_16745) Bool)
(declare-fun HasDirectPerm_11227_53 (T@PolymorphicMapType_16692 T@Ref T@Field_16731_53) Bool)
(declare-fun HasDirectPerm_11227_5254 (T@PolymorphicMapType_16692 T@Ref T@Field_25623_5254) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |fun01#frame| (T@FrameType (Array T@Ref Bool) T@Ref) Int)
(declare-fun FrameFragment_5506 (Int) T@FrameType)
(declare-fun |fun01#condqp1| (T@PolymorphicMapType_16671 (Array T@Ref Bool) T@Ref) Int)
(declare-fun sumMask (T@PolymorphicMapType_16692 T@PolymorphicMapType_16692 T@PolymorphicMapType_16692) Bool)
(declare-fun |sk_fun01#condqp1| (Int Int) T@Ref)
(declare-fun |Seq#Equal_28173| (T@Seq_28173 T@Seq_28173) Bool)
(declare-fun |Seq#Equal_3131| (T@Seq_3131 T@Seq_3131) Bool)
(declare-fun |Seq#ContainsTrigger_11329| (T@Seq_28173 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3131| (T@Seq_3131 Int) Bool)
(declare-fun fun02 (T@PolymorphicMapType_16671 T@Seq_28173 T@Seq_28173) Bool)
(declare-fun |fun02#frame| (T@FrameType T@Seq_28173 T@Seq_28173) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun |fun02#condqp2| (T@PolymorphicMapType_16671 T@Seq_28173 T@Seq_28173) Int)
(declare-fun |fun02#condqp3| (T@PolymorphicMapType_16671 T@Seq_28173 T@Seq_28173) Int)
(declare-fun |Seq#SkolemDiff_28173| (T@Seq_28173 T@Seq_28173) Int)
(declare-fun |Seq#SkolemDiff_3131| (T@Seq_3131 T@Seq_3131) Int)
(declare-fun |sk_fun02#condqp2| (Int Int) Int)
(declare-fun |sk_fun02#condqp3| (Int Int) Int)
(assert (forall ((s T@Seq_28173) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_11329| s)) (= (|Seq#Length_11329| (|Seq#Drop_11329| s n)) (- (|Seq#Length_11329| s) n))) (=> (< (|Seq#Length_11329| s) n) (= (|Seq#Length_11329| (|Seq#Drop_11329| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_11329| (|Seq#Drop_11329| s n)) (|Seq#Length_11329| s))))
 :qid |stdinbpl.322:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_11329| (|Seq#Drop_11329| s n)))
 :pattern ( (|Seq#Length_11329| s) (|Seq#Drop_11329| s n))
)))
(assert (forall ((s@@0 T@Seq_3131) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3131| s@@0)) (= (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)) (- (|Seq#Length_3131| s@@0) n@@0))) (=> (< (|Seq#Length_3131| s@@0) n@@0) (= (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)) (|Seq#Length_3131| s@@0))))
 :qid |stdinbpl.322:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3131| s@@0) (|Seq#Drop_3131| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_16671) (Heap1 T@PolymorphicMapType_16671) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_16671) (Mask T@PolymorphicMapType_16692) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16671) (Heap1@@0 T@PolymorphicMapType_16671) (Heap2 T@PolymorphicMapType_16671) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11227_43580) ) (!  (not (select (|PolymorphicMapType_17220_16731_44758#PolymorphicMapType_17220| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17220_16731_44758#PolymorphicMapType_17220| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11227_43447) ) (!  (not (select (|PolymorphicMapType_17220_16731_43447#PolymorphicMapType_17220| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17220_16731_43447#PolymorphicMapType_17220| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_25623_5254) ) (!  (not (select (|PolymorphicMapType_17220_16731_5254#PolymorphicMapType_17220| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17220_16731_5254#PolymorphicMapType_17220| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16744_16745) ) (!  (not (select (|PolymorphicMapType_17220_16731_16745#PolymorphicMapType_17220| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17220_16731_16745#PolymorphicMapType_17220| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16731_53) ) (!  (not (select (|PolymorphicMapType_17220_16731_53#PolymorphicMapType_17220| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17220_16731_53#PolymorphicMapType_17220| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16671) (xs (Array T@Ref Bool)) (y T@Ref) ) (! (dummyFunction_5678 (|fun01#triggerStateless| xs y))
 :qid |stdinbpl.799:15|
 :skolemid |119|
 :pattern ( (|fun01'| Heap@@0 xs y))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16671) (xs@@0 T@Seq_28173) (ys T@Seq_28173) ) (! (dummyFunction_6870 (|fun02#triggerStateless| xs@@0 ys))
 :qid |stdinbpl.929:15|
 :skolemid |132|
 :pattern ( (|fun02'| Heap@@1 xs@@0 ys))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.686:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_28173) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_11329| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_11329| (|Seq#Drop_11329| s@@1 n@@1) j) (|Seq#Index_11329| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.343:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_11329| (|Seq#Drop_11329| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3131) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3131| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3131| (|Seq#Drop_3131| s@@2 n@@2) j@@0) (|Seq#Index_3131| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.343:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3131| (|Seq#Drop_3131| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_11329| |Seq#Empty_11329|) 0))
(assert (= (|Seq#Length_3131| |Seq#Empty_3131|) 0))
(assert (forall ((s@@3 T@Seq_28173) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_11329| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_11329| (|Seq#Update_11329| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_11329| (|Seq#Update_11329| s@@3 i v) n@@3) (|Seq#Index_11329| s@@3 n@@3)))))
 :qid |stdinbpl.298:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_11329| (|Seq#Update_11329| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_11329| s@@3 n@@3) (|Seq#Update_11329| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3131) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3131| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3131| (|Seq#Update_3131| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3131| (|Seq#Update_3131| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3131| s@@4 n@@4)))))
 :qid |stdinbpl.298:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3131| (|Seq#Update_3131| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3131| s@@4 n@@4) (|Seq#Update_3131| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_28173) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_11329| s@@5)) (= (|Seq#Length_11329| (|Seq#Take_11329| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_11329| s@@5) n@@5) (= (|Seq#Length_11329| (|Seq#Take_11329| s@@5 n@@5)) (|Seq#Length_11329| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_11329| (|Seq#Take_11329| s@@5 n@@5)) 0)))
 :qid |stdinbpl.309:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_11329| (|Seq#Take_11329| s@@5 n@@5)))
 :pattern ( (|Seq#Take_11329| s@@5 n@@5) (|Seq#Length_11329| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3131) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3131| s@@6)) (= (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3131| s@@6) n@@6) (= (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)) (|Seq#Length_3131| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)) 0)))
 :qid |stdinbpl.309:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3131| s@@6 n@@6) (|Seq#Length_3131| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3131| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.583:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3131| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_28173) (x T@Ref) ) (!  (=> (|Seq#Contains_28173| s@@7 x) (and (and (<= 0 (|Seq#Skolem_28173| s@@7 x)) (< (|Seq#Skolem_28173| s@@7 x) (|Seq#Length_11329| s@@7))) (= (|Seq#Index_11329| s@@7 (|Seq#Skolem_28173| s@@7 x)) x)))
 :qid |stdinbpl.441:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_28173| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3131) (x@@0 Int) ) (!  (=> (|Seq#Contains_3131| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3131| s@@8 x@@0)) (< (|Seq#Skolem_3131| s@@8 x@@0) (|Seq#Length_3131| s@@8))) (= (|Seq#Index_3131| s@@8 (|Seq#Skolem_3131| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.441:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3131| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_28173) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_11329| s@@9 n@@7) s@@9))
 :qid |stdinbpl.425:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_11329| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3131) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3131| s@@10 n@@8) s@@10))
 :qid |stdinbpl.425:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3131| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.278:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.276:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.689:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16671) (ExhaleHeap T@PolymorphicMapType_16671) (Mask@@0 T@PolymorphicMapType_16692) (pm_f_4 T@Field_11227_43447) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11227_43511 Mask@@0 null pm_f_4) (IsPredicateField_11227_43538 pm_f_4)) (= (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@2) null (PredicateMaskField_11227 pm_f_4)) (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| ExhaleHeap) null (PredicateMaskField_11227 pm_f_4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_11227_43538 pm_f_4) (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| ExhaleHeap) null (PredicateMaskField_11227 pm_f_4)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16671) (ExhaleHeap@@0 T@PolymorphicMapType_16671) (Mask@@1 T@PolymorphicMapType_16692) (pm_f_4@@0 T@Field_11227_43447) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11227_43511 Mask@@1 null pm_f_4@@0) (IsWandField_11227_45285 pm_f_4@@0)) (= (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@3) null (WandMaskField_11227 pm_f_4@@0)) (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| ExhaleHeap@@0) null (WandMaskField_11227 pm_f_4@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_11227_45285 pm_f_4@@0) (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| ExhaleHeap@@0) null (WandMaskField_11227 pm_f_4@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y@@0 T@Ref) ) (! (= (|Seq#Contains_28173| (|Seq#Singleton_11329| x@@1) y@@0) (= x@@1 y@@0))
 :qid |stdinbpl.566:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_28173| (|Seq#Singleton_11329| x@@1) y@@0))
)))
(assert (forall ((x@@2 Int) (y@@1 Int) ) (! (= (|Seq#Contains_3131| (|Seq#Singleton_3131| x@@2) y@@1) (= x@@2 y@@1))
 :qid |stdinbpl.566:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3131| (|Seq#Singleton_3131| x@@2) y@@1))
)))
(assert (forall ((s@@11 T@Seq_28173) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_11329| s@@11))) (= (|Seq#Index_11329| (|Seq#Take_11329| s@@11 n@@9) j@@3) (|Seq#Index_11329| s@@11 j@@3)))
 :qid |stdinbpl.317:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_11329| (|Seq#Take_11329| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_11329| s@@11 j@@3) (|Seq#Take_11329| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3131) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3131| s@@12))) (= (|Seq#Index_3131| (|Seq#Take_3131| s@@12 n@@10) j@@4) (|Seq#Index_3131| s@@12 j@@4)))
 :qid |stdinbpl.317:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3131| (|Seq#Take_3131| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3131| s@@12 j@@4) (|Seq#Take_3131| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_28173) (t T@Seq_28173) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_11329| s@@13))) (< n@@11 (|Seq#Length_11329| (|Seq#Append_28173| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_11329| s@@13)) (|Seq#Length_11329| s@@13)) n@@11) (= (|Seq#Take_11329| (|Seq#Append_28173| s@@13 t) n@@11) (|Seq#Append_28173| s@@13 (|Seq#Take_11329| t (|Seq#Sub| n@@11 (|Seq#Length_11329| s@@13)))))))
 :qid |stdinbpl.402:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_11329| (|Seq#Append_28173| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3131) (t@@0 T@Seq_3131) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3131| s@@14))) (< n@@12 (|Seq#Length_3131| (|Seq#Append_3131| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3131| s@@14)) (|Seq#Length_3131| s@@14)) n@@12) (= (|Seq#Take_3131| (|Seq#Append_3131| s@@14 t@@0) n@@12) (|Seq#Append_3131| s@@14 (|Seq#Take_3131| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3131| s@@14)))))))
 :qid |stdinbpl.402:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3131| (|Seq#Append_3131| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16671) (ExhaleHeap@@1 T@PolymorphicMapType_16671) (Mask@@2 T@PolymorphicMapType_16692) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@4) o_13 $allocated) (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| ExhaleHeap@@1) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| ExhaleHeap@@1) o_13 $allocated))
)))
(assert (forall ((p T@Field_11227_43447) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16731_16731 p v_1 p w))
 :qid |stdinbpl.220:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16731_16731 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_28173) (s1 T@Seq_28173) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_11329|)) (not (= s1 |Seq#Empty_11329|))) (<= (|Seq#Length_11329| s0) n@@13)) (< n@@13 (|Seq#Length_11329| (|Seq#Append_28173| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_11329| s0)) (|Seq#Length_11329| s0)) n@@13) (= (|Seq#Index_11329| (|Seq#Append_28173| s0 s1) n@@13) (|Seq#Index_11329| s1 (|Seq#Sub| n@@13 (|Seq#Length_11329| s0))))))
 :qid |stdinbpl.289:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_11329| (|Seq#Append_28173| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3131) (s1@@0 T@Seq_3131) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3131|)) (not (= s1@@0 |Seq#Empty_3131|))) (<= (|Seq#Length_3131| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3131| (|Seq#Append_3131| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3131| s0@@0)) (|Seq#Length_3131| s0@@0)) n@@14) (= (|Seq#Index_3131| (|Seq#Append_3131| s0@@0 s1@@0) n@@14) (|Seq#Index_3131| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3131| s0@@0))))))
 :qid |stdinbpl.289:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3131| (|Seq#Append_3131| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_11227_5254 f_7)))
(assert  (not (IsWandField_11227_5254 f_7)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16671) (ExhaleHeap@@2 T@PolymorphicMapType_16671) (Mask@@3 T@PolymorphicMapType_16692) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16671) (Mask@@4 T@PolymorphicMapType_16692) (xs@@1 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (and (forall ((x_1 T@Ref) ) (!  (=> (select xs@@1 x_1) (> (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@6) x_1 f_7) 0))
 :qid |stdinbpl.807:61|
 :skolemid |120|
 :pattern ( (select xs@@1 x_1))
)) (select xs@@1 y@@2)) (= (fun01 Heap@@6 xs@@1 y@@2) (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@6) y@@2 f_7))))
 :qid |stdinbpl.805:15|
 :skolemid |121|
 :pattern ( (state Heap@@6 Mask@@4) (fun01 Heap@@6 xs@@1 y@@2))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_16692) (o_2@@4 T@Ref) (f_4@@4 T@Field_11227_43580) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_11227_48831 f_4@@4))) (not (IsWandField_11227_48847 f_4@@4))) (<= (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_16692) (o_2@@5 T@Ref) (f_4@@5 T@Field_11227_43447) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_11227_43538 f_4@@5))) (not (IsWandField_11227_45285 f_4@@5))) (<= (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_16692) (o_2@@6 T@Ref) (f_4@@6 T@Field_16744_16745) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11227_16745 f_4@@6))) (not (IsWandField_11227_16745 f_4@@6))) (<= (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_16692) (o_2@@7 T@Ref) (f_4@@7 T@Field_16731_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11227_53 f_4@@7))) (not (IsWandField_11227_53 f_4@@7))) (<= (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_16692) (o_2@@8 T@Ref) (f_4@@8 T@Field_25623_5254) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_11227_5254 f_4@@8))) (not (IsWandField_11227_5254 f_4@@8))) (<= (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_16692) (o_2@@9 T@Ref) (f_4@@9 T@Field_11227_43580) ) (! (= (HasDirectPerm_11227_49285 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11227_49285 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_16692) (o_2@@10 T@Ref) (f_4@@10 T@Field_11227_43447) ) (! (= (HasDirectPerm_11227_43511 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11227_43511 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_16692) (o_2@@11 T@Ref) (f_4@@11 T@Field_16744_16745) ) (! (= (HasDirectPerm_11227_16745 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11227_16745 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_16692) (o_2@@12 T@Ref) (f_4@@12 T@Field_16731_53) ) (! (= (HasDirectPerm_11227_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11227_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_16692) (o_2@@13 T@Ref) (f_4@@13 T@Field_25623_5254) ) (! (= (HasDirectPerm_11227_5254 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11227_5254 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16671) (ExhaleHeap@@3 T@PolymorphicMapType_16671) (Mask@@15 T@PolymorphicMapType_16692) (pm_f_4@@1 T@Field_11227_43447) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_11227_43511 Mask@@15 null pm_f_4@@1) (IsPredicateField_11227_43538 pm_f_4@@1)) (and (and (and (and (forall ((o2_4 T@Ref) (f_20 T@Field_16731_53) ) (!  (=> (select (|PolymorphicMapType_17220_16731_53#PolymorphicMapType_17220| (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@7) null (PredicateMaskField_11227 pm_f_4@@1))) o2_4 f_20) (= (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@7) o2_4 f_20) (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| ExhaleHeap@@3) o2_4 f_20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| ExhaleHeap@@3) o2_4 f_20))
)) (forall ((o2_4@@0 T@Ref) (f_20@@0 T@Field_16744_16745) ) (!  (=> (select (|PolymorphicMapType_17220_16731_16745#PolymorphicMapType_17220| (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@7) null (PredicateMaskField_11227 pm_f_4@@1))) o2_4@@0 f_20@@0) (= (select (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@7) o2_4@@0 f_20@@0) (select (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| ExhaleHeap@@3) o2_4@@0 f_20@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| ExhaleHeap@@3) o2_4@@0 f_20@@0))
))) (forall ((o2_4@@1 T@Ref) (f_20@@1 T@Field_25623_5254) ) (!  (=> (select (|PolymorphicMapType_17220_16731_5254#PolymorphicMapType_17220| (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@7) null (PredicateMaskField_11227 pm_f_4@@1))) o2_4@@1 f_20@@1) (= (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@7) o2_4@@1 f_20@@1) (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| ExhaleHeap@@3) o2_4@@1 f_20@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| ExhaleHeap@@3) o2_4@@1 f_20@@1))
))) (forall ((o2_4@@2 T@Ref) (f_20@@2 T@Field_11227_43447) ) (!  (=> (select (|PolymorphicMapType_17220_16731_43447#PolymorphicMapType_17220| (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@7) null (PredicateMaskField_11227 pm_f_4@@1))) o2_4@@2 f_20@@2) (= (select (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@7) o2_4@@2 f_20@@2) (select (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| ExhaleHeap@@3) o2_4@@2 f_20@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| ExhaleHeap@@3) o2_4@@2 f_20@@2))
))) (forall ((o2_4@@3 T@Ref) (f_20@@3 T@Field_11227_43580) ) (!  (=> (select (|PolymorphicMapType_17220_16731_44758#PolymorphicMapType_17220| (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@7) null (PredicateMaskField_11227 pm_f_4@@1))) o2_4@@3 f_20@@3) (= (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@7) o2_4@@3 f_20@@3) (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| ExhaleHeap@@3) o2_4@@3 f_20@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| ExhaleHeap@@3) o2_4@@3 f_20@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (IsPredicateField_11227_43538 pm_f_4@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16671) (ExhaleHeap@@4 T@PolymorphicMapType_16671) (Mask@@16 T@PolymorphicMapType_16692) (pm_f_4@@2 T@Field_11227_43447) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_11227_43511 Mask@@16 null pm_f_4@@2) (IsWandField_11227_45285 pm_f_4@@2)) (and (and (and (and (forall ((o2_4@@4 T@Ref) (f_20@@4 T@Field_16731_53) ) (!  (=> (select (|PolymorphicMapType_17220_16731_53#PolymorphicMapType_17220| (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@8) null (WandMaskField_11227 pm_f_4@@2))) o2_4@@4 f_20@@4) (= (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@8) o2_4@@4 f_20@@4) (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| ExhaleHeap@@4) o2_4@@4 f_20@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| ExhaleHeap@@4) o2_4@@4 f_20@@4))
)) (forall ((o2_4@@5 T@Ref) (f_20@@5 T@Field_16744_16745) ) (!  (=> (select (|PolymorphicMapType_17220_16731_16745#PolymorphicMapType_17220| (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@8) null (WandMaskField_11227 pm_f_4@@2))) o2_4@@5 f_20@@5) (= (select (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@8) o2_4@@5 f_20@@5) (select (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| ExhaleHeap@@4) o2_4@@5 f_20@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| ExhaleHeap@@4) o2_4@@5 f_20@@5))
))) (forall ((o2_4@@6 T@Ref) (f_20@@6 T@Field_25623_5254) ) (!  (=> (select (|PolymorphicMapType_17220_16731_5254#PolymorphicMapType_17220| (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@8) null (WandMaskField_11227 pm_f_4@@2))) o2_4@@6 f_20@@6) (= (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@8) o2_4@@6 f_20@@6) (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| ExhaleHeap@@4) o2_4@@6 f_20@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| ExhaleHeap@@4) o2_4@@6 f_20@@6))
))) (forall ((o2_4@@7 T@Ref) (f_20@@7 T@Field_11227_43447) ) (!  (=> (select (|PolymorphicMapType_17220_16731_43447#PolymorphicMapType_17220| (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@8) null (WandMaskField_11227 pm_f_4@@2))) o2_4@@7 f_20@@7) (= (select (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@8) o2_4@@7 f_20@@7) (select (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| ExhaleHeap@@4) o2_4@@7 f_20@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| ExhaleHeap@@4) o2_4@@7 f_20@@7))
))) (forall ((o2_4@@8 T@Ref) (f_20@@8 T@Field_11227_43580) ) (!  (=> (select (|PolymorphicMapType_17220_16731_44758#PolymorphicMapType_17220| (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@8) null (WandMaskField_11227 pm_f_4@@2))) o2_4@@8 f_20@@8) (= (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@8) o2_4@@8 f_20@@8) (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| ExhaleHeap@@4) o2_4@@8 f_20@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| ExhaleHeap@@4) o2_4@@8 f_20@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (IsWandField_11227_45285 pm_f_4@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.208:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3131| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.581:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3131| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16671) (ExhaleHeap@@5 T@PolymorphicMapType_16671) (Mask@@17 T@PolymorphicMapType_16692) (o_13@@0 T@Ref) (f_20@@9 T@Field_11227_43580) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_11227_49285 Mask@@17 o_13@@0 f_20@@9) (= (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@9) o_13@@0 f_20@@9) (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| ExhaleHeap@@5) o_13@@0 f_20@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| ExhaleHeap@@5) o_13@@0 f_20@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16671) (ExhaleHeap@@6 T@PolymorphicMapType_16671) (Mask@@18 T@PolymorphicMapType_16692) (o_13@@1 T@Ref) (f_20@@10 T@Field_11227_43447) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_11227_43511 Mask@@18 o_13@@1 f_20@@10) (= (select (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@10) o_13@@1 f_20@@10) (select (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| ExhaleHeap@@6) o_13@@1 f_20@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| ExhaleHeap@@6) o_13@@1 f_20@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16671) (ExhaleHeap@@7 T@PolymorphicMapType_16671) (Mask@@19 T@PolymorphicMapType_16692) (o_13@@2 T@Ref) (f_20@@11 T@Field_16744_16745) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_11227_16745 Mask@@19 o_13@@2 f_20@@11) (= (select (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@11) o_13@@2 f_20@@11) (select (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| ExhaleHeap@@7) o_13@@2 f_20@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| ExhaleHeap@@7) o_13@@2 f_20@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16671) (ExhaleHeap@@8 T@PolymorphicMapType_16671) (Mask@@20 T@PolymorphicMapType_16692) (o_13@@3 T@Ref) (f_20@@12 T@Field_16731_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_11227_53 Mask@@20 o_13@@3 f_20@@12) (= (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@12) o_13@@3 f_20@@12) (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| ExhaleHeap@@8) o_13@@3 f_20@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| ExhaleHeap@@8) o_13@@3 f_20@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16671) (ExhaleHeap@@9 T@PolymorphicMapType_16671) (Mask@@21 T@PolymorphicMapType_16692) (o_13@@4 T@Ref) (f_20@@13 T@Field_25623_5254) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_11227_5254 Mask@@21 o_13@@4 f_20@@13) (= (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@13) o_13@@4 f_20@@13) (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| ExhaleHeap@@9) o_13@@4 f_20@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| ExhaleHeap@@9) o_13@@4 f_20@@13))
)))
(assert (forall ((s0@@1 T@Seq_28173) (s1@@1 T@Seq_28173) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_11329|)) (not (= s1@@1 |Seq#Empty_11329|))) (= (|Seq#Length_11329| (|Seq#Append_28173| s0@@1 s1@@1)) (+ (|Seq#Length_11329| s0@@1) (|Seq#Length_11329| s1@@1))))
 :qid |stdinbpl.258:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_11329| (|Seq#Append_28173| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3131) (s1@@2 T@Seq_3131) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3131|)) (not (= s1@@2 |Seq#Empty_3131|))) (= (|Seq#Length_3131| (|Seq#Append_3131| s0@@2 s1@@2)) (+ (|Seq#Length_3131| s0@@2) (|Seq#Length_3131| s1@@2))))
 :qid |stdinbpl.258:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3131| (|Seq#Append_3131| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11227_43580) ) (! (= (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_11227_43447) ) (! (= (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_16744_16745) ) (! (= (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_16731_53) ) (! (= (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_25623_5254) ) (! (= (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_28173) (t@@1 T@Seq_28173) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_11329| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_11329| s@@15)) (|Seq#Length_11329| s@@15)) n@@15) (= (|Seq#Drop_11329| (|Seq#Append_28173| s@@15 t@@1) n@@15) (|Seq#Drop_11329| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_11329| s@@15))))))
 :qid |stdinbpl.415:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_11329| (|Seq#Append_28173| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3131) (t@@2 T@Seq_3131) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3131| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3131| s@@16)) (|Seq#Length_3131| s@@16)) n@@16) (= (|Seq#Drop_3131| (|Seq#Append_3131| s@@16 t@@2) n@@16) (|Seq#Drop_3131| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3131| s@@16))))))
 :qid |stdinbpl.415:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3131| (|Seq#Append_3131| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16671) (xs@@2 (Array T@Ref Bool)) (y@@3 T@Ref) ) (!  (and (= (fun01 Heap@@14 xs@@2 y@@3) (|fun01'| Heap@@14 xs@@2 y@@3)) (dummyFunction_5678 (|fun01#triggerStateless| xs@@2 y@@3)))
 :qid |stdinbpl.795:15|
 :skolemid |118|
 :pattern ( (fun01 Heap@@14 xs@@2 y@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16671) (Mask@@22 T@PolymorphicMapType_16692) (xs@@3 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (state Heap@@15 Mask@@22) (= (|fun01'| Heap@@15 xs@@3 y@@4) (|fun01#frame| (FrameFragment_5506 (|fun01#condqp1| Heap@@15 xs@@3 y@@4)) xs@@3 y@@4)))
 :qid |stdinbpl.815:15|
 :skolemid |122|
 :pattern ( (state Heap@@15 Mask@@22) (|fun01'| Heap@@15 xs@@3 y@@4))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_16692) (SummandMask1 T@PolymorphicMapType_16692) (SummandMask2 T@PolymorphicMapType_16692) (o_2@@19 T@Ref) (f_4@@19 T@Field_11227_43580) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_16692) (SummandMask1@@0 T@PolymorphicMapType_16692) (SummandMask2@@0 T@PolymorphicMapType_16692) (o_2@@20 T@Ref) (f_4@@20 T@Field_11227_43447) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_16692) (SummandMask1@@1 T@PolymorphicMapType_16692) (SummandMask2@@1 T@PolymorphicMapType_16692) (o_2@@21 T@Ref) (f_4@@21 T@Field_16744_16745) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_16692) (SummandMask1@@2 T@PolymorphicMapType_16692) (SummandMask2@@2 T@PolymorphicMapType_16692) (o_2@@22 T@Ref) (f_4@@22 T@Field_16731_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_16692) (SummandMask1@@3 T@PolymorphicMapType_16692) (SummandMask2@@3 T@PolymorphicMapType_16692) (o_2@@23 T@Ref) (f_4@@23 T@Field_25623_5254) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3131| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3131| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.580:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3131| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_16671) (Heap1Heap T@PolymorphicMapType_16671) (xs@@4 (Array T@Ref Bool)) (y@@5 T@Ref) ) (!  (=> (and (=  (and (select xs@@4 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap xs@@4 y@@5) (|fun01#condqp1| Heap1Heap xs@@4 y@@5))) (< NoPerm FullPerm))  (and (select xs@@4 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap xs@@4 y@@5) (|fun01#condqp1| Heap1Heap xs@@4 y@@5))) (< NoPerm FullPerm))) (=> (and (select xs@@4 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap xs@@4 y@@5) (|fun01#condqp1| Heap1Heap xs@@4 y@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap2Heap) (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap xs@@4 y@@5) (|fun01#condqp1| Heap1Heap xs@@4 y@@5)) f_7) (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap1Heap) (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap xs@@4 y@@5) (|fun01#condqp1| Heap1Heap xs@@4 y@@5)) f_7)))) (= (|fun01#condqp1| Heap2Heap xs@@4 y@@5) (|fun01#condqp1| Heap1Heap xs@@4 y@@5)))
 :qid |stdinbpl.825:15|
 :skolemid |123|
 :pattern ( (|fun01#condqp1| Heap2Heap xs@@4 y@@5) (|fun01#condqp1| Heap1Heap xs@@4 y@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@1 T@Seq_28173) (b@@0 T@Seq_28173) ) (!  (=> (|Seq#Equal_28173| a@@1 b@@0) (= a@@1 b@@0))
 :qid |stdinbpl.553:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_28173| a@@1 b@@0))
)))
(assert (forall ((a@@2 T@Seq_3131) (b@@1 T@Seq_3131) ) (!  (=> (|Seq#Equal_3131| a@@2 b@@1) (= a@@2 b@@1))
 :qid |stdinbpl.553:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3131| a@@2 b@@1))
)))
(assert (forall ((s@@17 T@Seq_28173) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_11329| s@@17))) (|Seq#ContainsTrigger_11329| s@@17 (|Seq#Index_11329| s@@17 i@@3)))
 :qid |stdinbpl.446:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_11329| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3131) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3131| s@@18))) (|Seq#ContainsTrigger_3131| s@@18 (|Seq#Index_3131| s@@18 i@@4)))
 :qid |stdinbpl.446:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3131| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_28173) (s1@@3 T@Seq_28173) ) (!  (and (=> (= s0@@3 |Seq#Empty_11329|) (= (|Seq#Append_28173| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_11329|) (= (|Seq#Append_28173| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.264:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_28173| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3131) (s1@@4 T@Seq_3131) ) (!  (and (=> (= s0@@4 |Seq#Empty_3131|) (= (|Seq#Append_3131| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3131|) (= (|Seq#Append_3131| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.264:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3131| s0@@4 s1@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_16671) (Mask@@23 T@PolymorphicMapType_16692) (xs@@5 T@Seq_28173) (ys@@0 T@Seq_28173) ) (!  (=> (and (state Heap@@16 Mask@@23) (< AssumeFunctionsAbove 0)) (=> (and (and (forall ((i@@5 Int) (j@@6 Int) ) (!  (=> (and (>= i@@5 0) (and (< i@@5 (|Seq#Length_11329| xs@@5)) (and (>= j@@6 0) (and (< j@@6 (|Seq#Length_11329| xs@@5)) (not (= i@@5 j@@6)))))) (not (= (|Seq#Index_11329| xs@@5 i@@5) (|Seq#Index_11329| xs@@5 j@@6))))
 :qid |stdinbpl.937:62|
 :skolemid |133|
 :pattern ( (|Seq#Index_11329| xs@@5 i@@5) (|Seq#Index_11329| xs@@5 j@@6))
)) (forall ((i_2 Int) (j_1 Int) ) (!  (=> (and (>= i_2 0) (and (< i_2 (|Seq#Length_11329| ys@@0)) (and (>= j_1 0) (and (< j_1 (|Seq#Length_11329| ys@@0)) (not (= i_2 j_1)))))) (not (= (|Seq#Index_11329| ys@@0 i_2) (|Seq#Index_11329| ys@@0 j_1))))
 :qid |stdinbpl.940:16|
 :skolemid |134|
 :pattern ( (|Seq#Index_11329| ys@@0 i_2) (|Seq#Index_11329| ys@@0 j_1))
))) (and (< 10 (|Seq#Length_11329| xs@@5)) (= (|Seq#Length_11329| xs@@5) (|Seq#Length_11329| ys@@0)))) (= (fun02 Heap@@16 xs@@5 ys@@0) (= (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@16) (|Seq#Index_11329| xs@@5 0) f_7) (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@16) (|Seq#Index_11329| ys@@0 0) f_7)))))
 :qid |stdinbpl.935:15|
 :skolemid |135|
 :pattern ( (state Heap@@16 Mask@@23) (fun02 Heap@@16 xs@@5 ys@@0))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_11329| (|Seq#Singleton_11329| t@@3) 0) t@@3)
 :qid |stdinbpl.268:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_11329| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3131| (|Seq#Singleton_3131| t@@4) 0) t@@4)
 :qid |stdinbpl.268:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3131| t@@4))
)))
(assert (forall ((s@@19 T@Seq_28173) ) (! (<= 0 (|Seq#Length_11329| s@@19))
 :qid |stdinbpl.247:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_11329| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3131) ) (! (<= 0 (|Seq#Length_3131| s@@20))
 :qid |stdinbpl.247:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3131| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_28173) (s1@@5 T@Seq_28173) ) (!  (=> (|Seq#Equal_28173| s0@@5 s1@@5) (and (= (|Seq#Length_11329| s0@@5) (|Seq#Length_11329| s1@@5)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_11329| s0@@5))) (= (|Seq#Index_11329| s0@@5 j@@7) (|Seq#Index_11329| s1@@5 j@@7)))
 :qid |stdinbpl.543:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_11329| s0@@5 j@@7))
 :pattern ( (|Seq#Index_11329| s1@@5 j@@7))
))))
 :qid |stdinbpl.540:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_28173| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3131) (s1@@6 T@Seq_3131) ) (!  (=> (|Seq#Equal_3131| s0@@6 s1@@6) (and (= (|Seq#Length_3131| s0@@6) (|Seq#Length_3131| s1@@6)) (forall ((j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_3131| s0@@6))) (= (|Seq#Index_3131| s0@@6 j@@8) (|Seq#Index_3131| s1@@6 j@@8)))
 :qid |stdinbpl.543:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3131| s0@@6 j@@8))
 :pattern ( (|Seq#Index_3131| s1@@6 j@@8))
))))
 :qid |stdinbpl.540:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3131| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_11329| (|Seq#Singleton_11329| t@@5)) 1)
 :qid |stdinbpl.255:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_11329| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3131| (|Seq#Singleton_3131| t@@6)) 1)
 :qid |stdinbpl.255:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3131| t@@6))
)))
(assert (forall ((s@@21 T@Seq_28173) (t@@7 T@Seq_28173) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_11329| s@@21))) (= (|Seq#Take_11329| (|Seq#Append_28173| s@@21 t@@7) n@@17) (|Seq#Take_11329| s@@21 n@@17)))
 :qid |stdinbpl.397:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_11329| (|Seq#Append_28173| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3131) (t@@8 T@Seq_3131) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3131| s@@22))) (= (|Seq#Take_3131| (|Seq#Append_3131| s@@22 t@@8) n@@18) (|Seq#Take_3131| s@@22 n@@18)))
 :qid |stdinbpl.397:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3131| (|Seq#Append_3131| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_28173) (i@@6 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_11329| s@@23))) (= (|Seq#Length_11329| (|Seq#Update_11329| s@@23 i@@6 v@@2)) (|Seq#Length_11329| s@@23)))
 :qid |stdinbpl.296:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_11329| (|Seq#Update_11329| s@@23 i@@6 v@@2)))
 :pattern ( (|Seq#Length_11329| s@@23) (|Seq#Update_11329| s@@23 i@@6 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3131) (i@@7 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_3131| s@@24))) (= (|Seq#Length_3131| (|Seq#Update_3131| s@@24 i@@7 v@@3)) (|Seq#Length_3131| s@@24)))
 :qid |stdinbpl.296:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3131| (|Seq#Update_3131| s@@24 i@@7 v@@3)))
 :pattern ( (|Seq#Length_3131| s@@24) (|Seq#Update_3131| s@@24 i@@7 v@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_16671) (o_12 T@Ref) (f_21 T@Field_11227_43447) (v@@4 T@FrameType) ) (! (succHeap Heap@@17 (PolymorphicMapType_16671 (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@17) (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@17) (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@17) (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@17) (store (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@17) o_12 f_21 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16671 (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@17) (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@17) (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@17) (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@17) (store (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@17) o_12 f_21 v@@4)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_16671) (o_12@@0 T@Ref) (f_21@@0 T@Field_11227_43580) (v@@5 T@PolymorphicMapType_17220) ) (! (succHeap Heap@@18 (PolymorphicMapType_16671 (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@18) (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@18) (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@18) (store (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@18) o_12@@0 f_21@@0 v@@5) (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16671 (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@18) (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@18) (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@18) (store (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@18) o_12@@0 f_21@@0 v@@5) (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_16671) (o_12@@1 T@Ref) (f_21@@1 T@Field_25623_5254) (v@@6 Int) ) (! (succHeap Heap@@19 (PolymorphicMapType_16671 (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@19) (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@19) (store (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@19) o_12@@1 f_21@@1 v@@6) (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@19) (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16671 (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@19) (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@19) (store (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@19) o_12@@1 f_21@@1 v@@6) (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@19) (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_16671) (o_12@@2 T@Ref) (f_21@@2 T@Field_16744_16745) (v@@7 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_16671 (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@20) (store (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@20) o_12@@2 f_21@@2 v@@7) (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@20) (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@20) (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16671 (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@20) (store (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@20) o_12@@2 f_21@@2 v@@7) (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@20) (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@20) (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_16671) (o_12@@3 T@Ref) (f_21@@3 T@Field_16731_53) (v@@8 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_16671 (store (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@21) o_12@@3 f_21@@3 v@@8) (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@21) (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@21) (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@21) (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16671 (store (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@21) o_12@@3 f_21@@3 v@@8) (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@21) (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap@@21) (|PolymorphicMapType_16671_11227_43624#PolymorphicMapType_16671| Heap@@21) (|PolymorphicMapType_16671_16731_43447#PolymorphicMapType_16671| Heap@@21)))
)))
(assert (forall ((s@@25 T@Seq_28173) (t@@9 T@Seq_28173) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_11329| s@@25))) (= (|Seq#Drop_11329| (|Seq#Append_28173| s@@25 t@@9) n@@19) (|Seq#Append_28173| (|Seq#Drop_11329| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.411:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_11329| (|Seq#Append_28173| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3131) (t@@10 T@Seq_3131) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3131| s@@26))) (= (|Seq#Drop_3131| (|Seq#Append_3131| s@@26 t@@10) n@@20) (|Seq#Append_3131| (|Seq#Drop_3131| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.411:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3131| (|Seq#Append_3131| s@@26 t@@10) n@@20))
)))
(assert (forall ((a@@3 Int) (b@@2 Int) ) (! (= (<= a@@3 b@@2) (= (|Math#min| a@@3 b@@2) a@@3))
 :qid |stdinbpl.684:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@3 b@@2))
)))
(assert (forall ((a@@4 Int) (b@@3 Int) ) (! (= (<= b@@3 a@@4) (= (|Math#min| a@@4 b@@3) b@@3))
 :qid |stdinbpl.685:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@4 b@@3))
)))
(assert (forall ((s@@27 T@Seq_28173) (n@@21 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@8)) (< i@@8 (|Seq#Length_11329| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@21) n@@21) i@@8) (= (|Seq#Index_11329| (|Seq#Drop_11329| s@@27 n@@21) (|Seq#Sub| i@@8 n@@21)) (|Seq#Index_11329| s@@27 i@@8))))
 :qid |stdinbpl.347:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_11329| s@@27 n@@21) (|Seq#Index_11329| s@@27 i@@8))
)))
(assert (forall ((s@@28 T@Seq_3131) (n@@22 Int) (i@@9 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@9)) (< i@@9 (|Seq#Length_3131| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@9 n@@22) n@@22) i@@9) (= (|Seq#Index_3131| (|Seq#Drop_3131| s@@28 n@@22) (|Seq#Sub| i@@9 n@@22)) (|Seq#Index_3131| s@@28 i@@9))))
 :qid |stdinbpl.347:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3131| s@@28 n@@22) (|Seq#Index_3131| s@@28 i@@9))
)))
(assert (forall ((s0@@7 T@Seq_28173) (s1@@7 T@Seq_28173) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_11329|)) (not (= s1@@7 |Seq#Empty_11329|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_11329| s0@@7))) (= (|Seq#Index_11329| (|Seq#Append_28173| s0@@7 s1@@7) n@@23) (|Seq#Index_11329| s0@@7 n@@23)))
 :qid |stdinbpl.287:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_11329| (|Seq#Append_28173| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_11329| s0@@7 n@@23) (|Seq#Append_28173| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3131) (s1@@8 T@Seq_3131) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3131|)) (not (= s1@@8 |Seq#Empty_3131|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3131| s0@@8))) (= (|Seq#Index_3131| (|Seq#Append_3131| s0@@8 s1@@8) n@@24) (|Seq#Index_3131| s0@@8 n@@24)))
 :qid |stdinbpl.287:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3131| (|Seq#Append_3131| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3131| s0@@8 n@@24) (|Seq#Append_3131| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_28173) (s1@@9 T@Seq_28173) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_11329|)) (not (= s1@@9 |Seq#Empty_11329|))) (<= 0 m)) (< m (|Seq#Length_11329| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_11329| s0@@9)) (|Seq#Length_11329| s0@@9)) m) (= (|Seq#Index_11329| (|Seq#Append_28173| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_11329| s0@@9))) (|Seq#Index_11329| s1@@9 m))))
 :qid |stdinbpl.292:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_11329| s1@@9 m) (|Seq#Append_28173| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3131) (s1@@10 T@Seq_3131) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3131|)) (not (= s1@@10 |Seq#Empty_3131|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3131| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3131| s0@@10)) (|Seq#Length_3131| s0@@10)) m@@0) (= (|Seq#Index_3131| (|Seq#Append_3131| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3131| s0@@10))) (|Seq#Index_3131| s1@@10 m@@0))))
 :qid |stdinbpl.292:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3131| s1@@10 m@@0) (|Seq#Append_3131| s0@@10 s1@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_16671) (Mask@@24 T@PolymorphicMapType_16692) (xs@@6 T@Seq_28173) (ys@@1 T@Seq_28173) ) (!  (=> (state Heap@@22 Mask@@24) (= (|fun02'| Heap@@22 xs@@6 ys@@1) (|fun02#frame| (CombineFrames (FrameFragment_5506 (|fun02#condqp2| Heap@@22 xs@@6 ys@@1)) (FrameFragment_5506 (|fun02#condqp3| Heap@@22 xs@@6 ys@@1))) xs@@6 ys@@1)))
 :qid |stdinbpl.948:15|
 :skolemid |136|
 :pattern ( (state Heap@@22 Mask@@24) (|fun02'| Heap@@22 xs@@6 ys@@1))
)))
(assert (forall ((o_12@@4 T@Ref) (f_19 T@Field_16744_16745) (Heap@@23 T@PolymorphicMapType_16671) ) (!  (=> (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@23) o_12@@4 $allocated) (select (|PolymorphicMapType_16671_10846_53#PolymorphicMapType_16671| Heap@@23) (select (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@23) o_12@@4 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16671_10849_10850#PolymorphicMapType_16671| Heap@@23) o_12@@4 f_19))
)))
(assert (forall ((s@@29 T@Seq_28173) (x@@3 T@Ref) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_11329| s@@29))) (= (|Seq#Index_11329| s@@29 i@@10) x@@3)) (|Seq#Contains_28173| s@@29 x@@3))
 :qid |stdinbpl.444:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_28173| s@@29 x@@3) (|Seq#Index_11329| s@@29 i@@10))
)))
(assert (forall ((s@@30 T@Seq_3131) (x@@4 Int) (i@@11 Int) ) (!  (=> (and (and (<= 0 i@@11) (< i@@11 (|Seq#Length_3131| s@@30))) (= (|Seq#Index_3131| s@@30 i@@11) x@@4)) (|Seq#Contains_3131| s@@30 x@@4))
 :qid |stdinbpl.444:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3131| s@@30 x@@4) (|Seq#Index_3131| s@@30 i@@11))
)))
(assert (forall ((s0@@11 T@Seq_28173) (s1@@11 T@Seq_28173) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_28173| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28173| s0@@11 s1@@11))) (not (= (|Seq#Length_11329| s0@@11) (|Seq#Length_11329| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28173| s0@@11 s1@@11))) (= (|Seq#Length_11329| s0@@11) (|Seq#Length_11329| s1@@11))) (= (|Seq#SkolemDiff_28173| s0@@11 s1@@11) (|Seq#SkolemDiff_28173| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_28173| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_28173| s0@@11 s1@@11) (|Seq#Length_11329| s0@@11))) (not (= (|Seq#Index_11329| s0@@11 (|Seq#SkolemDiff_28173| s0@@11 s1@@11)) (|Seq#Index_11329| s1@@11 (|Seq#SkolemDiff_28173| s0@@11 s1@@11))))))
 :qid |stdinbpl.548:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_28173| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3131) (s1@@12 T@Seq_3131) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3131| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3131| s0@@12 s1@@12))) (not (= (|Seq#Length_3131| s0@@12) (|Seq#Length_3131| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3131| s0@@12 s1@@12))) (= (|Seq#Length_3131| s0@@12) (|Seq#Length_3131| s1@@12))) (= (|Seq#SkolemDiff_3131| s0@@12 s1@@12) (|Seq#SkolemDiff_3131| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3131| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3131| s0@@12 s1@@12) (|Seq#Length_3131| s0@@12))) (not (= (|Seq#Index_3131| s0@@12 (|Seq#SkolemDiff_3131| s0@@12 s1@@12)) (|Seq#Index_3131| s1@@12 (|Seq#SkolemDiff_3131| s0@@12 s1@@12))))))
 :qid |stdinbpl.548:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3131| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_11227_43447) (v_1@@0 T@FrameType) (q T@Field_11227_43447) (w@@0 T@FrameType) (r T@Field_11227_43447) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16731_16731 p@@1 v_1@@0 q w@@0) (InsidePredicate_16731_16731 q w@@0 r u)) (InsidePredicate_16731_16731 p@@1 v_1@@0 r u))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16731_16731 p@@1 v_1@@0 q w@@0) (InsidePredicate_16731_16731 q w@@0 r u))
)))
(assert (forall ((a@@5 Int) ) (!  (=> (< a@@5 0) (= (|Math#clip| a@@5) 0))
 :qid |stdinbpl.690:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@5))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_16671) (Heap1Heap@@0 T@PolymorphicMapType_16671) (xs@@7 T@Seq_28173) (ys@@2 T@Seq_28173) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@0 xs@@7 ys@@2) (|fun02#condqp2| Heap1Heap@@0 xs@@7 ys@@2))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@0 xs@@7 ys@@2) (|fun02#condqp2| Heap1Heap@@0 xs@@7 ys@@2)) (|Seq#Length_11329| xs@@7))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@0 xs@@7 ys@@2) (|fun02#condqp2| Heap1Heap@@0 xs@@7 ys@@2))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@0 xs@@7 ys@@2) (|fun02#condqp2| Heap1Heap@@0 xs@@7 ys@@2)) (|Seq#Length_11329| xs@@7))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@0 xs@@7 ys@@2) (|fun02#condqp2| Heap1Heap@@0 xs@@7 ys@@2))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@0 xs@@7 ys@@2) (|fun02#condqp2| Heap1Heap@@0 xs@@7 ys@@2)) (|Seq#Length_11329| xs@@7))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap2Heap@@0) (|Seq#Index_11329| xs@@7 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@0 xs@@7 ys@@2) (|fun02#condqp2| Heap1Heap@@0 xs@@7 ys@@2))) f_7) (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap1Heap@@0) (|Seq#Index_11329| xs@@7 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@0 xs@@7 ys@@2) (|fun02#condqp2| Heap1Heap@@0 xs@@7 ys@@2))) f_7)))) (= (|fun02#condqp2| Heap2Heap@@0 xs@@7 ys@@2) (|fun02#condqp2| Heap1Heap@@0 xs@@7 ys@@2)))
 :qid |stdinbpl.958:15|
 :skolemid |137|
 :pattern ( (|fun02#condqp2| Heap2Heap@@0 xs@@7 ys@@2) (|fun02#condqp2| Heap1Heap@@0 xs@@7 ys@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_16671) (Heap1Heap@@1 T@PolymorphicMapType_16671) (xs@@8 T@Seq_28173) (ys@@3 T@Seq_28173) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@8 ys@@3) (|fun02#condqp3| Heap1Heap@@1 xs@@8 ys@@3))) (< (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@8 ys@@3) (|fun02#condqp3| Heap1Heap@@1 xs@@8 ys@@3)) (|Seq#Length_11329| ys@@3))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@8 ys@@3) (|fun02#condqp3| Heap1Heap@@1 xs@@8 ys@@3))) (< (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@8 ys@@3) (|fun02#condqp3| Heap1Heap@@1 xs@@8 ys@@3)) (|Seq#Length_11329| ys@@3))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@8 ys@@3) (|fun02#condqp3| Heap1Heap@@1 xs@@8 ys@@3))) (< (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@8 ys@@3) (|fun02#condqp3| Heap1Heap@@1 xs@@8 ys@@3)) (|Seq#Length_11329| ys@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap2Heap@@1) (|Seq#Index_11329| ys@@3 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@8 ys@@3) (|fun02#condqp3| Heap1Heap@@1 xs@@8 ys@@3))) f_7) (select (|PolymorphicMapType_16671_11227_5254#PolymorphicMapType_16671| Heap1Heap@@1) (|Seq#Index_11329| ys@@3 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@8 ys@@3) (|fun02#condqp3| Heap1Heap@@1 xs@@8 ys@@3))) f_7)))) (= (|fun02#condqp3| Heap2Heap@@1 xs@@8 ys@@3) (|fun02#condqp3| Heap1Heap@@1 xs@@8 ys@@3)))
 :qid |stdinbpl.968:15|
 :skolemid |138|
 :pattern ( (|fun02#condqp3| Heap2Heap@@1 xs@@8 ys@@3) (|fun02#condqp3| Heap1Heap@@1 xs@@8 ys@@3) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((s@@31 T@Seq_28173) ) (!  (=> (= (|Seq#Length_11329| s@@31) 0) (= s@@31 |Seq#Empty_11329|))
 :qid |stdinbpl.251:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_11329| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3131) ) (!  (=> (= (|Seq#Length_3131| s@@32) 0) (= s@@32 |Seq#Empty_3131|))
 :qid |stdinbpl.251:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3131| s@@32))
)))
(assert (forall ((s@@33 T@Seq_28173) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_11329| s@@33 n@@25) |Seq#Empty_11329|))
 :qid |stdinbpl.427:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_11329| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3131) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3131| s@@34 n@@26) |Seq#Empty_3131|))
 :qid |stdinbpl.427:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3131| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@24 T@PolymorphicMapType_16671) (xs@@9 T@Seq_28173) (ys@@4 T@Seq_28173) ) (!  (and (= (fun02 Heap@@24 xs@@9 ys@@4) (|fun02'| Heap@@24 xs@@9 ys@@4)) (dummyFunction_6870 (|fun02#triggerStateless| xs@@9 ys@@4)))
 :qid |stdinbpl.925:15|
 :skolemid |131|
 :pattern ( (fun02 Heap@@24 xs@@9 ys@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_11_1 () Int)
(declare-fun ys@@5 () T@Seq_28173)
(declare-fun j_6_2 () Int)
(declare-fun neverTriggered11 (Int) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_16692)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun xs@@10 () T@Seq_28173)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun i_8_1 () Int)
(declare-fun j_4_1 () Int)
(declare-fun Heap@@25 () T@PolymorphicMapType_16671)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_16692)
(declare-fun i_10 () Int)
(declare-fun i_9 () Int)
(declare-fun j_7 () Int)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun i_19 () Int)
(declare-fun i_8 () Int)
(declare-fun j_6 () Int)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 50) (let ((anon24_correct true))
(let ((anon39_Else_correct  (=> (and (not (and (>= i_11_1 0) (and (< i_11_1 (|Seq#Length_11329| ys@@5)) (and (>= j_6_2 0) (and (< j_6_2 (|Seq#Length_11329| ys@@5)) (not (= i_11_1 j_6_2))))))) (= (ControlFlow 0 39) 36)) anon24_correct)))
(let ((anon39_Then_correct  (=> (and (>= i_11_1 0) (and (< i_11_1 (|Seq#Length_11329| ys@@5)) (and (>= j_6_2 0) (and (< j_6_2 (|Seq#Length_11329| ys@@5)) (not (= i_11_1 j_6_2)))))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (not (= (|Seq#Index_11329| ys@@5 i_11_1) (|Seq#Index_11329| ys@@5 j_6_2)))) (=> (not (= (|Seq#Index_11329| ys@@5 i_11_1) (|Seq#Index_11329| ys@@5 j_6_2))) (=> (= (ControlFlow 0 37) 36) anon24_correct))))))
(let ((anon38_Else_correct  (=> (forall ((i_12_1_1 Int) (j_7_1_1 Int) ) (!  (=> (and (>= i_12_1_1 0) (and (< i_12_1_1 (|Seq#Length_11329| ys@@5)) (and (>= j_7_1_1 0) (and (< j_7_1_1 (|Seq#Length_11329| ys@@5)) (not (= i_12_1_1 j_7_1_1)))))) (not (= (|Seq#Index_11329| ys@@5 i_12_1_1) (|Seq#Index_11329| ys@@5 j_7_1_1))))
 :qid |stdinbpl.1700:24|
 :skolemid |194|
 :pattern ( (|Seq#Index_11329| ys@@5 i_12_1_1) (|Seq#Index_11329| ys@@5 j_7_1_1))
)) (and (=> (= (ControlFlow 0 32) (- 0 35)) (forall ((i_13_1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1 i_13_2)) (and (<= 0 i_13_1) (< i_13_1 (|Seq#Length_11329| ys@@5)))) (and (<= 0 i_13_2) (< i_13_2 (|Seq#Length_11329| ys@@5)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11329| ys@@5 i_13_1) (|Seq#Index_11329| ys@@5 i_13_2))))
 :qid |stdinbpl.1711:21|
 :skolemid |195|
 :pattern ( (neverTriggered11 i_13_1) (neverTriggered11 i_13_2))
))) (=> (forall ((i_13_1@@0 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@0 i_13_2@@0)) (and (<= 0 i_13_1@@0) (< i_13_1@@0 (|Seq#Length_11329| ys@@5)))) (and (<= 0 i_13_2@@0) (< i_13_2@@0 (|Seq#Length_11329| ys@@5)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11329| ys@@5 i_13_1@@0) (|Seq#Index_11329| ys@@5 i_13_2@@0))))
 :qid |stdinbpl.1711:21|
 :skolemid |195|
 :pattern ( (neverTriggered11 i_13_1@@0) (neverTriggered11 i_13_2@@0))
)) (and (=> (= (ControlFlow 0 32) (- 0 34)) (forall ((i_13_1@@1 Int) ) (!  (=> (and (<= 0 i_13_1@@1) (< i_13_1@@1 (|Seq#Length_11329| ys@@5))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@1) (|Seq#Index_11329| ys@@5 i_13_1@@1) f_7) NoPerm)))
 :qid |stdinbpl.1718:21|
 :skolemid |196|
 :pattern ( (|Seq#Index_11329| ys@@5 i_13_1@@1))
 :pattern ( (|Seq#Index_11329| ys@@5 i_13_1@@1))
))) (=> (forall ((i_13_1@@2 Int) ) (!  (=> (and (<= 0 i_13_1@@2) (< i_13_1@@2 (|Seq#Length_11329| ys@@5))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@1) (|Seq#Index_11329| ys@@5 i_13_1@@2) f_7) NoPerm)))
 :qid |stdinbpl.1718:21|
 :skolemid |196|
 :pattern ( (|Seq#Index_11329| ys@@5 i_13_1@@2))
 :pattern ( (|Seq#Index_11329| ys@@5 i_13_1@@2))
)) (=> (and (forall ((i_13_1@@3 Int) ) (!  (=> (and (and (<= 0 i_13_1@@3) (< i_13_1@@3 (|Seq#Length_11329| ys@@5))) (< NoPerm FullPerm)) (and (qpRange11 (|Seq#Index_11329| ys@@5 i_13_1@@3)) (= (invRecv11 (|Seq#Index_11329| ys@@5 i_13_1@@3)) i_13_1@@3)))
 :qid |stdinbpl.1724:26|
 :skolemid |197|
 :pattern ( (|Seq#Index_11329| ys@@5 i_13_1@@3))
 :pattern ( (|Seq#Index_11329| ys@@5 i_13_1@@3))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv11 o_9)) (< (invRecv11 o_9) (|Seq#Length_11329| ys@@5))) (and (< NoPerm FullPerm) (qpRange11 o_9))) (= (|Seq#Index_11329| ys@@5 (invRecv11 o_9)) o_9))
 :qid |stdinbpl.1728:26|
 :skolemid |198|
 :pattern ( (invRecv11 o_9))
))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (< 10 (|Seq#Length_11329| xs@@10))) (=> (< 10 (|Seq#Length_11329| xs@@10)) (=> (= (ControlFlow 0 32) (- 0 31)) (= (|Seq#Length_11329| xs@@10) (|Seq#Length_11329| ys@@5)))))))))))))
(let ((anon36_Else_correct  (=> (forall ((i_9_1_1 Int) (j_5_1_1 Int) ) (!  (=> (and (>= i_9_1_1 0) (and (< i_9_1_1 (|Seq#Length_11329| xs@@10)) (and (>= j_5_1_1 0) (and (< j_5_1_1 (|Seq#Length_11329| xs@@10)) (not (= i_9_1_1 j_5_1_1)))))) (not (= (|Seq#Index_11329| xs@@10 i_9_1_1) (|Seq#Index_11329| xs@@10 j_5_1_1))))
 :qid |stdinbpl.1661:24|
 :skolemid |189|
 :pattern ( (|Seq#Index_11329| xs@@10 i_9_1_1) (|Seq#Index_11329| xs@@10 j_5_1_1))
)) (and (=> (= (ControlFlow 0 40) (- 0 42)) (forall ((i_10_1 Int) (i_10_2 Int) ) (!  (=> (and (and (and (and (not (= i_10_1 i_10_2)) (and (<= 0 i_10_1) (< i_10_1 (|Seq#Length_11329| xs@@10)))) (and (<= 0 i_10_2) (< i_10_2 (|Seq#Length_11329| xs@@10)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11329| xs@@10 i_10_1) (|Seq#Index_11329| xs@@10 i_10_2))))
 :qid |stdinbpl.1672:21|
 :skolemid |190|
 :pattern ( (neverTriggered10 i_10_1) (neverTriggered10 i_10_2))
))) (=> (forall ((i_10_1@@0 Int) (i_10_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_10_1@@0 i_10_2@@0)) (and (<= 0 i_10_1@@0) (< i_10_1@@0 (|Seq#Length_11329| xs@@10)))) (and (<= 0 i_10_2@@0) (< i_10_2@@0 (|Seq#Length_11329| xs@@10)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11329| xs@@10 i_10_1@@0) (|Seq#Index_11329| xs@@10 i_10_2@@0))))
 :qid |stdinbpl.1672:21|
 :skolemid |190|
 :pattern ( (neverTriggered10 i_10_1@@0) (neverTriggered10 i_10_2@@0))
)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (forall ((i_10_1@@1 Int) ) (!  (=> (and (<= 0 i_10_1@@1) (< i_10_1@@1 (|Seq#Length_11329| xs@@10))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@1) (|Seq#Index_11329| xs@@10 i_10_1@@1) f_7) NoPerm)))
 :qid |stdinbpl.1679:21|
 :skolemid |191|
 :pattern ( (|Seq#Index_11329| xs@@10 i_10_1@@1))
 :pattern ( (|Seq#Index_11329| xs@@10 i_10_1@@1))
))) (=> (forall ((i_10_1@@2 Int) ) (!  (=> (and (<= 0 i_10_1@@2) (< i_10_1@@2 (|Seq#Length_11329| xs@@10))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@1) (|Seq#Index_11329| xs@@10 i_10_1@@2) f_7) NoPerm)))
 :qid |stdinbpl.1679:21|
 :skolemid |191|
 :pattern ( (|Seq#Index_11329| xs@@10 i_10_1@@2))
 :pattern ( (|Seq#Index_11329| xs@@10 i_10_1@@2))
)) (=> (and (forall ((i_10_1@@3 Int) ) (!  (=> (and (and (<= 0 i_10_1@@3) (< i_10_1@@3 (|Seq#Length_11329| xs@@10))) (< NoPerm FullPerm)) (and (qpRange10 (|Seq#Index_11329| xs@@10 i_10_1@@3)) (= (invRecv10 (|Seq#Index_11329| xs@@10 i_10_1@@3)) i_10_1@@3)))
 :qid |stdinbpl.1685:26|
 :skolemid |192|
 :pattern ( (|Seq#Index_11329| xs@@10 i_10_1@@3))
 :pattern ( (|Seq#Index_11329| xs@@10 i_10_1@@3))
)) (forall ((o_9@@0 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv10 o_9@@0)) (< (invRecv10 o_9@@0) (|Seq#Length_11329| xs@@10))) (and (< NoPerm FullPerm) (qpRange10 o_9@@0))) (= (|Seq#Index_11329| xs@@10 (invRecv10 o_9@@0)) o_9@@0))
 :qid |stdinbpl.1689:26|
 :skolemid |193|
 :pattern ( (invRecv10 o_9@@0))
))) (and (and (=> (= (ControlFlow 0 40) 32) anon38_Else_correct) (=> (= (ControlFlow 0 40) 37) anon39_Then_correct)) (=> (= (ControlFlow 0 40) 39) anon39_Else_correct))))))))))
(let ((anon20_correct true))
(let ((anon37_Else_correct  (=> (and (not (and (>= i_8_1 0) (and (< i_8_1 (|Seq#Length_11329| xs@@10)) (and (>= j_4_1 0) (and (< j_4_1 (|Seq#Length_11329| xs@@10)) (not (= i_8_1 j_4_1))))))) (= (ControlFlow 0 30) 27)) anon20_correct)))
(let ((anon37_Then_correct  (=> (and (>= i_8_1 0) (and (< i_8_1 (|Seq#Length_11329| xs@@10)) (and (>= j_4_1 0) (and (< j_4_1 (|Seq#Length_11329| xs@@10)) (not (= i_8_1 j_4_1)))))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (not (= (|Seq#Index_11329| xs@@10 i_8_1) (|Seq#Index_11329| xs@@10 j_4_1)))) (=> (not (= (|Seq#Index_11329| xs@@10 i_8_1) (|Seq#Index_11329| xs@@10 j_4_1))) (=> (= (ControlFlow 0 28) 27) anon20_correct))))))
(let ((anon35_Else_correct  (=> (= (ControlFlow 0 26) (- 0 25)) (fun02 Heap@@25 xs@@10 ys@@5))))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 43) (- 0 44)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (<= 0 i_7_1) (< i_7_1 (|Seq#Length_11329| ys@@5)))) (and (<= 0 i_7_2) (< i_7_2 (|Seq#Length_11329| ys@@5)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11329| ys@@5 i_7_1) (|Seq#Index_11329| ys@@5 i_7_2))))
 :qid |stdinbpl.1604:15|
 :skolemid |183|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (<= 0 i_7_1@@0) (< i_7_1@@0 (|Seq#Length_11329| ys@@5)))) (and (<= 0 i_7_2@@0) (< i_7_2@@0 (|Seq#Length_11329| ys@@5)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11329| ys@@5 i_7_1@@0) (|Seq#Index_11329| ys@@5 i_7_2@@0))))
 :qid |stdinbpl.1604:15|
 :skolemid |183|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (and (<= 0 i_7_1@@1) (< i_7_1@@1 (|Seq#Length_11329| ys@@5))) (< NoPerm FullPerm)) (and (qpRange9 (|Seq#Index_11329| ys@@5 i_7_1@@1)) (= (invRecv9 (|Seq#Index_11329| ys@@5 i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.1610:22|
 :skolemid |184|
 :pattern ( (|Seq#Index_11329| ys@@5 i_7_1@@1))
 :pattern ( (|Seq#Index_11329| ys@@5 i_7_1@@1))
)) (forall ((o_9@@1 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv9 o_9@@1)) (< (invRecv9 o_9@@1) (|Seq#Length_11329| ys@@5))) (< NoPerm FullPerm)) (qpRange9 o_9@@1)) (= (|Seq#Index_11329| ys@@5 (invRecv9 o_9@@1)) o_9@@1))
 :qid |stdinbpl.1614:22|
 :skolemid |185|
 :pattern ( (invRecv9 o_9@@1))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (and (<= 0 i_7_1@@2) (< i_7_1@@2 (|Seq#Length_11329| ys@@5))) (not (= (|Seq#Index_11329| ys@@5 i_7_1@@2) null)))
 :qid |stdinbpl.1620:22|
 :skolemid |186|
 :pattern ( (|Seq#Index_11329| ys@@5 i_7_1@@2))
 :pattern ( (|Seq#Index_11329| ys@@5 i_7_1@@2))
)) (forall ((o_9@@2 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv9 o_9@@2)) (< (invRecv9 o_9@@2) (|Seq#Length_11329| ys@@5))) (< NoPerm FullPerm)) (qpRange9 o_9@@2)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_11329| ys@@5 (invRecv9 o_9@@2)) o_9@@2)) (= (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@1) o_9@@2 f_7) (+ (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@0) o_9@@2 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv9 o_9@@2)) (< (invRecv9 o_9@@2) (|Seq#Length_11329| ys@@5))) (< NoPerm FullPerm)) (qpRange9 o_9@@2))) (= (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@1) o_9@@2 f_7) (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@0) o_9@@2 f_7))))
 :qid |stdinbpl.1626:22|
 :skolemid |187|
 :pattern ( (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@1) o_9@@2 f_7))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@3 T@Ref) (f_5 T@Field_16731_53) ) (!  (=> true (= (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| QPMask@0) o_9@@3 f_5) (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| QPMask@1) o_9@@3 f_5)))
 :qid |stdinbpl.1630:29|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| QPMask@0) o_9@@3 f_5))
 :pattern ( (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| QPMask@1) o_9@@3 f_5))
)) (forall ((o_9@@4 T@Ref) (f_5@@0 T@Field_16744_16745) ) (!  (=> true (= (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| QPMask@0) o_9@@4 f_5@@0) (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| QPMask@1) o_9@@4 f_5@@0)))
 :qid |stdinbpl.1630:29|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| QPMask@0) o_9@@4 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| QPMask@1) o_9@@4 f_5@@0))
))) (forall ((o_9@@5 T@Ref) (f_5@@1 T@Field_25623_5254) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@0) o_9@@5 f_5@@1) (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@1) o_9@@5 f_5@@1)))
 :qid |stdinbpl.1630:29|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@0) o_9@@5 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@1) o_9@@5 f_5@@1))
))) (forall ((o_9@@6 T@Ref) (f_5@@2 T@Field_11227_43447) ) (!  (=> true (= (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| QPMask@0) o_9@@6 f_5@@2) (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| QPMask@1) o_9@@6 f_5@@2)))
 :qid |stdinbpl.1630:29|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| QPMask@0) o_9@@6 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| QPMask@1) o_9@@6 f_5@@2))
))) (forall ((o_9@@7 T@Ref) (f_5@@3 T@Field_11227_43580) ) (!  (=> true (= (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| QPMask@0) o_9@@7 f_5@@3) (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| QPMask@1) o_9@@7 f_5@@3)))
 :qid |stdinbpl.1630:29|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| QPMask@0) o_9@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| QPMask@1) o_9@@7 f_5@@3))
))) (state Heap@@25 QPMask@1)) (and (state Heap@@25 QPMask@1) (state Heap@@25 QPMask@1))) (and (and (< 10 (|Seq#Length_11329| xs@@10)) (= (|Seq#Length_11329| xs@@10) (|Seq#Length_11329| ys@@5))) (and (state Heap@@25 QPMask@1) (state Heap@@25 QPMask@1)))) (and (and (and (=> (= (ControlFlow 0 43) 26) anon35_Else_correct) (=> (= (ControlFlow 0 43) 40) anon36_Else_correct)) (=> (= (ControlFlow 0 43) 28) anon37_Then_correct)) (=> (= (ControlFlow 0 43) 30) anon37_Else_correct))))))))
(let ((anon15_correct true))
(let ((anon34_Else_correct  (=> (and (not (and (<= 0 i_10) (< i_10 (|Seq#Length_11329| ys@@5)))) (= (ControlFlow 0 24) 20)) anon15_correct)))
(let ((anon34_Then_correct  (=> (and (<= 0 i_10) (< i_10 (|Seq#Length_11329| ys@@5))) (and (=> (= (ControlFlow 0 21) (- 0 23)) (>= i_10 0)) (=> (>= i_10 0) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< i_10 (|Seq#Length_11329| ys@@5))) (=> (< i_10 (|Seq#Length_11329| ys@@5)) (=> (= (ControlFlow 0 21) 20) anon15_correct))))))))
(let ((anon31_Else_correct  (=> (forall ((i_5_1 Int) (j_3 Int) ) (!  (=> (and (>= i_5_1 0) (and (< i_5_1 (|Seq#Length_11329| ys@@5)) (and (>= j_3 0) (and (< j_3 (|Seq#Length_11329| ys@@5)) (not (= i_5_1 j_3)))))) (not (= (|Seq#Index_11329| ys@@5 i_5_1) (|Seq#Index_11329| ys@@5 j_3))))
 :qid |stdinbpl.1581:20|
 :skolemid |182|
 :pattern ( (|Seq#Index_11329| ys@@5 i_5_1) (|Seq#Index_11329| ys@@5 j_3))
)) (=> (and (state Heap@@25 QPMask@0) (state Heap@@25 QPMask@0)) (and (and (=> (= (ControlFlow 0 45) 43) anon33_Else_correct) (=> (= (ControlFlow 0 45) 21) anon34_Then_correct)) (=> (= (ControlFlow 0 45) 24) anon34_Else_correct))))))
(let ((anon11_correct true))
(let ((anon32_Else_correct  (=> (and (not (and (>= i_9 0) (and (< i_9 (|Seq#Length_11329| ys@@5)) (and (>= j_7 0) (and (< j_7 (|Seq#Length_11329| ys@@5)) (not (= i_9 j_7))))))) (= (ControlFlow 0 19) 13)) anon11_correct)))
(let ((anon32_Then_correct  (=> (and (>= i_9 0) (and (< i_9 (|Seq#Length_11329| ys@@5)) (and (>= j_7 0) (and (< j_7 (|Seq#Length_11329| ys@@5)) (not (= i_9 j_7)))))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (>= i_9 0)) (=> (>= i_9 0) (and (=> (= (ControlFlow 0 14) (- 0 17)) (< i_9 (|Seq#Length_11329| ys@@5))) (=> (< i_9 (|Seq#Length_11329| ys@@5)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= j_7 0)) (=> (>= j_7 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< j_7 (|Seq#Length_11329| ys@@5))) (=> (< j_7 (|Seq#Length_11329| ys@@5)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))))
(let ((anon29_Else_correct  (and (=> (= (ControlFlow 0 46) (- 0 47)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (<= 0 i_3_2) (< i_3_2 (|Seq#Length_11329| xs@@10)))) (and (<= 0 i_3_3) (< i_3_3 (|Seq#Length_11329| xs@@10)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11329| xs@@10 i_3_2) (|Seq#Index_11329| xs@@10 i_3_3))))
 :qid |stdinbpl.1527:15|
 :skolemid |176|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (and (<= 0 i_3_2@@0) (< i_3_2@@0 (|Seq#Length_11329| xs@@10)))) (and (<= 0 i_3_3@@0) (< i_3_3@@0 (|Seq#Length_11329| xs@@10)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11329| xs@@10 i_3_2@@0) (|Seq#Index_11329| xs@@10 i_3_3@@0))))
 :qid |stdinbpl.1527:15|
 :skolemid |176|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (and (<= 0 i_3_2@@1) (< i_3_2@@1 (|Seq#Length_11329| xs@@10))) (< NoPerm FullPerm)) (and (qpRange8 (|Seq#Index_11329| xs@@10 i_3_2@@1)) (= (invRecv8 (|Seq#Index_11329| xs@@10 i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.1533:22|
 :skolemid |177|
 :pattern ( (|Seq#Index_11329| xs@@10 i_3_2@@1))
 :pattern ( (|Seq#Index_11329| xs@@10 i_3_2@@1))
)) (forall ((o_9@@8 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv8 o_9@@8)) (< (invRecv8 o_9@@8) (|Seq#Length_11329| xs@@10))) (< NoPerm FullPerm)) (qpRange8 o_9@@8)) (= (|Seq#Index_11329| xs@@10 (invRecv8 o_9@@8)) o_9@@8))
 :qid |stdinbpl.1537:22|
 :skolemid |178|
 :pattern ( (invRecv8 o_9@@8))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (and (<= 0 i_3_2@@2) (< i_3_2@@2 (|Seq#Length_11329| xs@@10))) (not (= (|Seq#Index_11329| xs@@10 i_3_2@@2) null)))
 :qid |stdinbpl.1543:22|
 :skolemid |179|
 :pattern ( (|Seq#Index_11329| xs@@10 i_3_2@@2))
 :pattern ( (|Seq#Index_11329| xs@@10 i_3_2@@2))
)) (forall ((o_9@@9 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv8 o_9@@9)) (< (invRecv8 o_9@@9) (|Seq#Length_11329| xs@@10))) (< NoPerm FullPerm)) (qpRange8 o_9@@9)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_11329| xs@@10 (invRecv8 o_9@@9)) o_9@@9)) (= (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@0) o_9@@9 f_7) (+ (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| ZeroMask) o_9@@9 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv8 o_9@@9)) (< (invRecv8 o_9@@9) (|Seq#Length_11329| xs@@10))) (< NoPerm FullPerm)) (qpRange8 o_9@@9))) (= (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@0) o_9@@9 f_7) (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| ZeroMask) o_9@@9 f_7))))
 :qid |stdinbpl.1549:22|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@0) o_9@@9 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@10 T@Ref) (f_5@@4 T@Field_16731_53) ) (!  (=> true (= (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| ZeroMask) o_9@@10 f_5@@4) (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| QPMask@0) o_9@@10 f_5@@4)))
 :qid |stdinbpl.1553:29|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| ZeroMask) o_9@@10 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_16692_11227_53#PolymorphicMapType_16692| QPMask@0) o_9@@10 f_5@@4))
)) (forall ((o_9@@11 T@Ref) (f_5@@5 T@Field_16744_16745) ) (!  (=> true (= (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| ZeroMask) o_9@@11 f_5@@5) (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| QPMask@0) o_9@@11 f_5@@5)))
 :qid |stdinbpl.1553:29|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| ZeroMask) o_9@@11 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_16692_11227_16745#PolymorphicMapType_16692| QPMask@0) o_9@@11 f_5@@5))
))) (forall ((o_9@@12 T@Ref) (f_5@@6 T@Field_25623_5254) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| ZeroMask) o_9@@12 f_5@@6) (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@0) o_9@@12 f_5@@6)))
 :qid |stdinbpl.1553:29|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| ZeroMask) o_9@@12 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_16692_11227_5254#PolymorphicMapType_16692| QPMask@0) o_9@@12 f_5@@6))
))) (forall ((o_9@@13 T@Ref) (f_5@@7 T@Field_11227_43447) ) (!  (=> true (= (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| ZeroMask) o_9@@13 f_5@@7) (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| QPMask@0) o_9@@13 f_5@@7)))
 :qid |stdinbpl.1553:29|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| ZeroMask) o_9@@13 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_16692_11227_43447#PolymorphicMapType_16692| QPMask@0) o_9@@13 f_5@@7))
))) (forall ((o_9@@14 T@Ref) (f_5@@8 T@Field_11227_43580) ) (!  (=> true (= (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| ZeroMask) o_9@@14 f_5@@8) (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| QPMask@0) o_9@@14 f_5@@8)))
 :qid |stdinbpl.1553:29|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| ZeroMask) o_9@@14 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_16692_11227_47702#PolymorphicMapType_16692| QPMask@0) o_9@@14 f_5@@8))
))) (state Heap@@25 QPMask@0)) (and (state Heap@@25 QPMask@0) (state Heap@@25 QPMask@0))) (and (and (=> (= (ControlFlow 0 46) 45) anon31_Else_correct) (=> (= (ControlFlow 0 46) 14) anon32_Then_correct)) (=> (= (ControlFlow 0 46) 19) anon32_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon30_Else_correct  (=> (and (not (and (<= 0 i_19) (< i_19 (|Seq#Length_11329| xs@@10)))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon30_Then_correct  (=> (and (<= 0 i_19) (< i_19 (|Seq#Length_11329| xs@@10))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_19 0)) (=> (>= i_19 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_19 (|Seq#Length_11329| xs@@10))) (=> (< i_19 (|Seq#Length_11329| xs@@10)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon27_Else_correct  (=> (forall ((i_1 Int) (j_1@@0 Int) ) (!  (=> (and (>= i_1 0) (and (< i_1 (|Seq#Length_11329| xs@@10)) (and (>= j_1@@0 0) (and (< j_1@@0 (|Seq#Length_11329| xs@@10)) (not (= i_1 j_1@@0)))))) (not (= (|Seq#Index_11329| xs@@10 i_1) (|Seq#Index_11329| xs@@10 j_1@@0))))
 :qid |stdinbpl.1504:20|
 :skolemid |175|
 :pattern ( (|Seq#Index_11329| xs@@10 i_1) (|Seq#Index_11329| xs@@10 j_1@@0))
)) (=> (and (state Heap@@25 ZeroMask) (state Heap@@25 ZeroMask)) (and (and (=> (= (ControlFlow 0 48) 46) anon29_Else_correct) (=> (= (ControlFlow 0 48) 9) anon30_Then_correct)) (=> (= (ControlFlow 0 48) 12) anon30_Else_correct))))))
(let ((anon3_correct true))
(let ((anon28_Else_correct  (=> (and (not (and (>= i_8 0) (and (< i_8 (|Seq#Length_11329| xs@@10)) (and (>= j_6 0) (and (< j_6 (|Seq#Length_11329| xs@@10)) (not (= i_8 j_6))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon28_Then_correct  (=> (and (>= i_8 0) (and (< i_8 (|Seq#Length_11329| xs@@10)) (and (>= j_6 0) (and (< j_6 (|Seq#Length_11329| xs@@10)) (not (= i_8 j_6)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_8 0)) (=> (>= i_8 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_8 (|Seq#Length_11329| xs@@10))) (=> (< i_8 (|Seq#Length_11329| xs@@10)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_6 0)) (=> (>= j_6 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_6 (|Seq#Length_11329| xs@@10))) (=> (< j_6 (|Seq#Length_11329| xs@@10)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@25 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (and (=> (= (ControlFlow 0 49) 48) anon27_Else_correct) (=> (= (ControlFlow 0 49) 2) anon28_Then_correct)) (=> (= (ControlFlow 0 49) 7) anon28_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 50) 49) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 26) (- 25))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
