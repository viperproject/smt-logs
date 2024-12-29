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
(declare-sort T@Field_10804_53 0)
(declare-sort T@Field_10817_10818 0)
(declare-sort T@Field_16872_3004 0)
(declare-sort T@Field_18112_18113 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_18125_18130 0)
(declare-sort T@Field_5918_5964 0)
(declare-sort T@Field_5918_18130 0)
(declare-sort T@Field_5963_3004 0)
(declare-sort T@Field_5963_5916 0)
(declare-sort T@Field_5963_53 0)
(declare-datatypes ((T@PolymorphicMapType_10765 0)) (((PolymorphicMapType_10765 (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| (Array T@Ref T@Field_16872_3004 Real)) (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| (Array T@Ref T@Field_10817_10818 Real)) (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| (Array T@Ref T@Field_18112_18113 Real)) (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| (Array T@Ref T@Field_5918_5964 Real)) (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| (Array T@Ref T@Field_10804_53 Real)) (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| (Array T@Ref T@Field_5918_18130 Real)) (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| (Array T@Ref T@Field_5963_3004 Real)) (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| (Array T@Ref T@Field_5963_5916 Real)) (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| (Array T@Ref T@Field_5963_53 Real)) (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| (Array T@Ref T@Field_18125_18130 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11293 0)) (((PolymorphicMapType_11293 (|PolymorphicMapType_11293_5918_3004#PolymorphicMapType_11293| (Array T@Ref T@Field_16872_3004 Bool)) (|PolymorphicMapType_11293_5918_53#PolymorphicMapType_11293| (Array T@Ref T@Field_10804_53 Bool)) (|PolymorphicMapType_11293_5918_10818#PolymorphicMapType_11293| (Array T@Ref T@Field_10817_10818 Bool)) (|PolymorphicMapType_11293_5918_18113#PolymorphicMapType_11293| (Array T@Ref T@Field_5918_5964 Bool)) (|PolymorphicMapType_11293_5918_35084#PolymorphicMapType_11293| (Array T@Ref T@Field_5918_18130 Bool)) (|PolymorphicMapType_11293_18112_3004#PolymorphicMapType_11293| (Array T@Ref T@Field_5963_3004 Bool)) (|PolymorphicMapType_11293_18112_53#PolymorphicMapType_11293| (Array T@Ref T@Field_5963_53 Bool)) (|PolymorphicMapType_11293_18112_10818#PolymorphicMapType_11293| (Array T@Ref T@Field_5963_5916 Bool)) (|PolymorphicMapType_11293_18112_18113#PolymorphicMapType_11293| (Array T@Ref T@Field_18112_18113 Bool)) (|PolymorphicMapType_11293_18112_36132#PolymorphicMapType_11293| (Array T@Ref T@Field_18125_18130 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10744 0)) (((PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| (Array T@Ref T@Field_10804_53 Bool)) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| (Array T@Ref T@Field_10817_10818 T@Ref)) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| (Array T@Ref T@Field_16872_3004 Int)) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| (Array T@Ref T@Field_18112_18113 T@FrameType)) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| (Array T@Ref T@Field_18125_18130 T@PolymorphicMapType_11293)) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| (Array T@Ref T@Field_5918_5964 T@FrameType)) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| (Array T@Ref T@Field_5918_18130 T@PolymorphicMapType_11293)) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| (Array T@Ref T@Field_5963_3004 Int)) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| (Array T@Ref T@Field_5963_5916 T@Ref)) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| (Array T@Ref T@Field_5963_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_10804_53)
(declare-fun f_7 () T@Field_10817_10818)
(declare-fun g () T@Field_16872_3004)
(declare-fun integer_1 () T@Field_16872_3004)
(declare-fun Node_n () T@Field_10817_10818)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_10744 T@PolymorphicMapType_10744) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10744 T@PolymorphicMapType_10744) Bool)
(declare-fun state (T@PolymorphicMapType_10744 T@PolymorphicMapType_10765) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10765) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11293)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun P (T@Ref) T@Field_18112_18113)
(declare-fun IsPredicateField_5963_5964 (T@Field_18112_18113) Bool)
(declare-fun |sq'| (T@PolymorphicMapType_10744 Int) Int)
(declare-fun dummyFunction_3217 (Int) Bool)
(declare-fun |sq#triggerStateless| (Int) Int)
(declare-fun |id'| (T@PolymorphicMapType_10744 T@Ref) T@Ref)
(declare-fun dummyFunction_5957 (T@Ref) Bool)
(declare-fun |id#triggerStateless| (T@Ref) T@Ref)
(declare-fun |P#trigger_5963| (T@PolymorphicMapType_10744 T@Field_18112_18113) Bool)
(declare-fun |P#everUsed_5963| (T@Field_18112_18113) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun sq (T@PolymorphicMapType_10744 Int) Int)
(declare-fun id (T@PolymorphicMapType_10744 T@Ref) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10744 T@PolymorphicMapType_10744 T@PolymorphicMapType_10765) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5963 (T@Field_18112_18113) T@Field_18125_18130)
(declare-fun HasDirectPerm_5963_5964 (T@PolymorphicMapType_10765 T@Ref T@Field_18112_18113) Bool)
(declare-fun IsPredicateField_5918_33612 (T@Field_5918_5964) Bool)
(declare-fun PredicateMaskField_5918 (T@Field_5918_5964) T@Field_5918_18130)
(declare-fun HasDirectPerm_5918_5964 (T@PolymorphicMapType_10765 T@Ref T@Field_5918_5964) Bool)
(declare-fun IsWandField_5963_37297 (T@Field_18112_18113) Bool)
(declare-fun WandMaskField_5963 (T@Field_18112_18113) T@Field_18125_18130)
(declare-fun IsWandField_5918_36940 (T@Field_5918_5964) Bool)
(declare-fun WandMaskField_5918 (T@Field_5918_5964) T@Field_5918_18130)
(declare-fun |Seq#Singleton_2867| (Int) T@Seq_2867)
(declare-fun |P#sm| (T@Ref) T@Field_18125_18130)
(declare-fun |Seq#Append_2867| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_10744)
(declare-fun ZeroMask () T@PolymorphicMapType_10765)
(declare-fun InsidePredicate_18112_18112 (T@Field_18112_18113 T@FrameType T@Field_18112_18113 T@FrameType) Bool)
(declare-fun InsidePredicate_10804_10804 (T@Field_5918_5964 T@FrameType T@Field_5918_5964 T@FrameType) Bool)
(declare-fun IsPredicateField_5915_5916 (T@Field_10817_10818) Bool)
(declare-fun IsWandField_5915_5916 (T@Field_10817_10818) Bool)
(declare-fun IsPredicateField_5918_3004 (T@Field_16872_3004) Bool)
(declare-fun IsWandField_5918_3004 (T@Field_16872_3004) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5963_44200 (T@Field_18125_18130) Bool)
(declare-fun IsWandField_5963_44216 (T@Field_18125_18130) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5963_53 (T@Field_5963_53) Bool)
(declare-fun IsWandField_5963_53 (T@Field_5963_53) Bool)
(declare-fun IsPredicateField_5963_5916 (T@Field_5963_5916) Bool)
(declare-fun IsWandField_5963_5916 (T@Field_5963_5916) Bool)
(declare-fun IsPredicateField_5963_3004 (T@Field_5963_3004) Bool)
(declare-fun IsWandField_5963_3004 (T@Field_5963_3004) Bool)
(declare-fun IsPredicateField_5918_43369 (T@Field_5918_18130) Bool)
(declare-fun IsWandField_5918_43385 (T@Field_5918_18130) Bool)
(declare-fun IsPredicateField_5918_53 (T@Field_10804_53) Bool)
(declare-fun IsWandField_5918_53 (T@Field_10804_53) Bool)
(declare-fun HasDirectPerm_5963_33367 (T@PolymorphicMapType_10765 T@Ref T@Field_18125_18130) Bool)
(declare-fun HasDirectPerm_5963_53 (T@PolymorphicMapType_10765 T@Ref T@Field_5963_53) Bool)
(declare-fun HasDirectPerm_5963_5916 (T@PolymorphicMapType_10765 T@Ref T@Field_5963_5916) Bool)
(declare-fun HasDirectPerm_5963_3004 (T@PolymorphicMapType_10765 T@Ref T@Field_5963_3004) Bool)
(declare-fun HasDirectPerm_5918_32226 (T@PolymorphicMapType_10765 T@Ref T@Field_5918_18130) Bool)
(declare-fun HasDirectPerm_5918_53 (T@PolymorphicMapType_10765 T@Ref T@Field_10804_53) Bool)
(declare-fun HasDirectPerm_5915_5916 (T@PolymorphicMapType_10765 T@Ref T@Field_10817_10818) Bool)
(declare-fun HasDirectPerm_5918_3004 (T@PolymorphicMapType_10765 T@Ref T@Field_16872_3004) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun sumMask (T@PolymorphicMapType_10765 T@PolymorphicMapType_10765 T@PolymorphicMapType_10765) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_5963_5964 (T@Field_18112_18113) Int)
(declare-fun |sq#frame| (T@FrameType Int) Int)
(declare-fun |id#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_18112_10804 (T@Field_18112_18113 T@FrameType T@Field_5918_5964 T@FrameType) Bool)
(declare-fun InsidePredicate_10804_18112 (T@Field_5918_5964 T@FrameType T@Field_18112_18113 T@FrameType) Bool)
(assert (and (distinct f_7 Node_n)(distinct g integer_1))
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.277:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_2867| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10744) (Heap1 T@PolymorphicMapType_10744) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10744) (Mask T@PolymorphicMapType_10765) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10744) (Heap1@@0 T@PolymorphicMapType_10744) (Heap2 T@PolymorphicMapType_10744) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18125_18130) ) (!  (not (select (|PolymorphicMapType_11293_18112_36132#PolymorphicMapType_11293| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11293_18112_36132#PolymorphicMapType_11293| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18112_18113) ) (!  (not (select (|PolymorphicMapType_11293_18112_18113#PolymorphicMapType_11293| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11293_18112_18113#PolymorphicMapType_11293| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5963_5916) ) (!  (not (select (|PolymorphicMapType_11293_18112_10818#PolymorphicMapType_11293| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11293_18112_10818#PolymorphicMapType_11293| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5963_53) ) (!  (not (select (|PolymorphicMapType_11293_18112_53#PolymorphicMapType_11293| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11293_18112_53#PolymorphicMapType_11293| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5963_3004) ) (!  (not (select (|PolymorphicMapType_11293_18112_3004#PolymorphicMapType_11293| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11293_18112_3004#PolymorphicMapType_11293| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5918_18130) ) (!  (not (select (|PolymorphicMapType_11293_5918_35084#PolymorphicMapType_11293| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11293_5918_35084#PolymorphicMapType_11293| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5918_5964) ) (!  (not (select (|PolymorphicMapType_11293_5918_18113#PolymorphicMapType_11293| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11293_5918_18113#PolymorphicMapType_11293| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_10817_10818) ) (!  (not (select (|PolymorphicMapType_11293_5918_10818#PolymorphicMapType_11293| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11293_5918_10818#PolymorphicMapType_11293| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10804_53) ) (!  (not (select (|PolymorphicMapType_11293_5918_53#PolymorphicMapType_11293| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11293_5918_53#PolymorphicMapType_11293| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_16872_3004) ) (!  (not (select (|PolymorphicMapType_11293_5918_3004#PolymorphicMapType_11293| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11293_5918_3004#PolymorphicMapType_11293| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.298:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_5963_5964 (P x))
 :qid |stdinbpl.673:15|
 :skolemid |67|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10744) (i Int) ) (! (dummyFunction_3217 (|sq#triggerStateless| i))
 :qid |stdinbpl.572:15|
 :skolemid |59|
 :pattern ( (|sq'| Heap@@0 i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10744) (x@@0 T@Ref) ) (! (dummyFunction_5957 (|id#triggerStateless| x@@0))
 :qid |stdinbpl.622:15|
 :skolemid |63|
 :pattern ( (|id'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10744) (x@@1 T@Ref) ) (! (|P#everUsed_5963| (P x@@1))
 :qid |stdinbpl.692:15|
 :skolemid |71|
 :pattern ( (|P#trigger_5963| Heap@@2 (P x@@1)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i@@0 Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i@@0 n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i@@0 v) n@@1) v)) (=> (not (= i@@0 n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i@@0 v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.253:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i@@0 v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i@@0 v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.264:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.538:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x@@2 Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x@@2) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x@@2)) (< (|Seq#Skolem_2867| s@@3 x@@2) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x@@2)) x@@2)))
 :qid |stdinbpl.396:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10744) (i@@1 Int) ) (!  (and (= (sq Heap@@3 i@@1) (|sq'| Heap@@3 i@@1)) (dummyFunction_3217 (|sq#triggerStateless| i@@1)))
 :qid |stdinbpl.568:15|
 :skolemid |58|
 :pattern ( (sq Heap@@3 i@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10744) (x@@3 T@Ref) ) (!  (and (= (id Heap@@4 x@@3) (|id'| Heap@@4 x@@3)) (dummyFunction_5957 (|id#triggerStateless| x@@3)))
 :qid |stdinbpl.618:15|
 :skolemid |62|
 :pattern ( (id Heap@@4 x@@3))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2867| s@@4 n@@3) s@@4))
 :qid |stdinbpl.380:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@4 n@@3))
)))
(assert (forall ((i@@2 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@2 j@@0) (- i@@2 j@@0))
 :qid |stdinbpl.233:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@0))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@3 j@@1) (+ i@@3 j@@1))
 :qid |stdinbpl.231:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10744) (ExhaleHeap T@PolymorphicMapType_10744) (Mask@@0 T@PolymorphicMapType_10765) (pm_f T@Field_18112_18113) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5963_5964 Mask@@0 null pm_f) (IsPredicateField_5963_5964 pm_f)) (= (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@5) null (PredicateMaskField_5963 pm_f)) (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap) null (PredicateMaskField_5963 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (IsPredicateField_5963_5964 pm_f) (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap) null (PredicateMaskField_5963 pm_f)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10744) (ExhaleHeap@@0 T@PolymorphicMapType_10744) (Mask@@1 T@PolymorphicMapType_10765) (pm_f@@0 T@Field_5918_5964) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5918_5964 Mask@@1 null pm_f@@0) (IsPredicateField_5918_33612 pm_f@@0)) (= (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@6) null (PredicateMaskField_5918 pm_f@@0)) (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@0) null (PredicateMaskField_5918 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5918_33612 pm_f@@0) (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@0) null (PredicateMaskField_5918 pm_f@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10744) (ExhaleHeap@@1 T@PolymorphicMapType_10744) (Mask@@2 T@PolymorphicMapType_10765) (pm_f@@1 T@Field_18112_18113) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5963_5964 Mask@@2 null pm_f@@1) (IsWandField_5963_37297 pm_f@@1)) (= (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@7) null (WandMaskField_5963 pm_f@@1)) (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@1) null (WandMaskField_5963 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (IsWandField_5963_37297 pm_f@@1) (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@1) null (WandMaskField_5963 pm_f@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10744) (ExhaleHeap@@2 T@PolymorphicMapType_10744) (Mask@@3 T@PolymorphicMapType_10765) (pm_f@@2 T@Field_5918_5964) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5918_5964 Mask@@3 null pm_f@@2) (IsWandField_5918_36940 pm_f@@2)) (= (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@8) null (WandMaskField_5918 pm_f@@2)) (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@2) null (WandMaskField_5918 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (IsWandField_5918_36940 pm_f@@2) (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@2) null (WandMaskField_5918 pm_f@@2)))
)))
(assert (forall ((x@@4 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@4) y) (= x@@4 y))
 :qid |stdinbpl.521:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@4) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.272:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((x@@5 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@5) (P x2)) (= x@@5 x2))
 :qid |stdinbpl.683:15|
 :skolemid |69|
 :pattern ( (P x@@5) (P x2))
)))
(assert (forall ((x@@6 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@6) (|P#sm| x2@@0)) (= x@@6 x2@@0))
 :qid |stdinbpl.687:15|
 :skolemid |70|
 :pattern ( (|P#sm| x@@6) (|P#sm| x2@@0))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_2867| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@6 t) n@@5) (|Seq#Append_2867| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.357:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10744) (ExhaleHeap@@3 T@PolymorphicMapType_10744) (Mask@@4 T@PolymorphicMapType_10765) (pm_f@@3 T@Field_18112_18113) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5963_5964 Mask@@4 null pm_f@@3) (IsPredicateField_5963_5964 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_16872_3004) ) (!  (=> (select (|PolymorphicMapType_11293_5918_3004#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@9) null (PredicateMaskField_5963 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@9) o2 f_2) (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_10804_53) ) (!  (=> (select (|PolymorphicMapType_11293_5918_53#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@9) null (PredicateMaskField_5963 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@9) o2@@0 f_2@@0) (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_10817_10818) ) (!  (=> (select (|PolymorphicMapType_11293_5918_10818#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@9) null (PredicateMaskField_5963 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@9) o2@@1 f_2@@1) (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5918_5964) ) (!  (=> (select (|PolymorphicMapType_11293_5918_18113#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@9) null (PredicateMaskField_5963 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@9) o2@@2 f_2@@2) (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5918_18130) ) (!  (=> (select (|PolymorphicMapType_11293_5918_35084#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@9) null (PredicateMaskField_5963 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@9) o2@@3 f_2@@3) (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_5963_3004) ) (!  (=> (select (|PolymorphicMapType_11293_18112_3004#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@9) null (PredicateMaskField_5963 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@9) o2@@4 f_2@@4) (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_5963_53) ) (!  (=> (select (|PolymorphicMapType_11293_18112_53#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@9) null (PredicateMaskField_5963 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@9) o2@@5 f_2@@5) (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_5963_5916) ) (!  (=> (select (|PolymorphicMapType_11293_18112_10818#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@9) null (PredicateMaskField_5963 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@9) o2@@6 f_2@@6) (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_18112_18113) ) (!  (=> (select (|PolymorphicMapType_11293_18112_18113#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@9) null (PredicateMaskField_5963 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@9) o2@@7 f_2@@7) (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_18125_18130) ) (!  (=> (select (|PolymorphicMapType_11293_18112_36132#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@9) null (PredicateMaskField_5963 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@9) o2@@8 f_2@@8) (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5963_5964 pm_f@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10744) (ExhaleHeap@@4 T@PolymorphicMapType_10744) (Mask@@5 T@PolymorphicMapType_10765) (pm_f@@4 T@Field_5918_5964) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5918_5964 Mask@@5 null pm_f@@4) (IsPredicateField_5918_33612 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_16872_3004) ) (!  (=> (select (|PolymorphicMapType_11293_5918_3004#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@10) null (PredicateMaskField_5918 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@10) o2@@9 f_2@@9) (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_10804_53) ) (!  (=> (select (|PolymorphicMapType_11293_5918_53#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@10) null (PredicateMaskField_5918 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@10) o2@@10 f_2@@10) (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_10817_10818) ) (!  (=> (select (|PolymorphicMapType_11293_5918_10818#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@10) null (PredicateMaskField_5918 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@10) o2@@11 f_2@@11) (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_5918_5964) ) (!  (=> (select (|PolymorphicMapType_11293_5918_18113#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@10) null (PredicateMaskField_5918 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@10) o2@@12 f_2@@12) (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_5918_18130) ) (!  (=> (select (|PolymorphicMapType_11293_5918_35084#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@10) null (PredicateMaskField_5918 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@10) o2@@13 f_2@@13) (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_5963_3004) ) (!  (=> (select (|PolymorphicMapType_11293_18112_3004#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@10) null (PredicateMaskField_5918 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@10) o2@@14 f_2@@14) (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_5963_53) ) (!  (=> (select (|PolymorphicMapType_11293_18112_53#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@10) null (PredicateMaskField_5918 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@10) o2@@15 f_2@@15) (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_5963_5916) ) (!  (=> (select (|PolymorphicMapType_11293_18112_10818#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@10) null (PredicateMaskField_5918 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@10) o2@@16 f_2@@16) (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_18112_18113) ) (!  (=> (select (|PolymorphicMapType_11293_18112_18113#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@10) null (PredicateMaskField_5918 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@10) o2@@17 f_2@@17) (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_18125_18130) ) (!  (=> (select (|PolymorphicMapType_11293_18112_36132#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@10) null (PredicateMaskField_5918 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@10) o2@@18 f_2@@18) (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5918_33612 pm_f@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10744) (ExhaleHeap@@5 T@PolymorphicMapType_10744) (Mask@@6 T@PolymorphicMapType_10765) (pm_f@@5 T@Field_18112_18113) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5963_5964 Mask@@6 null pm_f@@5) (IsWandField_5963_37297 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_16872_3004) ) (!  (=> (select (|PolymorphicMapType_11293_5918_3004#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@11) null (WandMaskField_5963 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@11) o2@@19 f_2@@19) (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_10804_53) ) (!  (=> (select (|PolymorphicMapType_11293_5918_53#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@11) null (WandMaskField_5963 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@11) o2@@20 f_2@@20) (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_10817_10818) ) (!  (=> (select (|PolymorphicMapType_11293_5918_10818#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@11) null (WandMaskField_5963 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@11) o2@@21 f_2@@21) (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_5918_5964) ) (!  (=> (select (|PolymorphicMapType_11293_5918_18113#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@11) null (WandMaskField_5963 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@11) o2@@22 f_2@@22) (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_5918_18130) ) (!  (=> (select (|PolymorphicMapType_11293_5918_35084#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@11) null (WandMaskField_5963 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@11) o2@@23 f_2@@23) (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_5963_3004) ) (!  (=> (select (|PolymorphicMapType_11293_18112_3004#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@11) null (WandMaskField_5963 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@11) o2@@24 f_2@@24) (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_5963_53) ) (!  (=> (select (|PolymorphicMapType_11293_18112_53#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@11) null (WandMaskField_5963 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@11) o2@@25 f_2@@25) (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_5963_5916) ) (!  (=> (select (|PolymorphicMapType_11293_18112_10818#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@11) null (WandMaskField_5963 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@11) o2@@26 f_2@@26) (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_18112_18113) ) (!  (=> (select (|PolymorphicMapType_11293_18112_18113#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@11) null (WandMaskField_5963 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@11) o2@@27 f_2@@27) (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_18125_18130) ) (!  (=> (select (|PolymorphicMapType_11293_18112_36132#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@11) null (WandMaskField_5963 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@11) o2@@28 f_2@@28) (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (IsWandField_5963_37297 pm_f@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10744) (ExhaleHeap@@6 T@PolymorphicMapType_10744) (Mask@@7 T@PolymorphicMapType_10765) (pm_f@@6 T@Field_5918_5964) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5918_5964 Mask@@7 null pm_f@@6) (IsWandField_5918_36940 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_16872_3004) ) (!  (=> (select (|PolymorphicMapType_11293_5918_3004#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@12) null (WandMaskField_5918 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@12) o2@@29 f_2@@29) (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_10804_53) ) (!  (=> (select (|PolymorphicMapType_11293_5918_53#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@12) null (WandMaskField_5918 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@12) o2@@30 f_2@@30) (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_10817_10818) ) (!  (=> (select (|PolymorphicMapType_11293_5918_10818#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@12) null (WandMaskField_5918 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@12) o2@@31 f_2@@31) (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_5918_5964) ) (!  (=> (select (|PolymorphicMapType_11293_5918_18113#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@12) null (WandMaskField_5918 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@12) o2@@32 f_2@@32) (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_5918_18130) ) (!  (=> (select (|PolymorphicMapType_11293_5918_35084#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@12) null (WandMaskField_5918 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@12) o2@@33 f_2@@33) (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_5963_3004) ) (!  (=> (select (|PolymorphicMapType_11293_18112_3004#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@12) null (WandMaskField_5918 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@12) o2@@34 f_2@@34) (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_5963_53) ) (!  (=> (select (|PolymorphicMapType_11293_18112_53#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@12) null (WandMaskField_5918 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@12) o2@@35 f_2@@35) (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_5963_5916) ) (!  (=> (select (|PolymorphicMapType_11293_18112_10818#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@12) null (WandMaskField_5918 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@12) o2@@36 f_2@@36) (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_18112_18113) ) (!  (=> (select (|PolymorphicMapType_11293_18112_18113#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@12) null (WandMaskField_5918 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@12) o2@@37 f_2@@37) (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_18125_18130) ) (!  (=> (select (|PolymorphicMapType_11293_18112_36132#PolymorphicMapType_11293| (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@12) null (WandMaskField_5918 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@12) o2@@38 f_2@@38) (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (IsWandField_5918_36940 pm_f@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10744) (ExhaleHeap@@7 T@PolymorphicMapType_10744) (Mask@@8 T@PolymorphicMapType_10765) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@13) o_1 $allocated) (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_18112_18113) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18112_18112 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18112_18112 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5918_5964) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10804_10804 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10804_10804 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2867|)) (not (= s1 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_2867| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_2867| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.244:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_5915_5916 f_7)))
(assert  (not (IsWandField_5915_5916 f_7)))
(assert  (not (IsPredicateField_5918_3004 g)))
(assert  (not (IsWandField_5918_3004 g)))
(assert  (not (IsPredicateField_5918_3004 integer_1)))
(assert  (not (IsWandField_5918_3004 integer_1)))
(assert  (not (IsPredicateField_5915_5916 Node_n)))
(assert  (not (IsWandField_5915_5916 Node_n)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10744) (ExhaleHeap@@8 T@PolymorphicMapType_10744) (Mask@@9 T@PolymorphicMapType_10765) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10765) (o_2@@9 T@Ref) (f_4@@9 T@Field_18125_18130) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5963_44200 f_4@@9))) (not (IsWandField_5963_44216 f_4@@9))) (<= (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10765) (o_2@@10 T@Ref) (f_4@@10 T@Field_5963_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5963_53 f_4@@10))) (not (IsWandField_5963_53 f_4@@10))) (<= (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10765) (o_2@@11 T@Ref) (f_4@@11 T@Field_18112_18113) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5963_5964 f_4@@11))) (not (IsWandField_5963_37297 f_4@@11))) (<= (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10765) (o_2@@12 T@Ref) (f_4@@12 T@Field_5963_5916) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5963_5916 f_4@@12))) (not (IsWandField_5963_5916 f_4@@12))) (<= (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10765) (o_2@@13 T@Ref) (f_4@@13 T@Field_5963_3004) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5963_3004 f_4@@13))) (not (IsWandField_5963_3004 f_4@@13))) (<= (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10765) (o_2@@14 T@Ref) (f_4@@14 T@Field_5918_18130) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5918_43369 f_4@@14))) (not (IsWandField_5918_43385 f_4@@14))) (<= (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10765) (o_2@@15 T@Ref) (f_4@@15 T@Field_10804_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5918_53 f_4@@15))) (not (IsWandField_5918_53 f_4@@15))) (<= (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10765) (o_2@@16 T@Ref) (f_4@@16 T@Field_5918_5964) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5918_33612 f_4@@16))) (not (IsWandField_5918_36940 f_4@@16))) (<= (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10765) (o_2@@17 T@Ref) (f_4@@17 T@Field_10817_10818) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5915_5916 f_4@@17))) (not (IsWandField_5915_5916 f_4@@17))) (<= (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10765) (o_2@@18 T@Ref) (f_4@@18 T@Field_16872_3004) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5918_3004 f_4@@18))) (not (IsWandField_5918_3004 f_4@@18))) (<= (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10765) (o_2@@19 T@Ref) (f_4@@19 T@Field_18125_18130) ) (! (= (HasDirectPerm_5963_33367 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5963_33367 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10765) (o_2@@20 T@Ref) (f_4@@20 T@Field_5963_53) ) (! (= (HasDirectPerm_5963_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5963_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10765) (o_2@@21 T@Ref) (f_4@@21 T@Field_18112_18113) ) (! (= (HasDirectPerm_5963_5964 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5963_5964 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10765) (o_2@@22 T@Ref) (f_4@@22 T@Field_5963_5916) ) (! (= (HasDirectPerm_5963_5916 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5963_5916 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10765) (o_2@@23 T@Ref) (f_4@@23 T@Field_5963_3004) ) (! (= (HasDirectPerm_5963_3004 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5963_3004 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10765) (o_2@@24 T@Ref) (f_4@@24 T@Field_5918_18130) ) (! (= (HasDirectPerm_5918_32226 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5918_32226 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10765) (o_2@@25 T@Ref) (f_4@@25 T@Field_10804_53) ) (! (= (HasDirectPerm_5918_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5918_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10765) (o_2@@26 T@Ref) (f_4@@26 T@Field_5918_5964) ) (! (= (HasDirectPerm_5918_5964 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5918_5964 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10765) (o_2@@27 T@Ref) (f_4@@27 T@Field_10817_10818) ) (! (= (HasDirectPerm_5915_5916 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5915_5916 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10765) (o_2@@28 T@Ref) (f_4@@28 T@Field_16872_3004) ) (! (= (HasDirectPerm_5918_3004 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5918_3004 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.536:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10744) (ExhaleHeap@@9 T@PolymorphicMapType_10744) (Mask@@30 T@PolymorphicMapType_10765) (o_1@@0 T@Ref) (f_2@@39 T@Field_18125_18130) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_5963_33367 Mask@@30 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@15) o_1@@0 f_2@@39) (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10744) (ExhaleHeap@@10 T@PolymorphicMapType_10744) (Mask@@31 T@PolymorphicMapType_10765) (o_1@@1 T@Ref) (f_2@@40 T@Field_5963_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_5963_53 Mask@@31 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@16) o_1@@1 f_2@@40) (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10744) (ExhaleHeap@@11 T@PolymorphicMapType_10744) (Mask@@32 T@PolymorphicMapType_10765) (o_1@@2 T@Ref) (f_2@@41 T@Field_18112_18113) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_5963_5964 Mask@@32 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@17) o_1@@2 f_2@@41) (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10744) (ExhaleHeap@@12 T@PolymorphicMapType_10744) (Mask@@33 T@PolymorphicMapType_10765) (o_1@@3 T@Ref) (f_2@@42 T@Field_5963_5916) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_5963_5916 Mask@@33 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@18) o_1@@3 f_2@@42) (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10744) (ExhaleHeap@@13 T@PolymorphicMapType_10744) (Mask@@34 T@PolymorphicMapType_10765) (o_1@@4 T@Ref) (f_2@@43 T@Field_5963_3004) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_5963_3004 Mask@@34 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@19) o_1@@4 f_2@@43) (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10744) (ExhaleHeap@@14 T@PolymorphicMapType_10744) (Mask@@35 T@PolymorphicMapType_10765) (o_1@@5 T@Ref) (f_2@@44 T@Field_5918_18130) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_5918_32226 Mask@@35 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@20) o_1@@5 f_2@@44) (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10744) (ExhaleHeap@@15 T@PolymorphicMapType_10744) (Mask@@36 T@PolymorphicMapType_10765) (o_1@@6 T@Ref) (f_2@@45 T@Field_10804_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_5918_53 Mask@@36 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@21) o_1@@6 f_2@@45) (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10744) (ExhaleHeap@@16 T@PolymorphicMapType_10744) (Mask@@37 T@PolymorphicMapType_10765) (o_1@@7 T@Ref) (f_2@@46 T@Field_5918_5964) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_5918_5964 Mask@@37 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@22) o_1@@7 f_2@@46) (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10744) (ExhaleHeap@@17 T@PolymorphicMapType_10744) (Mask@@38 T@PolymorphicMapType_10765) (o_1@@8 T@Ref) (f_2@@47 T@Field_10817_10818) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_5915_5916 Mask@@38 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@23) o_1@@8 f_2@@47) (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10744) (ExhaleHeap@@18 T@PolymorphicMapType_10744) (Mask@@39 T@PolymorphicMapType_10765) (o_1@@9 T@Ref) (f_2@@48 T@Field_16872_3004) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_5918_3004 Mask@@39 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@24) o_1@@9 f_2@@48) (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_2867| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.213:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2867| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_18125_18130) ) (! (= (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_5963_53) ) (! (= (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_18112_18113) ) (! (= (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_5963_5916) ) (! (= (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5963_3004) ) (! (= (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_5918_18130) ) (! (= (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_10804_53) ) (! (= (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_5918_5964) ) (! (= (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_10817_10818) ) (! (= (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_16872_3004) ) (! (= (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@7 t@@0) n@@7) (|Seq#Drop_2867| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.370:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10744) (Mask@@40 T@PolymorphicMapType_10765) (i@@4 Int) ) (!  (=> (and (state Heap@@25 Mask@@40) (< AssumeFunctionsAbove 0)) (= (sq Heap@@25 i@@4) (* i@@4 i@@4)))
 :qid |stdinbpl.578:15|
 :skolemid |60|
 :pattern ( (state Heap@@25 Mask@@40) (sq Heap@@25 i@@4))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10765) (SummandMask1 T@PolymorphicMapType_10765) (SummandMask2 T@PolymorphicMapType_10765) (o_2@@39 T@Ref) (f_4@@39 T@Field_18125_18130) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10765) (SummandMask1@@0 T@PolymorphicMapType_10765) (SummandMask2@@0 T@PolymorphicMapType_10765) (o_2@@40 T@Ref) (f_4@@40 T@Field_5963_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10765) (SummandMask1@@1 T@PolymorphicMapType_10765) (SummandMask2@@1 T@PolymorphicMapType_10765) (o_2@@41 T@Ref) (f_4@@41 T@Field_18112_18113) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10765) (SummandMask1@@2 T@PolymorphicMapType_10765) (SummandMask2@@2 T@PolymorphicMapType_10765) (o_2@@42 T@Ref) (f_4@@42 T@Field_5963_5916) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10765) (SummandMask1@@3 T@PolymorphicMapType_10765) (SummandMask2@@3 T@PolymorphicMapType_10765) (o_2@@43 T@Ref) (f_4@@43 T@Field_5963_3004) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10765) (SummandMask1@@4 T@PolymorphicMapType_10765) (SummandMask2@@4 T@PolymorphicMapType_10765) (o_2@@44 T@Ref) (f_4@@44 T@Field_5918_18130) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10765) (SummandMask1@@5 T@PolymorphicMapType_10765) (SummandMask2@@5 T@PolymorphicMapType_10765) (o_2@@45 T@Ref) (f_4@@45 T@Field_10804_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10765) (SummandMask1@@6 T@PolymorphicMapType_10765) (SummandMask2@@6 T@PolymorphicMapType_10765) (o_2@@46 T@Ref) (f_4@@46 T@Field_5918_5964) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10765) (SummandMask1@@7 T@PolymorphicMapType_10765) (SummandMask2@@7 T@PolymorphicMapType_10765) (o_2@@47 T@Ref) (f_4@@47 T@Field_10817_10818) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10765) (SummandMask1@@8 T@PolymorphicMapType_10765) (SummandMask2@@8 T@PolymorphicMapType_10765) (o_2@@48 T@Ref) (f_4@@48 T@Field_16872_3004) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.535:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a b) (= a b))
 :qid |stdinbpl.508:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@5)))
 :qid |stdinbpl.401:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@5))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.219:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2867| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2867| t@@1) 0) t@@1)
 :qid |stdinbpl.223:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2867| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.202:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.498:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.495:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@2 s1@@2))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_5963_5964 (P x@@7)) 0)
 :qid |stdinbpl.677:15|
 :skolemid |68|
 :pattern ( (P x@@7))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2867| t@@2)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2867| t@@2))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10744) (Mask@@41 T@PolymorphicMapType_10765) (i@@6 Int) ) (!  (=> (state Heap@@26 Mask@@41) (= (|sq'| Heap@@26 i@@6) (|sq#frame| EmptyFrame i@@6)))
 :qid |stdinbpl.585:15|
 :skolemid |61|
 :pattern ( (state Heap@@26 Mask@@41) (|sq'| Heap@@26 i@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10744) (Mask@@42 T@PolymorphicMapType_10765) (x@@8 T@Ref) ) (!  (=> (state Heap@@27 Mask@@42) (= (|id'| Heap@@27 x@@8) (|id#frame| EmptyFrame x@@8)))
 :qid |stdinbpl.635:15|
 :skolemid |65|
 :pattern ( (state Heap@@27 Mask@@42) (|id'| Heap@@27 x@@8))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.352:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@7 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@7 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.251:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@7 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@7 v@@1))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10744) (o T@Ref) (f_3 T@Field_18125_18130) (v@@2 T@PolymorphicMapType_11293) ) (! (succHeap Heap@@28 (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@28) (store (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@28) o f_3 v@@2) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@28) (store (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@28) o f_3 v@@2) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@28) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10744) (o@@0 T@Ref) (f_3@@0 T@Field_18112_18113) (v@@3 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@29) (store (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@29) o@@0 f_3@@0 v@@3) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@29) (store (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@29) o@@0 f_3@@0 v@@3) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@29) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10744) (o@@1 T@Ref) (f_3@@1 T@Field_5963_3004) (v@@4 Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@30) (store (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@30) o@@1 f_3@@1 v@@4) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@30) (store (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@30) o@@1 f_3@@1 v@@4) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@30) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10744) (o@@2 T@Ref) (f_3@@2 T@Field_5963_5916) (v@@5 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@31) (store (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@31) o@@2 f_3@@2 v@@5) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@31) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@31) (store (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@31) o@@2 f_3@@2 v@@5) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10744) (o@@3 T@Ref) (f_3@@3 T@Field_5963_53) (v@@6 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@32) (store (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@32) o@@3 f_3@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@32) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@32) (store (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@32) o@@3 f_3@@3 v@@6)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10744) (o@@4 T@Ref) (f_3@@4 T@Field_5918_18130) (v@@7 T@PolymorphicMapType_11293) ) (! (succHeap Heap@@33 (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@33) (store (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@33) o@@4 f_3@@4 v@@7) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@33) (store (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@33) o@@4 f_3@@4 v@@7) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@33) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10744) (o@@5 T@Ref) (f_3@@5 T@Field_5918_5964) (v@@8 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@34) (store (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@34) o@@5 f_3@@5 v@@8) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@34) (store (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@34) o@@5 f_3@@5 v@@8) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@34) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_10744) (o@@6 T@Ref) (f_3@@6 T@Field_16872_3004) (v@@9 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@35) (store (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@35) o@@6 f_3@@6 v@@9) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@35) (store (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@35) o@@6 f_3@@6 v@@9) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@35) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_10744) (o@@7 T@Ref) (f_3@@7 T@Field_10817_10818) (v@@10 T@Ref) ) (! (succHeap Heap@@36 (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@36) (store (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@36) o@@7 f_3@@7 v@@10) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10744 (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@36) (store (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@36) o@@7 f_3@@7 v@@10) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@36) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_10744) (o@@8 T@Ref) (f_3@@8 T@Field_10804_53) (v@@11 Bool) ) (! (succHeap Heap@@37 (PolymorphicMapType_10744 (store (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@37) o@@8 f_3@@8 v@@11) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10744 (store (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@37) o@@8 f_3@@8 v@@11) (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5918_3004#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5963_5964#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5967_23589#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5918_5964#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5918_32268#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5963_3004#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5963_5916#PolymorphicMapType_10744| Heap@@37) (|PolymorphicMapType_10744_5963_53#PolymorphicMapType_10744| Heap@@37)))
)))
(assert (forall ((x@@9 T@Ref) ) (! (= (PredicateMaskField_5963 (P x@@9)) (|P#sm| x@@9))
 :qid |stdinbpl.669:15|
 :skolemid |66|
 :pattern ( (PredicateMaskField_5963 (P x@@9)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@12 t@@4) n@@9) (|Seq#Append_2867| (|Seq#Drop_2867| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.366:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@8)) (< i@@8 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@10) n@@10) i@@8) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Sub| i@@8 n@@10)) (|Seq#Index_2867| s@@13 i@@8))))
 :qid |stdinbpl.302:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2867|)) (not (= s1@@3 |Seq#Empty_2867|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.242:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_2867| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2867|)) (not (= s1@@4 |Seq#Empty_2867|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.247:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_2867| s0@@4 s1@@4))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_10817_10818) (Heap@@38 T@PolymorphicMapType_10744) ) (!  (=> (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@38) o@@9 $allocated) (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@38) (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@38) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10744_5730_5731#PolymorphicMapType_10744| Heap@@38) o@@9 f))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@10 Int) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@9) x@@10)) (|Seq#Contains_2867| s@@14 x@@10))
 :qid |stdinbpl.399:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@10) (|Seq#Index_2867| s@@14 i@@9))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2867| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.503:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@5 s1@@5))
)))
(assert (forall ((p@@2 T@Field_18112_18113) (v_1@@1 T@FrameType) (q T@Field_18112_18113) (w@@1 T@FrameType) (r T@Field_18112_18113) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18112_18112 p@@2 v_1@@1 q w@@1) (InsidePredicate_18112_18112 q w@@1 r u)) (InsidePredicate_18112_18112 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18112_18112 p@@2 v_1@@1 q w@@1) (InsidePredicate_18112_18112 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_18112_18113) (v_1@@2 T@FrameType) (q@@0 T@Field_18112_18113) (w@@2 T@FrameType) (r@@0 T@Field_5918_5964) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18112_18112 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18112_10804 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_18112_10804 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18112_18112 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18112_10804 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_18112_18113) (v_1@@3 T@FrameType) (q@@1 T@Field_5918_5964) (w@@3 T@FrameType) (r@@1 T@Field_18112_18113) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18112_10804 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10804_18112 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_18112_18112 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18112_10804 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10804_18112 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_18112_18113) (v_1@@4 T@FrameType) (q@@2 T@Field_5918_5964) (w@@4 T@FrameType) (r@@2 T@Field_5918_5964) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18112_10804 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10804_10804 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_18112_10804 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18112_10804 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10804_10804 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5918_5964) (v_1@@5 T@FrameType) (q@@3 T@Field_18112_18113) (w@@5 T@FrameType) (r@@3 T@Field_18112_18113) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10804_18112 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18112_18112 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_10804_18112 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10804_18112 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18112_18112 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5918_5964) (v_1@@6 T@FrameType) (q@@4 T@Field_18112_18113) (w@@6 T@FrameType) (r@@4 T@Field_5918_5964) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10804_18112 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18112_10804 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_10804_10804 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10804_18112 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18112_10804 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5918_5964) (v_1@@7 T@FrameType) (q@@5 T@Field_5918_5964) (w@@7 T@FrameType) (r@@5 T@Field_18112_18113) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10804_10804 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10804_18112 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_10804_18112 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10804_10804 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10804_18112 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5918_5964) (v_1@@8 T@FrameType) (q@@6 T@Field_5918_5964) (w@@8 T@FrameType) (r@@6 T@Field_5918_5964) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10804_10804 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10804_10804 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_10804_10804 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10804_10804 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10804_10804 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_10744) (Mask@@43 T@PolymorphicMapType_10765) (x@@11 T@Ref) ) (!  (=> (and (state Heap@@39 Mask@@43) (< AssumeFunctionsAbove 1)) (= (id Heap@@39 x@@11) x@@11))
 :qid |stdinbpl.628:15|
 :skolemid |64|
 :pattern ( (state Heap@@39 Mask@@43) (id Heap@@39 x@@11))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_2867|))
 :qid |stdinbpl.206:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_2867|))
 :qid |stdinbpl.382:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@40 () T@PolymorphicMapType_10744)
(declare-fun x@@12 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_10765)
(declare-fun Mask@1 () T@PolymorphicMapType_10765)
(set-info :boogie-vc-id test)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon0_correct  (=> (and (and (state Heap@@40 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_10744_5727_53#PolymorphicMapType_10744| Heap@@40) x@@12 $allocated))) (=> (and (and (and (not (= x@@12 null)) (= Mask@0 (PolymorphicMapType_10765 (store (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| ZeroMask) x@@12 g (+ (select (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| ZeroMask) x@@12 g) FullPerm)) (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| ZeroMask) (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| ZeroMask) (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| ZeroMask) (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| ZeroMask) (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| ZeroMask) (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| ZeroMask) (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| ZeroMask) (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| ZeroMask) (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| ZeroMask)))) (and (state Heap@@40 Mask@0) (not (= x@@12 null)))) (and (and (= Mask@1 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5918_3004#PolymorphicMapType_10765| Mask@0) (store (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| Mask@0) x@@12 f_7 (+ (select (|PolymorphicMapType_10765_5915_5916#PolymorphicMapType_10765| Mask@0) x@@12 f_7) FullPerm)) (|PolymorphicMapType_10765_5963_5964#PolymorphicMapType_10765| Mask@0) (|PolymorphicMapType_10765_5918_5964#PolymorphicMapType_10765| Mask@0) (|PolymorphicMapType_10765_5918_53#PolymorphicMapType_10765| Mask@0) (|PolymorphicMapType_10765_5918_41511#PolymorphicMapType_10765| Mask@0) (|PolymorphicMapType_10765_5963_3004#PolymorphicMapType_10765| Mask@0) (|PolymorphicMapType_10765_5963_5916#PolymorphicMapType_10765| Mask@0) (|PolymorphicMapType_10765_5963_53#PolymorphicMapType_10765| Mask@0) (|PolymorphicMapType_10765_5963_41922#PolymorphicMapType_10765| Mask@0))) (state Heap@@40 Mask@1)) (and (state Heap@@40 Mask@1) (= (ControlFlow 0 2) (- 0 16))))) (HasDirectPerm_5915_5916 Mask@1 x@@12 f_7)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
