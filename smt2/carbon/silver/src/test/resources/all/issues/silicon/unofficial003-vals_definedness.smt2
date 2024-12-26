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
(declare-sort T@Field_15811_53 0)
(declare-sort T@Field_15824_15825 0)
(declare-sort T@Field_21829_2989 0)
(declare-sort T@Field_23858_23859 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_26590_26595 0)
(declare-sort T@Field_28196_28197 0)
(declare-sort T@Field_32277_32282 0)
(declare-sort T@Field_8898_9002 0)
(declare-sort T@Field_8898_26595 0)
(declare-sort T@Field_9001_2989 0)
(declare-sort T@Field_9001_8901 0)
(declare-sort T@Field_9001_53 0)
(declare-sort T@Field_28196_2989 0)
(declare-sort T@Field_28196_8901 0)
(declare-sort T@Field_28196_53 0)
(declare-datatypes ((T@PolymorphicMapType_15772 0)) (((PolymorphicMapType_15772 (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| (Array T@Ref T@Field_21829_2989 Real)) (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| (Array T@Ref T@Field_23858_23859 Real)) (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| (Array T@Ref T@Field_15824_15825 Real)) (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| (Array T@Ref T@Field_28196_28197 Real)) (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| (Array T@Ref T@Field_8898_9002 Real)) (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| (Array T@Ref T@Field_15811_53 Real)) (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| (Array T@Ref T@Field_8898_26595 Real)) (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| (Array T@Ref T@Field_9001_2989 Real)) (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| (Array T@Ref T@Field_9001_8901 Real)) (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| (Array T@Ref T@Field_9001_53 Real)) (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| (Array T@Ref T@Field_26590_26595 Real)) (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| (Array T@Ref T@Field_28196_2989 Real)) (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| (Array T@Ref T@Field_28196_8901 Real)) (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| (Array T@Ref T@Field_28196_53 Real)) (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| (Array T@Ref T@Field_32277_32282 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16300 0)) (((PolymorphicMapType_16300 (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (Array T@Ref T@Field_21829_2989 Bool)) (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (Array T@Ref T@Field_15824_15825 Bool)) (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (Array T@Ref T@Field_15811_53 Bool)) (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (Array T@Ref T@Field_8898_9002 Bool)) (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (Array T@Ref T@Field_8898_26595 Bool)) (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (Array T@Ref T@Field_9001_2989 Bool)) (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (Array T@Ref T@Field_9001_8901 Bool)) (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (Array T@Ref T@Field_9001_53 Bool)) (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (Array T@Ref T@Field_23858_23859 Bool)) (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (Array T@Ref T@Field_26590_26595 Bool)) (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (Array T@Ref T@Field_28196_2989 Bool)) (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (Array T@Ref T@Field_28196_8901 Bool)) (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (Array T@Ref T@Field_28196_53 Bool)) (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (Array T@Ref T@Field_28196_28197 Bool)) (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (Array T@Ref T@Field_32277_32282 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15751 0)) (((PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| (Array T@Ref T@Field_15811_53 Bool)) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| (Array T@Ref T@Field_15824_15825 T@Ref)) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| (Array T@Ref T@Field_21829_2989 Int)) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| (Array T@Ref T@Field_23858_23859 T@FrameType)) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| (Array T@Ref T@Field_26590_26595 T@PolymorphicMapType_16300)) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| (Array T@Ref T@Field_28196_28197 T@FrameType)) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| (Array T@Ref T@Field_32277_32282 T@PolymorphicMapType_16300)) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| (Array T@Ref T@Field_8898_9002 T@FrameType)) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| (Array T@Ref T@Field_8898_26595 T@PolymorphicMapType_16300)) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| (Array T@Ref T@Field_9001_2989 Int)) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| (Array T@Ref T@Field_9001_8901 T@Ref)) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| (Array T@Ref T@Field_9001_53 Bool)) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| (Array T@Ref T@Field_28196_2989 Int)) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| (Array T@Ref T@Field_28196_8901 T@Ref)) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| (Array T@Ref T@Field_28196_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_15811_53)
(declare-fun v_36 () T@Field_21829_2989)
(declare-fun r_6 () T@Field_15824_15825)
(declare-fun l_8 () T@Field_15824_15825)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun state (T@PolymorphicMapType_15751 T@PolymorphicMapType_15772) Bool)
(declare-fun vals (T@PolymorphicMapType_15751 T@Ref) T@Seq_2867)
(declare-fun |vals#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Tree#trigger_9026| (T@PolymorphicMapType_15751 T@Field_28196_28197) Bool)
(declare-fun Tree (T@Ref) T@Field_28196_28197)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Append_4532| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun null () T@Ref)
(declare-fun |Seq#Empty_4532| () T@Seq_2867)
(declare-fun |vals'| (T@PolymorphicMapType_15751 T@Ref) T@Seq_2867)
(declare-fun |Seq#Singleton_2989| (Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_15751 T@PolymorphicMapType_15751) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15751 T@PolymorphicMapType_15751) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15772) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_15751 T@Ref Bool Bool) Int)
(declare-fun dummyFunction_3320 (Int) Bool)
(declare-fun |fun01#triggerStateless| (T@Ref Bool Bool) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_16300)
(declare-fun P01 (T@Ref Bool) T@Field_23858_23859)
(declare-fun IsPredicateField_9001_9002 (T@Field_23858_23859) Bool)
(declare-fun |fun02'| (T@PolymorphicMapType_15751 T@Ref Bool) Bool)
(declare-fun dummyFunction_3804 (Bool) Bool)
(declare-fun |fun02#triggerStateless| (T@Ref Bool) Bool)
(declare-fun |P01#trigger_9001| (T@PolymorphicMapType_15751 T@Field_23858_23859) Bool)
(declare-fun |P01#everUsed_9001| (T@Field_23858_23859) Bool)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun IsPredicateField_9026_9027 (T@Field_28196_28197) Bool)
(declare-fun dummyFunction_27736 (T@Seq_2867) Bool)
(declare-fun |Tree#everUsed_9026| (T@Field_28196_28197) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun fun02 (T@PolymorphicMapType_15751 T@Ref Bool) Bool)
(declare-fun |P01#sm| (T@Ref Bool) T@Field_26590_26595)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15751 T@PolymorphicMapType_15751 T@PolymorphicMapType_15772) Bool)
(declare-fun PredicateMaskField_9026 (T@Field_28196_28197) T@Field_32277_32282)
(declare-fun HasDirectPerm_28196_9002 (T@PolymorphicMapType_15772 T@Ref T@Field_28196_28197) Bool)
(declare-fun PredicateMaskField_9001 (T@Field_23858_23859) T@Field_26590_26595)
(declare-fun HasDirectPerm_9001_9002 (T@PolymorphicMapType_15772 T@Ref T@Field_23858_23859) Bool)
(declare-fun IsPredicateField_8898_53217 (T@Field_8898_9002) Bool)
(declare-fun PredicateMaskField_8898 (T@Field_8898_9002) T@Field_8898_26595)
(declare-fun HasDirectPerm_8898_9002 (T@PolymorphicMapType_15772 T@Ref T@Field_8898_9002) Bool)
(declare-fun IsWandField_28196_58898 (T@Field_28196_28197) Bool)
(declare-fun WandMaskField_28196 (T@Field_28196_28197) T@Field_32277_32282)
(declare-fun IsWandField_9001_58541 (T@Field_23858_23859) Bool)
(declare-fun WandMaskField_9001 (T@Field_23858_23859) T@Field_26590_26595)
(declare-fun IsWandField_8898_58184 (T@Field_8898_9002) Bool)
(declare-fun WandMaskField_8898 (T@Field_8898_9002) T@Field_8898_26595)
(declare-fun |Tree#sm| (T@Ref) T@Field_32277_32282)
(declare-fun dummyHeap () T@PolymorphicMapType_15751)
(declare-fun ZeroMask () T@PolymorphicMapType_15772)
(declare-fun InsidePredicate_15811_15811 (T@Field_8898_9002 T@FrameType T@Field_8898_9002 T@FrameType) Bool)
(declare-fun InsidePredicate_9026_9026 (T@Field_28196_28197 T@FrameType T@Field_28196_28197 T@FrameType) Bool)
(declare-fun InsidePredicate_9001_9001 (T@Field_23858_23859 T@FrameType T@Field_23858_23859 T@FrameType) Bool)
(declare-fun fun01 (T@PolymorphicMapType_15751 T@Ref Bool Bool) Int)
(declare-fun IsPredicateField_8898_2989 (T@Field_21829_2989) Bool)
(declare-fun IsWandField_8898_2989 (T@Field_21829_2989) Bool)
(declare-fun IsPredicateField_8900_8901 (T@Field_15824_15825) Bool)
(declare-fun IsWandField_8900_8901 (T@Field_15824_15825) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9026_69187 (T@Field_32277_32282) Bool)
(declare-fun IsWandField_9026_69203 (T@Field_32277_32282) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9026_53 (T@Field_28196_53) Bool)
(declare-fun IsWandField_9026_53 (T@Field_28196_53) Bool)
(declare-fun IsPredicateField_9026_8901 (T@Field_28196_8901) Bool)
(declare-fun IsWandField_9026_8901 (T@Field_28196_8901) Bool)
(declare-fun IsPredicateField_9026_2989 (T@Field_28196_2989) Bool)
(declare-fun IsWandField_9026_2989 (T@Field_28196_2989) Bool)
(declare-fun IsPredicateField_9001_68356 (T@Field_26590_26595) Bool)
(declare-fun IsWandField_9001_68372 (T@Field_26590_26595) Bool)
(declare-fun IsPredicateField_9001_53 (T@Field_9001_53) Bool)
(declare-fun IsWandField_9001_53 (T@Field_9001_53) Bool)
(declare-fun IsPredicateField_9001_8901 (T@Field_9001_8901) Bool)
(declare-fun IsWandField_9001_8901 (T@Field_9001_8901) Bool)
(declare-fun IsPredicateField_9001_2989 (T@Field_9001_2989) Bool)
(declare-fun IsWandField_9001_2989 (T@Field_9001_2989) Bool)
(declare-fun IsPredicateField_8898_67525 (T@Field_8898_26595) Bool)
(declare-fun IsWandField_8898_67541 (T@Field_8898_26595) Bool)
(declare-fun IsPredicateField_8898_53 (T@Field_15811_53) Bool)
(declare-fun IsWandField_8898_53 (T@Field_15811_53) Bool)
(declare-fun HasDirectPerm_28196_52972 (T@PolymorphicMapType_15772 T@Ref T@Field_32277_32282) Bool)
(declare-fun HasDirectPerm_28196_53 (T@PolymorphicMapType_15772 T@Ref T@Field_28196_53) Bool)
(declare-fun HasDirectPerm_28196_8901 (T@PolymorphicMapType_15772 T@Ref T@Field_28196_8901) Bool)
(declare-fun HasDirectPerm_28196_2989 (T@PolymorphicMapType_15772 T@Ref T@Field_28196_2989) Bool)
(declare-fun HasDirectPerm_9001_51854 (T@PolymorphicMapType_15772 T@Ref T@Field_26590_26595) Bool)
(declare-fun HasDirectPerm_9001_53 (T@PolymorphicMapType_15772 T@Ref T@Field_9001_53) Bool)
(declare-fun HasDirectPerm_9001_8901 (T@PolymorphicMapType_15772 T@Ref T@Field_9001_8901) Bool)
(declare-fun HasDirectPerm_9001_2989 (T@PolymorphicMapType_15772 T@Ref T@Field_9001_2989) Bool)
(declare-fun HasDirectPerm_8898_50713 (T@PolymorphicMapType_15772 T@Ref T@Field_8898_26595) Bool)
(declare-fun HasDirectPerm_8898_53 (T@PolymorphicMapType_15772 T@Ref T@Field_15811_53) Bool)
(declare-fun HasDirectPerm_8900_8901 (T@PolymorphicMapType_15772 T@Ref T@Field_15824_15825) Bool)
(declare-fun HasDirectPerm_8898_2989 (T@PolymorphicMapType_15772 T@Ref T@Field_21829_2989) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |fun01#frame| (T@FrameType T@Ref Bool Bool) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_2989 (Int) T@FrameType)
(declare-fun FrameFragment_10833 (T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15772 T@PolymorphicMapType_15772 T@PolymorphicMapType_15772) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_9001_9002 (T@Field_23858_23859) Int)
(declare-fun |vals#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun getPredWandId_9026_9027 (T@Field_28196_28197) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_15811_9026 (T@Field_8898_9002 T@FrameType T@Field_28196_28197 T@FrameType) Bool)
(declare-fun InsidePredicate_15811_9001 (T@Field_8898_9002 T@FrameType T@Field_23858_23859 T@FrameType) Bool)
(declare-fun InsidePredicate_9026_15811 (T@Field_28196_28197 T@FrameType T@Field_8898_9002 T@FrameType) Bool)
(declare-fun InsidePredicate_9026_9001 (T@Field_28196_28197 T@FrameType T@Field_23858_23859 T@FrameType) Bool)
(declare-fun InsidePredicate_9001_15811 (T@Field_23858_23859 T@FrameType T@Field_8898_9002 T@FrameType) Bool)
(declare-fun InsidePredicate_9001_9026 (T@Field_23858_23859 T@FrameType T@Field_28196_28197 T@FrameType) Bool)
(declare-fun |fun02#frame| (T@FrameType T@Ref Bool) Bool)
(assert (distinct r_6 l_8)
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.278:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_2867| s n))
)))
(assert (forall ((Heap T@PolymorphicMapType_15751) (Mask T@PolymorphicMapType_15772) (x T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 2)) (= (vals Heap x) (|Seq#Append_4532| (|Seq#Append_4532| (ite (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap) x l_8) null) |Seq#Empty_4532| (|vals'| Heap (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap) x l_8))) (|Seq#Singleton_2989| (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap) x v_36))) (ite (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap) x r_6) null) |Seq#Empty_4532| (|vals'| Heap (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap) x r_6))))))
 :qid |stdinbpl.796:15|
 :skolemid |69|
 :pattern ( (state Heap Mask) (vals Heap x))
 :pattern ( (state Heap Mask) (|vals#triggerStateless| x) (|Tree#trigger_9026| Heap (Tree x)) (|Tree#trigger_9026| Heap (Tree x)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15751) (Heap1 T@PolymorphicMapType_15751) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15751) (Mask@@0 T@PolymorphicMapType_15772) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15751) (Heap1@@0 T@PolymorphicMapType_15751) (Heap2 T@PolymorphicMapType_15751) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15751) (x@@0 T@Ref) (b1 Bool) (b2 Bool) ) (! (dummyFunction_3320 (|fun01#triggerStateless| x@@0 b1 b2))
 :qid |stdinbpl.570:15|
 :skolemid |59|
 :pattern ( (|fun01'| Heap@@1 x@@0 b1 b2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_32277_32282) ) (!  (not (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_28196_28197) ) (!  (not (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_28196_53) ) (!  (not (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_28196_8901) ) (!  (not (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_28196_2989) ) (!  (not (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_26590_26595) ) (!  (not (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_23858_23859) ) (!  (not (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9001_53) ) (!  (not (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9001_8901) ) (!  (not (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9001_2989) ) (!  (not (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8898_26595) ) (!  (not (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8898_9002) ) (!  (not (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_15811_53) ) (!  (not (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_15824_15825) ) (!  (not (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_21829_2989) ) (!  (not (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x@@1 T@Ref) (b_24 Bool) ) (! (IsPredicateField_9001_9002 (P01 x@@1 b_24))
 :qid |stdinbpl.968:15|
 :skolemid |74|
 :pattern ( (P01 x@@1 b_24))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15751) (x@@2 T@Ref) (b_24@@0 Bool) ) (! (dummyFunction_3804 (|fun02#triggerStateless| x@@2 b_24@@0))
 :qid |stdinbpl.655:15|
 :skolemid |63|
 :pattern ( (|fun02'| Heap@@2 x@@2 b_24@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15751) (x@@3 T@Ref) (b_24@@1 Bool) ) (! (|P01#everUsed_9001| (P01 x@@3 b_24@@1))
 :qid |stdinbpl.987:15|
 :skolemid |78|
 :pattern ( (|P01#trigger_9001| Heap@@3 (P01 x@@3 b_24@@1)))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.299:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_4532|) 0))
(assert (forall ((x@@4 T@Ref) ) (! (IsPredicateField_9026_9027 (Tree x@@4))
 :qid |stdinbpl.1042:15|
 :skolemid |80|
 :pattern ( (Tree x@@4))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15751) (x@@5 T@Ref) ) (! (dummyFunction_27736 (|vals#triggerStateless| x@@5))
 :qid |stdinbpl.790:15|
 :skolemid |68|
 :pattern ( (|vals'| Heap@@4 x@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15751) (x@@6 T@Ref) ) (! (|Tree#everUsed_9026| (Tree x@@6))
 :qid |stdinbpl.1061:15|
 :skolemid |84|
 :pattern ( (|Tree#trigger_9026| Heap@@5 (Tree x@@6)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.254:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.265:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15751) (Mask@@1 T@PolymorphicMapType_15772) (x@@7 T@Ref) (b_24@@2 Bool) ) (!  (=> (and (state Heap@@6 Mask@@1) (< AssumeFunctionsAbove 0)) (= (fun02 Heap@@6 x@@7 b_24@@2) (ite (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@6) x@@7 r_6) null) b_24@@2 (|fun02'| Heap@@6 (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@6) x@@7 r_6) b_24@@2))))
 :qid |stdinbpl.661:15|
 :skolemid |64|
 :pattern ( (state Heap@@6 Mask@@1) (fun02 Heap@@6 x@@7 b_24@@2))
 :pattern ( (state Heap@@6 Mask@@1) (|fun02#triggerStateless| x@@7 b_24@@2) (|P01#trigger_9001| Heap@@6 (P01 x@@7 b_24@@2)))
)))
(assert (forall ((x@@8 T@Ref) (b_24@@3 Bool) (x2 T@Ref) (b2@@0 Bool) ) (!  (=> (= (P01 x@@8 b_24@@3) (P01 x2 b2@@0)) (and (= x@@8 x2) (= b_24@@3 b2@@0)))
 :qid |stdinbpl.978:15|
 :skolemid |76|
 :pattern ( (P01 x@@8 b_24@@3) (P01 x2 b2@@0))
)))
(assert (forall ((x@@9 T@Ref) (b_24@@4 Bool) (x2@@0 T@Ref) (b2@@1 Bool) ) (!  (=> (= (|P01#sm| x@@9 b_24@@4) (|P01#sm| x2@@0 b2@@1)) (and (= x@@9 x2@@0) (= b_24@@4 b2@@1)))
 :qid |stdinbpl.982:15|
 :skolemid |77|
 :pattern ( (|P01#sm| x@@9 b_24@@4) (|P01#sm| x2@@0 b2@@1))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.539:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x@@10 Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x@@10) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x@@10)) (< (|Seq#Skolem_2867| s@@3 x@@10) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x@@10)) x@@10)))
 :qid |stdinbpl.397:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x@@10))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15751) (x@@11 T@Ref) ) (!  (and (= (vals Heap@@7 x@@11) (|vals'| Heap@@7 x@@11)) (dummyFunction_27736 (|vals#triggerStateless| x@@11)))
 :qid |stdinbpl.786:15|
 :skolemid |67|
 :pattern ( (vals Heap@@7 x@@11))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2867| s@@4 n@@3) s@@4))
 :qid |stdinbpl.381:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.234:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.232:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15751) (ExhaleHeap T@PolymorphicMapType_15751) (Mask@@2 T@PolymorphicMapType_15772) (pm_f_28 T@Field_28196_28197) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_28196_9002 Mask@@2 null pm_f_28) (IsPredicateField_9026_9027 pm_f_28)) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@8) null (PredicateMaskField_9026 pm_f_28)) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap) null (PredicateMaskField_9026 pm_f_28)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (IsPredicateField_9026_9027 pm_f_28) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap) null (PredicateMaskField_9026 pm_f_28)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15751) (ExhaleHeap@@0 T@PolymorphicMapType_15751) (Mask@@3 T@PolymorphicMapType_15772) (pm_f_28@@0 T@Field_23858_23859) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_9001_9002 Mask@@3 null pm_f_28@@0) (IsPredicateField_9001_9002 pm_f_28@@0)) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@9) null (PredicateMaskField_9001 pm_f_28@@0)) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@0) null (PredicateMaskField_9001 pm_f_28@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (IsPredicateField_9001_9002 pm_f_28@@0) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@0) null (PredicateMaskField_9001 pm_f_28@@0)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15751) (ExhaleHeap@@1 T@PolymorphicMapType_15751) (Mask@@4 T@PolymorphicMapType_15772) (pm_f_28@@1 T@Field_8898_9002) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_8898_9002 Mask@@4 null pm_f_28@@1) (IsPredicateField_8898_53217 pm_f_28@@1)) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@10) null (PredicateMaskField_8898 pm_f_28@@1)) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@1) null (PredicateMaskField_8898 pm_f_28@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@4) (IsPredicateField_8898_53217 pm_f_28@@1) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@1) null (PredicateMaskField_8898 pm_f_28@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15751) (ExhaleHeap@@2 T@PolymorphicMapType_15751) (Mask@@5 T@PolymorphicMapType_15772) (pm_f_28@@2 T@Field_28196_28197) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_28196_9002 Mask@@5 null pm_f_28@@2) (IsWandField_28196_58898 pm_f_28@@2)) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@11) null (WandMaskField_28196 pm_f_28@@2)) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@2) null (WandMaskField_28196 pm_f_28@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@5) (IsWandField_28196_58898 pm_f_28@@2) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@2) null (WandMaskField_28196 pm_f_28@@2)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15751) (ExhaleHeap@@3 T@PolymorphicMapType_15751) (Mask@@6 T@PolymorphicMapType_15772) (pm_f_28@@3 T@Field_23858_23859) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_9001_9002 Mask@@6 null pm_f_28@@3) (IsWandField_9001_58541 pm_f_28@@3)) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@12) null (WandMaskField_9001 pm_f_28@@3)) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@3) null (WandMaskField_9001 pm_f_28@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@6) (IsWandField_9001_58541 pm_f_28@@3) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@3) null (WandMaskField_9001 pm_f_28@@3)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15751) (ExhaleHeap@@4 T@PolymorphicMapType_15751) (Mask@@7 T@PolymorphicMapType_15772) (pm_f_28@@4 T@Field_8898_9002) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_8898_9002 Mask@@7 null pm_f_28@@4) (IsWandField_8898_58184 pm_f_28@@4)) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@13) null (WandMaskField_8898 pm_f_28@@4)) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@4) null (WandMaskField_8898 pm_f_28@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@7) (IsWandField_8898_58184 pm_f_28@@4) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@4) null (WandMaskField_8898 pm_f_28@@4)))
)))
(assert (forall ((x@@12 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@12) y) (= x@@12 y))
 :qid |stdinbpl.522:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@12) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.273:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((x@@13 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (Tree x@@13) (Tree x2@@1)) (= x@@13 x2@@1))
 :qid |stdinbpl.1052:15|
 :skolemid |82|
 :pattern ( (Tree x@@13) (Tree x2@@1))
)))
(assert (forall ((x@@14 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|Tree#sm| x@@14) (|Tree#sm| x2@@2)) (= x@@14 x2@@2))
 :qid |stdinbpl.1056:15|
 :skolemid |83|
 :pattern ( (|Tree#sm| x@@14) (|Tree#sm| x2@@2))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_4532| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_4532| s@@6 t) n@@5) (|Seq#Append_4532| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.358:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_4532| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15751) (ExhaleHeap@@5 T@PolymorphicMapType_15751) (Mask@@8 T@PolymorphicMapType_15772) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@8) (=> (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@14) o_41 $allocated) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@5) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@8) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@5) o_41 $allocated))
)))
(assert (forall ((p T@Field_8898_9002) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15811_15811 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15811_15811 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_28196_28197) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9026_9026 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9026_9026 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_23858_23859) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9001_9001 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9001_9001 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15751) (Mask@@9 T@PolymorphicMapType_15772) (x@@15 T@Ref) (b1@@0 Bool) (b2@@2 Bool) ) (!  (=> (and (state Heap@@15 Mask@@9) (< AssumeFunctionsAbove 1)) (= (fun01 Heap@@15 x@@15 b1@@0 b2@@2) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@15) x@@15 v_36)))
 :qid |stdinbpl.576:15|
 :skolemid |60|
 :pattern ( (state Heap@@15 Mask@@9) (fun01 Heap@@15 x@@15 b1@@0 b2@@2))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4532|)) (not (= s1 |Seq#Empty_4532|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_4532| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_4532| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.245:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_4532| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_8898_2989 v_36)))
(assert  (not (IsWandField_8898_2989 v_36)))
(assert  (not (IsPredicateField_8900_8901 r_6)))
(assert  (not (IsWandField_8900_8901 r_6)))
(assert  (not (IsPredicateField_8900_8901 l_8)))
(assert  (not (IsWandField_8900_8901 l_8)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15751) (ExhaleHeap@@6 T@PolymorphicMapType_15751) (Mask@@10 T@PolymorphicMapType_15772) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@10) (succHeap Heap@@16 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15772) (o_2@@14 T@Ref) (f_4@@14 T@Field_32277_32282) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| Mask@@11) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9026_69187 f_4@@14))) (not (IsWandField_9026_69203 f_4@@14))) (<= (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| Mask@@11) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| Mask@@11) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15772) (o_2@@15 T@Ref) (f_4@@15 T@Field_28196_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| Mask@@12) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9026_53 f_4@@15))) (not (IsWandField_9026_53 f_4@@15))) (<= (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| Mask@@12) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| Mask@@12) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15772) (o_2@@16 T@Ref) (f_4@@16 T@Field_28196_8901) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| Mask@@13) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9026_8901 f_4@@16))) (not (IsWandField_9026_8901 f_4@@16))) (<= (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| Mask@@13) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| Mask@@13) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15772) (o_2@@17 T@Ref) (f_4@@17 T@Field_28196_28197) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| Mask@@14) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9026_9027 f_4@@17))) (not (IsWandField_28196_58898 f_4@@17))) (<= (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| Mask@@14) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| Mask@@14) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15772) (o_2@@18 T@Ref) (f_4@@18 T@Field_28196_2989) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| Mask@@15) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9026_2989 f_4@@18))) (not (IsWandField_9026_2989 f_4@@18))) (<= (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| Mask@@15) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| Mask@@15) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15772) (o_2@@19 T@Ref) (f_4@@19 T@Field_26590_26595) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| Mask@@16) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9001_68356 f_4@@19))) (not (IsWandField_9001_68372 f_4@@19))) (<= (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| Mask@@16) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| Mask@@16) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15772) (o_2@@20 T@Ref) (f_4@@20 T@Field_9001_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| Mask@@17) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9001_53 f_4@@20))) (not (IsWandField_9001_53 f_4@@20))) (<= (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| Mask@@17) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| Mask@@17) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15772) (o_2@@21 T@Ref) (f_4@@21 T@Field_9001_8901) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| Mask@@18) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9001_8901 f_4@@21))) (not (IsWandField_9001_8901 f_4@@21))) (<= (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| Mask@@18) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| Mask@@18) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15772) (o_2@@22 T@Ref) (f_4@@22 T@Field_23858_23859) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| Mask@@19) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9001_9002 f_4@@22))) (not (IsWandField_9001_58541 f_4@@22))) (<= (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| Mask@@19) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| Mask@@19) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15772) (o_2@@23 T@Ref) (f_4@@23 T@Field_9001_2989) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| Mask@@20) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_9001_2989 f_4@@23))) (not (IsWandField_9001_2989 f_4@@23))) (<= (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| Mask@@20) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| Mask@@20) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15772) (o_2@@24 T@Ref) (f_4@@24 T@Field_8898_26595) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| Mask@@21) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8898_67525 f_4@@24))) (not (IsWandField_8898_67541 f_4@@24))) (<= (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| Mask@@21) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| Mask@@21) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15772) (o_2@@25 T@Ref) (f_4@@25 T@Field_15811_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| Mask@@22) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8898_53 f_4@@25))) (not (IsWandField_8898_53 f_4@@25))) (<= (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| Mask@@22) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| Mask@@22) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_15772) (o_2@@26 T@Ref) (f_4@@26 T@Field_15824_15825) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| Mask@@23) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_8900_8901 f_4@@26))) (not (IsWandField_8900_8901 f_4@@26))) (<= (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| Mask@@23) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| Mask@@23) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15772) (o_2@@27 T@Ref) (f_4@@27 T@Field_8898_9002) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| Mask@@24) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_8898_53217 f_4@@27))) (not (IsWandField_8898_58184 f_4@@27))) (<= (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| Mask@@24) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| Mask@@24) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15772) (o_2@@28 T@Ref) (f_4@@28 T@Field_21829_2989) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| Mask@@25) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_8898_2989 f_4@@28))) (not (IsWandField_8898_2989 f_4@@28))) (<= (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| Mask@@25) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| Mask@@25) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_15772) (o_2@@29 T@Ref) (f_4@@29 T@Field_32277_32282) ) (! (= (HasDirectPerm_28196_52972 Mask@@26 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| Mask@@26) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28196_52972 Mask@@26 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_15772) (o_2@@30 T@Ref) (f_4@@30 T@Field_28196_53) ) (! (= (HasDirectPerm_28196_53 Mask@@27 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| Mask@@27) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28196_53 Mask@@27 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_15772) (o_2@@31 T@Ref) (f_4@@31 T@Field_28196_28197) ) (! (= (HasDirectPerm_28196_9002 Mask@@28 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| Mask@@28) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28196_9002 Mask@@28 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_15772) (o_2@@32 T@Ref) (f_4@@32 T@Field_28196_8901) ) (! (= (HasDirectPerm_28196_8901 Mask@@29 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| Mask@@29) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28196_8901 Mask@@29 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_15772) (o_2@@33 T@Ref) (f_4@@33 T@Field_28196_2989) ) (! (= (HasDirectPerm_28196_2989 Mask@@30 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| Mask@@30) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28196_2989 Mask@@30 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_15772) (o_2@@34 T@Ref) (f_4@@34 T@Field_26590_26595) ) (! (= (HasDirectPerm_9001_51854 Mask@@31 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| Mask@@31) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9001_51854 Mask@@31 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_15772) (o_2@@35 T@Ref) (f_4@@35 T@Field_9001_53) ) (! (= (HasDirectPerm_9001_53 Mask@@32 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| Mask@@32) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9001_53 Mask@@32 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_15772) (o_2@@36 T@Ref) (f_4@@36 T@Field_23858_23859) ) (! (= (HasDirectPerm_9001_9002 Mask@@33 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| Mask@@33) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9001_9002 Mask@@33 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_15772) (o_2@@37 T@Ref) (f_4@@37 T@Field_9001_8901) ) (! (= (HasDirectPerm_9001_8901 Mask@@34 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| Mask@@34) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9001_8901 Mask@@34 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_15772) (o_2@@38 T@Ref) (f_4@@38 T@Field_9001_2989) ) (! (= (HasDirectPerm_9001_2989 Mask@@35 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| Mask@@35) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9001_2989 Mask@@35 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_15772) (o_2@@39 T@Ref) (f_4@@39 T@Field_8898_26595) ) (! (= (HasDirectPerm_8898_50713 Mask@@36 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| Mask@@36) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8898_50713 Mask@@36 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_15772) (o_2@@40 T@Ref) (f_4@@40 T@Field_15811_53) ) (! (= (HasDirectPerm_8898_53 Mask@@37 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| Mask@@37) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8898_53 Mask@@37 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_15772) (o_2@@41 T@Ref) (f_4@@41 T@Field_8898_9002) ) (! (= (HasDirectPerm_8898_9002 Mask@@38 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| Mask@@38) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8898_9002 Mask@@38 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_15772) (o_2@@42 T@Ref) (f_4@@42 T@Field_15824_15825) ) (! (= (HasDirectPerm_8900_8901 Mask@@39 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| Mask@@39) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8900_8901 Mask@@39 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_15772) (o_2@@43 T@Ref) (f_4@@43 T@Field_21829_2989) ) (! (= (HasDirectPerm_8898_2989 Mask@@40 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| Mask@@40) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8898_2989 Mask@@40 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.537:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15751) (ExhaleHeap@@7 T@PolymorphicMapType_15751) (Mask@@41 T@PolymorphicMapType_15772) (o_41@@0 T@Ref) (f_27 T@Field_32277_32282) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@41) (=> (HasDirectPerm_28196_52972 Mask@@41 o_41@@0 f_27) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@17) o_41@@0 f_27) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@7) o_41@@0 f_27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@41) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@7) o_41@@0 f_27))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15751) (ExhaleHeap@@8 T@PolymorphicMapType_15751) (Mask@@42 T@PolymorphicMapType_15772) (o_41@@1 T@Ref) (f_27@@0 T@Field_28196_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@42) (=> (HasDirectPerm_28196_53 Mask@@42 o_41@@1 f_27@@0) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@18) o_41@@1 f_27@@0) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@8) o_41@@1 f_27@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@42) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@8) o_41@@1 f_27@@0))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15751) (ExhaleHeap@@9 T@PolymorphicMapType_15751) (Mask@@43 T@PolymorphicMapType_15772) (o_41@@2 T@Ref) (f_27@@1 T@Field_28196_28197) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@43) (=> (HasDirectPerm_28196_9002 Mask@@43 o_41@@2 f_27@@1) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@19) o_41@@2 f_27@@1) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@9) o_41@@2 f_27@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@43) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@9) o_41@@2 f_27@@1))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15751) (ExhaleHeap@@10 T@PolymorphicMapType_15751) (Mask@@44 T@PolymorphicMapType_15772) (o_41@@3 T@Ref) (f_27@@2 T@Field_28196_8901) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@44) (=> (HasDirectPerm_28196_8901 Mask@@44 o_41@@3 f_27@@2) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@20) o_41@@3 f_27@@2) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@10) o_41@@3 f_27@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@44) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@10) o_41@@3 f_27@@2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15751) (ExhaleHeap@@11 T@PolymorphicMapType_15751) (Mask@@45 T@PolymorphicMapType_15772) (o_41@@4 T@Ref) (f_27@@3 T@Field_28196_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@45) (=> (HasDirectPerm_28196_2989 Mask@@45 o_41@@4 f_27@@3) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@21) o_41@@4 f_27@@3) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@11) o_41@@4 f_27@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@45) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@11) o_41@@4 f_27@@3))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15751) (ExhaleHeap@@12 T@PolymorphicMapType_15751) (Mask@@46 T@PolymorphicMapType_15772) (o_41@@5 T@Ref) (f_27@@4 T@Field_26590_26595) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@46) (=> (HasDirectPerm_9001_51854 Mask@@46 o_41@@5 f_27@@4) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@22) o_41@@5 f_27@@4) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@12) o_41@@5 f_27@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@46) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@12) o_41@@5 f_27@@4))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15751) (ExhaleHeap@@13 T@PolymorphicMapType_15751) (Mask@@47 T@PolymorphicMapType_15772) (o_41@@6 T@Ref) (f_27@@5 T@Field_9001_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@47) (=> (HasDirectPerm_9001_53 Mask@@47 o_41@@6 f_27@@5) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@23) o_41@@6 f_27@@5) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@13) o_41@@6 f_27@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@47) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@13) o_41@@6 f_27@@5))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15751) (ExhaleHeap@@14 T@PolymorphicMapType_15751) (Mask@@48 T@PolymorphicMapType_15772) (o_41@@7 T@Ref) (f_27@@6 T@Field_23858_23859) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@48) (=> (HasDirectPerm_9001_9002 Mask@@48 o_41@@7 f_27@@6) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@24) o_41@@7 f_27@@6) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@14) o_41@@7 f_27@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@48) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@14) o_41@@7 f_27@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15751) (ExhaleHeap@@15 T@PolymorphicMapType_15751) (Mask@@49 T@PolymorphicMapType_15772) (o_41@@8 T@Ref) (f_27@@7 T@Field_9001_8901) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@49) (=> (HasDirectPerm_9001_8901 Mask@@49 o_41@@8 f_27@@7) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@25) o_41@@8 f_27@@7) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@15) o_41@@8 f_27@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@49) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@15) o_41@@8 f_27@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15751) (ExhaleHeap@@16 T@PolymorphicMapType_15751) (Mask@@50 T@PolymorphicMapType_15772) (o_41@@9 T@Ref) (f_27@@8 T@Field_9001_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@50) (=> (HasDirectPerm_9001_2989 Mask@@50 o_41@@9 f_27@@8) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@26) o_41@@9 f_27@@8) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@16) o_41@@9 f_27@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@50) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@16) o_41@@9 f_27@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15751) (ExhaleHeap@@17 T@PolymorphicMapType_15751) (Mask@@51 T@PolymorphicMapType_15772) (o_41@@10 T@Ref) (f_27@@9 T@Field_8898_26595) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@51) (=> (HasDirectPerm_8898_50713 Mask@@51 o_41@@10 f_27@@9) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@27) o_41@@10 f_27@@9) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@17) o_41@@10 f_27@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@51) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@17) o_41@@10 f_27@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15751) (ExhaleHeap@@18 T@PolymorphicMapType_15751) (Mask@@52 T@PolymorphicMapType_15772) (o_41@@11 T@Ref) (f_27@@10 T@Field_15811_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@52) (=> (HasDirectPerm_8898_53 Mask@@52 o_41@@11 f_27@@10) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@28) o_41@@11 f_27@@10) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@18) o_41@@11 f_27@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@52) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@18) o_41@@11 f_27@@10))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15751) (ExhaleHeap@@19 T@PolymorphicMapType_15751) (Mask@@53 T@PolymorphicMapType_15772) (o_41@@12 T@Ref) (f_27@@11 T@Field_8898_9002) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@53) (=> (HasDirectPerm_8898_9002 Mask@@53 o_41@@12 f_27@@11) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@29) o_41@@12 f_27@@11) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@19) o_41@@12 f_27@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@53) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@19) o_41@@12 f_27@@11))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15751) (ExhaleHeap@@20 T@PolymorphicMapType_15751) (Mask@@54 T@PolymorphicMapType_15772) (o_41@@13 T@Ref) (f_27@@12 T@Field_15824_15825) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@54) (=> (HasDirectPerm_8900_8901 Mask@@54 o_41@@13 f_27@@12) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@30) o_41@@13 f_27@@12) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@20) o_41@@13 f_27@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@54) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@20) o_41@@13 f_27@@12))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_15751) (ExhaleHeap@@21 T@PolymorphicMapType_15751) (Mask@@55 T@PolymorphicMapType_15772) (o_41@@14 T@Ref) (f_27@@13 T@Field_21829_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@55) (=> (HasDirectPerm_8898_2989 Mask@@55 o_41@@14 f_27@@13) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@31) o_41@@14 f_27@@13) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@21) o_41@@14 f_27@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@55) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@21) o_41@@14 f_27@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_4532|)) (not (= s1@@0 |Seq#Empty_4532|))) (= (|Seq#Length_2867| (|Seq#Append_4532| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.214:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_4532| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_32277_32282) ) (! (= (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_28196_53) ) (! (= (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_28196_8901) ) (! (= (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_28196_28197) ) (! (= (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_28196_2989) ) (! (= (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_26590_26595) ) (! (= (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_9001_53) ) (! (= (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_9001_8901) ) (! (= (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_23858_23859) ) (! (= (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_9001_2989) ) (! (= (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_8898_26595) ) (! (= (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_15811_53) ) (! (= (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_15824_15825) ) (! (= (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_8898_9002) ) (! (= (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_21829_2989) ) (! (= (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_2867| (|Seq#Append_4532| s@@7 t@@0) n@@7) (|Seq#Drop_2867| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.371:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_4532| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_15751) (Mask@@56 T@PolymorphicMapType_15772) (x@@16 T@Ref) (b1@@1 Bool) (b2@@3 Bool) ) (!  (=> (state Heap@@32 Mask@@56) (= (|fun01'| Heap@@32 x@@16 b1@@1 b2@@3) (|fun01#frame| (CombineFrames (FrameFragment_2989 (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@32) x@@16 v_36)) (CombineFrames (FrameFragment_10833 (ite b1@@1 (FrameFragment_2989 (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@32) x@@16 v_36)) EmptyFrame)) (FrameFragment_10833 (ite b2@@3 (FrameFragment_2989 (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@32) x@@16 v_36)) EmptyFrame)))) x@@16 b1@@1 b2@@3)))
 :qid |stdinbpl.583:15|
 :skolemid |61|
 :pattern ( (state Heap@@32 Mask@@56) (|fun01'| Heap@@32 x@@16 b1@@1 b2@@3))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15772) (SummandMask1 T@PolymorphicMapType_15772) (SummandMask2 T@PolymorphicMapType_15772) (o_2@@59 T@Ref) (f_4@@59 T@Field_32277_32282) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15772) (SummandMask1@@0 T@PolymorphicMapType_15772) (SummandMask2@@0 T@PolymorphicMapType_15772) (o_2@@60 T@Ref) (f_4@@60 T@Field_28196_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15772) (SummandMask1@@1 T@PolymorphicMapType_15772) (SummandMask2@@1 T@PolymorphicMapType_15772) (o_2@@61 T@Ref) (f_4@@61 T@Field_28196_8901) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15772) (SummandMask1@@2 T@PolymorphicMapType_15772) (SummandMask2@@2 T@PolymorphicMapType_15772) (o_2@@62 T@Ref) (f_4@@62 T@Field_28196_28197) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15772) (SummandMask1@@3 T@PolymorphicMapType_15772) (SummandMask2@@3 T@PolymorphicMapType_15772) (o_2@@63 T@Ref) (f_4@@63 T@Field_28196_2989) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15772) (SummandMask1@@4 T@PolymorphicMapType_15772) (SummandMask2@@4 T@PolymorphicMapType_15772) (o_2@@64 T@Ref) (f_4@@64 T@Field_26590_26595) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15772) (SummandMask1@@5 T@PolymorphicMapType_15772) (SummandMask2@@5 T@PolymorphicMapType_15772) (o_2@@65 T@Ref) (f_4@@65 T@Field_9001_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15772) (SummandMask1@@6 T@PolymorphicMapType_15772) (SummandMask2@@6 T@PolymorphicMapType_15772) (o_2@@66 T@Ref) (f_4@@66 T@Field_9001_8901) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_15772) (SummandMask1@@7 T@PolymorphicMapType_15772) (SummandMask2@@7 T@PolymorphicMapType_15772) (o_2@@67 T@Ref) (f_4@@67 T@Field_23858_23859) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_15772) (SummandMask1@@8 T@PolymorphicMapType_15772) (SummandMask2@@8 T@PolymorphicMapType_15772) (o_2@@68 T@Ref) (f_4@@68 T@Field_9001_2989) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_15772) (SummandMask1@@9 T@PolymorphicMapType_15772) (SummandMask2@@9 T@PolymorphicMapType_15772) (o_2@@69 T@Ref) (f_4@@69 T@Field_8898_26595) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_15772) (SummandMask1@@10 T@PolymorphicMapType_15772) (SummandMask2@@10 T@PolymorphicMapType_15772) (o_2@@70 T@Ref) (f_4@@70 T@Field_15811_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_15772) (SummandMask1@@11 T@PolymorphicMapType_15772) (SummandMask2@@11 T@PolymorphicMapType_15772) (o_2@@71 T@Ref) (f_4@@71 T@Field_15824_15825) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_15772) (SummandMask1@@12 T@PolymorphicMapType_15772) (SummandMask2@@12 T@PolymorphicMapType_15772) (o_2@@72 T@Ref) (f_4@@72 T@Field_8898_9002) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_15772) (SummandMask1@@13 T@PolymorphicMapType_15772) (SummandMask2@@13 T@PolymorphicMapType_15772) (o_2@@73 T@Ref) (f_4@@73 T@Field_21829_2989) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_15751) (ExhaleHeap@@22 T@PolymorphicMapType_15751) (Mask@@57 T@PolymorphicMapType_15772) (pm_f_28@@5 T@Field_28196_28197) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@22 Mask@@57) (=> (and (HasDirectPerm_28196_9002 Mask@@57 null pm_f_28@@5) (IsPredicateField_9026_9027 pm_f_28@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28 T@Ref) (f_27@@14 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28 f_27@@14) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@33) o2_28 f_27@@14) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28 f_27@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28 f_27@@14))
)) (forall ((o2_28@@0 T@Ref) (f_27@@15 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@0 f_27@@15) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@33) o2_28@@0 f_27@@15) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@0 f_27@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@0 f_27@@15))
))) (forall ((o2_28@@1 T@Ref) (f_27@@16 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@1 f_27@@16) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@33) o2_28@@1 f_27@@16) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@1 f_27@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@1 f_27@@16))
))) (forall ((o2_28@@2 T@Ref) (f_27@@17 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@2 f_27@@17) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@33) o2_28@@2 f_27@@17) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@2 f_27@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@2 f_27@@17))
))) (forall ((o2_28@@3 T@Ref) (f_27@@18 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@3 f_27@@18) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@33) o2_28@@3 f_27@@18) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@3 f_27@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@3 f_27@@18))
))) (forall ((o2_28@@4 T@Ref) (f_27@@19 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@4 f_27@@19) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@33) o2_28@@4 f_27@@19) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@4 f_27@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@4 f_27@@19))
))) (forall ((o2_28@@5 T@Ref) (f_27@@20 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@5 f_27@@20) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@33) o2_28@@5 f_27@@20) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@5 f_27@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@5 f_27@@20))
))) (forall ((o2_28@@6 T@Ref) (f_27@@21 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@6 f_27@@21) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@33) o2_28@@6 f_27@@21) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@6 f_27@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@6 f_27@@21))
))) (forall ((o2_28@@7 T@Ref) (f_27@@22 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@7 f_27@@22) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@33) o2_28@@7 f_27@@22) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@7 f_27@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@7 f_27@@22))
))) (forall ((o2_28@@8 T@Ref) (f_27@@23 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@8 f_27@@23) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@33) o2_28@@8 f_27@@23) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@8 f_27@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@8 f_27@@23))
))) (forall ((o2_28@@9 T@Ref) (f_27@@24 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@9 f_27@@24) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@33) o2_28@@9 f_27@@24) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@9 f_27@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@9 f_27@@24))
))) (forall ((o2_28@@10 T@Ref) (f_27@@25 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@10 f_27@@25) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@33) o2_28@@10 f_27@@25) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@10 f_27@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@10 f_27@@25))
))) (forall ((o2_28@@11 T@Ref) (f_27@@26 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@11 f_27@@26) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@33) o2_28@@11 f_27@@26) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@11 f_27@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@11 f_27@@26))
))) (forall ((o2_28@@12 T@Ref) (f_27@@27 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@12 f_27@@27) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@33) o2_28@@12 f_27@@27) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@12 f_27@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@12 f_27@@27))
))) (forall ((o2_28@@13 T@Ref) (f_27@@28 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@13 f_27@@28) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) o2_28@@13 f_27@@28) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@13 f_27@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@13 f_27@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@22 Mask@@57) (IsPredicateField_9026_9027 pm_f_28@@5))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_15751) (ExhaleHeap@@23 T@PolymorphicMapType_15751) (Mask@@58 T@PolymorphicMapType_15772) (pm_f_28@@6 T@Field_23858_23859) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@23 Mask@@58) (=> (and (HasDirectPerm_9001_9002 Mask@@58 null pm_f_28@@6) (IsPredicateField_9001_9002 pm_f_28@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@14 T@Ref) (f_27@@29 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@14 f_27@@29) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@34) o2_28@@14 f_27@@29) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@14 f_27@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@14 f_27@@29))
)) (forall ((o2_28@@15 T@Ref) (f_27@@30 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@15 f_27@@30) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@34) o2_28@@15 f_27@@30) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@15 f_27@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@15 f_27@@30))
))) (forall ((o2_28@@16 T@Ref) (f_27@@31 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@16 f_27@@31) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@34) o2_28@@16 f_27@@31) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@16 f_27@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@16 f_27@@31))
))) (forall ((o2_28@@17 T@Ref) (f_27@@32 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@17 f_27@@32) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@34) o2_28@@17 f_27@@32) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@17 f_27@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@17 f_27@@32))
))) (forall ((o2_28@@18 T@Ref) (f_27@@33 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@18 f_27@@33) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@34) o2_28@@18 f_27@@33) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@18 f_27@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@18 f_27@@33))
))) (forall ((o2_28@@19 T@Ref) (f_27@@34 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@19 f_27@@34) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@34) o2_28@@19 f_27@@34) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@19 f_27@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@19 f_27@@34))
))) (forall ((o2_28@@20 T@Ref) (f_27@@35 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@20 f_27@@35) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@34) o2_28@@20 f_27@@35) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@20 f_27@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@20 f_27@@35))
))) (forall ((o2_28@@21 T@Ref) (f_27@@36 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@21 f_27@@36) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@34) o2_28@@21 f_27@@36) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@21 f_27@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@21 f_27@@36))
))) (forall ((o2_28@@22 T@Ref) (f_27@@37 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@22 f_27@@37) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@34) o2_28@@22 f_27@@37) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@22 f_27@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@22 f_27@@37))
))) (forall ((o2_28@@23 T@Ref) (f_27@@38 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@23 f_27@@38) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) o2_28@@23 f_27@@38) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@23 f_27@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@23 f_27@@38))
))) (forall ((o2_28@@24 T@Ref) (f_27@@39 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@24 f_27@@39) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@34) o2_28@@24 f_27@@39) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@24 f_27@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@24 f_27@@39))
))) (forall ((o2_28@@25 T@Ref) (f_27@@40 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@25 f_27@@40) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@34) o2_28@@25 f_27@@40) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@25 f_27@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@25 f_27@@40))
))) (forall ((o2_28@@26 T@Ref) (f_27@@41 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@26 f_27@@41) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@34) o2_28@@26 f_27@@41) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@26 f_27@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@26 f_27@@41))
))) (forall ((o2_28@@27 T@Ref) (f_27@@42 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@27 f_27@@42) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@34) o2_28@@27 f_27@@42) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@27 f_27@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@27 f_27@@42))
))) (forall ((o2_28@@28 T@Ref) (f_27@@43 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@28 f_27@@43) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@34) o2_28@@28 f_27@@43) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@28 f_27@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@28 f_27@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@23 Mask@@58) (IsPredicateField_9001_9002 pm_f_28@@6))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_15751) (ExhaleHeap@@24 T@PolymorphicMapType_15751) (Mask@@59 T@PolymorphicMapType_15772) (pm_f_28@@7 T@Field_8898_9002) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@24 Mask@@59) (=> (and (HasDirectPerm_8898_9002 Mask@@59 null pm_f_28@@7) (IsPredicateField_8898_53217 pm_f_28@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@29 T@Ref) (f_27@@44 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@29 f_27@@44) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@35) o2_28@@29 f_27@@44) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@29 f_27@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@29 f_27@@44))
)) (forall ((o2_28@@30 T@Ref) (f_27@@45 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@30 f_27@@45) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@35) o2_28@@30 f_27@@45) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@30 f_27@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@30 f_27@@45))
))) (forall ((o2_28@@31 T@Ref) (f_27@@46 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@31 f_27@@46) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@35) o2_28@@31 f_27@@46) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@31 f_27@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@31 f_27@@46))
))) (forall ((o2_28@@32 T@Ref) (f_27@@47 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@32 f_27@@47) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@35) o2_28@@32 f_27@@47) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@32 f_27@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@32 f_27@@47))
))) (forall ((o2_28@@33 T@Ref) (f_27@@48 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@33 f_27@@48) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) o2_28@@33 f_27@@48) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@33 f_27@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@33 f_27@@48))
))) (forall ((o2_28@@34 T@Ref) (f_27@@49 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@34 f_27@@49) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@35) o2_28@@34 f_27@@49) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@34 f_27@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@34 f_27@@49))
))) (forall ((o2_28@@35 T@Ref) (f_27@@50 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@35 f_27@@50) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@35) o2_28@@35 f_27@@50) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@35 f_27@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@35 f_27@@50))
))) (forall ((o2_28@@36 T@Ref) (f_27@@51 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@36 f_27@@51) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@35) o2_28@@36 f_27@@51) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@36 f_27@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@36 f_27@@51))
))) (forall ((o2_28@@37 T@Ref) (f_27@@52 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@37 f_27@@52) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@35) o2_28@@37 f_27@@52) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@37 f_27@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@37 f_27@@52))
))) (forall ((o2_28@@38 T@Ref) (f_27@@53 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@38 f_27@@53) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@35) o2_28@@38 f_27@@53) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@38 f_27@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@38 f_27@@53))
))) (forall ((o2_28@@39 T@Ref) (f_27@@54 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@39 f_27@@54) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@35) o2_28@@39 f_27@@54) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@39 f_27@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@39 f_27@@54))
))) (forall ((o2_28@@40 T@Ref) (f_27@@55 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@40 f_27@@55) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@35) o2_28@@40 f_27@@55) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@40 f_27@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@40 f_27@@55))
))) (forall ((o2_28@@41 T@Ref) (f_27@@56 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@41 f_27@@56) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@35) o2_28@@41 f_27@@56) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@41 f_27@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@41 f_27@@56))
))) (forall ((o2_28@@42 T@Ref) (f_27@@57 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@42 f_27@@57) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@35) o2_28@@42 f_27@@57) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@42 f_27@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@42 f_27@@57))
))) (forall ((o2_28@@43 T@Ref) (f_27@@58 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@43 f_27@@58) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@35) o2_28@@43 f_27@@58) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@43 f_27@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@43 f_27@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@24 Mask@@59) (IsPredicateField_8898_53217 pm_f_28@@7))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_15751) (ExhaleHeap@@25 T@PolymorphicMapType_15751) (Mask@@60 T@PolymorphicMapType_15772) (pm_f_28@@8 T@Field_28196_28197) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@25 Mask@@60) (=> (and (HasDirectPerm_28196_9002 Mask@@60 null pm_f_28@@8) (IsWandField_28196_58898 pm_f_28@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@44 T@Ref) (f_27@@59 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@44 f_27@@59) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@36) o2_28@@44 f_27@@59) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@44 f_27@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@44 f_27@@59))
)) (forall ((o2_28@@45 T@Ref) (f_27@@60 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@45 f_27@@60) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@36) o2_28@@45 f_27@@60) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@45 f_27@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@45 f_27@@60))
))) (forall ((o2_28@@46 T@Ref) (f_27@@61 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@46 f_27@@61) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@36) o2_28@@46 f_27@@61) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@46 f_27@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@46 f_27@@61))
))) (forall ((o2_28@@47 T@Ref) (f_27@@62 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@47 f_27@@62) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@36) o2_28@@47 f_27@@62) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@47 f_27@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@47 f_27@@62))
))) (forall ((o2_28@@48 T@Ref) (f_27@@63 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@48 f_27@@63) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@36) o2_28@@48 f_27@@63) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@48 f_27@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@48 f_27@@63))
))) (forall ((o2_28@@49 T@Ref) (f_27@@64 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@49 f_27@@64) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@36) o2_28@@49 f_27@@64) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@49 f_27@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@49 f_27@@64))
))) (forall ((o2_28@@50 T@Ref) (f_27@@65 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@50 f_27@@65) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@36) o2_28@@50 f_27@@65) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@50 f_27@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@50 f_27@@65))
))) (forall ((o2_28@@51 T@Ref) (f_27@@66 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@51 f_27@@66) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@36) o2_28@@51 f_27@@66) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@51 f_27@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@51 f_27@@66))
))) (forall ((o2_28@@52 T@Ref) (f_27@@67 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@52 f_27@@67) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@36) o2_28@@52 f_27@@67) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@52 f_27@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@52 f_27@@67))
))) (forall ((o2_28@@53 T@Ref) (f_27@@68 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@53 f_27@@68) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@36) o2_28@@53 f_27@@68) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@53 f_27@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@53 f_27@@68))
))) (forall ((o2_28@@54 T@Ref) (f_27@@69 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@54 f_27@@69) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@36) o2_28@@54 f_27@@69) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@54 f_27@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@54 f_27@@69))
))) (forall ((o2_28@@55 T@Ref) (f_27@@70 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@55 f_27@@70) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@36) o2_28@@55 f_27@@70) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@55 f_27@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@55 f_27@@70))
))) (forall ((o2_28@@56 T@Ref) (f_27@@71 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@56 f_27@@71) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@36) o2_28@@56 f_27@@71) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@56 f_27@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@56 f_27@@71))
))) (forall ((o2_28@@57 T@Ref) (f_27@@72 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@57 f_27@@72) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@36) o2_28@@57 f_27@@72) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@57 f_27@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@57 f_27@@72))
))) (forall ((o2_28@@58 T@Ref) (f_27@@73 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@58 f_27@@73) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) o2_28@@58 f_27@@73) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@58 f_27@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@58 f_27@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@25 Mask@@60) (IsWandField_28196_58898 pm_f_28@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_15751) (ExhaleHeap@@26 T@PolymorphicMapType_15751) (Mask@@61 T@PolymorphicMapType_15772) (pm_f_28@@9 T@Field_23858_23859) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@26 Mask@@61) (=> (and (HasDirectPerm_9001_9002 Mask@@61 null pm_f_28@@9) (IsWandField_9001_58541 pm_f_28@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@59 T@Ref) (f_27@@74 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@59 f_27@@74) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@37) o2_28@@59 f_27@@74) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@59 f_27@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@59 f_27@@74))
)) (forall ((o2_28@@60 T@Ref) (f_27@@75 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@60 f_27@@75) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@37) o2_28@@60 f_27@@75) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@60 f_27@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@60 f_27@@75))
))) (forall ((o2_28@@61 T@Ref) (f_27@@76 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@61 f_27@@76) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@37) o2_28@@61 f_27@@76) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@61 f_27@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@61 f_27@@76))
))) (forall ((o2_28@@62 T@Ref) (f_27@@77 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@62 f_27@@77) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@37) o2_28@@62 f_27@@77) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@62 f_27@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@62 f_27@@77))
))) (forall ((o2_28@@63 T@Ref) (f_27@@78 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@63 f_27@@78) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@37) o2_28@@63 f_27@@78) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@63 f_27@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@63 f_27@@78))
))) (forall ((o2_28@@64 T@Ref) (f_27@@79 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@64 f_27@@79) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@37) o2_28@@64 f_27@@79) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@64 f_27@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@64 f_27@@79))
))) (forall ((o2_28@@65 T@Ref) (f_27@@80 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@65 f_27@@80) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@37) o2_28@@65 f_27@@80) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@65 f_27@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@65 f_27@@80))
))) (forall ((o2_28@@66 T@Ref) (f_27@@81 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@66 f_27@@81) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@37) o2_28@@66 f_27@@81) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@66 f_27@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@66 f_27@@81))
))) (forall ((o2_28@@67 T@Ref) (f_27@@82 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@67 f_27@@82) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@37) o2_28@@67 f_27@@82) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@67 f_27@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@67 f_27@@82))
))) (forall ((o2_28@@68 T@Ref) (f_27@@83 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@68 f_27@@83) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) o2_28@@68 f_27@@83) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@68 f_27@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@68 f_27@@83))
))) (forall ((o2_28@@69 T@Ref) (f_27@@84 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@69 f_27@@84) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@37) o2_28@@69 f_27@@84) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@69 f_27@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@69 f_27@@84))
))) (forall ((o2_28@@70 T@Ref) (f_27@@85 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@70 f_27@@85) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@37) o2_28@@70 f_27@@85) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@70 f_27@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@70 f_27@@85))
))) (forall ((o2_28@@71 T@Ref) (f_27@@86 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@71 f_27@@86) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@37) o2_28@@71 f_27@@86) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@71 f_27@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@71 f_27@@86))
))) (forall ((o2_28@@72 T@Ref) (f_27@@87 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@72 f_27@@87) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@37) o2_28@@72 f_27@@87) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@72 f_27@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@72 f_27@@87))
))) (forall ((o2_28@@73 T@Ref) (f_27@@88 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@73 f_27@@88) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@37) o2_28@@73 f_27@@88) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@73 f_27@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@73 f_27@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@26 Mask@@61) (IsWandField_9001_58541 pm_f_28@@9))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_15751) (ExhaleHeap@@27 T@PolymorphicMapType_15751) (Mask@@62 T@PolymorphicMapType_15772) (pm_f_28@@10 T@Field_8898_9002) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@27 Mask@@62) (=> (and (HasDirectPerm_8898_9002 Mask@@62 null pm_f_28@@10) (IsWandField_8898_58184 pm_f_28@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@74 T@Ref) (f_27@@89 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@74 f_27@@89) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@38) o2_28@@74 f_27@@89) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@74 f_27@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@74 f_27@@89))
)) (forall ((o2_28@@75 T@Ref) (f_27@@90 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@75 f_27@@90) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@38) o2_28@@75 f_27@@90) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@75 f_27@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@75 f_27@@90))
))) (forall ((o2_28@@76 T@Ref) (f_27@@91 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@76 f_27@@91) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@38) o2_28@@76 f_27@@91) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@76 f_27@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@76 f_27@@91))
))) (forall ((o2_28@@77 T@Ref) (f_27@@92 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@77 f_27@@92) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@38) o2_28@@77 f_27@@92) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@77 f_27@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@77 f_27@@92))
))) (forall ((o2_28@@78 T@Ref) (f_27@@93 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@78 f_27@@93) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) o2_28@@78 f_27@@93) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@78 f_27@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@78 f_27@@93))
))) (forall ((o2_28@@79 T@Ref) (f_27@@94 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@79 f_27@@94) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@38) o2_28@@79 f_27@@94) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@79 f_27@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@79 f_27@@94))
))) (forall ((o2_28@@80 T@Ref) (f_27@@95 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@80 f_27@@95) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@38) o2_28@@80 f_27@@95) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@80 f_27@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@80 f_27@@95))
))) (forall ((o2_28@@81 T@Ref) (f_27@@96 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@81 f_27@@96) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@38) o2_28@@81 f_27@@96) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@81 f_27@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@81 f_27@@96))
))) (forall ((o2_28@@82 T@Ref) (f_27@@97 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@82 f_27@@97) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@38) o2_28@@82 f_27@@97) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@82 f_27@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@82 f_27@@97))
))) (forall ((o2_28@@83 T@Ref) (f_27@@98 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@83 f_27@@98) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@38) o2_28@@83 f_27@@98) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@83 f_27@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@83 f_27@@98))
))) (forall ((o2_28@@84 T@Ref) (f_27@@99 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@84 f_27@@99) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@38) o2_28@@84 f_27@@99) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@84 f_27@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@84 f_27@@99))
))) (forall ((o2_28@@85 T@Ref) (f_27@@100 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@85 f_27@@100) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@38) o2_28@@85 f_27@@100) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@85 f_27@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@85 f_27@@100))
))) (forall ((o2_28@@86 T@Ref) (f_27@@101 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@86 f_27@@101) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@38) o2_28@@86 f_27@@101) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@86 f_27@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@86 f_27@@101))
))) (forall ((o2_28@@87 T@Ref) (f_27@@102 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@87 f_27@@102) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@38) o2_28@@87 f_27@@102) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@87 f_27@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@87 f_27@@102))
))) (forall ((o2_28@@88 T@Ref) (f_27@@103 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@88 f_27@@103) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@38) o2_28@@88 f_27@@103) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@88 f_27@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@88 f_27@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@27 Mask@@62) (IsWandField_8898_58184 pm_f_28@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.536:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a b) (= a b))
 :qid |stdinbpl.509:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a b))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_15751) (x@@17 T@Ref) (b1@@2 Bool) (b2@@4 Bool) ) (!  (and (= (fun01 Heap@@39 x@@17 b1@@2 b2@@4) (|fun01'| Heap@@39 x@@17 b1@@2 b2@@4)) (dummyFunction_3320 (|fun01#triggerStateless| x@@17 b1@@2 b2@@4)))
 :qid |stdinbpl.566:15|
 :skolemid |58|
 :pattern ( (fun01 Heap@@39 x@@17 b1@@2 b2@@4))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.402:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_4532|) (= (|Seq#Append_4532| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_4532|) (= (|Seq#Append_4532| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.220:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_4532| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2989| t@@1) 0) t@@1)
 :qid |stdinbpl.224:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2989| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.203:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((x@@18 T@Ref) (b_24@@5 Bool) ) (! (= (getPredWandId_9001_9002 (P01 x@@18 b_24@@5)) 0)
 :qid |stdinbpl.972:15|
 :skolemid |75|
 :pattern ( (P01 x@@18 b_24@@5))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.499:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.496:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_15751) (Mask@@63 T@PolymorphicMapType_15772) (x@@19 T@Ref) ) (!  (=> (state Heap@@40 Mask@@63) (= (|vals'| Heap@@40 x@@19) (|vals#frame| (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@40) null (Tree x@@19)) x@@19)))
 :qid |stdinbpl.803:15|
 :skolemid |70|
 :pattern ( (state Heap@@40 Mask@@63) (|vals'| Heap@@40 x@@19))
 :pattern ( (state Heap@@40 Mask@@63) (|vals#triggerStateless| x@@19) (|Tree#trigger_9026| Heap@@40 (Tree x@@19)) (|Tree#trigger_9026| Heap@@40 (Tree x@@19)))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2989| t@@2)) 1)
 :qid |stdinbpl.211:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2989| t@@2))
)))
(assert (forall ((x@@20 T@Ref) ) (! (= (getPredWandId_9026_9027 (Tree x@@20)) 1)
 :qid |stdinbpl.1046:15|
 :skolemid |81|
 :pattern ( (Tree x@@20))
)))
(assert (forall ((x@@21 T@Ref) (b_24@@6 Bool) ) (! (= (PredicateMaskField_9001 (P01 x@@21 b_24@@6)) (|P01#sm| x@@21 b_24@@6))
 :qid |stdinbpl.964:15|
 :skolemid |73|
 :pattern ( (PredicateMaskField_9001 (P01 x@@21 b_24@@6)))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_4532| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.353:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_4532| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.252:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_15751) (o_22 T@Ref) (f_12 T@Field_32277_32282) (v@@2 T@PolymorphicMapType_16300) ) (! (succHeap Heap@@41 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@41) (store (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@41) o_22 f_12 v@@2) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@41) (store (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@41) o_22 f_12 v@@2) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_15751) (o_22@@0 T@Ref) (f_12@@0 T@Field_28196_28197) (v@@3 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@42) (store (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@42) o_22@@0 f_12@@0 v@@3) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@42) (store (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@42) o_22@@0 f_12@@0 v@@3) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_15751) (o_22@@1 T@Ref) (f_12@@1 T@Field_28196_2989) (v@@4 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@43) (store (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@43) o_22@@1 f_12@@1 v@@4) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@43) (store (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@43) o_22@@1 f_12@@1 v@@4) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_15751) (o_22@@2 T@Ref) (f_12@@2 T@Field_28196_8901) (v@@5 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@44) (store (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@44) o_22@@2 f_12@@2 v@@5) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@44) (store (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@44) o_22@@2 f_12@@2 v@@5) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_15751) (o_22@@3 T@Ref) (f_12@@3 T@Field_28196_53) (v@@6 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@45) (store (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@45) o_22@@3 f_12@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@45) (store (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@45) o_22@@3 f_12@@3 v@@6)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_15751) (o_22@@4 T@Ref) (f_12@@4 T@Field_26590_26595) (v@@7 T@PolymorphicMapType_16300) ) (! (succHeap Heap@@46 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@46) (store (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@46) o_22@@4 f_12@@4 v@@7) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@46) (store (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@46) o_22@@4 f_12@@4 v@@7) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_15751) (o_22@@5 T@Ref) (f_12@@5 T@Field_23858_23859) (v@@8 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@47) (store (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@47) o_22@@5 f_12@@5 v@@8) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@47) (store (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@47) o_22@@5 f_12@@5 v@@8) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_15751) (o_22@@6 T@Ref) (f_12@@6 T@Field_9001_2989) (v@@9 Int) ) (! (succHeap Heap@@48 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@48) (store (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@48) o_22@@6 f_12@@6 v@@9) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@48) (store (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@48) o_22@@6 f_12@@6 v@@9) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_15751) (o_22@@7 T@Ref) (f_12@@7 T@Field_9001_8901) (v@@10 T@Ref) ) (! (succHeap Heap@@49 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@49) (store (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@49) o_22@@7 f_12@@7 v@@10) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@49) (store (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@49) o_22@@7 f_12@@7 v@@10) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_15751) (o_22@@8 T@Ref) (f_12@@8 T@Field_9001_53) (v@@11 Bool) ) (! (succHeap Heap@@50 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@50) (store (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@50) o_22@@8 f_12@@8 v@@11) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@50) (store (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@50) o_22@@8 f_12@@8 v@@11) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_15751) (o_22@@9 T@Ref) (f_12@@9 T@Field_8898_26595) (v@@12 T@PolymorphicMapType_16300) ) (! (succHeap Heap@@51 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@51) (store (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@51) o_22@@9 f_12@@9 v@@12) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@51) (store (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@51) o_22@@9 f_12@@9 v@@12) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_15751) (o_22@@10 T@Ref) (f_12@@10 T@Field_8898_9002) (v@@13 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@52) (store (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@52) o_22@@10 f_12@@10 v@@13) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@52) (store (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@52) o_22@@10 f_12@@10 v@@13) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_15751) (o_22@@11 T@Ref) (f_12@@11 T@Field_21829_2989) (v@@14 Int) ) (! (succHeap Heap@@53 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@53) (store (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@53) o_22@@11 f_12@@11 v@@14) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@53) (store (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@53) o_22@@11 f_12@@11 v@@14) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_15751) (o_22@@12 T@Ref) (f_12@@12 T@Field_15824_15825) (v@@15 T@Ref) ) (! (succHeap Heap@@54 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@54) (store (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@54) o_22@@12 f_12@@12 v@@15) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@54) (store (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@54) o_22@@12 f_12@@12 v@@15) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_15751) (o_22@@13 T@Ref) (f_12@@13 T@Field_15811_53) (v@@16 Bool) ) (! (succHeap Heap@@55 (PolymorphicMapType_15751 (store (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@55) o_22@@13 f_12@@13 v@@16) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (store (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@55) o_22@@13 f_12@@13 v@@16) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@55)))
)))
(assert (forall ((x@@22 T@Ref) ) (! (= (PredicateMaskField_9026 (Tree x@@22)) (|Tree#sm| x@@22))
 :qid |stdinbpl.1038:15|
 :skolemid |79|
 :pattern ( (PredicateMaskField_9026 (Tree x@@22)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_2867| (|Seq#Append_4532| s@@12 t@@4) n@@9) (|Seq#Append_4532| (|Seq#Drop_2867| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.367:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_4532| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.303:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_4532|)) (not (= s1@@3 |Seq#Empty_4532|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_4532| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.243:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_4532| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_4532| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_4532|)) (not (= s1@@4 |Seq#Empty_4532|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_4532| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.248:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_4532| s0@@4 s1@@4))
)))
(assert (forall ((o_22@@14 T@Ref) (f_30 T@Field_15824_15825) (Heap@@56 T@PolymorphicMapType_15751) ) (!  (=> (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@56) o_22@@14 $allocated) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@56) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@56) o_22@@14 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@56) o_22@@14 f_30))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@23 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@23)) (|Seq#Contains_2867| s@@14 x@@23))
 :qid |stdinbpl.400:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@23) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2867| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.504:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@5 s1@@5))
)))
(assert (forall ((p@@3 T@Field_8898_9002) (v_1@@2 T@FrameType) (q T@Field_8898_9002) (w@@2 T@FrameType) (r T@Field_8898_9002) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15811_15811 p@@3 v_1@@2 q w@@2) (InsidePredicate_15811_15811 q w@@2 r u)) (InsidePredicate_15811_15811 p@@3 v_1@@2 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_15811 p@@3 v_1@@2 q w@@2) (InsidePredicate_15811_15811 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_8898_9002) (v_1@@3 T@FrameType) (q@@0 T@Field_8898_9002) (w@@3 T@FrameType) (r@@0 T@Field_28196_28197) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_15811 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15811_9026 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_15811_9026 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_15811 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15811_9026 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_8898_9002) (v_1@@4 T@FrameType) (q@@1 T@Field_8898_9002) (w@@4 T@FrameType) (r@@1 T@Field_23858_23859) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_15811 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15811_9001 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_15811_9001 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_15811 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15811_9001 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_8898_9002) (v_1@@5 T@FrameType) (q@@2 T@Field_28196_28197) (w@@5 T@FrameType) (r@@2 T@Field_8898_9002) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9026 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9026_15811 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_15811_15811 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9026 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9026_15811 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_8898_9002) (v_1@@6 T@FrameType) (q@@3 T@Field_28196_28197) (w@@6 T@FrameType) (r@@3 T@Field_28196_28197) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9026 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9026_9026 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_15811_9026 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9026 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9026_9026 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_8898_9002) (v_1@@7 T@FrameType) (q@@4 T@Field_28196_28197) (w@@7 T@FrameType) (r@@4 T@Field_23858_23859) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9026 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9026_9001 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_15811_9001 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9026 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9026_9001 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_8898_9002) (v_1@@8 T@FrameType) (q@@5 T@Field_23858_23859) (w@@8 T@FrameType) (r@@5 T@Field_8898_9002) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9001 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9001_15811 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_15811_15811 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9001 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9001_15811 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_8898_9002) (v_1@@9 T@FrameType) (q@@6 T@Field_23858_23859) (w@@9 T@FrameType) (r@@6 T@Field_28196_28197) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9001 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9001_9026 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_15811_9026 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9001 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9001_9026 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_8898_9002) (v_1@@10 T@FrameType) (q@@7 T@Field_23858_23859) (w@@10 T@FrameType) (r@@7 T@Field_23858_23859) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9001 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9001_9001 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_15811_9001 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9001 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9001_9001 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_28196_28197) (v_1@@11 T@FrameType) (q@@8 T@Field_8898_9002) (w@@11 T@FrameType) (r@@8 T@Field_8898_9002) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_15811 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15811_15811 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_9026_15811 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_15811 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15811_15811 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_28196_28197) (v_1@@12 T@FrameType) (q@@9 T@Field_8898_9002) (w@@12 T@FrameType) (r@@9 T@Field_28196_28197) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_15811 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15811_9026 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_9026_9026 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_15811 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15811_9026 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_28196_28197) (v_1@@13 T@FrameType) (q@@10 T@Field_8898_9002) (w@@13 T@FrameType) (r@@10 T@Field_23858_23859) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_15811 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15811_9001 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_9026_9001 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_15811 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15811_9001 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_28196_28197) (v_1@@14 T@FrameType) (q@@11 T@Field_28196_28197) (w@@14 T@FrameType) (r@@11 T@Field_8898_9002) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9026 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9026_15811 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_9026_15811 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9026 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9026_15811 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_28196_28197) (v_1@@15 T@FrameType) (q@@12 T@Field_28196_28197) (w@@15 T@FrameType) (r@@12 T@Field_28196_28197) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9026 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9026_9026 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_9026_9026 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9026 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9026_9026 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_28196_28197) (v_1@@16 T@FrameType) (q@@13 T@Field_28196_28197) (w@@16 T@FrameType) (r@@13 T@Field_23858_23859) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9026 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9026_9001 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_9026_9001 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9026 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9026_9001 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_28196_28197) (v_1@@17 T@FrameType) (q@@14 T@Field_23858_23859) (w@@17 T@FrameType) (r@@14 T@Field_8898_9002) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9001 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9001_15811 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_9026_15811 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9001 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9001_15811 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_28196_28197) (v_1@@18 T@FrameType) (q@@15 T@Field_23858_23859) (w@@18 T@FrameType) (r@@15 T@Field_28196_28197) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9001 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9001_9026 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_9026_9026 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9001 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9001_9026 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_28196_28197) (v_1@@19 T@FrameType) (q@@16 T@Field_23858_23859) (w@@19 T@FrameType) (r@@16 T@Field_23858_23859) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9001 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9001_9001 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_9026_9001 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9001 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9001_9001 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_23858_23859) (v_1@@20 T@FrameType) (q@@17 T@Field_8898_9002) (w@@20 T@FrameType) (r@@17 T@Field_8898_9002) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_15811 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15811_15811 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_9001_15811 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_15811 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15811_15811 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_23858_23859) (v_1@@21 T@FrameType) (q@@18 T@Field_8898_9002) (w@@21 T@FrameType) (r@@18 T@Field_28196_28197) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_15811 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15811_9026 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_9001_9026 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_15811 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15811_9026 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_23858_23859) (v_1@@22 T@FrameType) (q@@19 T@Field_8898_9002) (w@@22 T@FrameType) (r@@19 T@Field_23858_23859) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_15811 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15811_9001 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_9001_9001 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_15811 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15811_9001 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_23858_23859) (v_1@@23 T@FrameType) (q@@20 T@Field_28196_28197) (w@@23 T@FrameType) (r@@20 T@Field_8898_9002) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9026 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9026_15811 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_9001_15811 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9026 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9026_15811 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_23858_23859) (v_1@@24 T@FrameType) (q@@21 T@Field_28196_28197) (w@@24 T@FrameType) (r@@21 T@Field_28196_28197) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9026 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9026_9026 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_9001_9026 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9026 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9026_9026 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_23858_23859) (v_1@@25 T@FrameType) (q@@22 T@Field_28196_28197) (w@@25 T@FrameType) (r@@22 T@Field_23858_23859) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9026 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9026_9001 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_9001_9001 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9026 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9026_9001 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_23858_23859) (v_1@@26 T@FrameType) (q@@23 T@Field_23858_23859) (w@@26 T@FrameType) (r@@23 T@Field_8898_9002) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9001 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9001_15811 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_9001_15811 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9001 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9001_15811 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_23858_23859) (v_1@@27 T@FrameType) (q@@24 T@Field_23858_23859) (w@@27 T@FrameType) (r@@24 T@Field_28196_28197) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9001 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9001_9026 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_9001_9026 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9001 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9001_9026 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_23858_23859) (v_1@@28 T@FrameType) (q@@25 T@Field_23858_23859) (w@@28 T@FrameType) (r@@25 T@Field_23858_23859) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9001 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9001_9001 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_9001_9001 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9001 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9001_9001 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_4532|))
 :qid |stdinbpl.207:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_4532|))
 :qid |stdinbpl.383:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@57 T@PolymorphicMapType_15751) (x@@24 T@Ref) (b_24@@7 Bool) ) (!  (and (= (fun02 Heap@@57 x@@24 b_24@@7) (|fun02'| Heap@@57 x@@24 b_24@@7)) (dummyFunction_3804 (|fun02#triggerStateless| x@@24 b_24@@7)))
 :qid |stdinbpl.651:15|
 :skolemid |62|
 :pattern ( (fun02 Heap@@57 x@@24 b_24@@7))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_15751) (Mask@@64 T@PolymorphicMapType_15772) (x@@25 T@Ref) (b_24@@8 Bool) ) (!  (=> (state Heap@@58 Mask@@64) (= (|fun02'| Heap@@58 x@@25 b_24@@8) (|fun02#frame| (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@58) null (P01 x@@25 b_24@@8)) x@@25 b_24@@8)))
 :qid |stdinbpl.668:15|
 :skolemid |65|
 :pattern ( (state Heap@@58 Mask@@64) (|fun02'| Heap@@58 x@@25 b_24@@8))
 :pattern ( (state Heap@@58 Mask@@64) (|fun02#triggerStateless| x@@25 b_24@@8) (|P01#trigger_9001| Heap@@58 (P01 x@@25 b_24@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@4 () T@PolymorphicMapType_15751)
(declare-fun x@@26 () T@Ref)
(declare-fun Heap@6 () T@PolymorphicMapType_15751)
(declare-fun newPMask@1 () T@PolymorphicMapType_16300)
(declare-fun Heap@5 () T@PolymorphicMapType_15751)
(declare-fun Heap@3 () T@PolymorphicMapType_15751)
(declare-fun Heap@1 () T@PolymorphicMapType_15751)
(declare-fun newPMask@0 () T@PolymorphicMapType_16300)
(declare-fun Heap@2 () T@PolymorphicMapType_15751)
(declare-fun Heap@0 () T@PolymorphicMapType_15751)
(declare-fun Heap@@59 () T@PolymorphicMapType_15751)
(declare-fun |vals#trigger| (T@FrameType T@Ref) Bool)
(declare-fun UnfoldingMask@6 () T@PolymorphicMapType_15772)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_15772)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_15772)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_15772)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_15772)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_15772)
(declare-fun Mask@0 () T@PolymorphicMapType_15772)
(declare-fun FrameFragment_8901 (T@Ref) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_15772)
(set-info :boogie-vc-id |vals#definedness|)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon18_correct true))
(let ((anon26_Else_correct  (=> (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6) null) (=> (and (= Heap@6 Heap@4) (= (ControlFlow 0 7) 5)) anon18_correct))))
(let ((anon26_Then_correct  (=> (not (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_52 T@Ref) (f_55 T@Field_21829_2989) ) (!  (=> (or (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52 f_55) (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52 f_55)) (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| newPMask@1) o_52 f_55))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| newPMask@1) o_52 f_55))
)) (forall ((o_52@@0 T@Ref) (f_55@@0 T@Field_15824_15825) ) (!  (=> (or (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@0 f_55@@0) (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@0 f_55@@0)) (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| newPMask@1) o_52@@0 f_55@@0))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| newPMask@1) o_52@@0 f_55@@0))
))) (forall ((o_52@@1 T@Ref) (f_55@@1 T@Field_15811_53) ) (!  (=> (or (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@1 f_55@@1) (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@1 f_55@@1)) (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| newPMask@1) o_52@@1 f_55@@1))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| newPMask@1) o_52@@1 f_55@@1))
))) (forall ((o_52@@2 T@Ref) (f_55@@2 T@Field_8898_9002) ) (!  (=> (or (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@2 f_55@@2) (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@2 f_55@@2)) (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| newPMask@1) o_52@@2 f_55@@2))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| newPMask@1) o_52@@2 f_55@@2))
))) (forall ((o_52@@3 T@Ref) (f_55@@3 T@Field_8898_26595) ) (!  (=> (or (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@3 f_55@@3) (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@3 f_55@@3)) (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| newPMask@1) o_52@@3 f_55@@3))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| newPMask@1) o_52@@3 f_55@@3))
))) (forall ((o_52@@4 T@Ref) (f_55@@4 T@Field_9001_2989) ) (!  (=> (or (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@4 f_55@@4) (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@4 f_55@@4)) (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| newPMask@1) o_52@@4 f_55@@4))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| newPMask@1) o_52@@4 f_55@@4))
))) (forall ((o_52@@5 T@Ref) (f_55@@5 T@Field_9001_8901) ) (!  (=> (or (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@5 f_55@@5) (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@5 f_55@@5)) (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| newPMask@1) o_52@@5 f_55@@5))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| newPMask@1) o_52@@5 f_55@@5))
))) (forall ((o_52@@6 T@Ref) (f_55@@6 T@Field_9001_53) ) (!  (=> (or (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@6 f_55@@6) (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@6 f_55@@6)) (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| newPMask@1) o_52@@6 f_55@@6))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| newPMask@1) o_52@@6 f_55@@6))
))) (forall ((o_52@@7 T@Ref) (f_55@@7 T@Field_23858_23859) ) (!  (=> (or (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@7 f_55@@7) (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@7 f_55@@7)) (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| newPMask@1) o_52@@7 f_55@@7))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| newPMask@1) o_52@@7 f_55@@7))
))) (forall ((o_52@@8 T@Ref) (f_55@@8 T@Field_26590_26595) ) (!  (=> (or (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@8 f_55@@8) (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@8 f_55@@8)) (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| newPMask@1) o_52@@8 f_55@@8))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| newPMask@1) o_52@@8 f_55@@8))
))) (forall ((o_52@@9 T@Ref) (f_55@@9 T@Field_28196_2989) ) (!  (=> (or (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@9 f_55@@9) (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@9 f_55@@9)) (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| newPMask@1) o_52@@9 f_55@@9))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| newPMask@1) o_52@@9 f_55@@9))
))) (forall ((o_52@@10 T@Ref) (f_55@@10 T@Field_28196_8901) ) (!  (=> (or (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@10 f_55@@10) (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@10 f_55@@10)) (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| newPMask@1) o_52@@10 f_55@@10))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| newPMask@1) o_52@@10 f_55@@10))
))) (forall ((o_52@@11 T@Ref) (f_55@@11 T@Field_28196_53) ) (!  (=> (or (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@11 f_55@@11) (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@11 f_55@@11)) (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| newPMask@1) o_52@@11 f_55@@11))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| newPMask@1) o_52@@11 f_55@@11))
))) (forall ((o_52@@12 T@Ref) (f_55@@12 T@Field_28196_28197) ) (!  (=> (or (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@12 f_55@@12) (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@12 f_55@@12)) (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| newPMask@1) o_52@@12 f_55@@12))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| newPMask@1) o_52@@12 f_55@@12))
))) (forall ((o_52@@13 T@Ref) (f_55@@13 T@Field_32277_32282) ) (!  (=> (or (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26))) o_52@@13 f_55@@13) (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) x@@26 r_6)))) o_52@@13 f_55@@13)) (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| newPMask@1) o_52@@13 f_55@@13))
 :qid |stdinbpl.945:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| newPMask@1) o_52@@13 f_55@@13))
))) (= Heap@5 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@4) (store (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@4) null (|Tree#sm| x@@26) newPMask@1) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@4) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@4)))) (and (= Heap@6 Heap@5) (= (ControlFlow 0 6) 5))) anon18_correct))))
(let ((anon16_correct  (=> (= Heap@4 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@3) (store (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26) (PolymorphicMapType_16300 (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (store (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) x@@26 r_6 true) (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@3) null (|Tree#sm| x@@26))))) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@3) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@3))) (and (=> (= (ControlFlow 0 8) 6) anon26_Then_correct) (=> (= (ControlFlow 0 8) 7) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 10) 8)) anon16_correct))))
(let ((anon25_Then_correct  (=> (not (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_21829_2989) ) (!  (=> (or (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16 f_21) (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16 f_21)) (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| newPMask@0) o_16 f_21))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| newPMask@0) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_15824_15825) ) (!  (=> (or (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| newPMask@0) o_16@@0 f_21@@0))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| newPMask@0) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_15811_53) ) (!  (=> (or (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| newPMask@0) o_16@@1 f_21@@1))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| newPMask@0) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_8898_9002) ) (!  (=> (or (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| newPMask@0) o_16@@2 f_21@@2))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| newPMask@0) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_8898_26595) ) (!  (=> (or (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| newPMask@0) o_16@@3 f_21@@3))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| newPMask@0) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_9001_2989) ) (!  (=> (or (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| newPMask@0) o_16@@4 f_21@@4))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| newPMask@0) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_9001_8901) ) (!  (=> (or (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| newPMask@0) o_16@@5 f_21@@5))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| newPMask@0) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_9001_53) ) (!  (=> (or (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| newPMask@0) o_16@@6 f_21@@6))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| newPMask@0) o_16@@6 f_21@@6))
))) (forall ((o_16@@7 T@Ref) (f_21@@7 T@Field_23858_23859) ) (!  (=> (or (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@7 f_21@@7) (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@7 f_21@@7)) (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| newPMask@0) o_16@@7 f_21@@7))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| newPMask@0) o_16@@7 f_21@@7))
))) (forall ((o_16@@8 T@Ref) (f_21@@8 T@Field_26590_26595) ) (!  (=> (or (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@8 f_21@@8) (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@8 f_21@@8)) (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| newPMask@0) o_16@@8 f_21@@8))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| newPMask@0) o_16@@8 f_21@@8))
))) (forall ((o_16@@9 T@Ref) (f_21@@9 T@Field_28196_2989) ) (!  (=> (or (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@9 f_21@@9) (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@9 f_21@@9)) (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| newPMask@0) o_16@@9 f_21@@9))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| newPMask@0) o_16@@9 f_21@@9))
))) (forall ((o_16@@10 T@Ref) (f_21@@10 T@Field_28196_8901) ) (!  (=> (or (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@10 f_21@@10) (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@10 f_21@@10)) (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| newPMask@0) o_16@@10 f_21@@10))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| newPMask@0) o_16@@10 f_21@@10))
))) (forall ((o_16@@11 T@Ref) (f_21@@11 T@Field_28196_53) ) (!  (=> (or (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@11 f_21@@11) (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@11 f_21@@11)) (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| newPMask@0) o_16@@11 f_21@@11))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| newPMask@0) o_16@@11 f_21@@11))
))) (forall ((o_16@@12 T@Ref) (f_21@@12 T@Field_28196_28197) ) (!  (=> (or (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@12 f_21@@12) (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@12 f_21@@12)) (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| newPMask@0) o_16@@12 f_21@@12))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| newPMask@0) o_16@@12 f_21@@12))
))) (forall ((o_16@@13 T@Ref) (f_21@@13 T@Field_32277_32282) ) (!  (=> (or (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26))) o_16@@13 f_21@@13) (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) x@@26 l_8)))) o_16@@13 f_21@@13)) (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| newPMask@0) o_16@@13 f_21@@13))
 :qid |stdinbpl.936:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| newPMask@0) o_16@@13 f_21@@13))
))) (= Heap@2 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@1) (store (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@1) null (|Tree#sm| x@@26) newPMask@0) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@1) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 9) 8))) anon16_correct))))
(let ((anon14_correct  (=> (and (= Heap@0 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@59) (store (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26) (PolymorphicMapType_16300 (store (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) x@@26 v_36 true) (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@59) null (|Tree#sm| x@@26))))) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@59) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@59))) (= Heap@1 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@0) (store (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26) (PolymorphicMapType_16300 (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (store (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) x@@26 l_8 true) (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))) (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@0) null (|Tree#sm| x@@26))))) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@0) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@0)))) (and (=> (= (ControlFlow 0 11) 9) anon25_Then_correct) (=> (= (ControlFlow 0 11) 10) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (|vals#trigger| (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@59) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6))) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6)) (= (ControlFlow 0 13) 11)) anon14_correct)))
(let ((anon23_Then_correct  (=> (and (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6) null) (= (ControlFlow 0 12) 11)) anon14_correct)))
(let ((anon24_Then_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| UnfoldingMask@6) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6))))))))
(let ((anon23_Else_correct  (=> (not (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6) null)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_8900_8901 UnfoldingMask@6 x@@26 r_6)) (=> (HasDirectPerm_8900_8901 UnfoldingMask@6 x@@26 r_6) (and (=> (= (ControlFlow 0 14) 4) anon24_Then_correct) (=> (= (ControlFlow 0 14) 13) anon24_Else_correct)))))))
(let ((anon9_correct  (and (=> (= (ControlFlow 0 16) (- 0 18)) (HasDirectPerm_8898_2989 UnfoldingMask@6 x@@26 v_36)) (=> (HasDirectPerm_8898_2989 UnfoldingMask@6 x@@26 v_36) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_8900_8901 UnfoldingMask@6 x@@26 r_6)) (=> (HasDirectPerm_8900_8901 UnfoldingMask@6 x@@26 r_6) (and (=> (= (ControlFlow 0 16) 12) anon23_Then_correct) (=> (= (ControlFlow 0 16) 14) anon23_Else_correct))))))))
(let ((anon22_Else_correct  (=> (and (|vals#trigger| (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@59) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8))) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8)) (= (ControlFlow 0 20) 16)) anon9_correct)))
(let ((anon21_Then_correct  (=> (and (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8) null) (= (ControlFlow 0 19) 16)) anon9_correct)))
(let ((anon22_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| UnfoldingMask@6) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8))))))))
(let ((anon21_Else_correct  (=> (not (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8) null)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (HasDirectPerm_8900_8901 UnfoldingMask@6 x@@26 l_8)) (=> (HasDirectPerm_8900_8901 UnfoldingMask@6 x@@26 l_8) (and (=> (= (ControlFlow 0 21) 2) anon22_Then_correct) (=> (= (ControlFlow 0 21) 20) anon22_Else_correct)))))))
(let ((anon4_correct  (=> (state Heap@@59 UnfoldingMask@6) (and (=> (= (ControlFlow 0 23) (- 0 24)) (HasDirectPerm_8900_8901 UnfoldingMask@6 x@@26 l_8)) (=> (HasDirectPerm_8900_8901 UnfoldingMask@6 x@@26 l_8) (and (=> (= (ControlFlow 0 23) 19) anon21_Then_correct) (=> (= (ControlFlow 0 23) 21) anon21_Else_correct)))))))
(let ((anon20_Else_correct  (=> (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6) null) (=> (and (= UnfoldingMask@6 UnfoldingMask@4) (= (ControlFlow 0 26) 23)) anon4_correct))))
(let ((anon20_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6) null)) (= UnfoldingMask@5 (PolymorphicMapType_15772 (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| UnfoldingMask@4) (store (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| UnfoldingMask@4) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6)) (+ (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| UnfoldingMask@4) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6))) FullPerm)) (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| UnfoldingMask@4) (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| UnfoldingMask@4)))) (=> (and (and (InsidePredicate_9026_9026 (Tree x@@26) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@59) null (Tree x@@26)) (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6)) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@59) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6)))) (state Heap@@59 UnfoldingMask@5)) (and (= UnfoldingMask@6 UnfoldingMask@5) (= (ControlFlow 0 25) 23))) anon4_correct))))
(let ((anon2_correct  (=> (not (= x@@26 null)) (=> (and (= UnfoldingMask@4 (PolymorphicMapType_15772 (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| UnfoldingMask@3) (store (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| UnfoldingMask@3) x@@26 r_6 (+ (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| UnfoldingMask@3) x@@26 r_6) FullPerm)) (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| UnfoldingMask@3) (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| UnfoldingMask@3))) (state Heap@@59 UnfoldingMask@4)) (and (=> (= (ControlFlow 0 27) 25) anon20_Then_correct) (=> (= (ControlFlow 0 27) 26) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 29) 27)) anon2_correct))))
(let ((anon19_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8) null)) (= UnfoldingMask@2 (PolymorphicMapType_15772 (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| UnfoldingMask@1) (store (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| UnfoldingMask@1) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8)) (+ (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| UnfoldingMask@1) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8))) FullPerm)) (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| UnfoldingMask@1) (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_9026_9026 (Tree x@@26) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@59) null (Tree x@@26)) (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8)) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@59) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8)))) (state Heap@@59 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 28) 27))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@59 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@59) x@@26 $allocated)) (and (= AssumeFunctionsAbove 2) (= Mask@0 (PolymorphicMapType_15772 (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| ZeroMask) (store (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| ZeroMask) null (Tree x@@26) (+ (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| ZeroMask) null (Tree x@@26)) FullPerm)) (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| ZeroMask) (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| ZeroMask))))) (and (and (state Heap@@59 Mask@0) (state Heap@@59 Mask@0)) (and (|Tree#trigger_9026| Heap@@59 (Tree x@@26)) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@59) null (Tree x@@26)) (CombineFrames (FrameFragment_2989 (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@59) x@@26 v_36)) (CombineFrames (FrameFragment_8901 (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8)) (CombineFrames (FrameFragment_10833 (ite (not (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8) null)) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@59) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 l_8))) EmptyFrame)) (CombineFrames (FrameFragment_8901 (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6)) (FrameFragment_10833 (ite (not (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6) null)) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@59) null (Tree (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@59) x@@26 r_6))) EmptyFrame)))))))))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| Mask@0) null (Tree x@@26))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| Mask@0) null (Tree x@@26)))) (=> (and (not (= x@@26 null)) (= UnfoldingMask@0 (PolymorphicMapType_15772 (store (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| Mask@0) x@@26 v_36 (+ (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| Mask@0) x@@26 v_36) FullPerm)) (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| Mask@0) (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| Mask@0)))) (=> (and (and (state Heap@@59 UnfoldingMask@0) (not (= x@@26 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_15772 (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| UnfoldingMask@0) (store (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| UnfoldingMask@0) x@@26 l_8 (+ (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| UnfoldingMask@0) x@@26 l_8) FullPerm)) (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| UnfoldingMask@0) (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| UnfoldingMask@0))) (state Heap@@59 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 30) 28) anon19_Then_correct) (=> (= (ControlFlow 0 30) 29) anon19_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 32) 30) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(declare-sort T@Field_15811_53 0)
(declare-sort T@Field_15824_15825 0)
(declare-sort T@Field_21829_2989 0)
(declare-sort T@Field_23858_23859 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_26590_26595 0)
(declare-sort T@Field_28196_28197 0)
(declare-sort T@Field_32277_32282 0)
(declare-sort T@Field_8898_9002 0)
(declare-sort T@Field_8898_26595 0)
(declare-sort T@Field_9001_2989 0)
(declare-sort T@Field_9001_8901 0)
(declare-sort T@Field_9001_53 0)
(declare-sort T@Field_28196_2989 0)
(declare-sort T@Field_28196_8901 0)
(declare-sort T@Field_28196_53 0)
(declare-datatypes ((T@PolymorphicMapType_15772 0)) (((PolymorphicMapType_15772 (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| (Array T@Ref T@Field_21829_2989 Real)) (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| (Array T@Ref T@Field_23858_23859 Real)) (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| (Array T@Ref T@Field_15824_15825 Real)) (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| (Array T@Ref T@Field_28196_28197 Real)) (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| (Array T@Ref T@Field_8898_9002 Real)) (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| (Array T@Ref T@Field_15811_53 Real)) (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| (Array T@Ref T@Field_8898_26595 Real)) (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| (Array T@Ref T@Field_9001_2989 Real)) (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| (Array T@Ref T@Field_9001_8901 Real)) (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| (Array T@Ref T@Field_9001_53 Real)) (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| (Array T@Ref T@Field_26590_26595 Real)) (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| (Array T@Ref T@Field_28196_2989 Real)) (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| (Array T@Ref T@Field_28196_8901 Real)) (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| (Array T@Ref T@Field_28196_53 Real)) (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| (Array T@Ref T@Field_32277_32282 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16300 0)) (((PolymorphicMapType_16300 (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (Array T@Ref T@Field_21829_2989 Bool)) (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (Array T@Ref T@Field_15824_15825 Bool)) (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (Array T@Ref T@Field_15811_53 Bool)) (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (Array T@Ref T@Field_8898_9002 Bool)) (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (Array T@Ref T@Field_8898_26595 Bool)) (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (Array T@Ref T@Field_9001_2989 Bool)) (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (Array T@Ref T@Field_9001_8901 Bool)) (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (Array T@Ref T@Field_9001_53 Bool)) (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (Array T@Ref T@Field_23858_23859 Bool)) (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (Array T@Ref T@Field_26590_26595 Bool)) (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (Array T@Ref T@Field_28196_2989 Bool)) (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (Array T@Ref T@Field_28196_8901 Bool)) (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (Array T@Ref T@Field_28196_53 Bool)) (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (Array T@Ref T@Field_28196_28197 Bool)) (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (Array T@Ref T@Field_32277_32282 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15751 0)) (((PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| (Array T@Ref T@Field_15811_53 Bool)) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| (Array T@Ref T@Field_15824_15825 T@Ref)) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| (Array T@Ref T@Field_21829_2989 Int)) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| (Array T@Ref T@Field_23858_23859 T@FrameType)) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| (Array T@Ref T@Field_26590_26595 T@PolymorphicMapType_16300)) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| (Array T@Ref T@Field_28196_28197 T@FrameType)) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| (Array T@Ref T@Field_32277_32282 T@PolymorphicMapType_16300)) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| (Array T@Ref T@Field_8898_9002 T@FrameType)) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| (Array T@Ref T@Field_8898_26595 T@PolymorphicMapType_16300)) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| (Array T@Ref T@Field_9001_2989 Int)) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| (Array T@Ref T@Field_9001_8901 T@Ref)) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| (Array T@Ref T@Field_9001_53 Bool)) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| (Array T@Ref T@Field_28196_2989 Int)) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| (Array T@Ref T@Field_28196_8901 T@Ref)) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| (Array T@Ref T@Field_28196_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_15811_53)
(declare-fun v_36 () T@Field_21829_2989)
(declare-fun r_6 () T@Field_15824_15825)
(declare-fun l_8 () T@Field_15824_15825)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun state (T@PolymorphicMapType_15751 T@PolymorphicMapType_15772) Bool)
(declare-fun vals (T@PolymorphicMapType_15751 T@Ref) T@Seq_2867)
(declare-fun |vals#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Tree#trigger_9026| (T@PolymorphicMapType_15751 T@Field_28196_28197) Bool)
(declare-fun Tree (T@Ref) T@Field_28196_28197)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Append_4532| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun null () T@Ref)
(declare-fun |Seq#Empty_4532| () T@Seq_2867)
(declare-fun |vals'| (T@PolymorphicMapType_15751 T@Ref) T@Seq_2867)
(declare-fun |Seq#Singleton_2989| (Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_15751 T@PolymorphicMapType_15751) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15751 T@PolymorphicMapType_15751) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15772) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_15751 T@Ref Bool Bool) Int)
(declare-fun dummyFunction_3320 (Int) Bool)
(declare-fun |fun01#triggerStateless| (T@Ref Bool Bool) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_16300)
(declare-fun P01 (T@Ref Bool) T@Field_23858_23859)
(declare-fun IsPredicateField_9001_9002 (T@Field_23858_23859) Bool)
(declare-fun |fun02'| (T@PolymorphicMapType_15751 T@Ref Bool) Bool)
(declare-fun dummyFunction_3804 (Bool) Bool)
(declare-fun |fun02#triggerStateless| (T@Ref Bool) Bool)
(declare-fun |P01#trigger_9001| (T@PolymorphicMapType_15751 T@Field_23858_23859) Bool)
(declare-fun |P01#everUsed_9001| (T@Field_23858_23859) Bool)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun IsPredicateField_9026_9027 (T@Field_28196_28197) Bool)
(declare-fun dummyFunction_27736 (T@Seq_2867) Bool)
(declare-fun |Tree#everUsed_9026| (T@Field_28196_28197) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun fun02 (T@PolymorphicMapType_15751 T@Ref Bool) Bool)
(declare-fun |P01#sm| (T@Ref Bool) T@Field_26590_26595)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15751 T@PolymorphicMapType_15751 T@PolymorphicMapType_15772) Bool)
(declare-fun PredicateMaskField_9026 (T@Field_28196_28197) T@Field_32277_32282)
(declare-fun HasDirectPerm_28196_9002 (T@PolymorphicMapType_15772 T@Ref T@Field_28196_28197) Bool)
(declare-fun PredicateMaskField_9001 (T@Field_23858_23859) T@Field_26590_26595)
(declare-fun HasDirectPerm_9001_9002 (T@PolymorphicMapType_15772 T@Ref T@Field_23858_23859) Bool)
(declare-fun IsPredicateField_8898_53217 (T@Field_8898_9002) Bool)
(declare-fun PredicateMaskField_8898 (T@Field_8898_9002) T@Field_8898_26595)
(declare-fun HasDirectPerm_8898_9002 (T@PolymorphicMapType_15772 T@Ref T@Field_8898_9002) Bool)
(declare-fun IsWandField_28196_58898 (T@Field_28196_28197) Bool)
(declare-fun WandMaskField_28196 (T@Field_28196_28197) T@Field_32277_32282)
(declare-fun IsWandField_9001_58541 (T@Field_23858_23859) Bool)
(declare-fun WandMaskField_9001 (T@Field_23858_23859) T@Field_26590_26595)
(declare-fun IsWandField_8898_58184 (T@Field_8898_9002) Bool)
(declare-fun WandMaskField_8898 (T@Field_8898_9002) T@Field_8898_26595)
(declare-fun |Tree#sm| (T@Ref) T@Field_32277_32282)
(declare-fun dummyHeap () T@PolymorphicMapType_15751)
(declare-fun ZeroMask () T@PolymorphicMapType_15772)
(declare-fun InsidePredicate_15811_15811 (T@Field_8898_9002 T@FrameType T@Field_8898_9002 T@FrameType) Bool)
(declare-fun InsidePredicate_9026_9026 (T@Field_28196_28197 T@FrameType T@Field_28196_28197 T@FrameType) Bool)
(declare-fun InsidePredicate_9001_9001 (T@Field_23858_23859 T@FrameType T@Field_23858_23859 T@FrameType) Bool)
(declare-fun fun01 (T@PolymorphicMapType_15751 T@Ref Bool Bool) Int)
(declare-fun IsPredicateField_8898_2989 (T@Field_21829_2989) Bool)
(declare-fun IsWandField_8898_2989 (T@Field_21829_2989) Bool)
(declare-fun IsPredicateField_8900_8901 (T@Field_15824_15825) Bool)
(declare-fun IsWandField_8900_8901 (T@Field_15824_15825) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9026_69187 (T@Field_32277_32282) Bool)
(declare-fun IsWandField_9026_69203 (T@Field_32277_32282) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9026_53 (T@Field_28196_53) Bool)
(declare-fun IsWandField_9026_53 (T@Field_28196_53) Bool)
(declare-fun IsPredicateField_9026_8901 (T@Field_28196_8901) Bool)
(declare-fun IsWandField_9026_8901 (T@Field_28196_8901) Bool)
(declare-fun IsPredicateField_9026_2989 (T@Field_28196_2989) Bool)
(declare-fun IsWandField_9026_2989 (T@Field_28196_2989) Bool)
(declare-fun IsPredicateField_9001_68356 (T@Field_26590_26595) Bool)
(declare-fun IsWandField_9001_68372 (T@Field_26590_26595) Bool)
(declare-fun IsPredicateField_9001_53 (T@Field_9001_53) Bool)
(declare-fun IsWandField_9001_53 (T@Field_9001_53) Bool)
(declare-fun IsPredicateField_9001_8901 (T@Field_9001_8901) Bool)
(declare-fun IsWandField_9001_8901 (T@Field_9001_8901) Bool)
(declare-fun IsPredicateField_9001_2989 (T@Field_9001_2989) Bool)
(declare-fun IsWandField_9001_2989 (T@Field_9001_2989) Bool)
(declare-fun IsPredicateField_8898_67525 (T@Field_8898_26595) Bool)
(declare-fun IsWandField_8898_67541 (T@Field_8898_26595) Bool)
(declare-fun IsPredicateField_8898_53 (T@Field_15811_53) Bool)
(declare-fun IsWandField_8898_53 (T@Field_15811_53) Bool)
(declare-fun HasDirectPerm_28196_52972 (T@PolymorphicMapType_15772 T@Ref T@Field_32277_32282) Bool)
(declare-fun HasDirectPerm_28196_53 (T@PolymorphicMapType_15772 T@Ref T@Field_28196_53) Bool)
(declare-fun HasDirectPerm_28196_8901 (T@PolymorphicMapType_15772 T@Ref T@Field_28196_8901) Bool)
(declare-fun HasDirectPerm_28196_2989 (T@PolymorphicMapType_15772 T@Ref T@Field_28196_2989) Bool)
(declare-fun HasDirectPerm_9001_51854 (T@PolymorphicMapType_15772 T@Ref T@Field_26590_26595) Bool)
(declare-fun HasDirectPerm_9001_53 (T@PolymorphicMapType_15772 T@Ref T@Field_9001_53) Bool)
(declare-fun HasDirectPerm_9001_8901 (T@PolymorphicMapType_15772 T@Ref T@Field_9001_8901) Bool)
(declare-fun HasDirectPerm_9001_2989 (T@PolymorphicMapType_15772 T@Ref T@Field_9001_2989) Bool)
(declare-fun HasDirectPerm_8898_50713 (T@PolymorphicMapType_15772 T@Ref T@Field_8898_26595) Bool)
(declare-fun HasDirectPerm_8898_53 (T@PolymorphicMapType_15772 T@Ref T@Field_15811_53) Bool)
(declare-fun HasDirectPerm_8900_8901 (T@PolymorphicMapType_15772 T@Ref T@Field_15824_15825) Bool)
(declare-fun HasDirectPerm_8898_2989 (T@PolymorphicMapType_15772 T@Ref T@Field_21829_2989) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |fun01#frame| (T@FrameType T@Ref Bool Bool) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_2989 (Int) T@FrameType)
(declare-fun FrameFragment_10833 (T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15772 T@PolymorphicMapType_15772 T@PolymorphicMapType_15772) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_9001_9002 (T@Field_23858_23859) Int)
(declare-fun |vals#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun getPredWandId_9026_9027 (T@Field_28196_28197) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_15811_9026 (T@Field_8898_9002 T@FrameType T@Field_28196_28197 T@FrameType) Bool)
(declare-fun InsidePredicate_15811_9001 (T@Field_8898_9002 T@FrameType T@Field_23858_23859 T@FrameType) Bool)
(declare-fun InsidePredicate_9026_15811 (T@Field_28196_28197 T@FrameType T@Field_8898_9002 T@FrameType) Bool)
(declare-fun InsidePredicate_9026_9001 (T@Field_28196_28197 T@FrameType T@Field_23858_23859 T@FrameType) Bool)
(declare-fun InsidePredicate_9001_15811 (T@Field_23858_23859 T@FrameType T@Field_8898_9002 T@FrameType) Bool)
(declare-fun InsidePredicate_9001_9026 (T@Field_23858_23859 T@FrameType T@Field_28196_28197 T@FrameType) Bool)
(declare-fun |fun02#frame| (T@FrameType T@Ref Bool) Bool)
(assert (distinct r_6 l_8)
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.278:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_2867| s n))
)))
(assert (forall ((Heap T@PolymorphicMapType_15751) (Mask T@PolymorphicMapType_15772) (x T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 2)) (= (vals Heap x) (|Seq#Append_4532| (|Seq#Append_4532| (ite (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap) x l_8) null) |Seq#Empty_4532| (|vals'| Heap (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap) x l_8))) (|Seq#Singleton_2989| (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap) x v_36))) (ite (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap) x r_6) null) |Seq#Empty_4532| (|vals'| Heap (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap) x r_6))))))
 :qid |stdinbpl.796:15|
 :skolemid |69|
 :pattern ( (state Heap Mask) (vals Heap x))
 :pattern ( (state Heap Mask) (|vals#triggerStateless| x) (|Tree#trigger_9026| Heap (Tree x)) (|Tree#trigger_9026| Heap (Tree x)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15751) (Heap1 T@PolymorphicMapType_15751) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15751) (Mask@@0 T@PolymorphicMapType_15772) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15751) (Heap1@@0 T@PolymorphicMapType_15751) (Heap2 T@PolymorphicMapType_15751) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15751) (x@@0 T@Ref) (b1 Bool) (b2 Bool) ) (! (dummyFunction_3320 (|fun01#triggerStateless| x@@0 b1 b2))
 :qid |stdinbpl.570:15|
 :skolemid |59|
 :pattern ( (|fun01'| Heap@@1 x@@0 b1 b2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_32277_32282) ) (!  (not (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_28196_28197) ) (!  (not (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_28196_53) ) (!  (not (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_28196_8901) ) (!  (not (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_28196_2989) ) (!  (not (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_26590_26595) ) (!  (not (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_23858_23859) ) (!  (not (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9001_53) ) (!  (not (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9001_8901) ) (!  (not (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9001_2989) ) (!  (not (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8898_26595) ) (!  (not (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8898_9002) ) (!  (not (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_15811_53) ) (!  (not (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_15824_15825) ) (!  (not (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_21829_2989) ) (!  (not (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x@@1 T@Ref) (b_24 Bool) ) (! (IsPredicateField_9001_9002 (P01 x@@1 b_24))
 :qid |stdinbpl.968:15|
 :skolemid |74|
 :pattern ( (P01 x@@1 b_24))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15751) (x@@2 T@Ref) (b_24@@0 Bool) ) (! (dummyFunction_3804 (|fun02#triggerStateless| x@@2 b_24@@0))
 :qid |stdinbpl.655:15|
 :skolemid |63|
 :pattern ( (|fun02'| Heap@@2 x@@2 b_24@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15751) (x@@3 T@Ref) (b_24@@1 Bool) ) (! (|P01#everUsed_9001| (P01 x@@3 b_24@@1))
 :qid |stdinbpl.987:15|
 :skolemid |78|
 :pattern ( (|P01#trigger_9001| Heap@@3 (P01 x@@3 b_24@@1)))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.299:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_4532|) 0))
(assert (forall ((x@@4 T@Ref) ) (! (IsPredicateField_9026_9027 (Tree x@@4))
 :qid |stdinbpl.1042:15|
 :skolemid |80|
 :pattern ( (Tree x@@4))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15751) (x@@5 T@Ref) ) (! (dummyFunction_27736 (|vals#triggerStateless| x@@5))
 :qid |stdinbpl.790:15|
 :skolemid |68|
 :pattern ( (|vals'| Heap@@4 x@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15751) (x@@6 T@Ref) ) (! (|Tree#everUsed_9026| (Tree x@@6))
 :qid |stdinbpl.1061:15|
 :skolemid |84|
 :pattern ( (|Tree#trigger_9026| Heap@@5 (Tree x@@6)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.254:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.265:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15751) (Mask@@1 T@PolymorphicMapType_15772) (x@@7 T@Ref) (b_24@@2 Bool) ) (!  (=> (and (state Heap@@6 Mask@@1) (< AssumeFunctionsAbove 0)) (= (fun02 Heap@@6 x@@7 b_24@@2) (ite (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@6) x@@7 r_6) null) b_24@@2 (|fun02'| Heap@@6 (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@6) x@@7 r_6) b_24@@2))))
 :qid |stdinbpl.661:15|
 :skolemid |64|
 :pattern ( (state Heap@@6 Mask@@1) (fun02 Heap@@6 x@@7 b_24@@2))
 :pattern ( (state Heap@@6 Mask@@1) (|fun02#triggerStateless| x@@7 b_24@@2) (|P01#trigger_9001| Heap@@6 (P01 x@@7 b_24@@2)))
)))
(assert (forall ((x@@8 T@Ref) (b_24@@3 Bool) (x2 T@Ref) (b2@@0 Bool) ) (!  (=> (= (P01 x@@8 b_24@@3) (P01 x2 b2@@0)) (and (= x@@8 x2) (= b_24@@3 b2@@0)))
 :qid |stdinbpl.978:15|
 :skolemid |76|
 :pattern ( (P01 x@@8 b_24@@3) (P01 x2 b2@@0))
)))
(assert (forall ((x@@9 T@Ref) (b_24@@4 Bool) (x2@@0 T@Ref) (b2@@1 Bool) ) (!  (=> (= (|P01#sm| x@@9 b_24@@4) (|P01#sm| x2@@0 b2@@1)) (and (= x@@9 x2@@0) (= b_24@@4 b2@@1)))
 :qid |stdinbpl.982:15|
 :skolemid |77|
 :pattern ( (|P01#sm| x@@9 b_24@@4) (|P01#sm| x2@@0 b2@@1))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.539:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x@@10 Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x@@10) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x@@10)) (< (|Seq#Skolem_2867| s@@3 x@@10) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x@@10)) x@@10)))
 :qid |stdinbpl.397:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x@@10))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15751) (x@@11 T@Ref) ) (!  (and (= (vals Heap@@7 x@@11) (|vals'| Heap@@7 x@@11)) (dummyFunction_27736 (|vals#triggerStateless| x@@11)))
 :qid |stdinbpl.786:15|
 :skolemid |67|
 :pattern ( (vals Heap@@7 x@@11))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2867| s@@4 n@@3) s@@4))
 :qid |stdinbpl.381:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.234:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.232:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15751) (ExhaleHeap T@PolymorphicMapType_15751) (Mask@@2 T@PolymorphicMapType_15772) (pm_f_28 T@Field_28196_28197) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_28196_9002 Mask@@2 null pm_f_28) (IsPredicateField_9026_9027 pm_f_28)) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@8) null (PredicateMaskField_9026 pm_f_28)) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap) null (PredicateMaskField_9026 pm_f_28)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (IsPredicateField_9026_9027 pm_f_28) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap) null (PredicateMaskField_9026 pm_f_28)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15751) (ExhaleHeap@@0 T@PolymorphicMapType_15751) (Mask@@3 T@PolymorphicMapType_15772) (pm_f_28@@0 T@Field_23858_23859) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_9001_9002 Mask@@3 null pm_f_28@@0) (IsPredicateField_9001_9002 pm_f_28@@0)) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@9) null (PredicateMaskField_9001 pm_f_28@@0)) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@0) null (PredicateMaskField_9001 pm_f_28@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (IsPredicateField_9001_9002 pm_f_28@@0) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@0) null (PredicateMaskField_9001 pm_f_28@@0)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15751) (ExhaleHeap@@1 T@PolymorphicMapType_15751) (Mask@@4 T@PolymorphicMapType_15772) (pm_f_28@@1 T@Field_8898_9002) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_8898_9002 Mask@@4 null pm_f_28@@1) (IsPredicateField_8898_53217 pm_f_28@@1)) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@10) null (PredicateMaskField_8898 pm_f_28@@1)) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@1) null (PredicateMaskField_8898 pm_f_28@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@4) (IsPredicateField_8898_53217 pm_f_28@@1) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@1) null (PredicateMaskField_8898 pm_f_28@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15751) (ExhaleHeap@@2 T@PolymorphicMapType_15751) (Mask@@5 T@PolymorphicMapType_15772) (pm_f_28@@2 T@Field_28196_28197) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_28196_9002 Mask@@5 null pm_f_28@@2) (IsWandField_28196_58898 pm_f_28@@2)) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@11) null (WandMaskField_28196 pm_f_28@@2)) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@2) null (WandMaskField_28196 pm_f_28@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@5) (IsWandField_28196_58898 pm_f_28@@2) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@2) null (WandMaskField_28196 pm_f_28@@2)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15751) (ExhaleHeap@@3 T@PolymorphicMapType_15751) (Mask@@6 T@PolymorphicMapType_15772) (pm_f_28@@3 T@Field_23858_23859) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_9001_9002 Mask@@6 null pm_f_28@@3) (IsWandField_9001_58541 pm_f_28@@3)) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@12) null (WandMaskField_9001 pm_f_28@@3)) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@3) null (WandMaskField_9001 pm_f_28@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@6) (IsWandField_9001_58541 pm_f_28@@3) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@3) null (WandMaskField_9001 pm_f_28@@3)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15751) (ExhaleHeap@@4 T@PolymorphicMapType_15751) (Mask@@7 T@PolymorphicMapType_15772) (pm_f_28@@4 T@Field_8898_9002) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_8898_9002 Mask@@7 null pm_f_28@@4) (IsWandField_8898_58184 pm_f_28@@4)) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@13) null (WandMaskField_8898 pm_f_28@@4)) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@4) null (WandMaskField_8898 pm_f_28@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@7) (IsWandField_8898_58184 pm_f_28@@4) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@4) null (WandMaskField_8898 pm_f_28@@4)))
)))
(assert (forall ((x@@12 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@12) y) (= x@@12 y))
 :qid |stdinbpl.522:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@12) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.273:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((x@@13 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (Tree x@@13) (Tree x2@@1)) (= x@@13 x2@@1))
 :qid |stdinbpl.1052:15|
 :skolemid |82|
 :pattern ( (Tree x@@13) (Tree x2@@1))
)))
(assert (forall ((x@@14 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|Tree#sm| x@@14) (|Tree#sm| x2@@2)) (= x@@14 x2@@2))
 :qid |stdinbpl.1056:15|
 :skolemid |83|
 :pattern ( (|Tree#sm| x@@14) (|Tree#sm| x2@@2))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_4532| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_4532| s@@6 t) n@@5) (|Seq#Append_4532| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.358:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_4532| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15751) (ExhaleHeap@@5 T@PolymorphicMapType_15751) (Mask@@8 T@PolymorphicMapType_15772) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@8) (=> (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@14) o_41 $allocated) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@5) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@8) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@5) o_41 $allocated))
)))
(assert (forall ((p T@Field_8898_9002) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15811_15811 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15811_15811 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_28196_28197) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9026_9026 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9026_9026 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_23858_23859) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9001_9001 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9001_9001 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15751) (Mask@@9 T@PolymorphicMapType_15772) (x@@15 T@Ref) (b1@@0 Bool) (b2@@2 Bool) ) (!  (=> (and (state Heap@@15 Mask@@9) (< AssumeFunctionsAbove 1)) (= (fun01 Heap@@15 x@@15 b1@@0 b2@@2) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@15) x@@15 v_36)))
 :qid |stdinbpl.576:15|
 :skolemid |60|
 :pattern ( (state Heap@@15 Mask@@9) (fun01 Heap@@15 x@@15 b1@@0 b2@@2))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4532|)) (not (= s1 |Seq#Empty_4532|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_4532| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_4532| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.245:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_4532| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_8898_2989 v_36)))
(assert  (not (IsWandField_8898_2989 v_36)))
(assert  (not (IsPredicateField_8900_8901 r_6)))
(assert  (not (IsWandField_8900_8901 r_6)))
(assert  (not (IsPredicateField_8900_8901 l_8)))
(assert  (not (IsWandField_8900_8901 l_8)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15751) (ExhaleHeap@@6 T@PolymorphicMapType_15751) (Mask@@10 T@PolymorphicMapType_15772) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@10) (succHeap Heap@@16 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15772) (o_2@@14 T@Ref) (f_4@@14 T@Field_32277_32282) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| Mask@@11) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9026_69187 f_4@@14))) (not (IsWandField_9026_69203 f_4@@14))) (<= (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| Mask@@11) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| Mask@@11) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15772) (o_2@@15 T@Ref) (f_4@@15 T@Field_28196_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| Mask@@12) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9026_53 f_4@@15))) (not (IsWandField_9026_53 f_4@@15))) (<= (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| Mask@@12) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| Mask@@12) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15772) (o_2@@16 T@Ref) (f_4@@16 T@Field_28196_8901) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| Mask@@13) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9026_8901 f_4@@16))) (not (IsWandField_9026_8901 f_4@@16))) (<= (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| Mask@@13) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| Mask@@13) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15772) (o_2@@17 T@Ref) (f_4@@17 T@Field_28196_28197) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| Mask@@14) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9026_9027 f_4@@17))) (not (IsWandField_28196_58898 f_4@@17))) (<= (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| Mask@@14) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| Mask@@14) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15772) (o_2@@18 T@Ref) (f_4@@18 T@Field_28196_2989) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| Mask@@15) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9026_2989 f_4@@18))) (not (IsWandField_9026_2989 f_4@@18))) (<= (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| Mask@@15) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| Mask@@15) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15772) (o_2@@19 T@Ref) (f_4@@19 T@Field_26590_26595) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| Mask@@16) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9001_68356 f_4@@19))) (not (IsWandField_9001_68372 f_4@@19))) (<= (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| Mask@@16) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| Mask@@16) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15772) (o_2@@20 T@Ref) (f_4@@20 T@Field_9001_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| Mask@@17) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9001_53 f_4@@20))) (not (IsWandField_9001_53 f_4@@20))) (<= (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| Mask@@17) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| Mask@@17) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15772) (o_2@@21 T@Ref) (f_4@@21 T@Field_9001_8901) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| Mask@@18) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9001_8901 f_4@@21))) (not (IsWandField_9001_8901 f_4@@21))) (<= (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| Mask@@18) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| Mask@@18) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15772) (o_2@@22 T@Ref) (f_4@@22 T@Field_23858_23859) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| Mask@@19) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9001_9002 f_4@@22))) (not (IsWandField_9001_58541 f_4@@22))) (<= (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| Mask@@19) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| Mask@@19) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15772) (o_2@@23 T@Ref) (f_4@@23 T@Field_9001_2989) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| Mask@@20) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_9001_2989 f_4@@23))) (not (IsWandField_9001_2989 f_4@@23))) (<= (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| Mask@@20) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| Mask@@20) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15772) (o_2@@24 T@Ref) (f_4@@24 T@Field_8898_26595) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| Mask@@21) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8898_67525 f_4@@24))) (not (IsWandField_8898_67541 f_4@@24))) (<= (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| Mask@@21) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| Mask@@21) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15772) (o_2@@25 T@Ref) (f_4@@25 T@Field_15811_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| Mask@@22) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8898_53 f_4@@25))) (not (IsWandField_8898_53 f_4@@25))) (<= (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| Mask@@22) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| Mask@@22) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_15772) (o_2@@26 T@Ref) (f_4@@26 T@Field_15824_15825) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| Mask@@23) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_8900_8901 f_4@@26))) (not (IsWandField_8900_8901 f_4@@26))) (<= (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| Mask@@23) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| Mask@@23) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15772) (o_2@@27 T@Ref) (f_4@@27 T@Field_8898_9002) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| Mask@@24) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_8898_53217 f_4@@27))) (not (IsWandField_8898_58184 f_4@@27))) (<= (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| Mask@@24) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| Mask@@24) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15772) (o_2@@28 T@Ref) (f_4@@28 T@Field_21829_2989) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| Mask@@25) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_8898_2989 f_4@@28))) (not (IsWandField_8898_2989 f_4@@28))) (<= (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| Mask@@25) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| Mask@@25) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_15772) (o_2@@29 T@Ref) (f_4@@29 T@Field_32277_32282) ) (! (= (HasDirectPerm_28196_52972 Mask@@26 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| Mask@@26) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28196_52972 Mask@@26 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_15772) (o_2@@30 T@Ref) (f_4@@30 T@Field_28196_53) ) (! (= (HasDirectPerm_28196_53 Mask@@27 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| Mask@@27) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28196_53 Mask@@27 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_15772) (o_2@@31 T@Ref) (f_4@@31 T@Field_28196_28197) ) (! (= (HasDirectPerm_28196_9002 Mask@@28 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| Mask@@28) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28196_9002 Mask@@28 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_15772) (o_2@@32 T@Ref) (f_4@@32 T@Field_28196_8901) ) (! (= (HasDirectPerm_28196_8901 Mask@@29 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| Mask@@29) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28196_8901 Mask@@29 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_15772) (o_2@@33 T@Ref) (f_4@@33 T@Field_28196_2989) ) (! (= (HasDirectPerm_28196_2989 Mask@@30 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| Mask@@30) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28196_2989 Mask@@30 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_15772) (o_2@@34 T@Ref) (f_4@@34 T@Field_26590_26595) ) (! (= (HasDirectPerm_9001_51854 Mask@@31 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| Mask@@31) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9001_51854 Mask@@31 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_15772) (o_2@@35 T@Ref) (f_4@@35 T@Field_9001_53) ) (! (= (HasDirectPerm_9001_53 Mask@@32 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| Mask@@32) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9001_53 Mask@@32 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_15772) (o_2@@36 T@Ref) (f_4@@36 T@Field_23858_23859) ) (! (= (HasDirectPerm_9001_9002 Mask@@33 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| Mask@@33) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9001_9002 Mask@@33 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_15772) (o_2@@37 T@Ref) (f_4@@37 T@Field_9001_8901) ) (! (= (HasDirectPerm_9001_8901 Mask@@34 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| Mask@@34) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9001_8901 Mask@@34 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_15772) (o_2@@38 T@Ref) (f_4@@38 T@Field_9001_2989) ) (! (= (HasDirectPerm_9001_2989 Mask@@35 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| Mask@@35) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9001_2989 Mask@@35 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_15772) (o_2@@39 T@Ref) (f_4@@39 T@Field_8898_26595) ) (! (= (HasDirectPerm_8898_50713 Mask@@36 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| Mask@@36) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8898_50713 Mask@@36 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_15772) (o_2@@40 T@Ref) (f_4@@40 T@Field_15811_53) ) (! (= (HasDirectPerm_8898_53 Mask@@37 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| Mask@@37) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8898_53 Mask@@37 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_15772) (o_2@@41 T@Ref) (f_4@@41 T@Field_8898_9002) ) (! (= (HasDirectPerm_8898_9002 Mask@@38 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| Mask@@38) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8898_9002 Mask@@38 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_15772) (o_2@@42 T@Ref) (f_4@@42 T@Field_15824_15825) ) (! (= (HasDirectPerm_8900_8901 Mask@@39 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| Mask@@39) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8900_8901 Mask@@39 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_15772) (o_2@@43 T@Ref) (f_4@@43 T@Field_21829_2989) ) (! (= (HasDirectPerm_8898_2989 Mask@@40 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| Mask@@40) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8898_2989 Mask@@40 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.537:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15751) (ExhaleHeap@@7 T@PolymorphicMapType_15751) (Mask@@41 T@PolymorphicMapType_15772) (o_41@@0 T@Ref) (f_27 T@Field_32277_32282) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@41) (=> (HasDirectPerm_28196_52972 Mask@@41 o_41@@0 f_27) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@17) o_41@@0 f_27) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@7) o_41@@0 f_27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@41) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@7) o_41@@0 f_27))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15751) (ExhaleHeap@@8 T@PolymorphicMapType_15751) (Mask@@42 T@PolymorphicMapType_15772) (o_41@@1 T@Ref) (f_27@@0 T@Field_28196_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@42) (=> (HasDirectPerm_28196_53 Mask@@42 o_41@@1 f_27@@0) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@18) o_41@@1 f_27@@0) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@8) o_41@@1 f_27@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@42) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@8) o_41@@1 f_27@@0))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15751) (ExhaleHeap@@9 T@PolymorphicMapType_15751) (Mask@@43 T@PolymorphicMapType_15772) (o_41@@2 T@Ref) (f_27@@1 T@Field_28196_28197) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@43) (=> (HasDirectPerm_28196_9002 Mask@@43 o_41@@2 f_27@@1) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@19) o_41@@2 f_27@@1) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@9) o_41@@2 f_27@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@43) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@9) o_41@@2 f_27@@1))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15751) (ExhaleHeap@@10 T@PolymorphicMapType_15751) (Mask@@44 T@PolymorphicMapType_15772) (o_41@@3 T@Ref) (f_27@@2 T@Field_28196_8901) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@44) (=> (HasDirectPerm_28196_8901 Mask@@44 o_41@@3 f_27@@2) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@20) o_41@@3 f_27@@2) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@10) o_41@@3 f_27@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@44) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@10) o_41@@3 f_27@@2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15751) (ExhaleHeap@@11 T@PolymorphicMapType_15751) (Mask@@45 T@PolymorphicMapType_15772) (o_41@@4 T@Ref) (f_27@@3 T@Field_28196_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@45) (=> (HasDirectPerm_28196_2989 Mask@@45 o_41@@4 f_27@@3) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@21) o_41@@4 f_27@@3) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@11) o_41@@4 f_27@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@45) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@11) o_41@@4 f_27@@3))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15751) (ExhaleHeap@@12 T@PolymorphicMapType_15751) (Mask@@46 T@PolymorphicMapType_15772) (o_41@@5 T@Ref) (f_27@@4 T@Field_26590_26595) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@46) (=> (HasDirectPerm_9001_51854 Mask@@46 o_41@@5 f_27@@4) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@22) o_41@@5 f_27@@4) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@12) o_41@@5 f_27@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@46) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@12) o_41@@5 f_27@@4))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15751) (ExhaleHeap@@13 T@PolymorphicMapType_15751) (Mask@@47 T@PolymorphicMapType_15772) (o_41@@6 T@Ref) (f_27@@5 T@Field_9001_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@47) (=> (HasDirectPerm_9001_53 Mask@@47 o_41@@6 f_27@@5) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@23) o_41@@6 f_27@@5) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@13) o_41@@6 f_27@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@47) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@13) o_41@@6 f_27@@5))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15751) (ExhaleHeap@@14 T@PolymorphicMapType_15751) (Mask@@48 T@PolymorphicMapType_15772) (o_41@@7 T@Ref) (f_27@@6 T@Field_23858_23859) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@48) (=> (HasDirectPerm_9001_9002 Mask@@48 o_41@@7 f_27@@6) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@24) o_41@@7 f_27@@6) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@14) o_41@@7 f_27@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@48) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@14) o_41@@7 f_27@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15751) (ExhaleHeap@@15 T@PolymorphicMapType_15751) (Mask@@49 T@PolymorphicMapType_15772) (o_41@@8 T@Ref) (f_27@@7 T@Field_9001_8901) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@49) (=> (HasDirectPerm_9001_8901 Mask@@49 o_41@@8 f_27@@7) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@25) o_41@@8 f_27@@7) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@15) o_41@@8 f_27@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@49) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@15) o_41@@8 f_27@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15751) (ExhaleHeap@@16 T@PolymorphicMapType_15751) (Mask@@50 T@PolymorphicMapType_15772) (o_41@@9 T@Ref) (f_27@@8 T@Field_9001_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@50) (=> (HasDirectPerm_9001_2989 Mask@@50 o_41@@9 f_27@@8) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@26) o_41@@9 f_27@@8) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@16) o_41@@9 f_27@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@50) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@16) o_41@@9 f_27@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15751) (ExhaleHeap@@17 T@PolymorphicMapType_15751) (Mask@@51 T@PolymorphicMapType_15772) (o_41@@10 T@Ref) (f_27@@9 T@Field_8898_26595) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@51) (=> (HasDirectPerm_8898_50713 Mask@@51 o_41@@10 f_27@@9) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@27) o_41@@10 f_27@@9) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@17) o_41@@10 f_27@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@51) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@17) o_41@@10 f_27@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15751) (ExhaleHeap@@18 T@PolymorphicMapType_15751) (Mask@@52 T@PolymorphicMapType_15772) (o_41@@11 T@Ref) (f_27@@10 T@Field_15811_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@52) (=> (HasDirectPerm_8898_53 Mask@@52 o_41@@11 f_27@@10) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@28) o_41@@11 f_27@@10) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@18) o_41@@11 f_27@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@52) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@18) o_41@@11 f_27@@10))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15751) (ExhaleHeap@@19 T@PolymorphicMapType_15751) (Mask@@53 T@PolymorphicMapType_15772) (o_41@@12 T@Ref) (f_27@@11 T@Field_8898_9002) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@53) (=> (HasDirectPerm_8898_9002 Mask@@53 o_41@@12 f_27@@11) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@29) o_41@@12 f_27@@11) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@19) o_41@@12 f_27@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@53) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@19) o_41@@12 f_27@@11))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15751) (ExhaleHeap@@20 T@PolymorphicMapType_15751) (Mask@@54 T@PolymorphicMapType_15772) (o_41@@13 T@Ref) (f_27@@12 T@Field_15824_15825) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@54) (=> (HasDirectPerm_8900_8901 Mask@@54 o_41@@13 f_27@@12) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@30) o_41@@13 f_27@@12) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@20) o_41@@13 f_27@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@54) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@20) o_41@@13 f_27@@12))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_15751) (ExhaleHeap@@21 T@PolymorphicMapType_15751) (Mask@@55 T@PolymorphicMapType_15772) (o_41@@14 T@Ref) (f_27@@13 T@Field_21829_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@55) (=> (HasDirectPerm_8898_2989 Mask@@55 o_41@@14 f_27@@13) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@31) o_41@@14 f_27@@13) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@21) o_41@@14 f_27@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@55) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@21) o_41@@14 f_27@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_4532|)) (not (= s1@@0 |Seq#Empty_4532|))) (= (|Seq#Length_2867| (|Seq#Append_4532| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.214:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_4532| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_32277_32282) ) (! (= (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_28196_53) ) (! (= (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_28196_8901) ) (! (= (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_28196_28197) ) (! (= (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_28196_2989) ) (! (= (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_26590_26595) ) (! (= (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_9001_53) ) (! (= (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_9001_8901) ) (! (= (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_23858_23859) ) (! (= (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_9001_2989) ) (! (= (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_8898_26595) ) (! (= (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_15811_53) ) (! (= (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_15824_15825) ) (! (= (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_8898_9002) ) (! (= (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_21829_2989) ) (! (= (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_2867| (|Seq#Append_4532| s@@7 t@@0) n@@7) (|Seq#Drop_2867| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.371:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_4532| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_15751) (Mask@@56 T@PolymorphicMapType_15772) (x@@16 T@Ref) (b1@@1 Bool) (b2@@3 Bool) ) (!  (=> (state Heap@@32 Mask@@56) (= (|fun01'| Heap@@32 x@@16 b1@@1 b2@@3) (|fun01#frame| (CombineFrames (FrameFragment_2989 (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@32) x@@16 v_36)) (CombineFrames (FrameFragment_10833 (ite b1@@1 (FrameFragment_2989 (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@32) x@@16 v_36)) EmptyFrame)) (FrameFragment_10833 (ite b2@@3 (FrameFragment_2989 (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@32) x@@16 v_36)) EmptyFrame)))) x@@16 b1@@1 b2@@3)))
 :qid |stdinbpl.583:15|
 :skolemid |61|
 :pattern ( (state Heap@@32 Mask@@56) (|fun01'| Heap@@32 x@@16 b1@@1 b2@@3))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15772) (SummandMask1 T@PolymorphicMapType_15772) (SummandMask2 T@PolymorphicMapType_15772) (o_2@@59 T@Ref) (f_4@@59 T@Field_32277_32282) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15772_9026_65746#PolymorphicMapType_15772| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15772) (SummandMask1@@0 T@PolymorphicMapType_15772) (SummandMask2@@0 T@PolymorphicMapType_15772) (o_2@@60 T@Ref) (f_4@@60 T@Field_28196_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15772_9026_53#PolymorphicMapType_15772| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15772) (SummandMask1@@1 T@PolymorphicMapType_15772) (SummandMask2@@1 T@PolymorphicMapType_15772) (o_2@@61 T@Ref) (f_4@@61 T@Field_28196_8901) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15772_9026_8901#PolymorphicMapType_15772| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15772) (SummandMask1@@2 T@PolymorphicMapType_15772) (SummandMask2@@2 T@PolymorphicMapType_15772) (o_2@@62 T@Ref) (f_4@@62 T@Field_28196_28197) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15772_9026_9027#PolymorphicMapType_15772| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15772) (SummandMask1@@3 T@PolymorphicMapType_15772) (SummandMask2@@3 T@PolymorphicMapType_15772) (o_2@@63 T@Ref) (f_4@@63 T@Field_28196_2989) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15772_9026_2989#PolymorphicMapType_15772| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15772) (SummandMask1@@4 T@PolymorphicMapType_15772) (SummandMask2@@4 T@PolymorphicMapType_15772) (o_2@@64 T@Ref) (f_4@@64 T@Field_26590_26595) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15772_9001_65335#PolymorphicMapType_15772| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15772) (SummandMask1@@5 T@PolymorphicMapType_15772) (SummandMask2@@5 T@PolymorphicMapType_15772) (o_2@@65 T@Ref) (f_4@@65 T@Field_9001_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15772_9001_53#PolymorphicMapType_15772| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15772) (SummandMask1@@6 T@PolymorphicMapType_15772) (SummandMask2@@6 T@PolymorphicMapType_15772) (o_2@@66 T@Ref) (f_4@@66 T@Field_9001_8901) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15772_9001_8901#PolymorphicMapType_15772| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_15772) (SummandMask1@@7 T@PolymorphicMapType_15772) (SummandMask2@@7 T@PolymorphicMapType_15772) (o_2@@67 T@Ref) (f_4@@67 T@Field_23858_23859) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15772_9001_9002#PolymorphicMapType_15772| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_15772) (SummandMask1@@8 T@PolymorphicMapType_15772) (SummandMask2@@8 T@PolymorphicMapType_15772) (o_2@@68 T@Ref) (f_4@@68 T@Field_9001_2989) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15772_9001_2989#PolymorphicMapType_15772| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_15772) (SummandMask1@@9 T@PolymorphicMapType_15772) (SummandMask2@@9 T@PolymorphicMapType_15772) (o_2@@69 T@Ref) (f_4@@69 T@Field_8898_26595) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15772_8898_64924#PolymorphicMapType_15772| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_15772) (SummandMask1@@10 T@PolymorphicMapType_15772) (SummandMask2@@10 T@PolymorphicMapType_15772) (o_2@@70 T@Ref) (f_4@@70 T@Field_15811_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15772_8898_53#PolymorphicMapType_15772| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_15772) (SummandMask1@@11 T@PolymorphicMapType_15772) (SummandMask2@@11 T@PolymorphicMapType_15772) (o_2@@71 T@Ref) (f_4@@71 T@Field_15824_15825) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15772_8900_8901#PolymorphicMapType_15772| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_15772) (SummandMask1@@12 T@PolymorphicMapType_15772) (SummandMask2@@12 T@PolymorphicMapType_15772) (o_2@@72 T@Ref) (f_4@@72 T@Field_8898_9002) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15772_8898_9002#PolymorphicMapType_15772| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_15772) (SummandMask1@@13 T@PolymorphicMapType_15772) (SummandMask2@@13 T@PolymorphicMapType_15772) (o_2@@73 T@Ref) (f_4@@73 T@Field_21829_2989) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15772_8898_2989#PolymorphicMapType_15772| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_15751) (ExhaleHeap@@22 T@PolymorphicMapType_15751) (Mask@@57 T@PolymorphicMapType_15772) (pm_f_28@@5 T@Field_28196_28197) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@22 Mask@@57) (=> (and (HasDirectPerm_28196_9002 Mask@@57 null pm_f_28@@5) (IsPredicateField_9026_9027 pm_f_28@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28 T@Ref) (f_27@@14 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28 f_27@@14) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@33) o2_28 f_27@@14) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28 f_27@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28 f_27@@14))
)) (forall ((o2_28@@0 T@Ref) (f_27@@15 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@0 f_27@@15) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@33) o2_28@@0 f_27@@15) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@0 f_27@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@0 f_27@@15))
))) (forall ((o2_28@@1 T@Ref) (f_27@@16 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@1 f_27@@16) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@33) o2_28@@1 f_27@@16) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@1 f_27@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@1 f_27@@16))
))) (forall ((o2_28@@2 T@Ref) (f_27@@17 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@2 f_27@@17) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@33) o2_28@@2 f_27@@17) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@2 f_27@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@2 f_27@@17))
))) (forall ((o2_28@@3 T@Ref) (f_27@@18 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@3 f_27@@18) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@33) o2_28@@3 f_27@@18) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@3 f_27@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@3 f_27@@18))
))) (forall ((o2_28@@4 T@Ref) (f_27@@19 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@4 f_27@@19) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@33) o2_28@@4 f_27@@19) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@4 f_27@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@4 f_27@@19))
))) (forall ((o2_28@@5 T@Ref) (f_27@@20 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@5 f_27@@20) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@33) o2_28@@5 f_27@@20) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@5 f_27@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@5 f_27@@20))
))) (forall ((o2_28@@6 T@Ref) (f_27@@21 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@6 f_27@@21) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@33) o2_28@@6 f_27@@21) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@6 f_27@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@6 f_27@@21))
))) (forall ((o2_28@@7 T@Ref) (f_27@@22 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@7 f_27@@22) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@33) o2_28@@7 f_27@@22) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@7 f_27@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@7 f_27@@22))
))) (forall ((o2_28@@8 T@Ref) (f_27@@23 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@8 f_27@@23) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@33) o2_28@@8 f_27@@23) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@8 f_27@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@8 f_27@@23))
))) (forall ((o2_28@@9 T@Ref) (f_27@@24 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@9 f_27@@24) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@33) o2_28@@9 f_27@@24) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@9 f_27@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@9 f_27@@24))
))) (forall ((o2_28@@10 T@Ref) (f_27@@25 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@10 f_27@@25) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@33) o2_28@@10 f_27@@25) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@10 f_27@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@10 f_27@@25))
))) (forall ((o2_28@@11 T@Ref) (f_27@@26 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@11 f_27@@26) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@33) o2_28@@11 f_27@@26) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@11 f_27@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@11 f_27@@26))
))) (forall ((o2_28@@12 T@Ref) (f_27@@27 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@12 f_27@@27) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@33) o2_28@@12 f_27@@27) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@12 f_27@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@12 f_27@@27))
))) (forall ((o2_28@@13 T@Ref) (f_27@@28 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) null (PredicateMaskField_9026 pm_f_28@@5))) o2_28@@13 f_27@@28) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@33) o2_28@@13 f_27@@28) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@13 f_27@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@22) o2_28@@13 f_27@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@22 Mask@@57) (IsPredicateField_9026_9027 pm_f_28@@5))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_15751) (ExhaleHeap@@23 T@PolymorphicMapType_15751) (Mask@@58 T@PolymorphicMapType_15772) (pm_f_28@@6 T@Field_23858_23859) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@23 Mask@@58) (=> (and (HasDirectPerm_9001_9002 Mask@@58 null pm_f_28@@6) (IsPredicateField_9001_9002 pm_f_28@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@14 T@Ref) (f_27@@29 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@14 f_27@@29) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@34) o2_28@@14 f_27@@29) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@14 f_27@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@14 f_27@@29))
)) (forall ((o2_28@@15 T@Ref) (f_27@@30 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@15 f_27@@30) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@34) o2_28@@15 f_27@@30) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@15 f_27@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@15 f_27@@30))
))) (forall ((o2_28@@16 T@Ref) (f_27@@31 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@16 f_27@@31) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@34) o2_28@@16 f_27@@31) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@16 f_27@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@16 f_27@@31))
))) (forall ((o2_28@@17 T@Ref) (f_27@@32 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@17 f_27@@32) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@34) o2_28@@17 f_27@@32) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@17 f_27@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@17 f_27@@32))
))) (forall ((o2_28@@18 T@Ref) (f_27@@33 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@18 f_27@@33) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@34) o2_28@@18 f_27@@33) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@18 f_27@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@18 f_27@@33))
))) (forall ((o2_28@@19 T@Ref) (f_27@@34 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@19 f_27@@34) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@34) o2_28@@19 f_27@@34) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@19 f_27@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@19 f_27@@34))
))) (forall ((o2_28@@20 T@Ref) (f_27@@35 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@20 f_27@@35) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@34) o2_28@@20 f_27@@35) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@20 f_27@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@20 f_27@@35))
))) (forall ((o2_28@@21 T@Ref) (f_27@@36 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@21 f_27@@36) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@34) o2_28@@21 f_27@@36) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@21 f_27@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@21 f_27@@36))
))) (forall ((o2_28@@22 T@Ref) (f_27@@37 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@22 f_27@@37) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@34) o2_28@@22 f_27@@37) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@22 f_27@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@22 f_27@@37))
))) (forall ((o2_28@@23 T@Ref) (f_27@@38 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@23 f_27@@38) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) o2_28@@23 f_27@@38) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@23 f_27@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@23 f_27@@38))
))) (forall ((o2_28@@24 T@Ref) (f_27@@39 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@24 f_27@@39) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@34) o2_28@@24 f_27@@39) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@24 f_27@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@24 f_27@@39))
))) (forall ((o2_28@@25 T@Ref) (f_27@@40 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@25 f_27@@40) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@34) o2_28@@25 f_27@@40) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@25 f_27@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@25 f_27@@40))
))) (forall ((o2_28@@26 T@Ref) (f_27@@41 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@26 f_27@@41) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@34) o2_28@@26 f_27@@41) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@26 f_27@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@26 f_27@@41))
))) (forall ((o2_28@@27 T@Ref) (f_27@@42 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@27 f_27@@42) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@34) o2_28@@27 f_27@@42) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@27 f_27@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@27 f_27@@42))
))) (forall ((o2_28@@28 T@Ref) (f_27@@43 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@34) null (PredicateMaskField_9001 pm_f_28@@6))) o2_28@@28 f_27@@43) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@34) o2_28@@28 f_27@@43) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@28 f_27@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@23) o2_28@@28 f_27@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@23 Mask@@58) (IsPredicateField_9001_9002 pm_f_28@@6))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_15751) (ExhaleHeap@@24 T@PolymorphicMapType_15751) (Mask@@59 T@PolymorphicMapType_15772) (pm_f_28@@7 T@Field_8898_9002) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@24 Mask@@59) (=> (and (HasDirectPerm_8898_9002 Mask@@59 null pm_f_28@@7) (IsPredicateField_8898_53217 pm_f_28@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@29 T@Ref) (f_27@@44 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@29 f_27@@44) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@35) o2_28@@29 f_27@@44) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@29 f_27@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@29 f_27@@44))
)) (forall ((o2_28@@30 T@Ref) (f_27@@45 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@30 f_27@@45) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@35) o2_28@@30 f_27@@45) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@30 f_27@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@30 f_27@@45))
))) (forall ((o2_28@@31 T@Ref) (f_27@@46 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@31 f_27@@46) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@35) o2_28@@31 f_27@@46) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@31 f_27@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@31 f_27@@46))
))) (forall ((o2_28@@32 T@Ref) (f_27@@47 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@32 f_27@@47) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@35) o2_28@@32 f_27@@47) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@32 f_27@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@32 f_27@@47))
))) (forall ((o2_28@@33 T@Ref) (f_27@@48 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@33 f_27@@48) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) o2_28@@33 f_27@@48) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@33 f_27@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@33 f_27@@48))
))) (forall ((o2_28@@34 T@Ref) (f_27@@49 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@34 f_27@@49) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@35) o2_28@@34 f_27@@49) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@34 f_27@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@34 f_27@@49))
))) (forall ((o2_28@@35 T@Ref) (f_27@@50 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@35 f_27@@50) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@35) o2_28@@35 f_27@@50) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@35 f_27@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@35 f_27@@50))
))) (forall ((o2_28@@36 T@Ref) (f_27@@51 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@36 f_27@@51) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@35) o2_28@@36 f_27@@51) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@36 f_27@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@36 f_27@@51))
))) (forall ((o2_28@@37 T@Ref) (f_27@@52 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@37 f_27@@52) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@35) o2_28@@37 f_27@@52) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@37 f_27@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@37 f_27@@52))
))) (forall ((o2_28@@38 T@Ref) (f_27@@53 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@38 f_27@@53) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@35) o2_28@@38 f_27@@53) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@38 f_27@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@38 f_27@@53))
))) (forall ((o2_28@@39 T@Ref) (f_27@@54 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@39 f_27@@54) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@35) o2_28@@39 f_27@@54) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@39 f_27@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@39 f_27@@54))
))) (forall ((o2_28@@40 T@Ref) (f_27@@55 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@40 f_27@@55) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@35) o2_28@@40 f_27@@55) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@40 f_27@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@40 f_27@@55))
))) (forall ((o2_28@@41 T@Ref) (f_27@@56 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@41 f_27@@56) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@35) o2_28@@41 f_27@@56) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@41 f_27@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@41 f_27@@56))
))) (forall ((o2_28@@42 T@Ref) (f_27@@57 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@42 f_27@@57) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@35) o2_28@@42 f_27@@57) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@42 f_27@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@42 f_27@@57))
))) (forall ((o2_28@@43 T@Ref) (f_27@@58 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@35) null (PredicateMaskField_8898 pm_f_28@@7))) o2_28@@43 f_27@@58) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@35) o2_28@@43 f_27@@58) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@43 f_27@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@24) o2_28@@43 f_27@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@24 Mask@@59) (IsPredicateField_8898_53217 pm_f_28@@7))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_15751) (ExhaleHeap@@25 T@PolymorphicMapType_15751) (Mask@@60 T@PolymorphicMapType_15772) (pm_f_28@@8 T@Field_28196_28197) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@25 Mask@@60) (=> (and (HasDirectPerm_28196_9002 Mask@@60 null pm_f_28@@8) (IsWandField_28196_58898 pm_f_28@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@44 T@Ref) (f_27@@59 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@44 f_27@@59) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@36) o2_28@@44 f_27@@59) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@44 f_27@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@44 f_27@@59))
)) (forall ((o2_28@@45 T@Ref) (f_27@@60 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@45 f_27@@60) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@36) o2_28@@45 f_27@@60) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@45 f_27@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@45 f_27@@60))
))) (forall ((o2_28@@46 T@Ref) (f_27@@61 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@46 f_27@@61) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@36) o2_28@@46 f_27@@61) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@46 f_27@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@46 f_27@@61))
))) (forall ((o2_28@@47 T@Ref) (f_27@@62 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@47 f_27@@62) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@36) o2_28@@47 f_27@@62) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@47 f_27@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@47 f_27@@62))
))) (forall ((o2_28@@48 T@Ref) (f_27@@63 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@48 f_27@@63) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@36) o2_28@@48 f_27@@63) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@48 f_27@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@48 f_27@@63))
))) (forall ((o2_28@@49 T@Ref) (f_27@@64 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@49 f_27@@64) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@36) o2_28@@49 f_27@@64) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@49 f_27@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@49 f_27@@64))
))) (forall ((o2_28@@50 T@Ref) (f_27@@65 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@50 f_27@@65) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@36) o2_28@@50 f_27@@65) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@50 f_27@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@50 f_27@@65))
))) (forall ((o2_28@@51 T@Ref) (f_27@@66 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@51 f_27@@66) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@36) o2_28@@51 f_27@@66) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@51 f_27@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@51 f_27@@66))
))) (forall ((o2_28@@52 T@Ref) (f_27@@67 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@52 f_27@@67) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@36) o2_28@@52 f_27@@67) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@52 f_27@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@52 f_27@@67))
))) (forall ((o2_28@@53 T@Ref) (f_27@@68 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@53 f_27@@68) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@36) o2_28@@53 f_27@@68) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@53 f_27@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@53 f_27@@68))
))) (forall ((o2_28@@54 T@Ref) (f_27@@69 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@54 f_27@@69) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@36) o2_28@@54 f_27@@69) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@54 f_27@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@54 f_27@@69))
))) (forall ((o2_28@@55 T@Ref) (f_27@@70 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@55 f_27@@70) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@36) o2_28@@55 f_27@@70) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@55 f_27@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@55 f_27@@70))
))) (forall ((o2_28@@56 T@Ref) (f_27@@71 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@56 f_27@@71) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@36) o2_28@@56 f_27@@71) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@56 f_27@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@56 f_27@@71))
))) (forall ((o2_28@@57 T@Ref) (f_27@@72 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@57 f_27@@72) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@36) o2_28@@57 f_27@@72) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@57 f_27@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@57 f_27@@72))
))) (forall ((o2_28@@58 T@Ref) (f_27@@73 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) null (WandMaskField_28196 pm_f_28@@8))) o2_28@@58 f_27@@73) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@36) o2_28@@58 f_27@@73) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@58 f_27@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@25) o2_28@@58 f_27@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@25 Mask@@60) (IsWandField_28196_58898 pm_f_28@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_15751) (ExhaleHeap@@26 T@PolymorphicMapType_15751) (Mask@@61 T@PolymorphicMapType_15772) (pm_f_28@@9 T@Field_23858_23859) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@26 Mask@@61) (=> (and (HasDirectPerm_9001_9002 Mask@@61 null pm_f_28@@9) (IsWandField_9001_58541 pm_f_28@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@59 T@Ref) (f_27@@74 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@59 f_27@@74) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@37) o2_28@@59 f_27@@74) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@59 f_27@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@59 f_27@@74))
)) (forall ((o2_28@@60 T@Ref) (f_27@@75 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@60 f_27@@75) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@37) o2_28@@60 f_27@@75) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@60 f_27@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@60 f_27@@75))
))) (forall ((o2_28@@61 T@Ref) (f_27@@76 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@61 f_27@@76) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@37) o2_28@@61 f_27@@76) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@61 f_27@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@61 f_27@@76))
))) (forall ((o2_28@@62 T@Ref) (f_27@@77 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@62 f_27@@77) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@37) o2_28@@62 f_27@@77) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@62 f_27@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@62 f_27@@77))
))) (forall ((o2_28@@63 T@Ref) (f_27@@78 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@63 f_27@@78) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@37) o2_28@@63 f_27@@78) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@63 f_27@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@63 f_27@@78))
))) (forall ((o2_28@@64 T@Ref) (f_27@@79 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@64 f_27@@79) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@37) o2_28@@64 f_27@@79) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@64 f_27@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@64 f_27@@79))
))) (forall ((o2_28@@65 T@Ref) (f_27@@80 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@65 f_27@@80) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@37) o2_28@@65 f_27@@80) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@65 f_27@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@65 f_27@@80))
))) (forall ((o2_28@@66 T@Ref) (f_27@@81 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@66 f_27@@81) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@37) o2_28@@66 f_27@@81) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@66 f_27@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@66 f_27@@81))
))) (forall ((o2_28@@67 T@Ref) (f_27@@82 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@67 f_27@@82) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@37) o2_28@@67 f_27@@82) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@67 f_27@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@67 f_27@@82))
))) (forall ((o2_28@@68 T@Ref) (f_27@@83 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@68 f_27@@83) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) o2_28@@68 f_27@@83) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@68 f_27@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@68 f_27@@83))
))) (forall ((o2_28@@69 T@Ref) (f_27@@84 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@69 f_27@@84) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@37) o2_28@@69 f_27@@84) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@69 f_27@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@69 f_27@@84))
))) (forall ((o2_28@@70 T@Ref) (f_27@@85 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@70 f_27@@85) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@37) o2_28@@70 f_27@@85) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@70 f_27@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@70 f_27@@85))
))) (forall ((o2_28@@71 T@Ref) (f_27@@86 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@71 f_27@@86) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@37) o2_28@@71 f_27@@86) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@71 f_27@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@71 f_27@@86))
))) (forall ((o2_28@@72 T@Ref) (f_27@@87 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@72 f_27@@87) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@37) o2_28@@72 f_27@@87) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@72 f_27@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@72 f_27@@87))
))) (forall ((o2_28@@73 T@Ref) (f_27@@88 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@37) null (WandMaskField_9001 pm_f_28@@9))) o2_28@@73 f_27@@88) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@37) o2_28@@73 f_27@@88) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@73 f_27@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@26) o2_28@@73 f_27@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@26 Mask@@61) (IsWandField_9001_58541 pm_f_28@@9))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_15751) (ExhaleHeap@@27 T@PolymorphicMapType_15751) (Mask@@62 T@PolymorphicMapType_15772) (pm_f_28@@10 T@Field_8898_9002) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@27 Mask@@62) (=> (and (HasDirectPerm_8898_9002 Mask@@62 null pm_f_28@@10) (IsWandField_8898_58184 pm_f_28@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@74 T@Ref) (f_27@@89 T@Field_21829_2989) ) (!  (=> (select (|PolymorphicMapType_16300_8898_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@74 f_27@@89) (= (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@38) o2_28@@74 f_27@@89) (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@74 f_27@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@74 f_27@@89))
)) (forall ((o2_28@@75 T@Ref) (f_27@@90 T@Field_15824_15825) ) (!  (=> (select (|PolymorphicMapType_16300_8900_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@75 f_27@@90) (= (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@38) o2_28@@75 f_27@@90) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@75 f_27@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@75 f_27@@90))
))) (forall ((o2_28@@76 T@Ref) (f_27@@91 T@Field_15811_53) ) (!  (=> (select (|PolymorphicMapType_16300_8898_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@76 f_27@@91) (= (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@38) o2_28@@76 f_27@@91) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@76 f_27@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@76 f_27@@91))
))) (forall ((o2_28@@77 T@Ref) (f_27@@92 T@Field_8898_9002) ) (!  (=> (select (|PolymorphicMapType_16300_8898_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@77 f_27@@92) (= (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@38) o2_28@@77 f_27@@92) (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@77 f_27@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@77 f_27@@92))
))) (forall ((o2_28@@78 T@Ref) (f_27@@93 T@Field_8898_26595) ) (!  (=> (select (|PolymorphicMapType_16300_8898_54999#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@78 f_27@@93) (= (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) o2_28@@78 f_27@@93) (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@78 f_27@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@78 f_27@@93))
))) (forall ((o2_28@@79 T@Ref) (f_27@@94 T@Field_9001_2989) ) (!  (=> (select (|PolymorphicMapType_16300_23858_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@79 f_27@@94) (= (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@38) o2_28@@79 f_27@@94) (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@79 f_27@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@79 f_27@@94))
))) (forall ((o2_28@@80 T@Ref) (f_27@@95 T@Field_9001_8901) ) (!  (=> (select (|PolymorphicMapType_16300_23858_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@80 f_27@@95) (= (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@38) o2_28@@80 f_27@@95) (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@80 f_27@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@80 f_27@@95))
))) (forall ((o2_28@@81 T@Ref) (f_27@@96 T@Field_9001_53) ) (!  (=> (select (|PolymorphicMapType_16300_23858_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@81 f_27@@96) (= (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@38) o2_28@@81 f_27@@96) (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@81 f_27@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@81 f_27@@96))
))) (forall ((o2_28@@82 T@Ref) (f_27@@97 T@Field_23858_23859) ) (!  (=> (select (|PolymorphicMapType_16300_23858_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@82 f_27@@97) (= (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@38) o2_28@@82 f_27@@97) (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@82 f_27@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@82 f_27@@97))
))) (forall ((o2_28@@83 T@Ref) (f_27@@98 T@Field_26590_26595) ) (!  (=> (select (|PolymorphicMapType_16300_23858_56047#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@83 f_27@@98) (= (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@38) o2_28@@83 f_27@@98) (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@83 f_27@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@83 f_27@@98))
))) (forall ((o2_28@@84 T@Ref) (f_27@@99 T@Field_28196_2989) ) (!  (=> (select (|PolymorphicMapType_16300_28196_2989#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@84 f_27@@99) (= (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@38) o2_28@@84 f_27@@99) (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@84 f_27@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@84 f_27@@99))
))) (forall ((o2_28@@85 T@Ref) (f_27@@100 T@Field_28196_8901) ) (!  (=> (select (|PolymorphicMapType_16300_28196_8901#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@85 f_27@@100) (= (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@38) o2_28@@85 f_27@@100) (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@85 f_27@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@85 f_27@@100))
))) (forall ((o2_28@@86 T@Ref) (f_27@@101 T@Field_28196_53) ) (!  (=> (select (|PolymorphicMapType_16300_28196_53#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@86 f_27@@101) (= (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@38) o2_28@@86 f_27@@101) (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@86 f_27@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@86 f_27@@101))
))) (forall ((o2_28@@87 T@Ref) (f_27@@102 T@Field_28196_28197) ) (!  (=> (select (|PolymorphicMapType_16300_28196_23859#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@87 f_27@@102) (= (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@38) o2_28@@87 f_27@@102) (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@87 f_27@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@87 f_27@@102))
))) (forall ((o2_28@@88 T@Ref) (f_27@@103 T@Field_32277_32282) ) (!  (=> (select (|PolymorphicMapType_16300_28196_57095#PolymorphicMapType_16300| (select (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@38) null (WandMaskField_8898 pm_f_28@@10))) o2_28@@88 f_27@@103) (= (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@38) o2_28@@88 f_27@@103) (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@88 f_27@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| ExhaleHeap@@27) o2_28@@88 f_27@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@27 Mask@@62) (IsWandField_8898_58184 pm_f_28@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.536:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a b) (= a b))
 :qid |stdinbpl.509:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a b))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_15751) (x@@17 T@Ref) (b1@@2 Bool) (b2@@4 Bool) ) (!  (and (= (fun01 Heap@@39 x@@17 b1@@2 b2@@4) (|fun01'| Heap@@39 x@@17 b1@@2 b2@@4)) (dummyFunction_3320 (|fun01#triggerStateless| x@@17 b1@@2 b2@@4)))
 :qid |stdinbpl.566:15|
 :skolemid |58|
 :pattern ( (fun01 Heap@@39 x@@17 b1@@2 b2@@4))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.402:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_4532|) (= (|Seq#Append_4532| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_4532|) (= (|Seq#Append_4532| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.220:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_4532| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2989| t@@1) 0) t@@1)
 :qid |stdinbpl.224:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2989| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.203:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((x@@18 T@Ref) (b_24@@5 Bool) ) (! (= (getPredWandId_9001_9002 (P01 x@@18 b_24@@5)) 0)
 :qid |stdinbpl.972:15|
 :skolemid |75|
 :pattern ( (P01 x@@18 b_24@@5))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.499:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.496:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_15751) (Mask@@63 T@PolymorphicMapType_15772) (x@@19 T@Ref) ) (!  (=> (state Heap@@40 Mask@@63) (= (|vals'| Heap@@40 x@@19) (|vals#frame| (select (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@40) null (Tree x@@19)) x@@19)))
 :qid |stdinbpl.803:15|
 :skolemid |70|
 :pattern ( (state Heap@@40 Mask@@63) (|vals'| Heap@@40 x@@19))
 :pattern ( (state Heap@@40 Mask@@63) (|vals#triggerStateless| x@@19) (|Tree#trigger_9026| Heap@@40 (Tree x@@19)) (|Tree#trigger_9026| Heap@@40 (Tree x@@19)))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2989| t@@2)) 1)
 :qid |stdinbpl.211:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2989| t@@2))
)))
(assert (forall ((x@@20 T@Ref) ) (! (= (getPredWandId_9026_9027 (Tree x@@20)) 1)
 :qid |stdinbpl.1046:15|
 :skolemid |81|
 :pattern ( (Tree x@@20))
)))
(assert (forall ((x@@21 T@Ref) (b_24@@6 Bool) ) (! (= (PredicateMaskField_9001 (P01 x@@21 b_24@@6)) (|P01#sm| x@@21 b_24@@6))
 :qid |stdinbpl.964:15|
 :skolemid |73|
 :pattern ( (PredicateMaskField_9001 (P01 x@@21 b_24@@6)))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_4532| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.353:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_4532| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.252:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_15751) (o_22 T@Ref) (f_12 T@Field_32277_32282) (v@@2 T@PolymorphicMapType_16300) ) (! (succHeap Heap@@41 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@41) (store (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@41) o_22 f_12 v@@2) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@41) (store (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@41) o_22 f_12 v@@2) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@41) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_15751) (o_22@@0 T@Ref) (f_12@@0 T@Field_28196_28197) (v@@3 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@42) (store (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@42) o_22@@0 f_12@@0 v@@3) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@42) (store (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@42) o_22@@0 f_12@@0 v@@3) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@42) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_15751) (o_22@@1 T@Ref) (f_12@@1 T@Field_28196_2989) (v@@4 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@43) (store (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@43) o_22@@1 f_12@@1 v@@4) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@43) (store (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@43) o_22@@1 f_12@@1 v@@4) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@43) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_15751) (o_22@@2 T@Ref) (f_12@@2 T@Field_28196_8901) (v@@5 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@44) (store (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@44) o_22@@2 f_12@@2 v@@5) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@44) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@44) (store (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@44) o_22@@2 f_12@@2 v@@5) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_15751) (o_22@@3 T@Ref) (f_12@@3 T@Field_28196_53) (v@@6 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@45) (store (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@45) o_22@@3 f_12@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@45) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@45) (store (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@45) o_22@@3 f_12@@3 v@@6)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_15751) (o_22@@4 T@Ref) (f_12@@4 T@Field_26590_26595) (v@@7 T@PolymorphicMapType_16300) ) (! (succHeap Heap@@46 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@46) (store (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@46) o_22@@4 f_12@@4 v@@7) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@46) (store (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@46) o_22@@4 f_12@@4 v@@7) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@46) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_15751) (o_22@@5 T@Ref) (f_12@@5 T@Field_23858_23859) (v@@8 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@47) (store (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@47) o_22@@5 f_12@@5 v@@8) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@47) (store (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@47) o_22@@5 f_12@@5 v@@8) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@47) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_15751) (o_22@@6 T@Ref) (f_12@@6 T@Field_9001_2989) (v@@9 Int) ) (! (succHeap Heap@@48 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@48) (store (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@48) o_22@@6 f_12@@6 v@@9) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@48) (store (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@48) o_22@@6 f_12@@6 v@@9) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@48) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_15751) (o_22@@7 T@Ref) (f_12@@7 T@Field_9001_8901) (v@@10 T@Ref) ) (! (succHeap Heap@@49 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@49) (store (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@49) o_22@@7 f_12@@7 v@@10) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@49) (store (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@49) o_22@@7 f_12@@7 v@@10) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@49) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_15751) (o_22@@8 T@Ref) (f_12@@8 T@Field_9001_53) (v@@11 Bool) ) (! (succHeap Heap@@50 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@50) (store (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@50) o_22@@8 f_12@@8 v@@11) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@50) (store (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@50) o_22@@8 f_12@@8 v@@11) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@50) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_15751) (o_22@@9 T@Ref) (f_12@@9 T@Field_8898_26595) (v@@12 T@PolymorphicMapType_16300) ) (! (succHeap Heap@@51 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@51) (store (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@51) o_22@@9 f_12@@9 v@@12) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@51) (store (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@51) o_22@@9 f_12@@9 v@@12) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@51) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_15751) (o_22@@10 T@Ref) (f_12@@10 T@Field_8898_9002) (v@@13 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@52) (store (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@52) o_22@@10 f_12@@10 v@@13) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@52) (store (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@52) o_22@@10 f_12@@10 v@@13) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@52) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_15751) (o_22@@11 T@Ref) (f_12@@11 T@Field_21829_2989) (v@@14 Int) ) (! (succHeap Heap@@53 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@53) (store (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@53) o_22@@11 f_12@@11 v@@14) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@53) (store (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@53) o_22@@11 f_12@@11 v@@14) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@53) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_15751) (o_22@@12 T@Ref) (f_12@@12 T@Field_15824_15825) (v@@15 T@Ref) ) (! (succHeap Heap@@54 (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@54) (store (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@54) o_22@@12 f_12@@12 v@@15) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@54) (store (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@54) o_22@@12 f_12@@12 v@@15) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@54) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_15751) (o_22@@13 T@Ref) (f_12@@13 T@Field_15811_53) (v@@16 Bool) ) (! (succHeap Heap@@55 (PolymorphicMapType_15751 (store (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@55) o_22@@13 f_12@@13 v@@16) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15751 (store (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@55) o_22@@13 f_12@@13 v@@16) (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9005_26684#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9026_9027#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9030_32369#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_9002#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_8898_50755#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_8901#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_9001_53#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_2989#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_8901#PolymorphicMapType_15751| Heap@@55) (|PolymorphicMapType_15751_28196_53#PolymorphicMapType_15751| Heap@@55)))
)))
(assert (forall ((x@@22 T@Ref) ) (! (= (PredicateMaskField_9026 (Tree x@@22)) (|Tree#sm| x@@22))
 :qid |stdinbpl.1038:15|
 :skolemid |79|
 :pattern ( (PredicateMaskField_9026 (Tree x@@22)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_2867| (|Seq#Append_4532| s@@12 t@@4) n@@9) (|Seq#Append_4532| (|Seq#Drop_2867| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.367:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_4532| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.303:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_4532|)) (not (= s1@@3 |Seq#Empty_4532|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_4532| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.243:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_4532| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_4532| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_4532|)) (not (= s1@@4 |Seq#Empty_4532|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_4532| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.248:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_4532| s0@@4 s1@@4))
)))
(assert (forall ((o_22@@14 T@Ref) (f_30 T@Field_15824_15825) (Heap@@56 T@PolymorphicMapType_15751) ) (!  (=> (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@56) o_22@@14 $allocated) (select (|PolymorphicMapType_15751_8710_53#PolymorphicMapType_15751| Heap@@56) (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@56) o_22@@14 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15751_8713_8714#PolymorphicMapType_15751| Heap@@56) o_22@@14 f_30))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@23 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@23)) (|Seq#Contains_2867| s@@14 x@@23))
 :qid |stdinbpl.400:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@23) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2867| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.504:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@5 s1@@5))
)))
(assert (forall ((p@@3 T@Field_8898_9002) (v_1@@2 T@FrameType) (q T@Field_8898_9002) (w@@2 T@FrameType) (r T@Field_8898_9002) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15811_15811 p@@3 v_1@@2 q w@@2) (InsidePredicate_15811_15811 q w@@2 r u)) (InsidePredicate_15811_15811 p@@3 v_1@@2 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_15811 p@@3 v_1@@2 q w@@2) (InsidePredicate_15811_15811 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_8898_9002) (v_1@@3 T@FrameType) (q@@0 T@Field_8898_9002) (w@@3 T@FrameType) (r@@0 T@Field_28196_28197) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_15811 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15811_9026 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_15811_9026 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_15811 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15811_9026 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_8898_9002) (v_1@@4 T@FrameType) (q@@1 T@Field_8898_9002) (w@@4 T@FrameType) (r@@1 T@Field_23858_23859) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_15811 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15811_9001 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_15811_9001 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_15811 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15811_9001 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_8898_9002) (v_1@@5 T@FrameType) (q@@2 T@Field_28196_28197) (w@@5 T@FrameType) (r@@2 T@Field_8898_9002) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9026 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9026_15811 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_15811_15811 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9026 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9026_15811 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_8898_9002) (v_1@@6 T@FrameType) (q@@3 T@Field_28196_28197) (w@@6 T@FrameType) (r@@3 T@Field_28196_28197) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9026 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9026_9026 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_15811_9026 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9026 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9026_9026 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_8898_9002) (v_1@@7 T@FrameType) (q@@4 T@Field_28196_28197) (w@@7 T@FrameType) (r@@4 T@Field_23858_23859) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9026 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9026_9001 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_15811_9001 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9026 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9026_9001 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_8898_9002) (v_1@@8 T@FrameType) (q@@5 T@Field_23858_23859) (w@@8 T@FrameType) (r@@5 T@Field_8898_9002) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9001 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9001_15811 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_15811_15811 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9001 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9001_15811 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_8898_9002) (v_1@@9 T@FrameType) (q@@6 T@Field_23858_23859) (w@@9 T@FrameType) (r@@6 T@Field_28196_28197) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9001 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9001_9026 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_15811_9026 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9001 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9001_9026 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_8898_9002) (v_1@@10 T@FrameType) (q@@7 T@Field_23858_23859) (w@@10 T@FrameType) (r@@7 T@Field_23858_23859) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_15811_9001 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9001_9001 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_15811_9001 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15811_9001 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9001_9001 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_28196_28197) (v_1@@11 T@FrameType) (q@@8 T@Field_8898_9002) (w@@11 T@FrameType) (r@@8 T@Field_8898_9002) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_15811 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15811_15811 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_9026_15811 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_15811 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15811_15811 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_28196_28197) (v_1@@12 T@FrameType) (q@@9 T@Field_8898_9002) (w@@12 T@FrameType) (r@@9 T@Field_28196_28197) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_15811 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15811_9026 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_9026_9026 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_15811 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15811_9026 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_28196_28197) (v_1@@13 T@FrameType) (q@@10 T@Field_8898_9002) (w@@13 T@FrameType) (r@@10 T@Field_23858_23859) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_15811 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15811_9001 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_9026_9001 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_15811 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15811_9001 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_28196_28197) (v_1@@14 T@FrameType) (q@@11 T@Field_28196_28197) (w@@14 T@FrameType) (r@@11 T@Field_8898_9002) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9026 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9026_15811 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_9026_15811 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9026 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9026_15811 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_28196_28197) (v_1@@15 T@FrameType) (q@@12 T@Field_28196_28197) (w@@15 T@FrameType) (r@@12 T@Field_28196_28197) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9026 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9026_9026 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_9026_9026 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9026 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9026_9026 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_28196_28197) (v_1@@16 T@FrameType) (q@@13 T@Field_28196_28197) (w@@16 T@FrameType) (r@@13 T@Field_23858_23859) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9026 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9026_9001 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_9026_9001 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9026 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9026_9001 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_28196_28197) (v_1@@17 T@FrameType) (q@@14 T@Field_23858_23859) (w@@17 T@FrameType) (r@@14 T@Field_8898_9002) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9001 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9001_15811 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_9026_15811 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9001 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9001_15811 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_28196_28197) (v_1@@18 T@FrameType) (q@@15 T@Field_23858_23859) (w@@18 T@FrameType) (r@@15 T@Field_28196_28197) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9001 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9001_9026 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_9026_9026 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9001 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9001_9026 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_28196_28197) (v_1@@19 T@FrameType) (q@@16 T@Field_23858_23859) (w@@19 T@FrameType) (r@@16 T@Field_23858_23859) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_9026_9001 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9001_9001 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_9026_9001 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9026_9001 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9001_9001 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_23858_23859) (v_1@@20 T@FrameType) (q@@17 T@Field_8898_9002) (w@@20 T@FrameType) (r@@17 T@Field_8898_9002) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_15811 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15811_15811 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_9001_15811 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_15811 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15811_15811 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_23858_23859) (v_1@@21 T@FrameType) (q@@18 T@Field_8898_9002) (w@@21 T@FrameType) (r@@18 T@Field_28196_28197) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_15811 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15811_9026 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_9001_9026 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_15811 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15811_9026 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_23858_23859) (v_1@@22 T@FrameType) (q@@19 T@Field_8898_9002) (w@@22 T@FrameType) (r@@19 T@Field_23858_23859) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_15811 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15811_9001 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_9001_9001 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_15811 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15811_9001 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_23858_23859) (v_1@@23 T@FrameType) (q@@20 T@Field_28196_28197) (w@@23 T@FrameType) (r@@20 T@Field_8898_9002) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9026 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9026_15811 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_9001_15811 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9026 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9026_15811 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_23858_23859) (v_1@@24 T@FrameType) (q@@21 T@Field_28196_28197) (w@@24 T@FrameType) (r@@21 T@Field_28196_28197) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9026 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9026_9026 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_9001_9026 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9026 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9026_9026 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_23858_23859) (v_1@@25 T@FrameType) (q@@22 T@Field_28196_28197) (w@@25 T@FrameType) (r@@22 T@Field_23858_23859) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9026 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9026_9001 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_9001_9001 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9026 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9026_9001 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_23858_23859) (v_1@@26 T@FrameType) (q@@23 T@Field_23858_23859) (w@@26 T@FrameType) (r@@23 T@Field_8898_9002) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9001 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9001_15811 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_9001_15811 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9001 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9001_15811 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_23858_23859) (v_1@@27 T@FrameType) (q@@24 T@Field_23858_23859) (w@@27 T@FrameType) (r@@24 T@Field_28196_28197) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9001 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9001_9026 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_9001_9026 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9001 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9001_9026 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_23858_23859) (v_1@@28 T@FrameType) (q@@25 T@Field_23858_23859) (w@@28 T@FrameType) (r@@25 T@Field_23858_23859) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9001_9001 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9001_9001 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_9001_9001 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9001_9001 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9001_9001 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_4532|))
 :qid |stdinbpl.207:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_4532|))
 :qid |stdinbpl.383:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@57 T@PolymorphicMapType_15751) (x@@24 T@Ref) (b_24@@7 Bool) ) (!  (and (= (fun02 Heap@@57 x@@24 b_24@@7) (|fun02'| Heap@@57 x@@24 b_24@@7)) (dummyFunction_3804 (|fun02#triggerStateless| x@@24 b_24@@7)))
 :qid |stdinbpl.651:15|
 :skolemid |62|
 :pattern ( (fun02 Heap@@57 x@@24 b_24@@7))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_15751) (Mask@@64 T@PolymorphicMapType_15772) (x@@25 T@Ref) (b_24@@8 Bool) ) (!  (=> (state Heap@@58 Mask@@64) (= (|fun02'| Heap@@58 x@@25 b_24@@8) (|fun02#frame| (select (|PolymorphicMapType_15751_9001_9002#PolymorphicMapType_15751| Heap@@58) null (P01 x@@25 b_24@@8)) x@@25 b_24@@8)))
 :qid |stdinbpl.668:15|
 :skolemid |65|
 :pattern ( (state Heap@@58 Mask@@64) (|fun02'| Heap@@58 x@@25 b_24@@8))
 :pattern ( (state Heap@@58 Mask@@64) (|fun02#triggerStateless| x@@25 b_24@@8) (|P01#trigger_9001| Heap@@58 (P01 x@@25 b_24@@8)))
)))
; Valid

