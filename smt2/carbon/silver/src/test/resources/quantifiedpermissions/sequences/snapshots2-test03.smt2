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
(declare-sort T@Field_8718_53 0)
(declare-sort T@Field_8731_8732 0)
(declare-sort T@Field_14738_3013 0)
(declare-sort T@Field_5379_23064 0)
(declare-sort T@Field_5379_22931 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8679 0)) (((PolymorphicMapType_8679 (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| (Array T@Ref T@Field_14738_3013 Real)) (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| (Array T@Ref T@Field_8718_53 Real)) (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| (Array T@Ref T@Field_8731_8732 Real)) (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| (Array T@Ref T@Field_5379_22931 Real)) (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| (Array T@Ref T@Field_5379_23064 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9207 0)) (((PolymorphicMapType_9207 (|PolymorphicMapType_9207_8718_53#PolymorphicMapType_9207| (Array T@Ref T@Field_8718_53 Bool)) (|PolymorphicMapType_9207_8718_8732#PolymorphicMapType_9207| (Array T@Ref T@Field_8731_8732 Bool)) (|PolymorphicMapType_9207_8718_3013#PolymorphicMapType_9207| (Array T@Ref T@Field_14738_3013 Bool)) (|PolymorphicMapType_9207_8718_22931#PolymorphicMapType_9207| (Array T@Ref T@Field_5379_22931 Bool)) (|PolymorphicMapType_9207_8718_24242#PolymorphicMapType_9207| (Array T@Ref T@Field_5379_23064 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8658 0)) (((PolymorphicMapType_8658 (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| (Array T@Ref T@Field_8718_53 Bool)) (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| (Array T@Ref T@Field_8731_8732 T@Ref)) (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| (Array T@Ref T@Field_14738_3013 Int)) (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| (Array T@Ref T@Field_5379_23064 T@PolymorphicMapType_9207)) (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| (Array T@Ref T@Field_5379_22931 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8718_53)
(declare-fun f_7 () T@Field_14738_3013)
(declare-sort T@Seq_16498 0)
(declare-fun |Seq#Length_5444| (T@Seq_16498) Int)
(declare-fun |Seq#Drop_5444| (T@Seq_16498 Int) T@Seq_16498)
(declare-sort T@Seq_2891 0)
(declare-fun |Seq#Length_2891| (T@Seq_2891) Int)
(declare-fun |Seq#Drop_2891| (T@Seq_2891 Int) T@Seq_2891)
(declare-fun succHeap (T@PolymorphicMapType_8658 T@PolymorphicMapType_8658) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8658 T@PolymorphicMapType_8658) Bool)
(declare-fun state (T@PolymorphicMapType_8658 T@PolymorphicMapType_8679) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8679) Bool)
(declare-fun |get02'| (T@PolymorphicMapType_8658 T@Seq_16498 Int) Int)
(declare-fun |get02#frame| (T@FrameType T@Seq_16498 Int) Int)
(declare-fun FrameFragment_3013 (Int) T@FrameType)
(declare-fun |Seq#Index_5444| (T@Seq_16498 Int) T@Ref)
(declare-fun ZeroPMask () T@PolymorphicMapType_9207)
(declare-fun dummyFunction_3422 (Int) Bool)
(declare-fun |get02#triggerStateless| (T@Seq_16498 Int) Int)
(declare-fun get02 (T@PolymorphicMapType_8658 T@Seq_16498 Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2891| (T@Seq_2891 Int) Int)
(declare-fun get01 (T@PolymorphicMapType_8658 T@Ref) Int)
(declare-fun id (T@PolymorphicMapType_8658 T@Ref) T@Ref)
(declare-fun |Seq#Empty_5444| () T@Seq_16498)
(declare-fun |Seq#Empty_2891| () T@Seq_2891)
(declare-fun |id'| (T@PolymorphicMapType_8658 T@Ref) T@Ref)
(declare-fun dummyFunction_5403 (T@Ref) Bool)
(declare-fun |id#triggerStateless| (T@Ref) T@Ref)
(declare-fun |get01'| (T@PolymorphicMapType_8658 T@Ref) Int)
(declare-fun |get01#triggerStateless| (T@Ref) Int)
(declare-fun |Seq#Update_5444| (T@Seq_16498 Int T@Ref) T@Seq_16498)
(declare-fun |Seq#Update_2891| (T@Seq_2891 Int Int) T@Seq_2891)
(declare-fun |get01#frame| (T@FrameType T@Ref) Int)
(declare-fun |Seq#Take_5444| (T@Seq_16498 Int) T@Seq_16498)
(declare-fun |Seq#Take_2891| (T@Seq_2891 Int) T@Seq_2891)
(declare-fun |Seq#Contains_2891| (T@Seq_2891 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2891)
(declare-fun |Seq#Contains_16498| (T@Seq_16498 T@Ref) Bool)
(declare-fun |Seq#Skolem_16498| (T@Seq_16498 T@Ref) Int)
(declare-fun |Seq#Skolem_2891| (T@Seq_2891 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8658 T@PolymorphicMapType_8658 T@PolymorphicMapType_8679) Bool)
(declare-fun IsPredicateField_5379_23022 (T@Field_5379_22931) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5379 (T@Field_5379_22931) T@Field_5379_23064)
(declare-fun HasDirectPerm_5379_22995 (T@PolymorphicMapType_8679 T@Ref T@Field_5379_22931) Bool)
(declare-fun IsWandField_5379_24769 (T@Field_5379_22931) Bool)
(declare-fun WandMaskField_5379 (T@Field_5379_22931) T@Field_5379_23064)
(declare-fun |Seq#Singleton_5444| (T@Ref) T@Seq_16498)
(declare-fun |Seq#Singleton_2891| (Int) T@Seq_2891)
(declare-fun |Seq#Append_16498| (T@Seq_16498 T@Seq_16498) T@Seq_16498)
(declare-fun |Seq#Append_2891| (T@Seq_2891 T@Seq_2891) T@Seq_2891)
(declare-fun dummyHeap () T@PolymorphicMapType_8658)
(declare-fun ZeroMask () T@PolymorphicMapType_8679)
(declare-fun InsidePredicate_8718_8718 (T@Field_5379_22931 T@FrameType T@Field_5379_22931 T@FrameType) Bool)
(declare-fun IsPredicateField_5379_3013 (T@Field_14738_3013) Bool)
(declare-fun IsWandField_5379_3013 (T@Field_14738_3013) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5379_28315 (T@Field_5379_23064) Bool)
(declare-fun IsWandField_5379_28331 (T@Field_5379_23064) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5379_8732 (T@Field_8731_8732) Bool)
(declare-fun IsWandField_5379_8732 (T@Field_8731_8732) Bool)
(declare-fun IsPredicateField_5379_53 (T@Field_8718_53) Bool)
(declare-fun IsWandField_5379_53 (T@Field_8718_53) Bool)
(declare-fun HasDirectPerm_5379_28769 (T@PolymorphicMapType_8679 T@Ref T@Field_5379_23064) Bool)
(declare-fun HasDirectPerm_5379_8732 (T@PolymorphicMapType_8679 T@Ref T@Field_8731_8732) Bool)
(declare-fun HasDirectPerm_5379_53 (T@PolymorphicMapType_8679 T@Ref T@Field_8718_53) Bool)
(declare-fun HasDirectPerm_5379_3013 (T@PolymorphicMapType_8679 T@Ref T@Field_14738_3013) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8679 T@PolymorphicMapType_8679 T@PolymorphicMapType_8679) Bool)
(declare-fun |Seq#Equal_16498| (T@Seq_16498 T@Seq_16498) Bool)
(declare-fun |Seq#Equal_2891| (T@Seq_2891 T@Seq_2891) Bool)
(declare-fun |Seq#ContainsTrigger_5444| (T@Seq_16498 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2891| (T@Seq_2891 Int) Bool)
(declare-fun |id#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Seq#SkolemDiff_16498| (T@Seq_16498 T@Seq_16498) Int)
(declare-fun |Seq#SkolemDiff_2891| (T@Seq_2891 T@Seq_2891) Int)
(assert (forall ((s T@Seq_16498) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_5444| s)) (= (|Seq#Length_5444| (|Seq#Drop_5444| s n)) (- (|Seq#Length_5444| s) n))) (=> (< (|Seq#Length_5444| s) n) (= (|Seq#Length_5444| (|Seq#Drop_5444| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_5444| (|Seq#Drop_5444| s n)) (|Seq#Length_5444| s))))
 :qid |stdinbpl.293:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_5444| (|Seq#Drop_5444| s n)))
 :pattern ( (|Seq#Length_5444| s) (|Seq#Drop_5444| s n))
)))
(assert (forall ((s@@0 T@Seq_2891) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2891| s@@0)) (= (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)) (- (|Seq#Length_2891| s@@0) n@@0))) (=> (< (|Seq#Length_2891| s@@0) n@@0) (= (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)) (|Seq#Length_2891| s@@0))))
 :qid |stdinbpl.293:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2891| s@@0) (|Seq#Drop_2891| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8658) (Heap1 T@PolymorphicMapType_8658) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8658) (Mask T@PolymorphicMapType_8679) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8658) (Heap1@@0 T@PolymorphicMapType_8658) (Heap2 T@PolymorphicMapType_8658) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8658) (Mask@@0 T@PolymorphicMapType_8679) (xs T@Seq_16498) (i Int) ) (!  (=> (state Heap@@0 Mask@@0) (= (|get02'| Heap@@0 xs i) (|get02#frame| (FrameFragment_3013 (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@0) (|Seq#Index_5444| xs i) f_7)) xs i)))
 :qid |stdinbpl.719:15|
 :skolemid |69|
 :pattern ( (state Heap@@0 Mask@@0) (|get02'| Heap@@0 xs i))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5379_23064) ) (!  (not (select (|PolymorphicMapType_9207_8718_24242#PolymorphicMapType_9207| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9207_8718_24242#PolymorphicMapType_9207| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5379_22931) ) (!  (not (select (|PolymorphicMapType_9207_8718_22931#PolymorphicMapType_9207| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9207_8718_22931#PolymorphicMapType_9207| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14738_3013) ) (!  (not (select (|PolymorphicMapType_9207_8718_3013#PolymorphicMapType_9207| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9207_8718_3013#PolymorphicMapType_9207| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8731_8732) ) (!  (not (select (|PolymorphicMapType_9207_8718_8732#PolymorphicMapType_9207| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9207_8718_8732#PolymorphicMapType_9207| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8718_53) ) (!  (not (select (|PolymorphicMapType_9207_8718_53#PolymorphicMapType_9207| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9207_8718_53#PolymorphicMapType_9207| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8658) (xs@@0 T@Seq_16498) (i@@0 Int) ) (! (dummyFunction_3422 (|get02#triggerStateless| xs@@0 i@@0))
 :qid |stdinbpl.706:15|
 :skolemid |67|
 :pattern ( (|get02'| Heap@@1 xs@@0 i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8658) (Mask@@1 T@PolymorphicMapType_8679) (xs@@1 T@Seq_16498) (i@@1 Int) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length_5444| xs@@1))) (= (get02 Heap@@2 xs@@1 i@@1) (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@2) (|Seq#Index_5444| xs@@1 i@@1) f_7))))
 :qid |stdinbpl.712:15|
 :skolemid |68|
 :pattern ( (state Heap@@2 Mask@@1) (get02 Heap@@2 xs@@1 i@@1))
)))
(assert (forall ((s@@1 T@Seq_16498) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_5444| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_5444| (|Seq#Drop_5444| s@@1 n@@1) j) (|Seq#Index_5444| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.314:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_5444| (|Seq#Drop_5444| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2891) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2891| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2891| (|Seq#Drop_2891| s@@2 n@@2) j@@0) (|Seq#Index_2891| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.314:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2891| (|Seq#Drop_2891| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8658) (Mask@@2 T@PolymorphicMapType_8679) (x T@Ref) ) (!  (=> (and (state Heap@@3 Mask@@2) (< AssumeFunctionsAbove 1)) (= (get01 Heap@@3 x) (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@3) (id Heap@@3 x) f_7)))
 :qid |stdinbpl.636:15|
 :skolemid |64|
 :pattern ( (state Heap@@3 Mask@@2) (get01 Heap@@3 x))
)))
(assert (= (|Seq#Length_5444| |Seq#Empty_5444|) 0))
(assert (= (|Seq#Length_2891| |Seq#Empty_2891|) 0))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8658) (x@@0 T@Ref) ) (! (dummyFunction_5403 (|id#triggerStateless| x@@0))
 :qid |stdinbpl.579:15|
 :skolemid |59|
 :pattern ( (|id'| Heap@@4 x@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8658) (x@@1 T@Ref) ) (! (dummyFunction_3422 (|get01#triggerStateless| x@@1))
 :qid |stdinbpl.630:15|
 :skolemid |63|
 :pattern ( (|get01'| Heap@@5 x@@1))
)))
(assert (forall ((s@@3 T@Seq_16498) (i@@2 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_5444| s@@3))) (and (=> (= i@@2 n@@3) (= (|Seq#Index_5444| (|Seq#Update_5444| s@@3 i@@2 v) n@@3) v)) (=> (not (= i@@2 n@@3)) (= (|Seq#Index_5444| (|Seq#Update_5444| s@@3 i@@2 v) n@@3) (|Seq#Index_5444| s@@3 n@@3)))))
 :qid |stdinbpl.269:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_5444| (|Seq#Update_5444| s@@3 i@@2 v) n@@3))
 :pattern ( (|Seq#Index_5444| s@@3 n@@3) (|Seq#Update_5444| s@@3 i@@2 v))
)))
(assert (forall ((s@@4 T@Seq_2891) (i@@3 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2891| s@@4))) (and (=> (= i@@3 n@@4) (= (|Seq#Index_2891| (|Seq#Update_2891| s@@4 i@@3 v@@0) n@@4) v@@0)) (=> (not (= i@@3 n@@4)) (= (|Seq#Index_2891| (|Seq#Update_2891| s@@4 i@@3 v@@0) n@@4) (|Seq#Index_2891| s@@4 n@@4)))))
 :qid |stdinbpl.269:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2891| (|Seq#Update_2891| s@@4 i@@3 v@@0) n@@4))
 :pattern ( (|Seq#Index_2891| s@@4 n@@4) (|Seq#Update_2891| s@@4 i@@3 v@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8658) (Mask@@3 T@PolymorphicMapType_8679) (x@@2 T@Ref) ) (!  (=> (state Heap@@6 Mask@@3) (= (|get01'| Heap@@6 x@@2) (|get01#frame| (FrameFragment_3013 (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@6) (id Heap@@6 x@@2) f_7)) x@@2)))
 :qid |stdinbpl.643:15|
 :skolemid |65|
 :pattern ( (state Heap@@6 Mask@@3) (|get01'| Heap@@6 x@@2))
)))
(assert (forall ((s@@5 T@Seq_16498) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_5444| s@@5)) (= (|Seq#Length_5444| (|Seq#Take_5444| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_5444| s@@5) n@@5) (= (|Seq#Length_5444| (|Seq#Take_5444| s@@5 n@@5)) (|Seq#Length_5444| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_5444| (|Seq#Take_5444| s@@5 n@@5)) 0)))
 :qid |stdinbpl.280:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_5444| (|Seq#Take_5444| s@@5 n@@5)))
 :pattern ( (|Seq#Take_5444| s@@5 n@@5) (|Seq#Length_5444| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2891) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2891| s@@6)) (= (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2891| s@@6) n@@6) (= (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)) (|Seq#Length_2891| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)) 0)))
 :qid |stdinbpl.280:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2891| s@@6 n@@6) (|Seq#Length_2891| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2891| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.554:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2891| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_16498) (x@@3 T@Ref) ) (!  (=> (|Seq#Contains_16498| s@@7 x@@3) (and (and (<= 0 (|Seq#Skolem_16498| s@@7 x@@3)) (< (|Seq#Skolem_16498| s@@7 x@@3) (|Seq#Length_5444| s@@7))) (= (|Seq#Index_5444| s@@7 (|Seq#Skolem_16498| s@@7 x@@3)) x@@3)))
 :qid |stdinbpl.412:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_16498| s@@7 x@@3))
)))
(assert (forall ((s@@8 T@Seq_2891) (x@@4 Int) ) (!  (=> (|Seq#Contains_2891| s@@8 x@@4) (and (and (<= 0 (|Seq#Skolem_2891| s@@8 x@@4)) (< (|Seq#Skolem_2891| s@@8 x@@4) (|Seq#Length_2891| s@@8))) (= (|Seq#Index_2891| s@@8 (|Seq#Skolem_2891| s@@8 x@@4)) x@@4)))
 :qid |stdinbpl.412:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2891| s@@8 x@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8658) (x@@5 T@Ref) ) (!  (and (= (id Heap@@7 x@@5) (|id'| Heap@@7 x@@5)) (dummyFunction_5403 (|id#triggerStateless| x@@5)))
 :qid |stdinbpl.575:15|
 :skolemid |58|
 :pattern ( (id Heap@@7 x@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8658) (x@@6 T@Ref) ) (!  (and (= (get01 Heap@@8 x@@6) (|get01'| Heap@@8 x@@6)) (dummyFunction_3422 (|get01#triggerStateless| x@@6)))
 :qid |stdinbpl.626:15|
 :skolemid |62|
 :pattern ( (get01 Heap@@8 x@@6))
)))
(assert (forall ((s@@9 T@Seq_16498) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_5444| s@@9 n@@7) s@@9))
 :qid |stdinbpl.396:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_5444| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2891) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2891| s@@10 n@@8) s@@10))
 :qid |stdinbpl.396:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2891| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@4 j@@1) (- i@@4 j@@1))
 :qid |stdinbpl.249:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@1))
)))
(assert (forall ((i@@5 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@5 j@@2) (+ i@@5 j@@2))
 :qid |stdinbpl.247:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8658) (ExhaleHeap T@PolymorphicMapType_8658) (Mask@@4 T@PolymorphicMapType_8679) (pm_f_5 T@Field_5379_22931) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_5379_22995 Mask@@4 null pm_f_5) (IsPredicateField_5379_23022 pm_f_5)) (= (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@9) null (PredicateMaskField_5379 pm_f_5)) (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| ExhaleHeap) null (PredicateMaskField_5379 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@4) (IsPredicateField_5379_23022 pm_f_5) (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| ExhaleHeap) null (PredicateMaskField_5379 pm_f_5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8658) (ExhaleHeap@@0 T@PolymorphicMapType_8658) (Mask@@5 T@PolymorphicMapType_8679) (pm_f_5@@0 T@Field_5379_22931) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_5379_22995 Mask@@5 null pm_f_5@@0) (IsWandField_5379_24769 pm_f_5@@0)) (= (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@10) null (WandMaskField_5379 pm_f_5@@0)) (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| ExhaleHeap@@0) null (WandMaskField_5379 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@5) (IsWandField_5379_24769 pm_f_5@@0) (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| ExhaleHeap@@0) null (WandMaskField_5379 pm_f_5@@0)))
)))
(assert (forall ((x@@7 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_16498| (|Seq#Singleton_5444| x@@7) y) (= x@@7 y))
 :qid |stdinbpl.537:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_16498| (|Seq#Singleton_5444| x@@7) y))
)))
(assert (forall ((x@@8 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2891| (|Seq#Singleton_2891| x@@8) y@@0) (= x@@8 y@@0))
 :qid |stdinbpl.537:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2891| (|Seq#Singleton_2891| x@@8) y@@0))
)))
(assert (forall ((s@@11 T@Seq_16498) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_5444| s@@11))) (= (|Seq#Index_5444| (|Seq#Take_5444| s@@11 n@@9) j@@3) (|Seq#Index_5444| s@@11 j@@3)))
 :qid |stdinbpl.288:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_5444| (|Seq#Take_5444| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_5444| s@@11 j@@3) (|Seq#Take_5444| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2891) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2891| s@@12))) (= (|Seq#Index_2891| (|Seq#Take_2891| s@@12 n@@10) j@@4) (|Seq#Index_2891| s@@12 j@@4)))
 :qid |stdinbpl.288:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2891| (|Seq#Take_2891| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2891| s@@12 j@@4) (|Seq#Take_2891| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_16498) (t T@Seq_16498) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_5444| s@@13))) (< n@@11 (|Seq#Length_5444| (|Seq#Append_16498| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_5444| s@@13)) (|Seq#Length_5444| s@@13)) n@@11) (= (|Seq#Take_5444| (|Seq#Append_16498| s@@13 t) n@@11) (|Seq#Append_16498| s@@13 (|Seq#Take_5444| t (|Seq#Sub| n@@11 (|Seq#Length_5444| s@@13)))))))
 :qid |stdinbpl.373:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_5444| (|Seq#Append_16498| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2891) (t@@0 T@Seq_2891) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2891| s@@14))) (< n@@12 (|Seq#Length_2891| (|Seq#Append_2891| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2891| s@@14)) (|Seq#Length_2891| s@@14)) n@@12) (= (|Seq#Take_2891| (|Seq#Append_2891| s@@14 t@@0) n@@12) (|Seq#Append_2891| s@@14 (|Seq#Take_2891| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2891| s@@14)))))))
 :qid |stdinbpl.373:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2891| (|Seq#Append_2891| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8658) (ExhaleHeap@@1 T@PolymorphicMapType_8658) (Mask@@6 T@PolymorphicMapType_8679) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@11) o_15 $allocated) (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| ExhaleHeap@@1) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| ExhaleHeap@@1) o_15 $allocated))
)))
(assert (forall ((p T@Field_5379_22931) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8718_8718 p v_1 p w))
 :qid |stdinbpl.191:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8718_8718 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_16498) (s1 T@Seq_16498) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_5444|)) (not (= s1 |Seq#Empty_5444|))) (<= (|Seq#Length_5444| s0) n@@13)) (< n@@13 (|Seq#Length_5444| (|Seq#Append_16498| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_5444| s0)) (|Seq#Length_5444| s0)) n@@13) (= (|Seq#Index_5444| (|Seq#Append_16498| s0 s1) n@@13) (|Seq#Index_5444| s1 (|Seq#Sub| n@@13 (|Seq#Length_5444| s0))))))
 :qid |stdinbpl.260:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_5444| (|Seq#Append_16498| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2891) (s1@@0 T@Seq_2891) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2891|)) (not (= s1@@0 |Seq#Empty_2891|))) (<= (|Seq#Length_2891| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2891| (|Seq#Append_2891| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2891| s0@@0)) (|Seq#Length_2891| s0@@0)) n@@14) (= (|Seq#Index_2891| (|Seq#Append_2891| s0@@0 s1@@0) n@@14) (|Seq#Index_2891| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2891| s0@@0))))))
 :qid |stdinbpl.260:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2891| (|Seq#Append_2891| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_5379_3013 f_7)))
(assert  (not (IsWandField_5379_3013 f_7)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8658) (ExhaleHeap@@2 T@PolymorphicMapType_8658) (Mask@@7 T@PolymorphicMapType_8679) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@7) (succHeap Heap@@12 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8679) (o_2@@4 T@Ref) (f_4@@4 T@Field_5379_23064) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5379_28315 f_4@@4))) (not (IsWandField_5379_28331 f_4@@4))) (<= (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8679) (o_2@@5 T@Ref) (f_4@@5 T@Field_5379_22931) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5379_23022 f_4@@5))) (not (IsWandField_5379_24769 f_4@@5))) (<= (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8679) (o_2@@6 T@Ref) (f_4@@6 T@Field_8731_8732) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5379_8732 f_4@@6))) (not (IsWandField_5379_8732 f_4@@6))) (<= (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8679) (o_2@@7 T@Ref) (f_4@@7 T@Field_8718_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5379_53 f_4@@7))) (not (IsWandField_5379_53 f_4@@7))) (<= (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8679) (o_2@@8 T@Ref) (f_4@@8 T@Field_14738_3013) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5379_3013 f_4@@8))) (not (IsWandField_5379_3013 f_4@@8))) (<= (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8679) (o_2@@9 T@Ref) (f_4@@9 T@Field_5379_23064) ) (! (= (HasDirectPerm_5379_28769 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5379_28769 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8679) (o_2@@10 T@Ref) (f_4@@10 T@Field_5379_22931) ) (! (= (HasDirectPerm_5379_22995 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5379_22995 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8679) (o_2@@11 T@Ref) (f_4@@11 T@Field_8731_8732) ) (! (= (HasDirectPerm_5379_8732 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5379_8732 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8679) (o_2@@12 T@Ref) (f_4@@12 T@Field_8718_53) ) (! (= (HasDirectPerm_5379_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5379_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8679) (o_2@@13 T@Ref) (f_4@@13 T@Field_14738_3013) ) (! (= (HasDirectPerm_5379_3013 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5379_3013 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8658) (ExhaleHeap@@3 T@PolymorphicMapType_8658) (Mask@@18 T@PolymorphicMapType_8679) (pm_f_5@@1 T@Field_5379_22931) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_5379_22995 Mask@@18 null pm_f_5@@1) (IsPredicateField_5379_23022 pm_f_5@@1)) (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_8718_53) ) (!  (=> (select (|PolymorphicMapType_9207_8718_53#PolymorphicMapType_9207| (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@13) null (PredicateMaskField_5379 pm_f_5@@1))) o2_5 f_23) (= (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@13) o2_5 f_23) (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| ExhaleHeap@@3) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| ExhaleHeap@@3) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_8731_8732) ) (!  (=> (select (|PolymorphicMapType_9207_8718_8732#PolymorphicMapType_9207| (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@13) null (PredicateMaskField_5379 pm_f_5@@1))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@13) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| ExhaleHeap@@3) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| ExhaleHeap@@3) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_14738_3013) ) (!  (=> (select (|PolymorphicMapType_9207_8718_3013#PolymorphicMapType_9207| (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@13) null (PredicateMaskField_5379 pm_f_5@@1))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@13) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| ExhaleHeap@@3) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| ExhaleHeap@@3) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_5379_22931) ) (!  (=> (select (|PolymorphicMapType_9207_8718_22931#PolymorphicMapType_9207| (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@13) null (PredicateMaskField_5379 pm_f_5@@1))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@13) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| ExhaleHeap@@3) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| ExhaleHeap@@3) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_5379_23064) ) (!  (=> (select (|PolymorphicMapType_9207_8718_24242#PolymorphicMapType_9207| (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@13) null (PredicateMaskField_5379 pm_f_5@@1))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@13) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| ExhaleHeap@@3) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| ExhaleHeap@@3) o2_5@@3 f_23@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@18) (IsPredicateField_5379_23022 pm_f_5@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8658) (ExhaleHeap@@4 T@PolymorphicMapType_8658) (Mask@@19 T@PolymorphicMapType_8679) (pm_f_5@@2 T@Field_5379_22931) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_5379_22995 Mask@@19 null pm_f_5@@2) (IsWandField_5379_24769 pm_f_5@@2)) (and (and (and (and (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_8718_53) ) (!  (=> (select (|PolymorphicMapType_9207_8718_53#PolymorphicMapType_9207| (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@14) null (WandMaskField_5379 pm_f_5@@2))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@14) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| ExhaleHeap@@4) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| ExhaleHeap@@4) o2_5@@4 f_23@@4))
)) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_8731_8732) ) (!  (=> (select (|PolymorphicMapType_9207_8718_8732#PolymorphicMapType_9207| (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@14) null (WandMaskField_5379 pm_f_5@@2))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@14) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| ExhaleHeap@@4) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| ExhaleHeap@@4) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_14738_3013) ) (!  (=> (select (|PolymorphicMapType_9207_8718_3013#PolymorphicMapType_9207| (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@14) null (WandMaskField_5379 pm_f_5@@2))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@14) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| ExhaleHeap@@4) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| ExhaleHeap@@4) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_5379_22931) ) (!  (=> (select (|PolymorphicMapType_9207_8718_22931#PolymorphicMapType_9207| (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@14) null (WandMaskField_5379 pm_f_5@@2))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@14) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| ExhaleHeap@@4) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| ExhaleHeap@@4) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_5379_23064) ) (!  (=> (select (|PolymorphicMapType_9207_8718_24242#PolymorphicMapType_9207| (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@14) null (WandMaskField_5379 pm_f_5@@2))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@14) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| ExhaleHeap@@4) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| ExhaleHeap@@4) o2_5@@8 f_23@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@19) (IsWandField_5379_24769 pm_f_5@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.179:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2891| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.552:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2891| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8658) (ExhaleHeap@@5 T@PolymorphicMapType_8658) (Mask@@20 T@PolymorphicMapType_8679) (o_15@@0 T@Ref) (f_23@@9 T@Field_5379_23064) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_5379_28769 Mask@@20 o_15@@0 f_23@@9) (= (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@15) o_15@@0 f_23@@9) (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| ExhaleHeap@@5) o_15@@0 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| ExhaleHeap@@5) o_15@@0 f_23@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8658) (ExhaleHeap@@6 T@PolymorphicMapType_8658) (Mask@@21 T@PolymorphicMapType_8679) (o_15@@1 T@Ref) (f_23@@10 T@Field_5379_22931) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_5379_22995 Mask@@21 o_15@@1 f_23@@10) (= (select (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@16) o_15@@1 f_23@@10) (select (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| ExhaleHeap@@6) o_15@@1 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| ExhaleHeap@@6) o_15@@1 f_23@@10))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8658) (ExhaleHeap@@7 T@PolymorphicMapType_8658) (Mask@@22 T@PolymorphicMapType_8679) (o_15@@2 T@Ref) (f_23@@11 T@Field_8731_8732) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_5379_8732 Mask@@22 o_15@@2 f_23@@11) (= (select (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@17) o_15@@2 f_23@@11) (select (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| ExhaleHeap@@7) o_15@@2 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| ExhaleHeap@@7) o_15@@2 f_23@@11))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8658) (ExhaleHeap@@8 T@PolymorphicMapType_8658) (Mask@@23 T@PolymorphicMapType_8679) (o_15@@3 T@Ref) (f_23@@12 T@Field_8718_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_5379_53 Mask@@23 o_15@@3 f_23@@12) (= (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@18) o_15@@3 f_23@@12) (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| ExhaleHeap@@8) o_15@@3 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| ExhaleHeap@@8) o_15@@3 f_23@@12))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8658) (ExhaleHeap@@9 T@PolymorphicMapType_8658) (Mask@@24 T@PolymorphicMapType_8679) (o_15@@4 T@Ref) (f_23@@13 T@Field_14738_3013) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_5379_3013 Mask@@24 o_15@@4 f_23@@13) (= (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@19) o_15@@4 f_23@@13) (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| ExhaleHeap@@9) o_15@@4 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| ExhaleHeap@@9) o_15@@4 f_23@@13))
)))
(assert (forall ((s0@@1 T@Seq_16498) (s1@@1 T@Seq_16498) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_5444|)) (not (= s1@@1 |Seq#Empty_5444|))) (= (|Seq#Length_5444| (|Seq#Append_16498| s0@@1 s1@@1)) (+ (|Seq#Length_5444| s0@@1) (|Seq#Length_5444| s1@@1))))
 :qid |stdinbpl.229:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_5444| (|Seq#Append_16498| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2891) (s1@@2 T@Seq_2891) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2891|)) (not (= s1@@2 |Seq#Empty_2891|))) (= (|Seq#Length_2891| (|Seq#Append_2891| s0@@2 s1@@2)) (+ (|Seq#Length_2891| s0@@2) (|Seq#Length_2891| s1@@2))))
 :qid |stdinbpl.229:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2891| (|Seq#Append_2891| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5379_23064) ) (! (= (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5379_22931) ) (! (= (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8731_8732) ) (! (= (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_8718_53) ) (! (= (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14738_3013) ) (! (= (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_16498) (t@@1 T@Seq_16498) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_5444| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_5444| s@@15)) (|Seq#Length_5444| s@@15)) n@@15) (= (|Seq#Drop_5444| (|Seq#Append_16498| s@@15 t@@1) n@@15) (|Seq#Drop_5444| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_5444| s@@15))))))
 :qid |stdinbpl.386:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_5444| (|Seq#Append_16498| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2891) (t@@2 T@Seq_2891) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2891| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2891| s@@16)) (|Seq#Length_2891| s@@16)) n@@16) (= (|Seq#Drop_2891| (|Seq#Append_2891| s@@16 t@@2) n@@16) (|Seq#Drop_2891| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2891| s@@16))))))
 :qid |stdinbpl.386:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2891| (|Seq#Append_2891| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8658) (xs@@2 T@Seq_16498) (i@@6 Int) ) (!  (and (= (get02 Heap@@20 xs@@2 i@@6) (|get02'| Heap@@20 xs@@2 i@@6)) (dummyFunction_3422 (|get02#triggerStateless| xs@@2 i@@6)))
 :qid |stdinbpl.702:15|
 :skolemid |66|
 :pattern ( (get02 Heap@@20 xs@@2 i@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8679) (SummandMask1 T@PolymorphicMapType_8679) (SummandMask2 T@PolymorphicMapType_8679) (o_2@@19 T@Ref) (f_4@@19 T@Field_5379_23064) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8679) (SummandMask1@@0 T@PolymorphicMapType_8679) (SummandMask2@@0 T@PolymorphicMapType_8679) (o_2@@20 T@Ref) (f_4@@20 T@Field_5379_22931) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8679) (SummandMask1@@1 T@PolymorphicMapType_8679) (SummandMask2@@1 T@PolymorphicMapType_8679) (o_2@@21 T@Ref) (f_4@@21 T@Field_8731_8732) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8679) (SummandMask1@@2 T@PolymorphicMapType_8679) (SummandMask2@@2 T@PolymorphicMapType_8679) (o_2@@22 T@Ref) (f_4@@22 T@Field_8718_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8679) (SummandMask1@@3 T@PolymorphicMapType_8679) (SummandMask2@@3 T@PolymorphicMapType_8679) (o_2@@23 T@Ref) (f_4@@23 T@Field_14738_3013) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2891| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2891| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.551:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2891| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_16498) (b T@Seq_16498) ) (!  (=> (|Seq#Equal_16498| a b) (= a b))
 :qid |stdinbpl.524:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16498| a b))
)))
(assert (forall ((a@@0 T@Seq_2891) (b@@0 T@Seq_2891) ) (!  (=> (|Seq#Equal_2891| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.524:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2891| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_16498) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_5444| s@@17))) (|Seq#ContainsTrigger_5444| s@@17 (|Seq#Index_5444| s@@17 i@@7)))
 :qid |stdinbpl.417:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_5444| s@@17 i@@7))
)))
(assert (forall ((s@@18 T@Seq_2891) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_2891| s@@18))) (|Seq#ContainsTrigger_2891| s@@18 (|Seq#Index_2891| s@@18 i@@8)))
 :qid |stdinbpl.417:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2891| s@@18 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_16498) (s1@@3 T@Seq_16498) ) (!  (and (=> (= s0@@3 |Seq#Empty_5444|) (= (|Seq#Append_16498| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_5444|) (= (|Seq#Append_16498| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.235:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_16498| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2891) (s1@@4 T@Seq_2891) ) (!  (and (=> (= s0@@4 |Seq#Empty_2891|) (= (|Seq#Append_2891| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2891|) (= (|Seq#Append_2891| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.235:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2891| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_5444| (|Seq#Singleton_5444| t@@3) 0) t@@3)
 :qid |stdinbpl.239:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_5444| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2891| (|Seq#Singleton_2891| t@@4) 0) t@@4)
 :qid |stdinbpl.239:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2891| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16498) ) (! (<= 0 (|Seq#Length_5444| s@@19))
 :qid |stdinbpl.218:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_5444| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2891) ) (! (<= 0 (|Seq#Length_2891| s@@20))
 :qid |stdinbpl.218:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2891| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_16498) (s1@@5 T@Seq_16498) ) (!  (=> (|Seq#Equal_16498| s0@@5 s1@@5) (and (= (|Seq#Length_5444| s0@@5) (|Seq#Length_5444| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_5444| s0@@5))) (= (|Seq#Index_5444| s0@@5 j@@6) (|Seq#Index_5444| s1@@5 j@@6)))
 :qid |stdinbpl.514:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_5444| s0@@5 j@@6))
 :pattern ( (|Seq#Index_5444| s1@@5 j@@6))
))))
 :qid |stdinbpl.511:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16498| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2891) (s1@@6 T@Seq_2891) ) (!  (=> (|Seq#Equal_2891| s0@@6 s1@@6) (and (= (|Seq#Length_2891| s0@@6) (|Seq#Length_2891| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2891| s0@@6))) (= (|Seq#Index_2891| s0@@6 j@@7) (|Seq#Index_2891| s1@@6 j@@7)))
 :qid |stdinbpl.514:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2891| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2891| s1@@6 j@@7))
))))
 :qid |stdinbpl.511:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2891| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_5444| (|Seq#Singleton_5444| t@@5)) 1)
 :qid |stdinbpl.226:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_5444| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2891| (|Seq#Singleton_2891| t@@6)) 1)
 :qid |stdinbpl.226:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2891| t@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8658) (Mask@@25 T@PolymorphicMapType_8679) (x@@9 T@Ref) ) (!  (=> (state Heap@@21 Mask@@25) (= (|id'| Heap@@21 x@@9) (|id#frame| EmptyFrame x@@9)))
 :qid |stdinbpl.592:15|
 :skolemid |61|
 :pattern ( (state Heap@@21 Mask@@25) (|id'| Heap@@21 x@@9))
)))
(assert (forall ((s@@21 T@Seq_16498) (t@@7 T@Seq_16498) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_5444| s@@21))) (= (|Seq#Take_5444| (|Seq#Append_16498| s@@21 t@@7) n@@17) (|Seq#Take_5444| s@@21 n@@17)))
 :qid |stdinbpl.368:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_5444| (|Seq#Append_16498| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2891) (t@@8 T@Seq_2891) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2891| s@@22))) (= (|Seq#Take_2891| (|Seq#Append_2891| s@@22 t@@8) n@@18) (|Seq#Take_2891| s@@22 n@@18)))
 :qid |stdinbpl.368:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2891| (|Seq#Append_2891| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_16498) (i@@9 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_5444| s@@23))) (= (|Seq#Length_5444| (|Seq#Update_5444| s@@23 i@@9 v@@2)) (|Seq#Length_5444| s@@23)))
 :qid |stdinbpl.267:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_5444| (|Seq#Update_5444| s@@23 i@@9 v@@2)))
 :pattern ( (|Seq#Length_5444| s@@23) (|Seq#Update_5444| s@@23 i@@9 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2891) (i@@10 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2891| s@@24))) (= (|Seq#Length_2891| (|Seq#Update_2891| s@@24 i@@10 v@@3)) (|Seq#Length_2891| s@@24)))
 :qid |stdinbpl.267:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2891| (|Seq#Update_2891| s@@24 i@@10 v@@3)))
 :pattern ( (|Seq#Length_2891| s@@24) (|Seq#Update_2891| s@@24 i@@10 v@@3))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8658) (o_14 T@Ref) (f_24 T@Field_5379_22931) (v@@4 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_8658 (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@22) (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@22) (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@22) (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@22) (store (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@22) o_14 f_24 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8658 (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@22) (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@22) (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@22) (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@22) (store (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@22) o_14 f_24 v@@4)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8658) (o_14@@0 T@Ref) (f_24@@0 T@Field_5379_23064) (v@@5 T@PolymorphicMapType_9207) ) (! (succHeap Heap@@23 (PolymorphicMapType_8658 (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@23) (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@23) (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@23) (store (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@23) o_14@@0 f_24@@0 v@@5) (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8658 (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@23) (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@23) (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@23) (store (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@23) o_14@@0 f_24@@0 v@@5) (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8658) (o_14@@1 T@Ref) (f_24@@1 T@Field_14738_3013) (v@@6 Int) ) (! (succHeap Heap@@24 (PolymorphicMapType_8658 (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@24) (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@24) (store (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@24) o_14@@1 f_24@@1 v@@6) (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@24) (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8658 (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@24) (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@24) (store (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@24) o_14@@1 f_24@@1 v@@6) (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@24) (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8658) (o_14@@2 T@Ref) (f_24@@2 T@Field_8731_8732) (v@@7 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_8658 (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@25) (store (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@25) o_14@@2 f_24@@2 v@@7) (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@25) (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@25) (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8658 (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@25) (store (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@25) o_14@@2 f_24@@2 v@@7) (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@25) (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@25) (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8658) (o_14@@3 T@Ref) (f_24@@3 T@Field_8718_53) (v@@8 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_8658 (store (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@26) o_14@@3 f_24@@3 v@@8) (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@26) (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@26) (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@26) (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8658 (store (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@26) o_14@@3 f_24@@3 v@@8) (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@26) (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@26) (|PolymorphicMapType_8658_5379_23108#PolymorphicMapType_8658| Heap@@26) (|PolymorphicMapType_8658_8718_22931#PolymorphicMapType_8658| Heap@@26)))
)))
(assert (forall ((s@@25 T@Seq_16498) (t@@9 T@Seq_16498) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_5444| s@@25))) (= (|Seq#Drop_5444| (|Seq#Append_16498| s@@25 t@@9) n@@19) (|Seq#Append_16498| (|Seq#Drop_5444| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.382:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_5444| (|Seq#Append_16498| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2891) (t@@10 T@Seq_2891) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2891| s@@26))) (= (|Seq#Drop_2891| (|Seq#Append_2891| s@@26 t@@10) n@@20) (|Seq#Append_2891| (|Seq#Drop_2891| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.382:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2891| (|Seq#Append_2891| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16498) (n@@21 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@11)) (< i@@11 (|Seq#Length_5444| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@21) n@@21) i@@11) (= (|Seq#Index_5444| (|Seq#Drop_5444| s@@27 n@@21) (|Seq#Sub| i@@11 n@@21)) (|Seq#Index_5444| s@@27 i@@11))))
 :qid |stdinbpl.318:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_5444| s@@27 n@@21) (|Seq#Index_5444| s@@27 i@@11))
)))
(assert (forall ((s@@28 T@Seq_2891) (n@@22 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@12)) (< i@@12 (|Seq#Length_2891| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@22) n@@22) i@@12) (= (|Seq#Index_2891| (|Seq#Drop_2891| s@@28 n@@22) (|Seq#Sub| i@@12 n@@22)) (|Seq#Index_2891| s@@28 i@@12))))
 :qid |stdinbpl.318:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2891| s@@28 n@@22) (|Seq#Index_2891| s@@28 i@@12))
)))
(assert (forall ((s0@@7 T@Seq_16498) (s1@@7 T@Seq_16498) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_5444|)) (not (= s1@@7 |Seq#Empty_5444|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_5444| s0@@7))) (= (|Seq#Index_5444| (|Seq#Append_16498| s0@@7 s1@@7) n@@23) (|Seq#Index_5444| s0@@7 n@@23)))
 :qid |stdinbpl.258:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_5444| (|Seq#Append_16498| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_5444| s0@@7 n@@23) (|Seq#Append_16498| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2891) (s1@@8 T@Seq_2891) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2891|)) (not (= s1@@8 |Seq#Empty_2891|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2891| s0@@8))) (= (|Seq#Index_2891| (|Seq#Append_2891| s0@@8 s1@@8) n@@24) (|Seq#Index_2891| s0@@8 n@@24)))
 :qid |stdinbpl.258:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2891| (|Seq#Append_2891| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2891| s0@@8 n@@24) (|Seq#Append_2891| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16498) (s1@@9 T@Seq_16498) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_5444|)) (not (= s1@@9 |Seq#Empty_5444|))) (<= 0 m)) (< m (|Seq#Length_5444| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_5444| s0@@9)) (|Seq#Length_5444| s0@@9)) m) (= (|Seq#Index_5444| (|Seq#Append_16498| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_5444| s0@@9))) (|Seq#Index_5444| s1@@9 m))))
 :qid |stdinbpl.263:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_5444| s1@@9 m) (|Seq#Append_16498| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2891) (s1@@10 T@Seq_2891) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2891|)) (not (= s1@@10 |Seq#Empty_2891|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2891| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2891| s0@@10)) (|Seq#Length_2891| s0@@10)) m@@0) (= (|Seq#Index_2891| (|Seq#Append_2891| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2891| s0@@10))) (|Seq#Index_2891| s1@@10 m@@0))))
 :qid |stdinbpl.263:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2891| s1@@10 m@@0) (|Seq#Append_2891| s0@@10 s1@@10))
)))
(assert (forall ((o_14@@4 T@Ref) (f_22 T@Field_8731_8732) (Heap@@27 T@PolymorphicMapType_8658) ) (!  (=> (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@27) o_14@@4 $allocated) (select (|PolymorphicMapType_8658_5189_53#PolymorphicMapType_8658| Heap@@27) (select (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@27) o_14@@4 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8658_5192_5193#PolymorphicMapType_8658| Heap@@27) o_14@@4 f_22))
)))
(assert (forall ((s@@29 T@Seq_16498) (x@@10 T@Ref) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_5444| s@@29))) (= (|Seq#Index_5444| s@@29 i@@13) x@@10)) (|Seq#Contains_16498| s@@29 x@@10))
 :qid |stdinbpl.415:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_16498| s@@29 x@@10) (|Seq#Index_5444| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_2891) (x@@11 Int) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_2891| s@@30))) (= (|Seq#Index_2891| s@@30 i@@14) x@@11)) (|Seq#Contains_2891| s@@30 x@@11))
 :qid |stdinbpl.415:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2891| s@@30 x@@11) (|Seq#Index_2891| s@@30 i@@14))
)))
(assert (forall ((s0@@11 T@Seq_16498) (s1@@11 T@Seq_16498) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16498| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16498| s0@@11 s1@@11))) (not (= (|Seq#Length_5444| s0@@11) (|Seq#Length_5444| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16498| s0@@11 s1@@11))) (= (|Seq#Length_5444| s0@@11) (|Seq#Length_5444| s1@@11))) (= (|Seq#SkolemDiff_16498| s0@@11 s1@@11) (|Seq#SkolemDiff_16498| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16498| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16498| s0@@11 s1@@11) (|Seq#Length_5444| s0@@11))) (not (= (|Seq#Index_5444| s0@@11 (|Seq#SkolemDiff_16498| s0@@11 s1@@11)) (|Seq#Index_5444| s1@@11 (|Seq#SkolemDiff_16498| s0@@11 s1@@11))))))
 :qid |stdinbpl.519:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16498| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2891) (s1@@12 T@Seq_2891) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2891| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2891| s0@@12 s1@@12))) (not (= (|Seq#Length_2891| s0@@12) (|Seq#Length_2891| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2891| s0@@12 s1@@12))) (= (|Seq#Length_2891| s0@@12) (|Seq#Length_2891| s1@@12))) (= (|Seq#SkolemDiff_2891| s0@@12 s1@@12) (|Seq#SkolemDiff_2891| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2891| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2891| s0@@12 s1@@12) (|Seq#Length_2891| s0@@12))) (not (= (|Seq#Index_2891| s0@@12 (|Seq#SkolemDiff_2891| s0@@12 s1@@12)) (|Seq#Index_2891| s1@@12 (|Seq#SkolemDiff_2891| s0@@12 s1@@12))))))
 :qid |stdinbpl.519:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2891| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_5379_22931) (v_1@@0 T@FrameType) (q T@Field_5379_22931) (w@@0 T@FrameType) (r T@Field_5379_22931) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8718_8718 p@@1 v_1@@0 q w@@0) (InsidePredicate_8718_8718 q w@@0 r u)) (InsidePredicate_8718_8718 p@@1 v_1@@0 r u))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8718_8718 p@@1 v_1@@0 q w@@0) (InsidePredicate_8718_8718 q w@@0 r u))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8658) (Mask@@26 T@PolymorphicMapType_8679) (x@@12 T@Ref) ) (!  (=> (and (state Heap@@28 Mask@@26) (< AssumeFunctionsAbove 2)) (= (id Heap@@28 x@@12) x@@12))
 :qid |stdinbpl.585:15|
 :skolemid |60|
 :pattern ( (state Heap@@28 Mask@@26) (id Heap@@28 x@@12))
)))
(assert (forall ((s@@31 T@Seq_16498) ) (!  (=> (= (|Seq#Length_5444| s@@31) 0) (= s@@31 |Seq#Empty_5444|))
 :qid |stdinbpl.222:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_5444| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2891) ) (!  (=> (= (|Seq#Length_2891| s@@32) 0) (= s@@32 |Seq#Empty_2891|))
 :qid |stdinbpl.222:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2891| s@@32))
)))
(assert (forall ((s@@33 T@Seq_16498) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_5444| s@@33 n@@25) |Seq#Empty_5444|))
 :qid |stdinbpl.398:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_5444| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2891) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2891| s@@34 n@@26) |Seq#Empty_2891|))
 :qid |stdinbpl.398:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2891| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@29 () T@PolymorphicMapType_8658)
(declare-fun xs@@3 () T@Seq_16498)
(declare-fun QPMask@0 () T@PolymorphicMapType_8679)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i_3 () Int)
(declare-fun i1_10 () Int)
(declare-fun i2_12 () Int)
(set-info :boogie-vc-id test03)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon15_Else_correct  (=> (= (ControlFlow 0 17) (- 0 16)) (= (get02 Heap@@29 xs@@3 0) 5))))
(let ((anon15_Then_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (< 0 (|Seq#Length_5444| xs@@3))) (=> (< 0 (|Seq#Length_5444| xs@@3)) (=> (= (ControlFlow 0 14) (- 0 13)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| QPMask@0) (|Seq#Index_5444| xs@@3 0) f_7))))))))
(let ((anon13_Else_correct  (and (=> (= (ControlFlow 0 18) (- 0 21)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_1)) (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_5444| xs@@3 i_1) (|Seq#Index_5444| xs@@3 i_1_1))))
 :qid |stdinbpl.977:15|
 :skolemid |71|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_1@@0)) (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_5444| xs@@3 i_1@@0) (|Seq#Index_5444| xs@@3 i_1_1@@0))))
 :qid |stdinbpl.977:15|
 :skolemid |71|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_1@@1) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_5444| xs@@3 i_1@@1)) (= (invRecv1 (|Seq#Index_5444| xs@@3 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.983:22|
 :skolemid |72|
 :pattern ( (|Seq#Index_5444| xs@@3 i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_1@@1))
 :pattern ( (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_1@@1))
 :pattern ( (|Seq#Index_5444| xs@@3 i_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) (invRecv1 o_9)) (< NoPerm FullPerm)) (qpRange1 o_9)) (= (|Seq#Index_5444| xs@@3 (invRecv1 o_9)) o_9))
 :qid |stdinbpl.987:22|
 :skolemid |73|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_1@@2) (not (= (|Seq#Index_5444| xs@@3 i_1@@2) null)))
 :qid |stdinbpl.993:22|
 :skolemid |74|
 :pattern ( (|Seq#Index_5444| xs@@3 i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_1@@2))
 :pattern ( (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_1@@2))
 :pattern ( (|Seq#Index_5444| xs@@3 i_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_5444| xs@@3 (invRecv1 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| QPMask@0) o_9@@0 f_7) (+ (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| QPMask@0) o_9@@0 f_7) (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.999:22|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| QPMask@0) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_8718_53) ) (!  (=> true (= (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.1003:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8679_5379_53#PolymorphicMapType_8679| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_8731_8732) ) (!  (=> true (= (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1003:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8679_5379_8732#PolymorphicMapType_8679| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_14738_3013) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1003:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8679_5379_3013#PolymorphicMapType_8679| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_5379_22931) ) (!  (=> true (= (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1003:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8679_5379_22931#PolymorphicMapType_8679| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_5379_23064) ) (!  (=> true (= (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1003:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8679_5379_27186#PolymorphicMapType_8679| QPMask@0) o_9@@5 f_5@@3))
))) (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (< 0 (|Seq#Length_5444| xs@@3))) (=> (< 0 (|Seq#Length_5444| xs@@3)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_5379_3013 QPMask@0 (|Seq#Index_5444| xs@@3 0) f_7)) (=> (HasDirectPerm_5379_3013 QPMask@0 (|Seq#Index_5444| xs@@3 0) f_7) (=> (and (= (select (|PolymorphicMapType_8658_5379_3013#PolymorphicMapType_8658| Heap@@29) (|Seq#Index_5444| xs@@3 0) f_7) 5) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 18) 14) anon15_Then_correct) (=> (= (ControlFlow 0 18) 17) anon15_Else_correct)))))))))))))
(let ((anon7_correct true))
(let ((anon14_Else_correct  (=> (and (not (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_3)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon14_Then_correct  (=> (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i_3) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_3 (|Seq#Length_5444| xs@@3))) (=> (< i_3 (|Seq#Length_5444| xs@@3)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon11_Else_correct  (=> (and (forall ((i1_1 Int) (i2_1 Int) ) (!  (=> (and (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i1_1) (and (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i2_1) (not (= i1_1 i2_1)))) (not (= (|Seq#Index_5444| xs@@3 i1_1) (|Seq#Index_5444| xs@@3 i2_1))))
 :qid |stdinbpl.959:20|
 :skolemid |70|
 :pattern ( (|Seq#ContainsTrigger_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i1_1) (|Seq#ContainsTrigger_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i1_1) (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i2_1))
 :pattern ( (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i1_1) (|Seq#ContainsTrigger_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i2_1))
 :pattern ( (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i1_1) (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i1_1) (|Seq#Index_5444| xs@@3 i2_1))
 :pattern ( (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i1_1) (|Seq#Index_5444| xs@@3 i2_1))
 :pattern ( (|Seq#ContainsTrigger_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i2_1) (|Seq#Index_5444| xs@@3 i1_1))
 :pattern ( (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i2_1) (|Seq#Index_5444| xs@@3 i1_1))
 :pattern ( (|Seq#Index_5444| xs@@3 i1_1) (|Seq#Index_5444| xs@@3 i2_1))
)) (state Heap@@29 ZeroMask)) (and (and (=> (= (ControlFlow 0 22) 18) anon13_Else_correct) (=> (= (ControlFlow 0 22) 9) anon14_Then_correct)) (=> (= (ControlFlow 0 22) 12) anon14_Else_correct)))))
(let ((anon3_correct true))
(let ((anon12_Else_correct  (=> (and (not (and (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i1_10) (and (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i2_12) (not (= i1_10 i2_12))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon12_Then_correct  (=> (and (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i1_10) (and (|Seq#Contains_2891| (|Seq#Range| 0 (|Seq#Length_5444| xs@@3)) i2_12) (not (= i1_10 i2_12)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_10 0)) (=> (>= i1_10 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_10 (|Seq#Length_5444| xs@@3))) (=> (< i1_10 (|Seq#Length_5444| xs@@3)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_12 0)) (=> (>= i2_12 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_12 (|Seq#Length_5444| xs@@3))) (=> (< i2_12 (|Seq#Length_5444| xs@@3)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@29 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (< 0 (|Seq#Length_5444| xs@@3)) (state Heap@@29 ZeroMask))) (and (and (=> (= (ControlFlow 0 23) 22) anon11_Else_correct) (=> (= (ControlFlow 0 23) 2) anon12_Then_correct)) (=> (= (ControlFlow 0 23) 7) anon12_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 24) 23) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
