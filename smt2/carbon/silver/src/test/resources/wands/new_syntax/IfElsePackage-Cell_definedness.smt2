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
(declare-sort T@Field_11709_53 0)
(declare-sort T@Field_11722_11723 0)
(declare-sort T@Field_16155_16156 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_15056_15061 0)
(declare-sort T@Field_16168_16173 0)
(declare-sort T@Field_6695_1223 0)
(declare-sort T@Field_6695_15061 0)
(declare-sort T@Field_6695_15076 0)
(declare-sort T@Field_15040_1793 0)
(declare-sort T@Field_15040_6698 0)
(declare-sort T@Field_15040_1223 0)
(declare-sort T@Field_15075_15076 0)
(declare-sort T@Field_16155_1793 0)
(declare-sort T@Field_16155_6698 0)
(declare-sort T@Field_16155_1223 0)
(declare-datatypes ((T@PolymorphicMapType_11670 0)) (((PolymorphicMapType_11670 (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| (Array T@Ref T@Field_11709_53 Real)) (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| (Array T@Ref T@Field_11722_11723 Real)) (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| (Array T@Ref T@Field_16155_16156 Real)) (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| (Array T@Ref T@Field_15040_1223 Real)) (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| (Array T@Ref T@Field_6695_15076 Real)) (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| (Array T@Ref T@Field_6695_1223 Real)) (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| (Array T@Ref T@Field_6695_15061 Real)) (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| (Array T@Ref T@Field_16155_1793 Real)) (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| (Array T@Ref T@Field_16155_6698 Real)) (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| (Array T@Ref T@Field_16155_1223 Real)) (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| (Array T@Ref T@Field_16168_16173 Real)) (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| (Array T@Ref T@Field_15040_1793 Real)) (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| (Array T@Ref T@Field_15040_6698 Real)) (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| (Array T@Ref T@Field_15075_15076 Real)) (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| (Array T@Ref T@Field_15056_15061 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12198 0)) (((PolymorphicMapType_12198 (|PolymorphicMapType_12198_6695_1793#PolymorphicMapType_12198| (Array T@Ref T@Field_11709_53 Bool)) (|PolymorphicMapType_12198_6697_6698#PolymorphicMapType_12198| (Array T@Ref T@Field_11722_11723 Bool)) (|PolymorphicMapType_12198_6695_1223#PolymorphicMapType_12198| (Array T@Ref T@Field_6695_1223 Bool)) (|PolymorphicMapType_12198_6695_41787#PolymorphicMapType_12198| (Array T@Ref T@Field_6695_15061 Bool)) (|PolymorphicMapType_12198_6695_15076#PolymorphicMapType_12198| (Array T@Ref T@Field_6695_15076 Bool)) (|PolymorphicMapType_12198_15040_1793#PolymorphicMapType_12198| (Array T@Ref T@Field_15040_1793 Bool)) (|PolymorphicMapType_12198_15040_6698#PolymorphicMapType_12198| (Array T@Ref T@Field_15040_6698 Bool)) (|PolymorphicMapType_12198_15040_1223#PolymorphicMapType_12198| (Array T@Ref T@Field_15040_1223 Bool)) (|PolymorphicMapType_12198_15040_42835#PolymorphicMapType_12198| (Array T@Ref T@Field_15056_15061 Bool)) (|PolymorphicMapType_12198_15040_15076#PolymorphicMapType_12198| (Array T@Ref T@Field_15075_15076 Bool)) (|PolymorphicMapType_12198_16155_1793#PolymorphicMapType_12198| (Array T@Ref T@Field_16155_1793 Bool)) (|PolymorphicMapType_12198_16155_6698#PolymorphicMapType_12198| (Array T@Ref T@Field_16155_6698 Bool)) (|PolymorphicMapType_12198_16155_1223#PolymorphicMapType_12198| (Array T@Ref T@Field_16155_1223 Bool)) (|PolymorphicMapType_12198_16155_43883#PolymorphicMapType_12198| (Array T@Ref T@Field_16168_16173 Bool)) (|PolymorphicMapType_12198_16155_15076#PolymorphicMapType_12198| (Array T@Ref T@Field_16155_16156 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11649 0)) (((PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| (Array T@Ref T@Field_11709_53 Bool)) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| (Array T@Ref T@Field_11722_11723 T@Ref)) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| (Array T@Ref T@Field_16155_16156 T@FrameType)) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| (Array T@Ref T@Field_15056_15061 T@PolymorphicMapType_12198)) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| (Array T@Ref T@Field_16168_16173 T@PolymorphicMapType_12198)) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| (Array T@Ref T@Field_6695_1223 Int)) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| (Array T@Ref T@Field_6695_15061 T@PolymorphicMapType_12198)) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| (Array T@Ref T@Field_6695_15076 T@FrameType)) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| (Array T@Ref T@Field_15040_1793 Bool)) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| (Array T@Ref T@Field_15040_6698 T@Ref)) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| (Array T@Ref T@Field_15040_1223 Int)) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| (Array T@Ref T@Field_15075_15076 T@FrameType)) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| (Array T@Ref T@Field_16155_1793 Bool)) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| (Array T@Ref T@Field_16155_6698 T@Ref)) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| (Array T@Ref T@Field_16155_1223 Int)) ) ) ))
(declare-fun $allocated () T@Field_11709_53)
(declare-fun b_32 () T@Field_11709_53)
(declare-fun f_7 () T@Field_11722_11723)
(declare-fun succHeap (T@PolymorphicMapType_11649 T@PolymorphicMapType_11649) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11649 T@PolymorphicMapType_11649) Bool)
(declare-fun state (T@PolymorphicMapType_11649 T@PolymorphicMapType_11670) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11670) Bool)
(declare-fun wand (T@Ref T@Ref Real T@Ref Real T@Ref T@Ref Real Bool) T@Field_15040_1223)
(declare-fun IsWandField_6607_1223 (T@Field_15040_1223) Bool)
(declare-fun |wand#ft| (T@Ref T@Ref Real T@Ref Real T@Ref T@Ref Real Bool) T@Field_15075_15076)
(declare-fun IsWandField_6628_6629 (T@Field_15075_15076) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12198)
(declare-fun IsPredicateField_6607_1223 (T@Field_15040_1223) Bool)
(declare-fun IsPredicateField_6628_6629 (T@Field_15075_15076) Bool)
(declare-fun Cell (T@Ref) T@Field_16155_16156)
(declare-fun IsPredicateField_6701_6702 (T@Field_16155_16156) Bool)
(declare-fun |Cell#trigger_6701| (T@PolymorphicMapType_11649 T@Field_16155_16156) Bool)
(declare-fun |Cell#everUsed_6701| (T@Field_16155_16156) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11649 T@PolymorphicMapType_11649 T@PolymorphicMapType_11670) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6701 (T@Field_16155_16156) T@Field_16168_16173)
(declare-fun HasDirectPerm_16155_15076 (T@PolymorphicMapType_11670 T@Ref T@Field_16155_16156) Bool)
(declare-fun PredicateMaskField_15040 (T@Field_15075_15076) T@Field_15056_15061)
(declare-fun HasDirectPerm_15040_15076 (T@PolymorphicMapType_11670 T@Ref T@Field_15075_15076) Bool)
(declare-fun IsPredicateField_6695_40184 (T@Field_6695_15076) Bool)
(declare-fun PredicateMaskField_6695 (T@Field_6695_15076) T@Field_6695_15061)
(declare-fun HasDirectPerm_6695_15076 (T@PolymorphicMapType_11670 T@Ref T@Field_6695_15076) Bool)
(declare-fun IsWandField_16155_45858 (T@Field_16155_16156) Bool)
(declare-fun WandMaskField_16155 (T@Field_16155_16156) T@Field_16168_16173)
(declare-fun WandMaskField_6628 (T@Field_15075_15076) T@Field_15056_15061)
(declare-fun IsWandField_6695_45176 (T@Field_6695_15076) Bool)
(declare-fun WandMaskField_6695 (T@Field_6695_15076) T@Field_6695_15061)
(declare-fun |Cell#sm| (T@Ref) T@Field_16168_16173)
(declare-fun dummyHeap () T@PolymorphicMapType_11649)
(declare-fun ZeroMask () T@PolymorphicMapType_11670)
(declare-fun InsidePredicate_15040_15040 (T@Field_15075_15076 T@FrameType T@Field_15075_15076 T@FrameType) Bool)
(declare-fun InsidePredicate_11709_11709 (T@Field_6695_15076 T@FrameType T@Field_6695_15076 T@FrameType) Bool)
(declare-fun InsidePredicate_6701_6701 (T@Field_16155_16156 T@FrameType T@Field_16155_16156 T@FrameType) Bool)
(declare-fun IsPredicateField_6695_1793 (T@Field_11709_53) Bool)
(declare-fun IsWandField_6695_1793 (T@Field_11709_53) Bool)
(declare-fun IsPredicateField_6697_6698 (T@Field_11722_11723) Bool)
(declare-fun IsWandField_6697_6698 (T@Field_11722_11723) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6607_56136 (T@Field_15056_15061) Bool)
(declare-fun IsWandField_6607_56152 (T@Field_15056_15061) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6607_6698 (T@Field_15040_6698) Bool)
(declare-fun IsWandField_6607_6698 (T@Field_15040_6698) Bool)
(declare-fun IsPredicateField_6607_1793 (T@Field_15040_1793) Bool)
(declare-fun IsWandField_6607_1793 (T@Field_15040_1793) Bool)
(declare-fun IsPredicateField_6701_55319 (T@Field_16168_16173) Bool)
(declare-fun IsWandField_6701_55335 (T@Field_16168_16173) Bool)
(declare-fun IsPredicateField_6701_1223 (T@Field_16155_1223) Bool)
(declare-fun IsWandField_6701_1223 (T@Field_16155_1223) Bool)
(declare-fun IsPredicateField_6701_6698 (T@Field_16155_6698) Bool)
(declare-fun IsWandField_6701_6698 (T@Field_16155_6698) Bool)
(declare-fun IsPredicateField_6701_1793 (T@Field_16155_1793) Bool)
(declare-fun IsWandField_6701_1793 (T@Field_16155_1793) Bool)
(declare-fun IsPredicateField_6695_54488 (T@Field_6695_15061) Bool)
(declare-fun IsWandField_6695_54504 (T@Field_6695_15061) Bool)
(declare-fun IsPredicateField_6695_1223 (T@Field_6695_1223) Bool)
(declare-fun IsWandField_6695_1223 (T@Field_6695_1223) Bool)
(declare-fun HasDirectPerm_16155_39728 (T@PolymorphicMapType_11670 T@Ref T@Field_16168_16173) Bool)
(declare-fun HasDirectPerm_16155_1223 (T@PolymorphicMapType_11670 T@Ref T@Field_16155_1223) Bool)
(declare-fun HasDirectPerm_16155_6698 (T@PolymorphicMapType_11670 T@Ref T@Field_16155_6698) Bool)
(declare-fun HasDirectPerm_16155_1793 (T@PolymorphicMapType_11670 T@Ref T@Field_16155_1793) Bool)
(declare-fun HasDirectPerm_15040_38593 (T@PolymorphicMapType_11670 T@Ref T@Field_15056_15061) Bool)
(declare-fun HasDirectPerm_15040_1223 (T@PolymorphicMapType_11670 T@Ref T@Field_15040_1223) Bool)
(declare-fun HasDirectPerm_15040_6698 (T@PolymorphicMapType_11670 T@Ref T@Field_15040_6698) Bool)
(declare-fun HasDirectPerm_15040_1793 (T@PolymorphicMapType_11670 T@Ref T@Field_15040_1793) Bool)
(declare-fun HasDirectPerm_6695_37415 (T@PolymorphicMapType_11670 T@Ref T@Field_6695_15061) Bool)
(declare-fun HasDirectPerm_6695_1223 (T@PolymorphicMapType_11670 T@Ref T@Field_6695_1223) Bool)
(declare-fun HasDirectPerm_6697_6698 (T@PolymorphicMapType_11670 T@Ref T@Field_11722_11723) Bool)
(declare-fun HasDirectPerm_6695_1793 (T@PolymorphicMapType_11670 T@Ref T@Field_11709_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11670 T@PolymorphicMapType_11670 T@PolymorphicMapType_11670) Bool)
(declare-fun getPredWandId_6607_1223 (T@Field_15040_1223) Int)
(declare-fun getPredWandId_6701_6702 (T@Field_16155_16156) Int)
(declare-fun |wand#sm| (T@Ref T@Ref Real T@Ref Real T@Ref T@Ref Real Bool) T@Field_15056_15061)
(declare-fun InsidePredicate_15040_11709 (T@Field_15075_15076 T@FrameType T@Field_6695_15076 T@FrameType) Bool)
(declare-fun InsidePredicate_15040_6701 (T@Field_15075_15076 T@FrameType T@Field_16155_16156 T@FrameType) Bool)
(declare-fun InsidePredicate_11709_15040 (T@Field_6695_15076 T@FrameType T@Field_15075_15076 T@FrameType) Bool)
(declare-fun InsidePredicate_11709_6701 (T@Field_6695_15076 T@FrameType T@Field_16155_16156 T@FrameType) Bool)
(declare-fun InsidePredicate_6701_15040 (T@Field_16155_16156 T@FrameType T@Field_15075_15076 T@FrameType) Bool)
(declare-fun InsidePredicate_6701_11709 (T@Field_16155_16156 T@FrameType T@Field_6695_15076 T@FrameType) Bool)
(assert (distinct $allocated b_32)
)
(assert (forall ((Heap0 T@PolymorphicMapType_11649) (Heap1 T@PolymorphicMapType_11649) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11649) (Mask T@PolymorphicMapType_11670) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) (arg3 Real) (arg4 T@Ref) (arg5 Real) (arg6 T@Ref) (arg7 T@Ref) (arg8 Real) (arg9 Bool) ) (! (IsWandField_6607_1223 (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) (arg3@@0 Real) (arg4@@0 T@Ref) (arg5@@0 Real) (arg6@@0 T@Ref) (arg7@@0 T@Ref) (arg8@@0 Real) (arg9@@0 Bool) ) (! (IsWandField_6628_6629 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0 arg9@@0))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0 arg9@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11649) (Heap1@@0 T@PolymorphicMapType_11649) (Heap2 T@PolymorphicMapType_11649) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16155_16156) ) (!  (not (select (|PolymorphicMapType_12198_16155_15076#PolymorphicMapType_12198| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_16155_15076#PolymorphicMapType_12198| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16168_16173) ) (!  (not (select (|PolymorphicMapType_12198_16155_43883#PolymorphicMapType_12198| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_16155_43883#PolymorphicMapType_12198| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16155_1223) ) (!  (not (select (|PolymorphicMapType_12198_16155_1223#PolymorphicMapType_12198| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_16155_1223#PolymorphicMapType_12198| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16155_6698) ) (!  (not (select (|PolymorphicMapType_12198_16155_6698#PolymorphicMapType_12198| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_16155_6698#PolymorphicMapType_12198| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16155_1793) ) (!  (not (select (|PolymorphicMapType_12198_16155_1793#PolymorphicMapType_12198| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_16155_1793#PolymorphicMapType_12198| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_15075_15076) ) (!  (not (select (|PolymorphicMapType_12198_15040_15076#PolymorphicMapType_12198| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_15040_15076#PolymorphicMapType_12198| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_15056_15061) ) (!  (not (select (|PolymorphicMapType_12198_15040_42835#PolymorphicMapType_12198| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_15040_42835#PolymorphicMapType_12198| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_15040_1223) ) (!  (not (select (|PolymorphicMapType_12198_15040_1223#PolymorphicMapType_12198| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_15040_1223#PolymorphicMapType_12198| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_15040_6698) ) (!  (not (select (|PolymorphicMapType_12198_15040_6698#PolymorphicMapType_12198| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_15040_6698#PolymorphicMapType_12198| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_15040_1793) ) (!  (not (select (|PolymorphicMapType_12198_15040_1793#PolymorphicMapType_12198| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_15040_1793#PolymorphicMapType_12198| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_6695_15076) ) (!  (not (select (|PolymorphicMapType_12198_6695_15076#PolymorphicMapType_12198| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_6695_15076#PolymorphicMapType_12198| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_6695_15061) ) (!  (not (select (|PolymorphicMapType_12198_6695_41787#PolymorphicMapType_12198| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_6695_41787#PolymorphicMapType_12198| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6695_1223) ) (!  (not (select (|PolymorphicMapType_12198_6695_1223#PolymorphicMapType_12198| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_6695_1223#PolymorphicMapType_12198| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11722_11723) ) (!  (not (select (|PolymorphicMapType_12198_6697_6698#PolymorphicMapType_12198| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_6697_6698#PolymorphicMapType_12198| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11709_53) ) (!  (not (select (|PolymorphicMapType_12198_6695_1793#PolymorphicMapType_12198| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12198_6695_1793#PolymorphicMapType_12198| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) (arg3@@1 Real) (arg4@@1 T@Ref) (arg5@@1 Real) (arg6@@1 T@Ref) (arg7@@1 T@Ref) (arg8@@1 Real) (arg9@@1 Bool) ) (!  (not (IsPredicateField_6607_1223 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1 arg9@@1)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1 arg9@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) (arg3@@2 Real) (arg4@@2 T@Ref) (arg5@@2 Real) (arg6@@2 T@Ref) (arg7@@2 T@Ref) (arg8@@2 Real) (arg9@@2 Bool) ) (!  (not (IsPredicateField_6628_6629 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2 arg9@@2)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2 arg9@@2))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_6701_6702 (Cell x))
 :qid |stdinbpl.235:15|
 :skolemid |30|
 :pattern ( (Cell x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11649) (x@@0 T@Ref) ) (! (|Cell#everUsed_6701| (Cell x@@0))
 :qid |stdinbpl.254:15|
 :skolemid |34|
 :pattern ( (|Cell#trigger_6701| Heap@@0 (Cell x@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11649) (ExhaleHeap T@PolymorphicMapType_11649) (Mask@@0 T@PolymorphicMapType_11670) (pm_f_1 T@Field_16155_16156) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16155_15076 Mask@@0 null pm_f_1) (IsPredicateField_6701_6702 pm_f_1)) (= (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@1) null (PredicateMaskField_6701 pm_f_1)) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap) null (PredicateMaskField_6701 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_6701_6702 pm_f_1) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap) null (PredicateMaskField_6701 pm_f_1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11649) (ExhaleHeap@@0 T@PolymorphicMapType_11649) (Mask@@1 T@PolymorphicMapType_11670) (pm_f_1@@0 T@Field_15075_15076) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_15040_15076 Mask@@1 null pm_f_1@@0) (IsPredicateField_6628_6629 pm_f_1@@0)) (= (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@2) null (PredicateMaskField_15040 pm_f_1@@0)) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@0) null (PredicateMaskField_15040 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6628_6629 pm_f_1@@0) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@0) null (PredicateMaskField_15040 pm_f_1@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11649) (ExhaleHeap@@1 T@PolymorphicMapType_11649) (Mask@@2 T@PolymorphicMapType_11670) (pm_f_1@@1 T@Field_6695_15076) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6695_15076 Mask@@2 null pm_f_1@@1) (IsPredicateField_6695_40184 pm_f_1@@1)) (= (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@3) null (PredicateMaskField_6695 pm_f_1@@1)) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@1) null (PredicateMaskField_6695 pm_f_1@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6695_40184 pm_f_1@@1) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@1) null (PredicateMaskField_6695 pm_f_1@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11649) (ExhaleHeap@@2 T@PolymorphicMapType_11649) (Mask@@3 T@PolymorphicMapType_11670) (pm_f_1@@2 T@Field_16155_16156) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_16155_15076 Mask@@3 null pm_f_1@@2) (IsWandField_16155_45858 pm_f_1@@2)) (= (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@4) null (WandMaskField_16155 pm_f_1@@2)) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@2) null (WandMaskField_16155 pm_f_1@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_16155_45858 pm_f_1@@2) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@2) null (WandMaskField_16155 pm_f_1@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11649) (ExhaleHeap@@3 T@PolymorphicMapType_11649) (Mask@@4 T@PolymorphicMapType_11670) (pm_f_1@@3 T@Field_15075_15076) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_15040_15076 Mask@@4 null pm_f_1@@3) (IsWandField_6628_6629 pm_f_1@@3)) (= (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@5) null (WandMaskField_6628 pm_f_1@@3)) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@3) null (WandMaskField_6628 pm_f_1@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsWandField_6628_6629 pm_f_1@@3) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@3) null (WandMaskField_6628 pm_f_1@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11649) (ExhaleHeap@@4 T@PolymorphicMapType_11649) (Mask@@5 T@PolymorphicMapType_11670) (pm_f_1@@4 T@Field_6695_15076) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6695_15076 Mask@@5 null pm_f_1@@4) (IsWandField_6695_45176 pm_f_1@@4)) (= (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@6) null (WandMaskField_6695 pm_f_1@@4)) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@4) null (WandMaskField_6695 pm_f_1@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_6695_45176 pm_f_1@@4) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@4) null (WandMaskField_6695 pm_f_1@@4)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (Cell x@@1) (Cell x2)) (= x@@1 x2))
 :qid |stdinbpl.245:15|
 :skolemid |32|
 :pattern ( (Cell x@@1) (Cell x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|Cell#sm| x@@2) (|Cell#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.249:15|
 :skolemid |33|
 :pattern ( (|Cell#sm| x@@2) (|Cell#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11649) (ExhaleHeap@@5 T@PolymorphicMapType_11649) (Mask@@6 T@PolymorphicMapType_11670) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@7) o_4 $allocated) (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@5) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@5) o_4 $allocated))
)))
(assert (forall ((p T@Field_15075_15076) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15040_15040 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15040_15040 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6695_15076) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_11709_11709 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11709_11709 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_16155_16156) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_6701_6701 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6701_6701 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_6695_1793 b_32)))
(assert  (not (IsWandField_6695_1793 b_32)))
(assert  (not (IsPredicateField_6697_6698 f_7)))
(assert  (not (IsWandField_6697_6698 f_7)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11649) (ExhaleHeap@@6 T@PolymorphicMapType_11649) (Mask@@7 T@PolymorphicMapType_11670) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@8 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg3@@3 Real) (arg4@@3 T@Ref) (arg5@@3 Real) (arg6@@3 T@Ref) (arg7@@3 T@Ref) (arg8@@3 Real) (arg9@@3 Bool) (arg1_2 T@Ref) (arg2_2 T@Ref) (arg3_2 Real) (arg4_2 T@Ref) (arg5_2 Real) (arg6_2 T@Ref) (arg7_2 T@Ref) (arg8_2 Real) (arg9_2 Bool) ) (!  (=> (= (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3 arg9@@3) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2 arg9_2)) (and (= arg1@@3 arg1_2) (and (= arg2@@3 arg2_2) (and (= arg3@@3 arg3_2) (and (= arg4@@3 arg4_2) (and (= arg5@@3 arg5_2) (and (= arg6@@3 arg6_2) (and (= arg7@@3 arg7_2) (and (= arg8@@3 arg8_2) (= arg9@@3 arg9_2))))))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3 arg9@@3) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2 arg9_2))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11670) (o_2@@14 T@Ref) (f_4@@14 T@Field_15056_15061) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6607_56136 f_4@@14))) (not (IsWandField_6607_56152 f_4@@14))) (<= (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11670) (o_2@@15 T@Ref) (f_4@@15 T@Field_15040_1223) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6607_1223 f_4@@15))) (not (IsWandField_6607_1223 f_4@@15))) (<= (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11670) (o_2@@16 T@Ref) (f_4@@16 T@Field_15075_15076) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6628_6629 f_4@@16))) (not (IsWandField_6628_6629 f_4@@16))) (<= (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11670) (o_2@@17 T@Ref) (f_4@@17 T@Field_15040_6698) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6607_6698 f_4@@17))) (not (IsWandField_6607_6698 f_4@@17))) (<= (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11670) (o_2@@18 T@Ref) (f_4@@18 T@Field_15040_1793) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6607_1793 f_4@@18))) (not (IsWandField_6607_1793 f_4@@18))) (<= (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11670) (o_2@@19 T@Ref) (f_4@@19 T@Field_16168_16173) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6701_55319 f_4@@19))) (not (IsWandField_6701_55335 f_4@@19))) (<= (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11670) (o_2@@20 T@Ref) (f_4@@20 T@Field_16155_1223) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6701_1223 f_4@@20))) (not (IsWandField_6701_1223 f_4@@20))) (<= (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11670) (o_2@@21 T@Ref) (f_4@@21 T@Field_16155_16156) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6701_6702 f_4@@21))) (not (IsWandField_16155_45858 f_4@@21))) (<= (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_11670) (o_2@@22 T@Ref) (f_4@@22 T@Field_16155_6698) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6701_6698 f_4@@22))) (not (IsWandField_6701_6698 f_4@@22))) (<= (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11670) (o_2@@23 T@Ref) (f_4@@23 T@Field_16155_1793) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6701_1793 f_4@@23))) (not (IsWandField_6701_1793 f_4@@23))) (<= (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11670) (o_2@@24 T@Ref) (f_4@@24 T@Field_6695_15061) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6695_54488 f_4@@24))) (not (IsWandField_6695_54504 f_4@@24))) (<= (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11670) (o_2@@25 T@Ref) (f_4@@25 T@Field_6695_1223) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6695_1223 f_4@@25))) (not (IsWandField_6695_1223 f_4@@25))) (<= (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11670) (o_2@@26 T@Ref) (f_4@@26 T@Field_6695_15076) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6695_40184 f_4@@26))) (not (IsWandField_6695_45176 f_4@@26))) (<= (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11670) (o_2@@27 T@Ref) (f_4@@27 T@Field_11722_11723) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6697_6698 f_4@@27))) (not (IsWandField_6697_6698 f_4@@27))) (<= (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_11670) (o_2@@28 T@Ref) (f_4@@28 T@Field_11709_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_6695_1793 f_4@@28))) (not (IsWandField_6695_1793 f_4@@28))) (<= (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_11670) (o_2@@29 T@Ref) (f_4@@29 T@Field_16155_16156) ) (! (= (HasDirectPerm_16155_15076 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16155_15076 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11670) (o_2@@30 T@Ref) (f_4@@30 T@Field_16168_16173) ) (! (= (HasDirectPerm_16155_39728 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16155_39728 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11670) (o_2@@31 T@Ref) (f_4@@31 T@Field_16155_1223) ) (! (= (HasDirectPerm_16155_1223 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16155_1223 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_11670) (o_2@@32 T@Ref) (f_4@@32 T@Field_16155_6698) ) (! (= (HasDirectPerm_16155_6698 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16155_6698 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_11670) (o_2@@33 T@Ref) (f_4@@33 T@Field_16155_1793) ) (! (= (HasDirectPerm_16155_1793 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16155_1793 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_11670) (o_2@@34 T@Ref) (f_4@@34 T@Field_15075_15076) ) (! (= (HasDirectPerm_15040_15076 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15040_15076 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_11670) (o_2@@35 T@Ref) (f_4@@35 T@Field_15056_15061) ) (! (= (HasDirectPerm_15040_38593 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15040_38593 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_11670) (o_2@@36 T@Ref) (f_4@@36 T@Field_15040_1223) ) (! (= (HasDirectPerm_15040_1223 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15040_1223 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_11670) (o_2@@37 T@Ref) (f_4@@37 T@Field_15040_6698) ) (! (= (HasDirectPerm_15040_6698 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15040_6698 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_11670) (o_2@@38 T@Ref) (f_4@@38 T@Field_15040_1793) ) (! (= (HasDirectPerm_15040_1793 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15040_1793 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_11670) (o_2@@39 T@Ref) (f_4@@39 T@Field_6695_15076) ) (! (= (HasDirectPerm_6695_15076 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6695_15076 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_11670) (o_2@@40 T@Ref) (f_4@@40 T@Field_6695_15061) ) (! (= (HasDirectPerm_6695_37415 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6695_37415 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_11670) (o_2@@41 T@Ref) (f_4@@41 T@Field_6695_1223) ) (! (= (HasDirectPerm_6695_1223 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6695_1223 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_11670) (o_2@@42 T@Ref) (f_4@@42 T@Field_11722_11723) ) (! (= (HasDirectPerm_6697_6698 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6697_6698 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_11670) (o_2@@43 T@Ref) (f_4@@43 T@Field_11709_53) ) (! (= (HasDirectPerm_6695_1793 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6695_1793 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11649) (ExhaleHeap@@7 T@PolymorphicMapType_11649) (Mask@@38 T@PolymorphicMapType_11670) (o_4@@0 T@Ref) (f_9 T@Field_16155_16156) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_16155_15076 Mask@@38 o_4@@0 f_9) (= (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@9) o_4@@0 f_9) (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@7) o_4@@0 f_9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@7) o_4@@0 f_9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11649) (ExhaleHeap@@8 T@PolymorphicMapType_11649) (Mask@@39 T@PolymorphicMapType_11670) (o_4@@1 T@Ref) (f_9@@0 T@Field_16168_16173) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_16155_39728 Mask@@39 o_4@@1 f_9@@0) (= (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@10) o_4@@1 f_9@@0) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@8) o_4@@1 f_9@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@8) o_4@@1 f_9@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11649) (ExhaleHeap@@9 T@PolymorphicMapType_11649) (Mask@@40 T@PolymorphicMapType_11670) (o_4@@2 T@Ref) (f_9@@1 T@Field_16155_1223) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_16155_1223 Mask@@40 o_4@@2 f_9@@1) (= (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@11) o_4@@2 f_9@@1) (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@9) o_4@@2 f_9@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@9) o_4@@2 f_9@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11649) (ExhaleHeap@@10 T@PolymorphicMapType_11649) (Mask@@41 T@PolymorphicMapType_11670) (o_4@@3 T@Ref) (f_9@@2 T@Field_16155_6698) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_16155_6698 Mask@@41 o_4@@3 f_9@@2) (= (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@12) o_4@@3 f_9@@2) (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@10) o_4@@3 f_9@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@10) o_4@@3 f_9@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11649) (ExhaleHeap@@11 T@PolymorphicMapType_11649) (Mask@@42 T@PolymorphicMapType_11670) (o_4@@4 T@Ref) (f_9@@3 T@Field_16155_1793) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_16155_1793 Mask@@42 o_4@@4 f_9@@3) (= (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@13) o_4@@4 f_9@@3) (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@11) o_4@@4 f_9@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@11) o_4@@4 f_9@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11649) (ExhaleHeap@@12 T@PolymorphicMapType_11649) (Mask@@43 T@PolymorphicMapType_11670) (o_4@@5 T@Ref) (f_9@@4 T@Field_15075_15076) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_15040_15076 Mask@@43 o_4@@5 f_9@@4) (= (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@14) o_4@@5 f_9@@4) (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@12) o_4@@5 f_9@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@12) o_4@@5 f_9@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11649) (ExhaleHeap@@13 T@PolymorphicMapType_11649) (Mask@@44 T@PolymorphicMapType_11670) (o_4@@6 T@Ref) (f_9@@5 T@Field_15056_15061) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_15040_38593 Mask@@44 o_4@@6 f_9@@5) (= (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@15) o_4@@6 f_9@@5) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@13) o_4@@6 f_9@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@13) o_4@@6 f_9@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11649) (ExhaleHeap@@14 T@PolymorphicMapType_11649) (Mask@@45 T@PolymorphicMapType_11670) (o_4@@7 T@Ref) (f_9@@6 T@Field_15040_1223) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_15040_1223 Mask@@45 o_4@@7 f_9@@6) (= (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@16) o_4@@7 f_9@@6) (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@14) o_4@@7 f_9@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@14) o_4@@7 f_9@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11649) (ExhaleHeap@@15 T@PolymorphicMapType_11649) (Mask@@46 T@PolymorphicMapType_11670) (o_4@@8 T@Ref) (f_9@@7 T@Field_15040_6698) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_15040_6698 Mask@@46 o_4@@8 f_9@@7) (= (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@17) o_4@@8 f_9@@7) (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@15) o_4@@8 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@15) o_4@@8 f_9@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11649) (ExhaleHeap@@16 T@PolymorphicMapType_11649) (Mask@@47 T@PolymorphicMapType_11670) (o_4@@9 T@Ref) (f_9@@8 T@Field_15040_1793) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_15040_1793 Mask@@47 o_4@@9 f_9@@8) (= (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@18) o_4@@9 f_9@@8) (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@16) o_4@@9 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@16) o_4@@9 f_9@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11649) (ExhaleHeap@@17 T@PolymorphicMapType_11649) (Mask@@48 T@PolymorphicMapType_11670) (o_4@@10 T@Ref) (f_9@@9 T@Field_6695_15076) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_6695_15076 Mask@@48 o_4@@10 f_9@@9) (= (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@19) o_4@@10 f_9@@9) (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@17) o_4@@10 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@17) o_4@@10 f_9@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11649) (ExhaleHeap@@18 T@PolymorphicMapType_11649) (Mask@@49 T@PolymorphicMapType_11670) (o_4@@11 T@Ref) (f_9@@10 T@Field_6695_15061) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_6695_37415 Mask@@49 o_4@@11 f_9@@10) (= (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@20) o_4@@11 f_9@@10) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@18) o_4@@11 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@18) o_4@@11 f_9@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11649) (ExhaleHeap@@19 T@PolymorphicMapType_11649) (Mask@@50 T@PolymorphicMapType_11670) (o_4@@12 T@Ref) (f_9@@11 T@Field_6695_1223) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_6695_1223 Mask@@50 o_4@@12 f_9@@11) (= (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@21) o_4@@12 f_9@@11) (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@19) o_4@@12 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@19) o_4@@12 f_9@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11649) (ExhaleHeap@@20 T@PolymorphicMapType_11649) (Mask@@51 T@PolymorphicMapType_11670) (o_4@@13 T@Ref) (f_9@@12 T@Field_11722_11723) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_6697_6698 Mask@@51 o_4@@13 f_9@@12) (= (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@22) o_4@@13 f_9@@12) (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@20) o_4@@13 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@20) o_4@@13 f_9@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11649) (ExhaleHeap@@21 T@PolymorphicMapType_11649) (Mask@@52 T@PolymorphicMapType_11670) (o_4@@14 T@Ref) (f_9@@13 T@Field_11709_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_6695_1793 Mask@@52 o_4@@14 f_9@@13) (= (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@23) o_4@@14 f_9@@13) (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@21) o_4@@14 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@21) o_4@@14 f_9@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_15056_15061) ) (! (= (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_15040_1223) ) (! (= (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_15075_15076) ) (! (= (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_15040_6698) ) (! (= (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_15040_1793) ) (! (= (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_16168_16173) ) (! (= (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_16155_1223) ) (! (= (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_16155_16156) ) (! (= (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_16155_6698) ) (! (= (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_16155_1793) ) (! (= (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_6695_15061) ) (! (= (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_6695_1223) ) (! (= (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_6695_15076) ) (! (= (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_11722_11723) ) (! (= (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_11709_53) ) (! (= (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11670) (SummandMask1 T@PolymorphicMapType_11670) (SummandMask2 T@PolymorphicMapType_11670) (o_2@@59 T@Ref) (f_4@@59 T@Field_15056_15061) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11670) (SummandMask1@@0 T@PolymorphicMapType_11670) (SummandMask2@@0 T@PolymorphicMapType_11670) (o_2@@60 T@Ref) (f_4@@60 T@Field_15040_1223) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11670) (SummandMask1@@1 T@PolymorphicMapType_11670) (SummandMask2@@1 T@PolymorphicMapType_11670) (o_2@@61 T@Ref) (f_4@@61 T@Field_15075_15076) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11670) (SummandMask1@@2 T@PolymorphicMapType_11670) (SummandMask2@@2 T@PolymorphicMapType_11670) (o_2@@62 T@Ref) (f_4@@62 T@Field_15040_6698) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11670) (SummandMask1@@3 T@PolymorphicMapType_11670) (SummandMask2@@3 T@PolymorphicMapType_11670) (o_2@@63 T@Ref) (f_4@@63 T@Field_15040_1793) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_11670) (SummandMask1@@4 T@PolymorphicMapType_11670) (SummandMask2@@4 T@PolymorphicMapType_11670) (o_2@@64 T@Ref) (f_4@@64 T@Field_16168_16173) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_11670) (SummandMask1@@5 T@PolymorphicMapType_11670) (SummandMask2@@5 T@PolymorphicMapType_11670) (o_2@@65 T@Ref) (f_4@@65 T@Field_16155_1223) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_11670) (SummandMask1@@6 T@PolymorphicMapType_11670) (SummandMask2@@6 T@PolymorphicMapType_11670) (o_2@@66 T@Ref) (f_4@@66 T@Field_16155_16156) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_11670) (SummandMask1@@7 T@PolymorphicMapType_11670) (SummandMask2@@7 T@PolymorphicMapType_11670) (o_2@@67 T@Ref) (f_4@@67 T@Field_16155_6698) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_11670) (SummandMask1@@8 T@PolymorphicMapType_11670) (SummandMask2@@8 T@PolymorphicMapType_11670) (o_2@@68 T@Ref) (f_4@@68 T@Field_16155_1793) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_11670) (SummandMask1@@9 T@PolymorphicMapType_11670) (SummandMask2@@9 T@PolymorphicMapType_11670) (o_2@@69 T@Ref) (f_4@@69 T@Field_6695_15061) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_11670) (SummandMask1@@10 T@PolymorphicMapType_11670) (SummandMask2@@10 T@PolymorphicMapType_11670) (o_2@@70 T@Ref) (f_4@@70 T@Field_6695_1223) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_11670) (SummandMask1@@11 T@PolymorphicMapType_11670) (SummandMask2@@11 T@PolymorphicMapType_11670) (o_2@@71 T@Ref) (f_4@@71 T@Field_6695_15076) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_11670) (SummandMask1@@12 T@PolymorphicMapType_11670) (SummandMask2@@12 T@PolymorphicMapType_11670) (o_2@@72 T@Ref) (f_4@@72 T@Field_11722_11723) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_11670) (SummandMask1@@13 T@PolymorphicMapType_11670) (SummandMask2@@13 T@PolymorphicMapType_11670) (o_2@@73 T@Ref) (f_4@@73 T@Field_11709_53) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11649) (ExhaleHeap@@22 T@PolymorphicMapType_11649) (Mask@@53 T@PolymorphicMapType_11670) (pm_f_1@@5 T@Field_16155_16156) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_16155_15076 Mask@@53 null pm_f_1@@5) (IsPredicateField_6701_6702 pm_f_1@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_9@@14 T@Field_11709_53) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1 f_9@@14) (= (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@24) o2_1 f_9@@14) (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1 f_9@@14))
)) (forall ((o2_1@@0 T@Ref) (f_9@@15 T@Field_11722_11723) ) (!  (=> (select (|PolymorphicMapType_12198_6697_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@0 f_9@@15) (= (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@24) o2_1@@0 f_9@@15) (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@0 f_9@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@0 f_9@@15))
))) (forall ((o2_1@@1 T@Ref) (f_9@@16 T@Field_6695_1223) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@1 f_9@@16) (= (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@24) o2_1@@1 f_9@@16) (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@1 f_9@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@1 f_9@@16))
))) (forall ((o2_1@@2 T@Ref) (f_9@@17 T@Field_6695_15061) ) (!  (=> (select (|PolymorphicMapType_12198_6695_41787#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@2 f_9@@17) (= (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@24) o2_1@@2 f_9@@17) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@2 f_9@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@2 f_9@@17))
))) (forall ((o2_1@@3 T@Ref) (f_9@@18 T@Field_6695_15076) ) (!  (=> (select (|PolymorphicMapType_12198_6695_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@3 f_9@@18) (= (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@24) o2_1@@3 f_9@@18) (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@3 f_9@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@3 f_9@@18))
))) (forall ((o2_1@@4 T@Ref) (f_9@@19 T@Field_15040_1793) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@4 f_9@@19) (= (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@24) o2_1@@4 f_9@@19) (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@4 f_9@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@4 f_9@@19))
))) (forall ((o2_1@@5 T@Ref) (f_9@@20 T@Field_15040_6698) ) (!  (=> (select (|PolymorphicMapType_12198_15040_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@5 f_9@@20) (= (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@24) o2_1@@5 f_9@@20) (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@5 f_9@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@5 f_9@@20))
))) (forall ((o2_1@@6 T@Ref) (f_9@@21 T@Field_15040_1223) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@6 f_9@@21) (= (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@24) o2_1@@6 f_9@@21) (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@6 f_9@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@6 f_9@@21))
))) (forall ((o2_1@@7 T@Ref) (f_9@@22 T@Field_15056_15061) ) (!  (=> (select (|PolymorphicMapType_12198_15040_42835#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@7 f_9@@22) (= (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@24) o2_1@@7 f_9@@22) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@7 f_9@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@7 f_9@@22))
))) (forall ((o2_1@@8 T@Ref) (f_9@@23 T@Field_15075_15076) ) (!  (=> (select (|PolymorphicMapType_12198_15040_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@8 f_9@@23) (= (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@24) o2_1@@8 f_9@@23) (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@8 f_9@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@8 f_9@@23))
))) (forall ((o2_1@@9 T@Ref) (f_9@@24 T@Field_16155_1793) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@9 f_9@@24) (= (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@24) o2_1@@9 f_9@@24) (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@9 f_9@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@9 f_9@@24))
))) (forall ((o2_1@@10 T@Ref) (f_9@@25 T@Field_16155_6698) ) (!  (=> (select (|PolymorphicMapType_12198_16155_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@10 f_9@@25) (= (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@24) o2_1@@10 f_9@@25) (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@10 f_9@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@10 f_9@@25))
))) (forall ((o2_1@@11 T@Ref) (f_9@@26 T@Field_16155_1223) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@11 f_9@@26) (= (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@24) o2_1@@11 f_9@@26) (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@11 f_9@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@11 f_9@@26))
))) (forall ((o2_1@@12 T@Ref) (f_9@@27 T@Field_16168_16173) ) (!  (=> (select (|PolymorphicMapType_12198_16155_43883#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@12 f_9@@27) (= (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) o2_1@@12 f_9@@27) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@12 f_9@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@12 f_9@@27))
))) (forall ((o2_1@@13 T@Ref) (f_9@@28 T@Field_16155_16156) ) (!  (=> (select (|PolymorphicMapType_12198_16155_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@24) null (PredicateMaskField_6701 pm_f_1@@5))) o2_1@@13 f_9@@28) (= (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@24) o2_1@@13 f_9@@28) (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@13 f_9@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@22) o2_1@@13 f_9@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (IsPredicateField_6701_6702 pm_f_1@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11649) (ExhaleHeap@@23 T@PolymorphicMapType_11649) (Mask@@54 T@PolymorphicMapType_11670) (pm_f_1@@6 T@Field_15075_15076) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_15040_15076 Mask@@54 null pm_f_1@@6) (IsPredicateField_6628_6629 pm_f_1@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@14 T@Ref) (f_9@@29 T@Field_11709_53) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@14 f_9@@29) (= (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@25) o2_1@@14 f_9@@29) (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@14 f_9@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@14 f_9@@29))
)) (forall ((o2_1@@15 T@Ref) (f_9@@30 T@Field_11722_11723) ) (!  (=> (select (|PolymorphicMapType_12198_6697_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@15 f_9@@30) (= (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@25) o2_1@@15 f_9@@30) (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@15 f_9@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@15 f_9@@30))
))) (forall ((o2_1@@16 T@Ref) (f_9@@31 T@Field_6695_1223) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@16 f_9@@31) (= (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@25) o2_1@@16 f_9@@31) (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@16 f_9@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@16 f_9@@31))
))) (forall ((o2_1@@17 T@Ref) (f_9@@32 T@Field_6695_15061) ) (!  (=> (select (|PolymorphicMapType_12198_6695_41787#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@17 f_9@@32) (= (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@25) o2_1@@17 f_9@@32) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@17 f_9@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@17 f_9@@32))
))) (forall ((o2_1@@18 T@Ref) (f_9@@33 T@Field_6695_15076) ) (!  (=> (select (|PolymorphicMapType_12198_6695_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@18 f_9@@33) (= (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@25) o2_1@@18 f_9@@33) (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@18 f_9@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@18 f_9@@33))
))) (forall ((o2_1@@19 T@Ref) (f_9@@34 T@Field_15040_1793) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@19 f_9@@34) (= (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@25) o2_1@@19 f_9@@34) (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@19 f_9@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@19 f_9@@34))
))) (forall ((o2_1@@20 T@Ref) (f_9@@35 T@Field_15040_6698) ) (!  (=> (select (|PolymorphicMapType_12198_15040_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@20 f_9@@35) (= (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@25) o2_1@@20 f_9@@35) (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@20 f_9@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@20 f_9@@35))
))) (forall ((o2_1@@21 T@Ref) (f_9@@36 T@Field_15040_1223) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@21 f_9@@36) (= (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@25) o2_1@@21 f_9@@36) (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@21 f_9@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@21 f_9@@36))
))) (forall ((o2_1@@22 T@Ref) (f_9@@37 T@Field_15056_15061) ) (!  (=> (select (|PolymorphicMapType_12198_15040_42835#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@22 f_9@@37) (= (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) o2_1@@22 f_9@@37) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@22 f_9@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@22 f_9@@37))
))) (forall ((o2_1@@23 T@Ref) (f_9@@38 T@Field_15075_15076) ) (!  (=> (select (|PolymorphicMapType_12198_15040_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@23 f_9@@38) (= (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@25) o2_1@@23 f_9@@38) (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@23 f_9@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@23 f_9@@38))
))) (forall ((o2_1@@24 T@Ref) (f_9@@39 T@Field_16155_1793) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@24 f_9@@39) (= (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@25) o2_1@@24 f_9@@39) (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@24 f_9@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@24 f_9@@39))
))) (forall ((o2_1@@25 T@Ref) (f_9@@40 T@Field_16155_6698) ) (!  (=> (select (|PolymorphicMapType_12198_16155_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@25 f_9@@40) (= (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@25) o2_1@@25 f_9@@40) (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@25 f_9@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@25 f_9@@40))
))) (forall ((o2_1@@26 T@Ref) (f_9@@41 T@Field_16155_1223) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@26 f_9@@41) (= (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@25) o2_1@@26 f_9@@41) (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@26 f_9@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@26 f_9@@41))
))) (forall ((o2_1@@27 T@Ref) (f_9@@42 T@Field_16168_16173) ) (!  (=> (select (|PolymorphicMapType_12198_16155_43883#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@27 f_9@@42) (= (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@25) o2_1@@27 f_9@@42) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@27 f_9@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@27 f_9@@42))
))) (forall ((o2_1@@28 T@Ref) (f_9@@43 T@Field_16155_16156) ) (!  (=> (select (|PolymorphicMapType_12198_16155_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@25) null (PredicateMaskField_15040 pm_f_1@@6))) o2_1@@28 f_9@@43) (= (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@25) o2_1@@28 f_9@@43) (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@28 f_9@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@23) o2_1@@28 f_9@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (IsPredicateField_6628_6629 pm_f_1@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11649) (ExhaleHeap@@24 T@PolymorphicMapType_11649) (Mask@@55 T@PolymorphicMapType_11670) (pm_f_1@@7 T@Field_6695_15076) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_6695_15076 Mask@@55 null pm_f_1@@7) (IsPredicateField_6695_40184 pm_f_1@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@29 T@Ref) (f_9@@44 T@Field_11709_53) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@29 f_9@@44) (= (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@26) o2_1@@29 f_9@@44) (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@29 f_9@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@29 f_9@@44))
)) (forall ((o2_1@@30 T@Ref) (f_9@@45 T@Field_11722_11723) ) (!  (=> (select (|PolymorphicMapType_12198_6697_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@30 f_9@@45) (= (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@26) o2_1@@30 f_9@@45) (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@30 f_9@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@30 f_9@@45))
))) (forall ((o2_1@@31 T@Ref) (f_9@@46 T@Field_6695_1223) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@31 f_9@@46) (= (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@26) o2_1@@31 f_9@@46) (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@31 f_9@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@31 f_9@@46))
))) (forall ((o2_1@@32 T@Ref) (f_9@@47 T@Field_6695_15061) ) (!  (=> (select (|PolymorphicMapType_12198_6695_41787#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@32 f_9@@47) (= (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) o2_1@@32 f_9@@47) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@32 f_9@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@32 f_9@@47))
))) (forall ((o2_1@@33 T@Ref) (f_9@@48 T@Field_6695_15076) ) (!  (=> (select (|PolymorphicMapType_12198_6695_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@33 f_9@@48) (= (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@26) o2_1@@33 f_9@@48) (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@33 f_9@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@33 f_9@@48))
))) (forall ((o2_1@@34 T@Ref) (f_9@@49 T@Field_15040_1793) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@34 f_9@@49) (= (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@26) o2_1@@34 f_9@@49) (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@34 f_9@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@34 f_9@@49))
))) (forall ((o2_1@@35 T@Ref) (f_9@@50 T@Field_15040_6698) ) (!  (=> (select (|PolymorphicMapType_12198_15040_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@35 f_9@@50) (= (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@26) o2_1@@35 f_9@@50) (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@35 f_9@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@35 f_9@@50))
))) (forall ((o2_1@@36 T@Ref) (f_9@@51 T@Field_15040_1223) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@36 f_9@@51) (= (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@26) o2_1@@36 f_9@@51) (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@36 f_9@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@36 f_9@@51))
))) (forall ((o2_1@@37 T@Ref) (f_9@@52 T@Field_15056_15061) ) (!  (=> (select (|PolymorphicMapType_12198_15040_42835#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@37 f_9@@52) (= (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@26) o2_1@@37 f_9@@52) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@37 f_9@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@37 f_9@@52))
))) (forall ((o2_1@@38 T@Ref) (f_9@@53 T@Field_15075_15076) ) (!  (=> (select (|PolymorphicMapType_12198_15040_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@38 f_9@@53) (= (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@26) o2_1@@38 f_9@@53) (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@38 f_9@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@38 f_9@@53))
))) (forall ((o2_1@@39 T@Ref) (f_9@@54 T@Field_16155_1793) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@39 f_9@@54) (= (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@26) o2_1@@39 f_9@@54) (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@39 f_9@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@39 f_9@@54))
))) (forall ((o2_1@@40 T@Ref) (f_9@@55 T@Field_16155_6698) ) (!  (=> (select (|PolymorphicMapType_12198_16155_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@40 f_9@@55) (= (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@26) o2_1@@40 f_9@@55) (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@40 f_9@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@40 f_9@@55))
))) (forall ((o2_1@@41 T@Ref) (f_9@@56 T@Field_16155_1223) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@41 f_9@@56) (= (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@26) o2_1@@41 f_9@@56) (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@41 f_9@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@41 f_9@@56))
))) (forall ((o2_1@@42 T@Ref) (f_9@@57 T@Field_16168_16173) ) (!  (=> (select (|PolymorphicMapType_12198_16155_43883#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@42 f_9@@57) (= (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@26) o2_1@@42 f_9@@57) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@42 f_9@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@42 f_9@@57))
))) (forall ((o2_1@@43 T@Ref) (f_9@@58 T@Field_16155_16156) ) (!  (=> (select (|PolymorphicMapType_12198_16155_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@26) null (PredicateMaskField_6695 pm_f_1@@7))) o2_1@@43 f_9@@58) (= (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@26) o2_1@@43 f_9@@58) (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@43 f_9@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@24) o2_1@@43 f_9@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (IsPredicateField_6695_40184 pm_f_1@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11649) (ExhaleHeap@@25 T@PolymorphicMapType_11649) (Mask@@56 T@PolymorphicMapType_11670) (pm_f_1@@8 T@Field_16155_16156) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_16155_15076 Mask@@56 null pm_f_1@@8) (IsWandField_16155_45858 pm_f_1@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@44 T@Ref) (f_9@@59 T@Field_11709_53) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@44 f_9@@59) (= (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@27) o2_1@@44 f_9@@59) (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@44 f_9@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@44 f_9@@59))
)) (forall ((o2_1@@45 T@Ref) (f_9@@60 T@Field_11722_11723) ) (!  (=> (select (|PolymorphicMapType_12198_6697_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@45 f_9@@60) (= (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@27) o2_1@@45 f_9@@60) (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@45 f_9@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@45 f_9@@60))
))) (forall ((o2_1@@46 T@Ref) (f_9@@61 T@Field_6695_1223) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@46 f_9@@61) (= (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@27) o2_1@@46 f_9@@61) (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@46 f_9@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@46 f_9@@61))
))) (forall ((o2_1@@47 T@Ref) (f_9@@62 T@Field_6695_15061) ) (!  (=> (select (|PolymorphicMapType_12198_6695_41787#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@47 f_9@@62) (= (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@27) o2_1@@47 f_9@@62) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@47 f_9@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@47 f_9@@62))
))) (forall ((o2_1@@48 T@Ref) (f_9@@63 T@Field_6695_15076) ) (!  (=> (select (|PolymorphicMapType_12198_6695_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@48 f_9@@63) (= (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@27) o2_1@@48 f_9@@63) (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@48 f_9@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@48 f_9@@63))
))) (forall ((o2_1@@49 T@Ref) (f_9@@64 T@Field_15040_1793) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@49 f_9@@64) (= (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@27) o2_1@@49 f_9@@64) (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@49 f_9@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@49 f_9@@64))
))) (forall ((o2_1@@50 T@Ref) (f_9@@65 T@Field_15040_6698) ) (!  (=> (select (|PolymorphicMapType_12198_15040_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@50 f_9@@65) (= (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@27) o2_1@@50 f_9@@65) (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@50 f_9@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@50 f_9@@65))
))) (forall ((o2_1@@51 T@Ref) (f_9@@66 T@Field_15040_1223) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@51 f_9@@66) (= (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@27) o2_1@@51 f_9@@66) (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@51 f_9@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@51 f_9@@66))
))) (forall ((o2_1@@52 T@Ref) (f_9@@67 T@Field_15056_15061) ) (!  (=> (select (|PolymorphicMapType_12198_15040_42835#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@52 f_9@@67) (= (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@27) o2_1@@52 f_9@@67) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@52 f_9@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@52 f_9@@67))
))) (forall ((o2_1@@53 T@Ref) (f_9@@68 T@Field_15075_15076) ) (!  (=> (select (|PolymorphicMapType_12198_15040_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@53 f_9@@68) (= (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@27) o2_1@@53 f_9@@68) (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@53 f_9@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@53 f_9@@68))
))) (forall ((o2_1@@54 T@Ref) (f_9@@69 T@Field_16155_1793) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@54 f_9@@69) (= (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@27) o2_1@@54 f_9@@69) (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@54 f_9@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@54 f_9@@69))
))) (forall ((o2_1@@55 T@Ref) (f_9@@70 T@Field_16155_6698) ) (!  (=> (select (|PolymorphicMapType_12198_16155_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@55 f_9@@70) (= (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@27) o2_1@@55 f_9@@70) (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@55 f_9@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@55 f_9@@70))
))) (forall ((o2_1@@56 T@Ref) (f_9@@71 T@Field_16155_1223) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@56 f_9@@71) (= (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@27) o2_1@@56 f_9@@71) (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@56 f_9@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@56 f_9@@71))
))) (forall ((o2_1@@57 T@Ref) (f_9@@72 T@Field_16168_16173) ) (!  (=> (select (|PolymorphicMapType_12198_16155_43883#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@57 f_9@@72) (= (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) o2_1@@57 f_9@@72) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@57 f_9@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@57 f_9@@72))
))) (forall ((o2_1@@58 T@Ref) (f_9@@73 T@Field_16155_16156) ) (!  (=> (select (|PolymorphicMapType_12198_16155_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@27) null (WandMaskField_16155 pm_f_1@@8))) o2_1@@58 f_9@@73) (= (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@27) o2_1@@58 f_9@@73) (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@58 f_9@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@25) o2_1@@58 f_9@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (IsWandField_16155_45858 pm_f_1@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11649) (ExhaleHeap@@26 T@PolymorphicMapType_11649) (Mask@@57 T@PolymorphicMapType_11670) (pm_f_1@@9 T@Field_15075_15076) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_15040_15076 Mask@@57 null pm_f_1@@9) (IsWandField_6628_6629 pm_f_1@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@59 T@Ref) (f_9@@74 T@Field_11709_53) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@59 f_9@@74) (= (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@28) o2_1@@59 f_9@@74) (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@59 f_9@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@59 f_9@@74))
)) (forall ((o2_1@@60 T@Ref) (f_9@@75 T@Field_11722_11723) ) (!  (=> (select (|PolymorphicMapType_12198_6697_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@60 f_9@@75) (= (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@28) o2_1@@60 f_9@@75) (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@60 f_9@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@60 f_9@@75))
))) (forall ((o2_1@@61 T@Ref) (f_9@@76 T@Field_6695_1223) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@61 f_9@@76) (= (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@28) o2_1@@61 f_9@@76) (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@61 f_9@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@61 f_9@@76))
))) (forall ((o2_1@@62 T@Ref) (f_9@@77 T@Field_6695_15061) ) (!  (=> (select (|PolymorphicMapType_12198_6695_41787#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@62 f_9@@77) (= (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@28) o2_1@@62 f_9@@77) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@62 f_9@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@62 f_9@@77))
))) (forall ((o2_1@@63 T@Ref) (f_9@@78 T@Field_6695_15076) ) (!  (=> (select (|PolymorphicMapType_12198_6695_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@63 f_9@@78) (= (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@28) o2_1@@63 f_9@@78) (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@63 f_9@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@63 f_9@@78))
))) (forall ((o2_1@@64 T@Ref) (f_9@@79 T@Field_15040_1793) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@64 f_9@@79) (= (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@28) o2_1@@64 f_9@@79) (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@64 f_9@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@64 f_9@@79))
))) (forall ((o2_1@@65 T@Ref) (f_9@@80 T@Field_15040_6698) ) (!  (=> (select (|PolymorphicMapType_12198_15040_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@65 f_9@@80) (= (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@28) o2_1@@65 f_9@@80) (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@65 f_9@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@65 f_9@@80))
))) (forall ((o2_1@@66 T@Ref) (f_9@@81 T@Field_15040_1223) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@66 f_9@@81) (= (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@28) o2_1@@66 f_9@@81) (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@66 f_9@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@66 f_9@@81))
))) (forall ((o2_1@@67 T@Ref) (f_9@@82 T@Field_15056_15061) ) (!  (=> (select (|PolymorphicMapType_12198_15040_42835#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@67 f_9@@82) (= (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) o2_1@@67 f_9@@82) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@67 f_9@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@67 f_9@@82))
))) (forall ((o2_1@@68 T@Ref) (f_9@@83 T@Field_15075_15076) ) (!  (=> (select (|PolymorphicMapType_12198_15040_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@68 f_9@@83) (= (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@28) o2_1@@68 f_9@@83) (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@68 f_9@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@68 f_9@@83))
))) (forall ((o2_1@@69 T@Ref) (f_9@@84 T@Field_16155_1793) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@69 f_9@@84) (= (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@28) o2_1@@69 f_9@@84) (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@69 f_9@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@69 f_9@@84))
))) (forall ((o2_1@@70 T@Ref) (f_9@@85 T@Field_16155_6698) ) (!  (=> (select (|PolymorphicMapType_12198_16155_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@70 f_9@@85) (= (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@28) o2_1@@70 f_9@@85) (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@70 f_9@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@70 f_9@@85))
))) (forall ((o2_1@@71 T@Ref) (f_9@@86 T@Field_16155_1223) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@71 f_9@@86) (= (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@28) o2_1@@71 f_9@@86) (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@71 f_9@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@71 f_9@@86))
))) (forall ((o2_1@@72 T@Ref) (f_9@@87 T@Field_16168_16173) ) (!  (=> (select (|PolymorphicMapType_12198_16155_43883#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@72 f_9@@87) (= (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@28) o2_1@@72 f_9@@87) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@72 f_9@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@72 f_9@@87))
))) (forall ((o2_1@@73 T@Ref) (f_9@@88 T@Field_16155_16156) ) (!  (=> (select (|PolymorphicMapType_12198_16155_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@28) null (WandMaskField_6628 pm_f_1@@9))) o2_1@@73 f_9@@88) (= (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@28) o2_1@@73 f_9@@88) (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@73 f_9@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@26) o2_1@@73 f_9@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (IsWandField_6628_6629 pm_f_1@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11649) (ExhaleHeap@@27 T@PolymorphicMapType_11649) (Mask@@58 T@PolymorphicMapType_11670) (pm_f_1@@10 T@Field_6695_15076) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_6695_15076 Mask@@58 null pm_f_1@@10) (IsWandField_6695_45176 pm_f_1@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@74 T@Ref) (f_9@@89 T@Field_11709_53) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@74 f_9@@89) (= (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@29) o2_1@@74 f_9@@89) (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@74 f_9@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@74 f_9@@89))
)) (forall ((o2_1@@75 T@Ref) (f_9@@90 T@Field_11722_11723) ) (!  (=> (select (|PolymorphicMapType_12198_6697_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@75 f_9@@90) (= (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@29) o2_1@@75 f_9@@90) (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@75 f_9@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@75 f_9@@90))
))) (forall ((o2_1@@76 T@Ref) (f_9@@91 T@Field_6695_1223) ) (!  (=> (select (|PolymorphicMapType_12198_6695_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@76 f_9@@91) (= (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@29) o2_1@@76 f_9@@91) (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@76 f_9@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@76 f_9@@91))
))) (forall ((o2_1@@77 T@Ref) (f_9@@92 T@Field_6695_15061) ) (!  (=> (select (|PolymorphicMapType_12198_6695_41787#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@77 f_9@@92) (= (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) o2_1@@77 f_9@@92) (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@77 f_9@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@77 f_9@@92))
))) (forall ((o2_1@@78 T@Ref) (f_9@@93 T@Field_6695_15076) ) (!  (=> (select (|PolymorphicMapType_12198_6695_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@78 f_9@@93) (= (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@29) o2_1@@78 f_9@@93) (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@78 f_9@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@78 f_9@@93))
))) (forall ((o2_1@@79 T@Ref) (f_9@@94 T@Field_15040_1793) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@79 f_9@@94) (= (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@29) o2_1@@79 f_9@@94) (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@79 f_9@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@79 f_9@@94))
))) (forall ((o2_1@@80 T@Ref) (f_9@@95 T@Field_15040_6698) ) (!  (=> (select (|PolymorphicMapType_12198_15040_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@80 f_9@@95) (= (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@29) o2_1@@80 f_9@@95) (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@80 f_9@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@80 f_9@@95))
))) (forall ((o2_1@@81 T@Ref) (f_9@@96 T@Field_15040_1223) ) (!  (=> (select (|PolymorphicMapType_12198_15040_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@81 f_9@@96) (= (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@29) o2_1@@81 f_9@@96) (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@81 f_9@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@81 f_9@@96))
))) (forall ((o2_1@@82 T@Ref) (f_9@@97 T@Field_15056_15061) ) (!  (=> (select (|PolymorphicMapType_12198_15040_42835#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@82 f_9@@97) (= (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@29) o2_1@@82 f_9@@97) (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@82 f_9@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@82 f_9@@97))
))) (forall ((o2_1@@83 T@Ref) (f_9@@98 T@Field_15075_15076) ) (!  (=> (select (|PolymorphicMapType_12198_15040_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@83 f_9@@98) (= (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@29) o2_1@@83 f_9@@98) (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@83 f_9@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@83 f_9@@98))
))) (forall ((o2_1@@84 T@Ref) (f_9@@99 T@Field_16155_1793) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1793#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@84 f_9@@99) (= (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@29) o2_1@@84 f_9@@99) (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@84 f_9@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@84 f_9@@99))
))) (forall ((o2_1@@85 T@Ref) (f_9@@100 T@Field_16155_6698) ) (!  (=> (select (|PolymorphicMapType_12198_16155_6698#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@85 f_9@@100) (= (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@29) o2_1@@85 f_9@@100) (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@85 f_9@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@85 f_9@@100))
))) (forall ((o2_1@@86 T@Ref) (f_9@@101 T@Field_16155_1223) ) (!  (=> (select (|PolymorphicMapType_12198_16155_1223#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@86 f_9@@101) (= (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@29) o2_1@@86 f_9@@101) (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@86 f_9@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@86 f_9@@101))
))) (forall ((o2_1@@87 T@Ref) (f_9@@102 T@Field_16168_16173) ) (!  (=> (select (|PolymorphicMapType_12198_16155_43883#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@87 f_9@@102) (= (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@29) o2_1@@87 f_9@@102) (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@87 f_9@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@87 f_9@@102))
))) (forall ((o2_1@@88 T@Ref) (f_9@@103 T@Field_16155_16156) ) (!  (=> (select (|PolymorphicMapType_12198_16155_15076#PolymorphicMapType_12198| (select (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@29) null (WandMaskField_6695 pm_f_1@@10))) o2_1@@88 f_9@@103) (= (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@29) o2_1@@88 f_9@@103) (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@88 f_9@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| ExhaleHeap@@27) o2_1@@88 f_9@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (IsWandField_6695_45176 pm_f_1@@10))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) (arg3@@4 Real) (arg4@@4 T@Ref) (arg5@@4 Real) (arg6@@4 T@Ref) (arg7@@4 T@Ref) (arg8@@4 Real) (arg9@@4 Bool) ) (! (= (getPredWandId_6607_1223 (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4 arg9@@4)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4 arg9@@4))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_6701_6702 (Cell x@@3)) 0)
 :qid |stdinbpl.239:15|
 :skolemid |31|
 :pattern ( (Cell x@@3))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) (arg3@@5 Real) (arg4@@5 T@Ref) (arg5@@5 Real) (arg6@@5 T@Ref) (arg7@@5 T@Ref) (arg8@@5 Real) (arg9@@5 Bool) ) (! (= (|wand#sm| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5 arg9@@5) (WandMaskField_6628 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5 arg9@@5)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_6628 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5 arg9@@5)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11649) (o_3 T@Ref) (f_10 T@Field_15040_1223) (v Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@30) (store (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@30) o_3 f_10 v) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@30) (store (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@30) o_3 f_10 v) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@30) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11649) (o_3@@0 T@Ref) (f_10@@0 T@Field_15056_15061) (v@@0 T@PolymorphicMapType_12198) ) (! (succHeap Heap@@31 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@31) (store (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@31) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@31) (store (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@31) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@31) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11649) (o_3@@1 T@Ref) (f_10@@1 T@Field_15075_15076) (v@@1 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@32) (store (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@32) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@32) (store (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@32) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@32) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11649) (o_3@@2 T@Ref) (f_10@@2 T@Field_15040_6698) (v@@2 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@33) (store (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@33) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@33) (store (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@33) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@33) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11649) (o_3@@3 T@Ref) (f_10@@3 T@Field_15040_1793) (v@@3 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@34) (store (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@34) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@34) (store (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@34) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@34) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11649) (o_3@@4 T@Ref) (f_10@@4 T@Field_16155_1223) (v@@4 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@35) (store (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@35) o_3@@4 f_10@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@35) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@35) (store (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@35) o_3@@4 f_10@@4 v@@4)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11649) (o_3@@5 T@Ref) (f_10@@5 T@Field_16168_16173) (v@@5 T@PolymorphicMapType_12198) ) (! (succHeap Heap@@36 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@36) (store (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@36) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@36) (store (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@36) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@36) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11649) (o_3@@6 T@Ref) (f_10@@6 T@Field_16155_16156) (v@@6 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@37) (store (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@37) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@37) (store (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@37) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@37) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11649) (o_3@@7 T@Ref) (f_10@@7 T@Field_16155_6698) (v@@7 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@38) (store (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@38) o_3@@7 f_10@@7 v@@7) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@38) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@38) (store (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@38) o_3@@7 f_10@@7 v@@7) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_11649) (o_3@@8 T@Ref) (f_10@@8 T@Field_16155_1793) (v@@8 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@39) (store (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@39) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@39) (store (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@39) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@39) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_11649) (o_3@@9 T@Ref) (f_10@@9 T@Field_6695_1223) (v@@9 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@40) (store (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@40) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@40) (store (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@40) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@40) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_11649) (o_3@@10 T@Ref) (f_10@@10 T@Field_6695_15061) (v@@10 T@PolymorphicMapType_12198) ) (! (succHeap Heap@@41 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@41) (store (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@41) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@41) (store (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@41) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@41) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_11649) (o_3@@11 T@Ref) (f_10@@11 T@Field_6695_15076) (v@@11 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@42) (store (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@42) o_3@@11 f_10@@11 v@@11) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@42) (store (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@42) o_3@@11 f_10@@11 v@@11) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@42) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_11649) (o_3@@12 T@Ref) (f_10@@12 T@Field_11722_11723) (v@@12 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@43) (store (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@43) o_3@@12 f_10@@12 v@@12) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@43) (store (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@43) o_3@@12 f_10@@12 v@@12) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@43) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_11649) (o_3@@13 T@Ref) (f_10@@13 T@Field_11709_53) (v@@13 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_11649 (store (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@44) o_3@@13 f_10@@13 v@@13) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11649 (store (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@44) o_3@@13 f_10@@13 v@@13) (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6701_6702#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6617_20225#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6705_20344#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6695_1223#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6695_37457#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_6695_15076#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_15040_1793#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_15040_6698#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_15040_1223#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_15040_15076#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_16155_1793#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_16155_6698#PolymorphicMapType_11649| Heap@@44) (|PolymorphicMapType_11649_16155_1223#PolymorphicMapType_11649| Heap@@44)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_6701 (Cell x@@4)) (|Cell#sm| x@@4))
 :qid |stdinbpl.231:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_6701 (Cell x@@4)))
)))
(assert (forall ((o_3@@14 T@Ref) (f_8 T@Field_11722_11723) (Heap@@45 T@PolymorphicMapType_11649) ) (!  (=> (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@45) o_3@@14 $allocated) (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@45) (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@45) o_3@@14 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@45) o_3@@14 f_8))
)))
(assert (forall ((p@@3 T@Field_15075_15076) (v_1@@2 T@FrameType) (q T@Field_15075_15076) (w@@2 T@FrameType) (r T@Field_15075_15076) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15040_15040 p@@3 v_1@@2 q w@@2) (InsidePredicate_15040_15040 q w@@2 r u)) (InsidePredicate_15040_15040 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15040_15040 p@@3 v_1@@2 q w@@2) (InsidePredicate_15040_15040 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_15075_15076) (v_1@@3 T@FrameType) (q@@0 T@Field_15075_15076) (w@@3 T@FrameType) (r@@0 T@Field_6695_15076) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_15040_15040 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15040_11709 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_15040_11709 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15040_15040 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15040_11709 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_15075_15076) (v_1@@4 T@FrameType) (q@@1 T@Field_15075_15076) (w@@4 T@FrameType) (r@@1 T@Field_16155_16156) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_15040_15040 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15040_6701 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_15040_6701 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15040_15040 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15040_6701 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_15075_15076) (v_1@@5 T@FrameType) (q@@2 T@Field_6695_15076) (w@@5 T@FrameType) (r@@2 T@Field_15075_15076) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_15040_11709 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_11709_15040 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_15040_15040 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15040_11709 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_11709_15040 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_15075_15076) (v_1@@6 T@FrameType) (q@@3 T@Field_6695_15076) (w@@6 T@FrameType) (r@@3 T@Field_6695_15076) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_15040_11709 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_11709_11709 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_15040_11709 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15040_11709 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_11709_11709 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_15075_15076) (v_1@@7 T@FrameType) (q@@4 T@Field_6695_15076) (w@@7 T@FrameType) (r@@4 T@Field_16155_16156) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_15040_11709 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_11709_6701 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_15040_6701 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15040_11709 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_11709_6701 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_15075_15076) (v_1@@8 T@FrameType) (q@@5 T@Field_16155_16156) (w@@8 T@FrameType) (r@@5 T@Field_15075_15076) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_15040_6701 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_6701_15040 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_15040_15040 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15040_6701 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_6701_15040 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_15075_15076) (v_1@@9 T@FrameType) (q@@6 T@Field_16155_16156) (w@@9 T@FrameType) (r@@6 T@Field_6695_15076) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_15040_6701 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_6701_11709 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_15040_11709 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15040_6701 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_6701_11709 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_15075_15076) (v_1@@10 T@FrameType) (q@@7 T@Field_16155_16156) (w@@10 T@FrameType) (r@@7 T@Field_16155_16156) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_15040_6701 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_6701_6701 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_15040_6701 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15040_6701 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_6701_6701 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_6695_15076) (v_1@@11 T@FrameType) (q@@8 T@Field_15075_15076) (w@@11 T@FrameType) (r@@8 T@Field_15075_15076) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_11709_15040 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15040_15040 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_11709_15040 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11709_15040 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15040_15040 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_6695_15076) (v_1@@12 T@FrameType) (q@@9 T@Field_15075_15076) (w@@12 T@FrameType) (r@@9 T@Field_6695_15076) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_11709_15040 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15040_11709 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_11709_11709 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11709_15040 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15040_11709 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_6695_15076) (v_1@@13 T@FrameType) (q@@10 T@Field_15075_15076) (w@@13 T@FrameType) (r@@10 T@Field_16155_16156) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_11709_15040 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15040_6701 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_11709_6701 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11709_15040 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15040_6701 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_6695_15076) (v_1@@14 T@FrameType) (q@@11 T@Field_6695_15076) (w@@14 T@FrameType) (r@@11 T@Field_15075_15076) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_11709_11709 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_11709_15040 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_11709_15040 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11709_11709 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_11709_15040 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_6695_15076) (v_1@@15 T@FrameType) (q@@12 T@Field_6695_15076) (w@@15 T@FrameType) (r@@12 T@Field_6695_15076) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_11709_11709 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_11709_11709 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_11709_11709 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11709_11709 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_11709_11709 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_6695_15076) (v_1@@16 T@FrameType) (q@@13 T@Field_6695_15076) (w@@16 T@FrameType) (r@@13 T@Field_16155_16156) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_11709_11709 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_11709_6701 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_11709_6701 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11709_11709 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_11709_6701 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_6695_15076) (v_1@@17 T@FrameType) (q@@14 T@Field_16155_16156) (w@@17 T@FrameType) (r@@14 T@Field_15075_15076) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_11709_6701 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_6701_15040 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_11709_15040 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11709_6701 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_6701_15040 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_6695_15076) (v_1@@18 T@FrameType) (q@@15 T@Field_16155_16156) (w@@18 T@FrameType) (r@@15 T@Field_6695_15076) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_11709_6701 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_6701_11709 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_11709_11709 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11709_6701 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_6701_11709 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_6695_15076) (v_1@@19 T@FrameType) (q@@16 T@Field_16155_16156) (w@@19 T@FrameType) (r@@16 T@Field_16155_16156) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_11709_6701 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_6701_6701 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_11709_6701 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11709_6701 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_6701_6701 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_16155_16156) (v_1@@20 T@FrameType) (q@@17 T@Field_15075_15076) (w@@20 T@FrameType) (r@@17 T@Field_15075_15076) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_6701_15040 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15040_15040 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_6701_15040 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6701_15040 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15040_15040 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_16155_16156) (v_1@@21 T@FrameType) (q@@18 T@Field_15075_15076) (w@@21 T@FrameType) (r@@18 T@Field_6695_15076) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_6701_15040 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15040_11709 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_6701_11709 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6701_15040 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15040_11709 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_16155_16156) (v_1@@22 T@FrameType) (q@@19 T@Field_15075_15076) (w@@22 T@FrameType) (r@@19 T@Field_16155_16156) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_6701_15040 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15040_6701 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_6701_6701 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6701_15040 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15040_6701 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_16155_16156) (v_1@@23 T@FrameType) (q@@20 T@Field_6695_15076) (w@@23 T@FrameType) (r@@20 T@Field_15075_15076) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_6701_11709 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_11709_15040 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_6701_15040 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6701_11709 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_11709_15040 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_16155_16156) (v_1@@24 T@FrameType) (q@@21 T@Field_6695_15076) (w@@24 T@FrameType) (r@@21 T@Field_6695_15076) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_6701_11709 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_11709_11709 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_6701_11709 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6701_11709 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_11709_11709 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_16155_16156) (v_1@@25 T@FrameType) (q@@22 T@Field_6695_15076) (w@@25 T@FrameType) (r@@22 T@Field_16155_16156) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_6701_11709 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_11709_6701 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_6701_6701 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6701_11709 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_11709_6701 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_16155_16156) (v_1@@26 T@FrameType) (q@@23 T@Field_16155_16156) (w@@26 T@FrameType) (r@@23 T@Field_15075_15076) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_6701_6701 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_6701_15040 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_6701_15040 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6701_6701 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_6701_15040 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_16155_16156) (v_1@@27 T@FrameType) (q@@24 T@Field_16155_16156) (w@@27 T@FrameType) (r@@24 T@Field_6695_15076) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_6701_6701 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_6701_11709 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_6701_11709 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6701_6701 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_6701_11709 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_16155_16156) (v_1@@28 T@FrameType) (q@@25 T@Field_16155_16156) (w@@28 T@FrameType) (r@@25 T@Field_16155_16156) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_6701_6701 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_6701_6701 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_6701_6701 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6701_6701 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_6701_6701 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@46 () T@PolymorphicMapType_11649)
(declare-fun x@@5 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_11670)
(declare-fun Mask@1 () T@PolymorphicMapType_11670)
(declare-fun Mask@2 () T@PolymorphicMapType_11670)
(declare-fun Mask@0 () T@PolymorphicMapType_11670)
(set-info :boogie-vc-id |Cell#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (not (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@46) x@@5 b_32)) (=> (and (= Mask@3 Mask@1) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@46) x@@5 b_32) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_6697_6698 Mask@1 x@@5 f_7)) (=> (HasDirectPerm_6697_6698 Mask@1 x@@5 f_7) (=> (and (and (= Mask@2 (PolymorphicMapType_11670 (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| Mask@1) (store (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| Mask@1) null (Cell (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@46) x@@5 f_7)) (+ (select (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| Mask@1) null (Cell (select (|PolymorphicMapType_11649_6474_6475#PolymorphicMapType_11649| Heap@@46) x@@5 f_7))) FullPerm)) (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| Mask@1) (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| Mask@1))) (state Heap@@46 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 2) 1))) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@46 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_11649_6471_53#PolymorphicMapType_11649| Heap@@46) x@@5 $allocated)) (and (not (= x@@5 null)) (= Mask@0 (PolymorphicMapType_11670 (store (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| ZeroMask) x@@5 b_32 (+ (select (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| ZeroMask) x@@5 b_32) FullPerm)) (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| ZeroMask) (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| ZeroMask))))) (and (and (state Heap@@46 Mask@0) (not (= x@@5 null))) (and (= Mask@1 (PolymorphicMapType_11670 (|PolymorphicMapType_11670_6695_1793#PolymorphicMapType_11670| Mask@0) (store (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| Mask@0) x@@5 f_7 (+ (select (|PolymorphicMapType_11670_6697_6698#PolymorphicMapType_11670| Mask@0) x@@5 f_7) FullPerm)) (|PolymorphicMapType_11670_6701_6702#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6607_1223#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6695_6702#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6695_1223#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6695_51884#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6701_1793#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6701_6698#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6701_1223#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6701_52295#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6607_1793#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6607_6698#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6607_6702#PolymorphicMapType_11670| Mask@0) (|PolymorphicMapType_11670_6607_52709#PolymorphicMapType_11670| Mask@0))) (state Heap@@46 Mask@1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_6695_1793 Mask@1 x@@5 b_32)) (=> (HasDirectPerm_6695_1793 Mask@1 x@@5 b_32) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
