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
(declare-sort T@Field_5086_53 0)
(declare-sort T@Field_5099_5100 0)
(declare-sort T@Field_8669_8670 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9572_9573 0)
(declare-sort T@Field_10475_10476 0)
(declare-sort T@Field_5086_8670 0)
(declare-sort T@Field_5086_11139 0)
(declare-sort T@Field_8669_53 0)
(declare-sort T@Field_8669_5100 0)
(declare-sort T@Field_11134_11139 0)
(declare-sort T@Field_9572_53 0)
(declare-sort T@Field_9572_5100 0)
(declare-sort T@Field_12027_12032 0)
(declare-sort T@Field_10475_53 0)
(declare-sort T@Field_10475_5100 0)
(declare-sort T@Field_12920_12925 0)
(declare-datatypes ((T@PolymorphicMapType_5047 0)) (((PolymorphicMapType_5047 (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| (Array T@Ref T@Field_8669_8670 Real)) (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| (Array T@Ref T@Field_9572_9573 Real)) (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| (Array T@Ref T@Field_10475_10476 Real)) (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| (Array T@Ref T@Field_8669_53 Real)) (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| (Array T@Ref T@Field_8669_5100 Real)) (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| (Array T@Ref T@Field_11134_11139 Real)) (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| (Array T@Ref T@Field_9572_53 Real)) (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| (Array T@Ref T@Field_9572_5100 Real)) (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| (Array T@Ref T@Field_12027_12032 Real)) (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| (Array T@Ref T@Field_10475_53 Real)) (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| (Array T@Ref T@Field_10475_5100 Real)) (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| (Array T@Ref T@Field_12920_12925 Real)) (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| (Array T@Ref T@Field_5086_8670 Real)) (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| (Array T@Ref T@Field_5086_53 Real)) (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| (Array T@Ref T@Field_5099_5100 Real)) (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| (Array T@Ref T@Field_5086_11139 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5575 0)) (((PolymorphicMapType_5575 (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (Array T@Ref T@Field_5086_53 Bool)) (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (Array T@Ref T@Field_5099_5100 Bool)) (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (Array T@Ref T@Field_5086_8670 Bool)) (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (Array T@Ref T@Field_5086_11139 Bool)) (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (Array T@Ref T@Field_8669_53 Bool)) (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (Array T@Ref T@Field_8669_5100 Bool)) (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (Array T@Ref T@Field_8669_8670 Bool)) (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (Array T@Ref T@Field_11134_11139 Bool)) (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (Array T@Ref T@Field_9572_53 Bool)) (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (Array T@Ref T@Field_9572_5100 Bool)) (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (Array T@Ref T@Field_9572_9573 Bool)) (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (Array T@Ref T@Field_12027_12032 Bool)) (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (Array T@Ref T@Field_10475_53 Bool)) (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (Array T@Ref T@Field_10475_5100 Bool)) (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (Array T@Ref T@Field_10475_10476 Bool)) (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (Array T@Ref T@Field_12920_12925 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5026 0)) (((PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| (Array T@Ref T@Field_5086_53 Bool)) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| (Array T@Ref T@Field_5099_5100 T@Ref)) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| (Array T@Ref T@Field_8669_8670 T@FrameType)) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| (Array T@Ref T@Field_9572_9573 T@FrameType)) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| (Array T@Ref T@Field_10475_10476 T@FrameType)) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| (Array T@Ref T@Field_5086_8670 T@FrameType)) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| (Array T@Ref T@Field_5086_11139 T@PolymorphicMapType_5575)) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| (Array T@Ref T@Field_8669_53 Bool)) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| (Array T@Ref T@Field_8669_5100 T@Ref)) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| (Array T@Ref T@Field_11134_11139 T@PolymorphicMapType_5575)) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| (Array T@Ref T@Field_9572_53 Bool)) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| (Array T@Ref T@Field_9572_5100 T@Ref)) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| (Array T@Ref T@Field_12027_12032 T@PolymorphicMapType_5575)) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| (Array T@Ref T@Field_10475_53 Bool)) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| (Array T@Ref T@Field_10475_5100 T@Ref)) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| (Array T@Ref T@Field_12920_12925 T@PolymorphicMapType_5575)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_5026 T@PolymorphicMapType_5026) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5026 T@PolymorphicMapType_5026) Bool)
(declare-fun state (T@PolymorphicMapType_5026 T@PolymorphicMapType_5047) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5047) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5575)
(declare-fun p_2 (T@Ref) T@Field_8669_8670)
(declare-fun IsPredicateField_2898_2899 (T@Field_8669_8670) Bool)
(declare-fun p1 (T@Ref) T@Field_9572_9573)
(declare-fun IsPredicateField_2923_2924 (T@Field_9572_9573) Bool)
(declare-fun p2 (T@Ref) T@Field_10475_10476)
(declare-fun IsPredicateField_2948_2949 (T@Field_10475_10476) Bool)
(declare-fun |fun'| (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun dummyFunction_1372 (Bool) Bool)
(declare-fun |fun#triggerStateless| (T@Ref) Bool)
(declare-fun |fun1'| (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun |fun1#triggerStateless| (T@Ref) Bool)
(declare-fun |fun2'| (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun |fun2#triggerStateless| (T@Ref) Bool)
(declare-fun |p#trigger_2898| (T@PolymorphicMapType_5026 T@Field_8669_8670) Bool)
(declare-fun |p#everUsed_2898| (T@Field_8669_8670) Bool)
(declare-fun |p1#trigger_2923| (T@PolymorphicMapType_5026 T@Field_9572_9573) Bool)
(declare-fun |p1#everUsed_2923| (T@Field_9572_9573) Bool)
(declare-fun |p2#trigger_2948| (T@PolymorphicMapType_5026 T@Field_10475_10476) Bool)
(declare-fun |p2#everUsed_2948| (T@Field_10475_10476) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5026 T@PolymorphicMapType_5026 T@PolymorphicMapType_5047) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2948 (T@Field_10475_10476) T@Field_12920_12925)
(declare-fun HasDirectPerm_10475_8670 (T@PolymorphicMapType_5047 T@Ref T@Field_10475_10476) Bool)
(declare-fun PredicateMaskField_2923 (T@Field_9572_9573) T@Field_12027_12032)
(declare-fun HasDirectPerm_9572_8670 (T@PolymorphicMapType_5047 T@Ref T@Field_9572_9573) Bool)
(declare-fun PredicateMaskField_2898 (T@Field_8669_8670) T@Field_11134_11139)
(declare-fun HasDirectPerm_8669_8670 (T@PolymorphicMapType_5047 T@Ref T@Field_8669_8670) Bool)
(declare-fun IsPredicateField_5086_17655 (T@Field_5086_8670) Bool)
(declare-fun PredicateMaskField_5086 (T@Field_5086_8670) T@Field_5086_11139)
(declare-fun HasDirectPerm_5086_8670 (T@PolymorphicMapType_5047 T@Ref T@Field_5086_8670) Bool)
(declare-fun IsWandField_10475_24582 (T@Field_10475_10476) Bool)
(declare-fun WandMaskField_10475 (T@Field_10475_10476) T@Field_12920_12925)
(declare-fun IsWandField_9572_24225 (T@Field_9572_9573) Bool)
(declare-fun WandMaskField_9572 (T@Field_9572_9573) T@Field_12027_12032)
(declare-fun IsWandField_8669_23868 (T@Field_8669_8670) Bool)
(declare-fun WandMaskField_8669 (T@Field_8669_8670) T@Field_11134_11139)
(declare-fun IsWandField_5086_23511 (T@Field_5086_8670) Bool)
(declare-fun WandMaskField_5086 (T@Field_5086_8670) T@Field_5086_11139)
(declare-fun fun (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun fun2 (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun fun1 (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun |p#sm| (T@Ref) T@Field_11134_11139)
(declare-fun |p1#sm| (T@Ref) T@Field_12027_12032)
(declare-fun |p2#sm| (T@Ref) T@Field_12920_12925)
(declare-fun dummyHeap () T@PolymorphicMapType_5026)
(declare-fun ZeroMask () T@PolymorphicMapType_5047)
(declare-fun $allocated () T@Field_5086_53)
(declare-fun InsidePredicate_10475_10475 (T@Field_10475_10476 T@FrameType T@Field_10475_10476 T@FrameType) Bool)
(declare-fun InsidePredicate_9572_9572 (T@Field_9572_9573 T@FrameType T@Field_9572_9573 T@FrameType) Bool)
(declare-fun InsidePredicate_8669_8669 (T@Field_8669_8670 T@FrameType T@Field_8669_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_5086_5086 (T@Field_5086_8670 T@FrameType T@Field_5086_8670 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5086_35876 (T@Field_5086_11139) Bool)
(declare-fun IsWandField_5086_35892 (T@Field_5086_11139) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5086_5100 (T@Field_5099_5100) Bool)
(declare-fun IsWandField_5086_5100 (T@Field_5099_5100) Bool)
(declare-fun IsPredicateField_5086_53 (T@Field_5086_53) Bool)
(declare-fun IsWandField_5086_53 (T@Field_5086_53) Bool)
(declare-fun IsPredicateField_2948_35213 (T@Field_12920_12925) Bool)
(declare-fun IsWandField_2948_35229 (T@Field_12920_12925) Bool)
(declare-fun IsPredicateField_2948_5100 (T@Field_10475_5100) Bool)
(declare-fun IsWandField_2948_5100 (T@Field_10475_5100) Bool)
(declare-fun IsPredicateField_2948_53 (T@Field_10475_53) Bool)
(declare-fun IsWandField_2948_53 (T@Field_10475_53) Bool)
(declare-fun IsPredicateField_2923_34550 (T@Field_12027_12032) Bool)
(declare-fun IsWandField_2923_34566 (T@Field_12027_12032) Bool)
(declare-fun IsPredicateField_2923_5100 (T@Field_9572_5100) Bool)
(declare-fun IsWandField_2923_5100 (T@Field_9572_5100) Bool)
(declare-fun IsPredicateField_2923_53 (T@Field_9572_53) Bool)
(declare-fun IsWandField_2923_53 (T@Field_9572_53) Bool)
(declare-fun IsPredicateField_2898_33887 (T@Field_11134_11139) Bool)
(declare-fun IsWandField_2898_33903 (T@Field_11134_11139) Bool)
(declare-fun IsPredicateField_2898_5100 (T@Field_8669_5100) Bool)
(declare-fun IsWandField_2898_5100 (T@Field_8669_5100) Bool)
(declare-fun IsPredicateField_2898_53 (T@Field_8669_53) Bool)
(declare-fun IsWandField_2898_53 (T@Field_8669_53) Bool)
(declare-fun HasDirectPerm_10475_17367 (T@PolymorphicMapType_5047 T@Ref T@Field_12920_12925) Bool)
(declare-fun HasDirectPerm_10475_5100 (T@PolymorphicMapType_5047 T@Ref T@Field_10475_5100) Bool)
(declare-fun HasDirectPerm_10475_53 (T@PolymorphicMapType_5047 T@Ref T@Field_10475_53) Bool)
(declare-fun HasDirectPerm_9572_16427 (T@PolymorphicMapType_5047 T@Ref T@Field_12027_12032) Bool)
(declare-fun HasDirectPerm_9572_5100 (T@PolymorphicMapType_5047 T@Ref T@Field_9572_5100) Bool)
(declare-fun HasDirectPerm_9572_53 (T@PolymorphicMapType_5047 T@Ref T@Field_9572_53) Bool)
(declare-fun HasDirectPerm_8669_15487 (T@PolymorphicMapType_5047 T@Ref T@Field_11134_11139) Bool)
(declare-fun HasDirectPerm_8669_5100 (T@PolymorphicMapType_5047 T@Ref T@Field_8669_5100) Bool)
(declare-fun HasDirectPerm_8669_53 (T@PolymorphicMapType_5047 T@Ref T@Field_8669_53) Bool)
(declare-fun HasDirectPerm_5086_14547 (T@PolymorphicMapType_5047 T@Ref T@Field_5086_11139) Bool)
(declare-fun HasDirectPerm_5086_5100 (T@PolymorphicMapType_5047 T@Ref T@Field_5099_5100) Bool)
(declare-fun HasDirectPerm_5086_53 (T@PolymorphicMapType_5047 T@Ref T@Field_5086_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5047 T@PolymorphicMapType_5047 T@PolymorphicMapType_5047) Bool)
(declare-fun |fun#frame| (T@FrameType T@Ref) Bool)
(declare-fun |fun1#frame| (T@FrameType T@Ref) Bool)
(declare-fun |fun2#frame| (T@FrameType T@Ref) Bool)
(declare-fun getPredWandId_2898_2899 (T@Field_8669_8670) Int)
(declare-fun getPredWandId_2923_2924 (T@Field_9572_9573) Int)
(declare-fun getPredWandId_2948_2949 (T@Field_10475_10476) Int)
(declare-fun InsidePredicate_10475_9572 (T@Field_10475_10476 T@FrameType T@Field_9572_9573 T@FrameType) Bool)
(declare-fun InsidePredicate_10475_8669 (T@Field_10475_10476 T@FrameType T@Field_8669_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_10475_5086 (T@Field_10475_10476 T@FrameType T@Field_5086_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_9572_10475 (T@Field_9572_9573 T@FrameType T@Field_10475_10476 T@FrameType) Bool)
(declare-fun InsidePredicate_9572_8669 (T@Field_9572_9573 T@FrameType T@Field_8669_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_9572_5086 (T@Field_9572_9573 T@FrameType T@Field_5086_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_8669_10475 (T@Field_8669_8670 T@FrameType T@Field_10475_10476 T@FrameType) Bool)
(declare-fun InsidePredicate_8669_9572 (T@Field_8669_8670 T@FrameType T@Field_9572_9573 T@FrameType) Bool)
(declare-fun InsidePredicate_8669_5086 (T@Field_8669_8670 T@FrameType T@Field_5086_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_5086_10475 (T@Field_5086_8670 T@FrameType T@Field_10475_10476 T@FrameType) Bool)
(declare-fun InsidePredicate_5086_9572 (T@Field_5086_8670 T@FrameType T@Field_9572_9573 T@FrameType) Bool)
(declare-fun InsidePredicate_5086_8669 (T@Field_5086_8670 T@FrameType T@Field_8669_8670 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5026) (Heap1 T@PolymorphicMapType_5026) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5026) (Mask T@PolymorphicMapType_5047) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5026) (Heap1@@0 T@PolymorphicMapType_5026) (Heap2 T@PolymorphicMapType_5026) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12920_12925) ) (!  (not (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10475_10476) ) (!  (not (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10475_5100) ) (!  (not (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10475_53) ) (!  (not (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12027_12032) ) (!  (not (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9572_9573) ) (!  (not (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9572_5100) ) (!  (not (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9572_53) ) (!  (not (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11134_11139) ) (!  (not (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8669_8670) ) (!  (not (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8669_5100) ) (!  (not (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8669_53) ) (!  (not (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5086_11139) ) (!  (not (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5086_8670) ) (!  (not (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5099_5100) ) (!  (not (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5086_53) ) (!  (not (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_2898_2899 (p_2 this))
 :qid |stdinbpl.366:15|
 :skolemid |35|
 :pattern ( (p_2 this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_2923_2924 (p1 this@@0))
 :qid |stdinbpl.420:15|
 :skolemid |41|
 :pattern ( (p1 this@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_2948_2949 (p2 this@@1))
 :qid |stdinbpl.474:15|
 :skolemid |47|
 :pattern ( (p2 this@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5026) (this@@2 T@Ref) ) (! (dummyFunction_1372 (|fun#triggerStateless| this@@2))
 :qid |stdinbpl.192:15|
 :skolemid |23|
 :pattern ( (|fun'| Heap@@0 this@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5026) (this@@3 T@Ref) ) (! (dummyFunction_1372 (|fun1#triggerStateless| this@@3))
 :qid |stdinbpl.250:15|
 :skolemid |27|
 :pattern ( (|fun1'| Heap@@1 this@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5026) (this@@4 T@Ref) ) (! (dummyFunction_1372 (|fun2#triggerStateless| this@@4))
 :qid |stdinbpl.308:15|
 :skolemid |31|
 :pattern ( (|fun2'| Heap@@2 this@@4))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5026) (this@@5 T@Ref) ) (! (|p#everUsed_2898| (p_2 this@@5))
 :qid |stdinbpl.385:15|
 :skolemid |39|
 :pattern ( (|p#trigger_2898| Heap@@3 (p_2 this@@5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5026) (this@@6 T@Ref) ) (! (|p1#everUsed_2923| (p1 this@@6))
 :qid |stdinbpl.439:15|
 :skolemid |45|
 :pattern ( (|p1#trigger_2923| Heap@@4 (p1 this@@6)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5026) (this@@7 T@Ref) ) (! (|p2#everUsed_2948| (p2 this@@7))
 :qid |stdinbpl.493:15|
 :skolemid |51|
 :pattern ( (|p2#trigger_2948| Heap@@5 (p2 this@@7)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5026) (ExhaleHeap T@PolymorphicMapType_5026) (Mask@@0 T@PolymorphicMapType_5047) (pm_f T@Field_10475_10476) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10475_8670 Mask@@0 null pm_f) (IsPredicateField_2948_2949 pm_f)) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@6) null (PredicateMaskField_2948 pm_f)) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap) null (PredicateMaskField_2948 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_2948_2949 pm_f) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap) null (PredicateMaskField_2948 pm_f)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5026) (ExhaleHeap@@0 T@PolymorphicMapType_5026) (Mask@@1 T@PolymorphicMapType_5047) (pm_f@@0 T@Field_9572_9573) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9572_8670 Mask@@1 null pm_f@@0) (IsPredicateField_2923_2924 pm_f@@0)) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@7) null (PredicateMaskField_2923 pm_f@@0)) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@0) null (PredicateMaskField_2923 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2923_2924 pm_f@@0) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@0) null (PredicateMaskField_2923 pm_f@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5026) (ExhaleHeap@@1 T@PolymorphicMapType_5026) (Mask@@2 T@PolymorphicMapType_5047) (pm_f@@1 T@Field_8669_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8669_8670 Mask@@2 null pm_f@@1) (IsPredicateField_2898_2899 pm_f@@1)) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@8) null (PredicateMaskField_2898 pm_f@@1)) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@1) null (PredicateMaskField_2898 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (IsPredicateField_2898_2899 pm_f@@1) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@1) null (PredicateMaskField_2898 pm_f@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5026) (ExhaleHeap@@2 T@PolymorphicMapType_5026) (Mask@@3 T@PolymorphicMapType_5047) (pm_f@@2 T@Field_5086_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5086_8670 Mask@@3 null pm_f@@2) (IsPredicateField_5086_17655 pm_f@@2)) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@9) null (PredicateMaskField_5086 pm_f@@2)) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@2) null (PredicateMaskField_5086 pm_f@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (IsPredicateField_5086_17655 pm_f@@2) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@2) null (PredicateMaskField_5086 pm_f@@2)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5026) (ExhaleHeap@@3 T@PolymorphicMapType_5026) (Mask@@4 T@PolymorphicMapType_5047) (pm_f@@3 T@Field_10475_10476) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10475_8670 Mask@@4 null pm_f@@3) (IsWandField_10475_24582 pm_f@@3)) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@10) null (WandMaskField_10475 pm_f@@3)) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@3) null (WandMaskField_10475 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (IsWandField_10475_24582 pm_f@@3) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@3) null (WandMaskField_10475 pm_f@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5026) (ExhaleHeap@@4 T@PolymorphicMapType_5026) (Mask@@5 T@PolymorphicMapType_5047) (pm_f@@4 T@Field_9572_9573) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_9572_8670 Mask@@5 null pm_f@@4) (IsWandField_9572_24225 pm_f@@4)) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@11) null (WandMaskField_9572 pm_f@@4)) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@4) null (WandMaskField_9572 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (IsWandField_9572_24225 pm_f@@4) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@4) null (WandMaskField_9572 pm_f@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5026) (ExhaleHeap@@5 T@PolymorphicMapType_5026) (Mask@@6 T@PolymorphicMapType_5047) (pm_f@@5 T@Field_8669_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8669_8670 Mask@@6 null pm_f@@5) (IsWandField_8669_23868 pm_f@@5)) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@12) null (WandMaskField_8669 pm_f@@5)) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@5) null (WandMaskField_8669 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (IsWandField_8669_23868 pm_f@@5) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@5) null (WandMaskField_8669 pm_f@@5)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5026) (ExhaleHeap@@6 T@PolymorphicMapType_5026) (Mask@@7 T@PolymorphicMapType_5047) (pm_f@@6 T@Field_5086_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5086_8670 Mask@@7 null pm_f@@6) (IsWandField_5086_23511 pm_f@@6)) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@13) null (WandMaskField_5086 pm_f@@6)) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@6) null (WandMaskField_5086 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (IsWandField_5086_23511 pm_f@@6) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@6) null (WandMaskField_5086 pm_f@@6)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5026) (Mask@@8 T@PolymorphicMapType_5047) (this@@8 T@Ref) ) (!  (=> (and (state Heap@@14 Mask@@8) (< AssumeFunctionsAbove 0)) (fun Heap@@14 this@@8))
 :qid |stdinbpl.198:15|
 :skolemid |24|
 :pattern ( (state Heap@@14 Mask@@8) (fun Heap@@14 this@@8))
 :pattern ( (state Heap@@14 Mask@@8) (|fun#triggerStateless| this@@8) (|p#trigger_2898| Heap@@14 (p_2 this@@8)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5026) (Mask@@9 T@PolymorphicMapType_5047) (this@@9 T@Ref) ) (!  (=> (and (state Heap@@15 Mask@@9) (< AssumeFunctionsAbove 1)) (fun2 Heap@@15 this@@9))
 :qid |stdinbpl.314:15|
 :skolemid |32|
 :pattern ( (state Heap@@15 Mask@@9) (fun2 Heap@@15 this@@9))
 :pattern ( (state Heap@@15 Mask@@9) (|fun2#triggerStateless| this@@9) (|p2#trigger_2948| Heap@@15 (p2 this@@9)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5026) (Mask@@10 T@PolymorphicMapType_5047) (this@@10 T@Ref) ) (!  (=> (and (state Heap@@16 Mask@@10) (< AssumeFunctionsAbove 2)) (fun1 Heap@@16 this@@10))
 :qid |stdinbpl.256:15|
 :skolemid |28|
 :pattern ( (state Heap@@16 Mask@@10) (fun1 Heap@@16 this@@10))
 :pattern ( (state Heap@@16 Mask@@10) (|fun1#triggerStateless| this@@10) (|p1#trigger_2923| Heap@@16 (p1 this@@10)))
)))
(assert (forall ((this@@11 T@Ref) (this2 T@Ref) ) (!  (=> (= (p_2 this@@11) (p_2 this2)) (= this@@11 this2))
 :qid |stdinbpl.376:15|
 :skolemid |37|
 :pattern ( (p_2 this@@11) (p_2 this2))
)))
(assert (forall ((this@@12 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|p#sm| this@@12) (|p#sm| this2@@0)) (= this@@12 this2@@0))
 :qid |stdinbpl.380:15|
 :skolemid |38|
 :pattern ( (|p#sm| this@@12) (|p#sm| this2@@0))
)))
(assert (forall ((this@@13 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (p1 this@@13) (p1 this2@@1)) (= this@@13 this2@@1))
 :qid |stdinbpl.430:15|
 :skolemid |43|
 :pattern ( (p1 this@@13) (p1 this2@@1))
)))
(assert (forall ((this@@14 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|p1#sm| this@@14) (|p1#sm| this2@@2)) (= this@@14 this2@@2))
 :qid |stdinbpl.434:15|
 :skolemid |44|
 :pattern ( (|p1#sm| this@@14) (|p1#sm| this2@@2))
)))
(assert (forall ((this@@15 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (p2 this@@15) (p2 this2@@3)) (= this@@15 this2@@3))
 :qid |stdinbpl.484:15|
 :skolemid |49|
 :pattern ( (p2 this@@15) (p2 this2@@3))
)))
(assert (forall ((this@@16 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|p2#sm| this@@16) (|p2#sm| this2@@4)) (= this@@16 this2@@4))
 :qid |stdinbpl.488:15|
 :skolemid |50|
 :pattern ( (|p2#sm| this@@16) (|p2#sm| this2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5026) (ExhaleHeap@@7 T@PolymorphicMapType_5026) (Mask@@11 T@PolymorphicMapType_5047) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@11) (=> (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@17) o_1 $allocated) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@11) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_10475_10476) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10475_10475 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10475_10475 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9572_9573) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9572_9572 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9572_9572 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_8669_8670) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_8669_8669 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8669_8669 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_5086_8670) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_5086_5086 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5086_5086 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5026) (ExhaleHeap@@8 T@PolymorphicMapType_5026) (Mask@@12 T@PolymorphicMapType_5047) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@12) (succHeap Heap@@18 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5047) (o_2@@15 T@Ref) (f_4@@15 T@Field_5086_11139) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| Mask@@13) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5086_35876 f_4@@15))) (not (IsWandField_5086_35892 f_4@@15))) (<= (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| Mask@@13) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| Mask@@13) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5047) (o_2@@16 T@Ref) (f_4@@16 T@Field_5099_5100) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| Mask@@14) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5086_5100 f_4@@16))) (not (IsWandField_5086_5100 f_4@@16))) (<= (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| Mask@@14) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| Mask@@14) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5047) (o_2@@17 T@Ref) (f_4@@17 T@Field_5086_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| Mask@@15) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5086_53 f_4@@17))) (not (IsWandField_5086_53 f_4@@17))) (<= (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| Mask@@15) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| Mask@@15) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5047) (o_2@@18 T@Ref) (f_4@@18 T@Field_5086_8670) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| Mask@@16) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5086_17655 f_4@@18))) (not (IsWandField_5086_23511 f_4@@18))) (<= (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| Mask@@16) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| Mask@@16) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5047) (o_2@@19 T@Ref) (f_4@@19 T@Field_12920_12925) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| Mask@@17) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2948_35213 f_4@@19))) (not (IsWandField_2948_35229 f_4@@19))) (<= (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| Mask@@17) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| Mask@@17) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5047) (o_2@@20 T@Ref) (f_4@@20 T@Field_10475_5100) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| Mask@@18) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2948_5100 f_4@@20))) (not (IsWandField_2948_5100 f_4@@20))) (<= (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| Mask@@18) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| Mask@@18) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5047) (o_2@@21 T@Ref) (f_4@@21 T@Field_10475_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| Mask@@19) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2948_53 f_4@@21))) (not (IsWandField_2948_53 f_4@@21))) (<= (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| Mask@@19) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| Mask@@19) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5047) (o_2@@22 T@Ref) (f_4@@22 T@Field_10475_10476) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| Mask@@20) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2948_2949 f_4@@22))) (not (IsWandField_10475_24582 f_4@@22))) (<= (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| Mask@@20) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| Mask@@20) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5047) (o_2@@23 T@Ref) (f_4@@23 T@Field_12027_12032) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| Mask@@21) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_2923_34550 f_4@@23))) (not (IsWandField_2923_34566 f_4@@23))) (<= (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| Mask@@21) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| Mask@@21) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5047) (o_2@@24 T@Ref) (f_4@@24 T@Field_9572_5100) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| Mask@@22) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_2923_5100 f_4@@24))) (not (IsWandField_2923_5100 f_4@@24))) (<= (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| Mask@@22) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| Mask@@22) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5047) (o_2@@25 T@Ref) (f_4@@25 T@Field_9572_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| Mask@@23) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_2923_53 f_4@@25))) (not (IsWandField_2923_53 f_4@@25))) (<= (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| Mask@@23) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| Mask@@23) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5047) (o_2@@26 T@Ref) (f_4@@26 T@Field_9572_9573) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| Mask@@24) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_2923_2924 f_4@@26))) (not (IsWandField_9572_24225 f_4@@26))) (<= (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| Mask@@24) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| Mask@@24) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5047) (o_2@@27 T@Ref) (f_4@@27 T@Field_11134_11139) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| Mask@@25) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_2898_33887 f_4@@27))) (not (IsWandField_2898_33903 f_4@@27))) (<= (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| Mask@@25) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| Mask@@25) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5047) (o_2@@28 T@Ref) (f_4@@28 T@Field_8669_5100) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| Mask@@26) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_2898_5100 f_4@@28))) (not (IsWandField_2898_5100 f_4@@28))) (<= (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| Mask@@26) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| Mask@@26) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_5047) (o_2@@29 T@Ref) (f_4@@29 T@Field_8669_53) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| Mask@@27) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_2898_53 f_4@@29))) (not (IsWandField_2898_53 f_4@@29))) (<= (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| Mask@@27) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| Mask@@27) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_5047) (o_2@@30 T@Ref) (f_4@@30 T@Field_8669_8670) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| Mask@@28) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_2898_2899 f_4@@30))) (not (IsWandField_8669_23868 f_4@@30))) (<= (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| Mask@@28) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| Mask@@28) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_5047) (o_2@@31 T@Ref) (f_4@@31 T@Field_12920_12925) ) (! (= (HasDirectPerm_10475_17367 Mask@@29 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| Mask@@29) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10475_17367 Mask@@29 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_5047) (o_2@@32 T@Ref) (f_4@@32 T@Field_10475_10476) ) (! (= (HasDirectPerm_10475_8670 Mask@@30 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| Mask@@30) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10475_8670 Mask@@30 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_5047) (o_2@@33 T@Ref) (f_4@@33 T@Field_10475_5100) ) (! (= (HasDirectPerm_10475_5100 Mask@@31 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| Mask@@31) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10475_5100 Mask@@31 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_5047) (o_2@@34 T@Ref) (f_4@@34 T@Field_10475_53) ) (! (= (HasDirectPerm_10475_53 Mask@@32 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| Mask@@32) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10475_53 Mask@@32 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_5047) (o_2@@35 T@Ref) (f_4@@35 T@Field_12027_12032) ) (! (= (HasDirectPerm_9572_16427 Mask@@33 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| Mask@@33) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9572_16427 Mask@@33 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_5047) (o_2@@36 T@Ref) (f_4@@36 T@Field_9572_9573) ) (! (= (HasDirectPerm_9572_8670 Mask@@34 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| Mask@@34) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9572_8670 Mask@@34 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_5047) (o_2@@37 T@Ref) (f_4@@37 T@Field_9572_5100) ) (! (= (HasDirectPerm_9572_5100 Mask@@35 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| Mask@@35) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9572_5100 Mask@@35 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_5047) (o_2@@38 T@Ref) (f_4@@38 T@Field_9572_53) ) (! (= (HasDirectPerm_9572_53 Mask@@36 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| Mask@@36) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9572_53 Mask@@36 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_5047) (o_2@@39 T@Ref) (f_4@@39 T@Field_11134_11139) ) (! (= (HasDirectPerm_8669_15487 Mask@@37 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| Mask@@37) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8669_15487 Mask@@37 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_5047) (o_2@@40 T@Ref) (f_4@@40 T@Field_8669_8670) ) (! (= (HasDirectPerm_8669_8670 Mask@@38 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| Mask@@38) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8669_8670 Mask@@38 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_5047) (o_2@@41 T@Ref) (f_4@@41 T@Field_8669_5100) ) (! (= (HasDirectPerm_8669_5100 Mask@@39 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| Mask@@39) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8669_5100 Mask@@39 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_5047) (o_2@@42 T@Ref) (f_4@@42 T@Field_8669_53) ) (! (= (HasDirectPerm_8669_53 Mask@@40 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| Mask@@40) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8669_53 Mask@@40 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_5047) (o_2@@43 T@Ref) (f_4@@43 T@Field_5086_11139) ) (! (= (HasDirectPerm_5086_14547 Mask@@41 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| Mask@@41) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5086_14547 Mask@@41 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_5047) (o_2@@44 T@Ref) (f_4@@44 T@Field_5086_8670) ) (! (= (HasDirectPerm_5086_8670 Mask@@42 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| Mask@@42) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5086_8670 Mask@@42 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_5047) (o_2@@45 T@Ref) (f_4@@45 T@Field_5099_5100) ) (! (= (HasDirectPerm_5086_5100 Mask@@43 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| Mask@@43) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5086_5100 Mask@@43 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_5047) (o_2@@46 T@Ref) (f_4@@46 T@Field_5086_53) ) (! (= (HasDirectPerm_5086_53 Mask@@44 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| Mask@@44) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5086_53 Mask@@44 o_2@@46 f_4@@46))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5026) (ExhaleHeap@@9 T@PolymorphicMapType_5026) (Mask@@45 T@PolymorphicMapType_5047) (o_1@@0 T@Ref) (f_2 T@Field_12920_12925) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@45) (=> (HasDirectPerm_10475_17367 Mask@@45 o_1@@0 f_2) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@19) o_1@@0 f_2) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@9) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@45) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@9) o_1@@0 f_2))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5026) (ExhaleHeap@@10 T@PolymorphicMapType_5026) (Mask@@46 T@PolymorphicMapType_5047) (o_1@@1 T@Ref) (f_2@@0 T@Field_10475_10476) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@46) (=> (HasDirectPerm_10475_8670 Mask@@46 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@20) o_1@@1 f_2@@0) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@10) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@46) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@10) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5026) (ExhaleHeap@@11 T@PolymorphicMapType_5026) (Mask@@47 T@PolymorphicMapType_5047) (o_1@@2 T@Ref) (f_2@@1 T@Field_10475_5100) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@47) (=> (HasDirectPerm_10475_5100 Mask@@47 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@21) o_1@@2 f_2@@1) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@11) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@47) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@11) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5026) (ExhaleHeap@@12 T@PolymorphicMapType_5026) (Mask@@48 T@PolymorphicMapType_5047) (o_1@@3 T@Ref) (f_2@@2 T@Field_10475_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@48) (=> (HasDirectPerm_10475_53 Mask@@48 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@22) o_1@@3 f_2@@2) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@12) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@48) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@12) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5026) (ExhaleHeap@@13 T@PolymorphicMapType_5026) (Mask@@49 T@PolymorphicMapType_5047) (o_1@@4 T@Ref) (f_2@@3 T@Field_12027_12032) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@49) (=> (HasDirectPerm_9572_16427 Mask@@49 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@23) o_1@@4 f_2@@3) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@13) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@49) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@13) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5026) (ExhaleHeap@@14 T@PolymorphicMapType_5026) (Mask@@50 T@PolymorphicMapType_5047) (o_1@@5 T@Ref) (f_2@@4 T@Field_9572_9573) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@50) (=> (HasDirectPerm_9572_8670 Mask@@50 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@24) o_1@@5 f_2@@4) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@14) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@50) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@14) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5026) (ExhaleHeap@@15 T@PolymorphicMapType_5026) (Mask@@51 T@PolymorphicMapType_5047) (o_1@@6 T@Ref) (f_2@@5 T@Field_9572_5100) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@51) (=> (HasDirectPerm_9572_5100 Mask@@51 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@25) o_1@@6 f_2@@5) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@15) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@51) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@15) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5026) (ExhaleHeap@@16 T@PolymorphicMapType_5026) (Mask@@52 T@PolymorphicMapType_5047) (o_1@@7 T@Ref) (f_2@@6 T@Field_9572_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@52) (=> (HasDirectPerm_9572_53 Mask@@52 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@26) o_1@@7 f_2@@6) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@16) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@52) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@16) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5026) (ExhaleHeap@@17 T@PolymorphicMapType_5026) (Mask@@53 T@PolymorphicMapType_5047) (o_1@@8 T@Ref) (f_2@@7 T@Field_11134_11139) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@53) (=> (HasDirectPerm_8669_15487 Mask@@53 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@27) o_1@@8 f_2@@7) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@17) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@53) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@17) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5026) (ExhaleHeap@@18 T@PolymorphicMapType_5026) (Mask@@54 T@PolymorphicMapType_5047) (o_1@@9 T@Ref) (f_2@@8 T@Field_8669_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@54) (=> (HasDirectPerm_8669_8670 Mask@@54 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@28) o_1@@9 f_2@@8) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@18) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@54) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@18) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5026) (ExhaleHeap@@19 T@PolymorphicMapType_5026) (Mask@@55 T@PolymorphicMapType_5047) (o_1@@10 T@Ref) (f_2@@9 T@Field_8669_5100) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@55) (=> (HasDirectPerm_8669_5100 Mask@@55 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@29) o_1@@10 f_2@@9) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@19) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@55) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@19) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5026) (ExhaleHeap@@20 T@PolymorphicMapType_5026) (Mask@@56 T@PolymorphicMapType_5047) (o_1@@11 T@Ref) (f_2@@10 T@Field_8669_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@56) (=> (HasDirectPerm_8669_53 Mask@@56 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@30) o_1@@11 f_2@@10) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@20) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@56) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@20) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5026) (ExhaleHeap@@21 T@PolymorphicMapType_5026) (Mask@@57 T@PolymorphicMapType_5047) (o_1@@12 T@Ref) (f_2@@11 T@Field_5086_11139) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@57) (=> (HasDirectPerm_5086_14547 Mask@@57 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@31) o_1@@12 f_2@@11) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@21) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@57) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@21) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5026) (ExhaleHeap@@22 T@PolymorphicMapType_5026) (Mask@@58 T@PolymorphicMapType_5047) (o_1@@13 T@Ref) (f_2@@12 T@Field_5086_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@58) (=> (HasDirectPerm_5086_8670 Mask@@58 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@32) o_1@@13 f_2@@12) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@22) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@58) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@22) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5026) (ExhaleHeap@@23 T@PolymorphicMapType_5026) (Mask@@59 T@PolymorphicMapType_5047) (o_1@@14 T@Ref) (f_2@@13 T@Field_5099_5100) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@59) (=> (HasDirectPerm_5086_5100 Mask@@59 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@33) o_1@@14 f_2@@13) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@23) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@59) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@23) o_1@@14 f_2@@13))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5026) (ExhaleHeap@@24 T@PolymorphicMapType_5026) (Mask@@60 T@PolymorphicMapType_5047) (o_1@@15 T@Ref) (f_2@@14 T@Field_5086_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@60) (=> (HasDirectPerm_5086_53 Mask@@60 o_1@@15 f_2@@14) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@34) o_1@@15 f_2@@14) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@24) o_1@@15 f_2@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@60) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@24) o_1@@15 f_2@@14))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_5086_11139) ) (! (= (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_5099_5100) ) (! (= (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_5086_53) ) (! (= (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_5086_8670) ) (! (= (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_12920_12925) ) (! (= (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_10475_5100) ) (! (= (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_10475_53) ) (! (= (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_10475_10476) ) (! (= (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_12027_12032) ) (! (= (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_9572_5100) ) (! (= (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_9572_53) ) (! (= (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_9572_9573) ) (! (= (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_11134_11139) ) (! (= (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_8669_5100) ) (! (= (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_8669_53) ) (! (= (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_8669_8670) ) (! (= (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5047) (SummandMask1 T@PolymorphicMapType_5047) (SummandMask2 T@PolymorphicMapType_5047) (o_2@@63 T@Ref) (f_4@@63 T@Field_5086_11139) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| ResultMask) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| SummandMask1) o_2@@63 f_4@@63) (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| SummandMask2) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| ResultMask) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| SummandMask1) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| SummandMask2) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5047) (SummandMask1@@0 T@PolymorphicMapType_5047) (SummandMask2@@0 T@PolymorphicMapType_5047) (o_2@@64 T@Ref) (f_4@@64 T@Field_5099_5100) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| ResultMask@@0) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| SummandMask1@@0) o_2@@64 f_4@@64) (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| SummandMask2@@0) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| ResultMask@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| SummandMask1@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| SummandMask2@@0) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5047) (SummandMask1@@1 T@PolymorphicMapType_5047) (SummandMask2@@1 T@PolymorphicMapType_5047) (o_2@@65 T@Ref) (f_4@@65 T@Field_5086_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| ResultMask@@1) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| SummandMask1@@1) o_2@@65 f_4@@65) (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| SummandMask2@@1) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| ResultMask@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| SummandMask1@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| SummandMask2@@1) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5047) (SummandMask1@@2 T@PolymorphicMapType_5047) (SummandMask2@@2 T@PolymorphicMapType_5047) (o_2@@66 T@Ref) (f_4@@66 T@Field_5086_8670) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| ResultMask@@2) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| SummandMask1@@2) o_2@@66 f_4@@66) (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| SummandMask2@@2) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| ResultMask@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| SummandMask1@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| SummandMask2@@2) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5047) (SummandMask1@@3 T@PolymorphicMapType_5047) (SummandMask2@@3 T@PolymorphicMapType_5047) (o_2@@67 T@Ref) (f_4@@67 T@Field_12920_12925) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| ResultMask@@3) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| SummandMask1@@3) o_2@@67 f_4@@67) (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| SummandMask2@@3) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| ResultMask@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| SummandMask1@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| SummandMask2@@3) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5047) (SummandMask1@@4 T@PolymorphicMapType_5047) (SummandMask2@@4 T@PolymorphicMapType_5047) (o_2@@68 T@Ref) (f_4@@68 T@Field_10475_5100) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| ResultMask@@4) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| SummandMask1@@4) o_2@@68 f_4@@68) (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| SummandMask2@@4) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| ResultMask@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| SummandMask1@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| SummandMask2@@4) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5047) (SummandMask1@@5 T@PolymorphicMapType_5047) (SummandMask2@@5 T@PolymorphicMapType_5047) (o_2@@69 T@Ref) (f_4@@69 T@Field_10475_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| ResultMask@@5) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| SummandMask1@@5) o_2@@69 f_4@@69) (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| SummandMask2@@5) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| ResultMask@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| SummandMask1@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| SummandMask2@@5) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5047) (SummandMask1@@6 T@PolymorphicMapType_5047) (SummandMask2@@6 T@PolymorphicMapType_5047) (o_2@@70 T@Ref) (f_4@@70 T@Field_10475_10476) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| ResultMask@@6) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| SummandMask1@@6) o_2@@70 f_4@@70) (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| SummandMask2@@6) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| ResultMask@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| SummandMask1@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| SummandMask2@@6) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_5047) (SummandMask1@@7 T@PolymorphicMapType_5047) (SummandMask2@@7 T@PolymorphicMapType_5047) (o_2@@71 T@Ref) (f_4@@71 T@Field_12027_12032) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| ResultMask@@7) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| SummandMask1@@7) o_2@@71 f_4@@71) (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| SummandMask2@@7) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| ResultMask@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| SummandMask1@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| SummandMask2@@7) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_5047) (SummandMask1@@8 T@PolymorphicMapType_5047) (SummandMask2@@8 T@PolymorphicMapType_5047) (o_2@@72 T@Ref) (f_4@@72 T@Field_9572_5100) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| ResultMask@@8) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| SummandMask1@@8) o_2@@72 f_4@@72) (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| SummandMask2@@8) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| ResultMask@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| SummandMask1@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| SummandMask2@@8) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_5047) (SummandMask1@@9 T@PolymorphicMapType_5047) (SummandMask2@@9 T@PolymorphicMapType_5047) (o_2@@73 T@Ref) (f_4@@73 T@Field_9572_53) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| ResultMask@@9) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| SummandMask1@@9) o_2@@73 f_4@@73) (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| SummandMask2@@9) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| ResultMask@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| SummandMask1@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| SummandMask2@@9) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_5047) (SummandMask1@@10 T@PolymorphicMapType_5047) (SummandMask2@@10 T@PolymorphicMapType_5047) (o_2@@74 T@Ref) (f_4@@74 T@Field_9572_9573) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| ResultMask@@10) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| SummandMask1@@10) o_2@@74 f_4@@74) (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| SummandMask2@@10) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| ResultMask@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| SummandMask1@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| SummandMask2@@10) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_5047) (SummandMask1@@11 T@PolymorphicMapType_5047) (SummandMask2@@11 T@PolymorphicMapType_5047) (o_2@@75 T@Ref) (f_4@@75 T@Field_11134_11139) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| ResultMask@@11) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| SummandMask1@@11) o_2@@75 f_4@@75) (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| SummandMask2@@11) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| ResultMask@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| SummandMask1@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| SummandMask2@@11) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_5047) (SummandMask1@@12 T@PolymorphicMapType_5047) (SummandMask2@@12 T@PolymorphicMapType_5047) (o_2@@76 T@Ref) (f_4@@76 T@Field_8669_5100) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| ResultMask@@12) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| SummandMask1@@12) o_2@@76 f_4@@76) (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| SummandMask2@@12) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| ResultMask@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| SummandMask1@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| SummandMask2@@12) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_5047) (SummandMask1@@13 T@PolymorphicMapType_5047) (SummandMask2@@13 T@PolymorphicMapType_5047) (o_2@@77 T@Ref) (f_4@@77 T@Field_8669_53) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| ResultMask@@13) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| SummandMask1@@13) o_2@@77 f_4@@77) (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| SummandMask2@@13) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| ResultMask@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| SummandMask1@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| SummandMask2@@13) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_5047) (SummandMask1@@14 T@PolymorphicMapType_5047) (SummandMask2@@14 T@PolymorphicMapType_5047) (o_2@@78 T@Ref) (f_4@@78 T@Field_8669_8670) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| ResultMask@@14) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| SummandMask1@@14) o_2@@78 f_4@@78) (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| SummandMask2@@14) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| ResultMask@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| SummandMask1@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| SummandMask2@@14) o_2@@78 f_4@@78))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5026) (Mask@@61 T@PolymorphicMapType_5047) (this@@17 T@Ref) ) (!  (=> (state Heap@@35 Mask@@61) (= (|fun'| Heap@@35 this@@17) (|fun#frame| (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@35) null (p_2 this@@17)) this@@17)))
 :qid |stdinbpl.205:15|
 :skolemid |25|
 :pattern ( (state Heap@@35 Mask@@61) (|fun'| Heap@@35 this@@17))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5026) (Mask@@62 T@PolymorphicMapType_5047) (this@@18 T@Ref) ) (!  (=> (state Heap@@36 Mask@@62) (= (|fun1'| Heap@@36 this@@18) (|fun1#frame| (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@36) null (p1 this@@18)) this@@18)))
 :qid |stdinbpl.263:15|
 :skolemid |29|
 :pattern ( (state Heap@@36 Mask@@62) (|fun1'| Heap@@36 this@@18))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5026) (Mask@@63 T@PolymorphicMapType_5047) (this@@19 T@Ref) ) (!  (=> (state Heap@@37 Mask@@63) (= (|fun2'| Heap@@37 this@@19) (|fun2#frame| (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@37) null (p2 this@@19)) this@@19)))
 :qid |stdinbpl.321:15|
 :skolemid |33|
 :pattern ( (state Heap@@37 Mask@@63) (|fun2'| Heap@@37 this@@19))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5026) (this@@20 T@Ref) ) (!  (and (= (fun Heap@@38 this@@20) (|fun'| Heap@@38 this@@20)) (dummyFunction_1372 (|fun#triggerStateless| this@@20)))
 :qid |stdinbpl.188:15|
 :skolemid |22|
 :pattern ( (fun Heap@@38 this@@20))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5026) (this@@21 T@Ref) ) (!  (and (= (fun1 Heap@@39 this@@21) (|fun1'| Heap@@39 this@@21)) (dummyFunction_1372 (|fun1#triggerStateless| this@@21)))
 :qid |stdinbpl.246:15|
 :skolemid |26|
 :pattern ( (fun1 Heap@@39 this@@21))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5026) (this@@22 T@Ref) ) (!  (and (= (fun2 Heap@@40 this@@22) (|fun2'| Heap@@40 this@@22)) (dummyFunction_1372 (|fun2#triggerStateless| this@@22)))
 :qid |stdinbpl.304:15|
 :skolemid |30|
 :pattern ( (fun2 Heap@@40 this@@22))
)))
(assert (forall ((this@@23 T@Ref) ) (! (= (getPredWandId_2898_2899 (p_2 this@@23)) 0)
 :qid |stdinbpl.370:15|
 :skolemid |36|
 :pattern ( (p_2 this@@23))
)))
(assert (forall ((this@@24 T@Ref) ) (! (= (getPredWandId_2923_2924 (p1 this@@24)) 1)
 :qid |stdinbpl.424:15|
 :skolemid |42|
 :pattern ( (p1 this@@24))
)))
(assert (forall ((this@@25 T@Ref) ) (! (= (getPredWandId_2948_2949 (p2 this@@25)) 2)
 :qid |stdinbpl.478:15|
 :skolemid |48|
 :pattern ( (p2 this@@25))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5026) (o T@Ref) (f_3 T@Field_12920_12925) (v T@PolymorphicMapType_5575) ) (! (succHeap Heap@@41 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@41) (store (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@41) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@41) (store (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@41) o f_3 v)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5026) (o@@0 T@Ref) (f_3@@0 T@Field_10475_10476) (v@@0 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@42) (store (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@42) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@42) (store (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@42) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5026) (o@@1 T@Ref) (f_3@@1 T@Field_10475_5100) (v@@1 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@43) (store (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@43) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@43) (store (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@43) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_5026) (o@@2 T@Ref) (f_3@@2 T@Field_10475_53) (v@@2 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@44) (store (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@44) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@44) (store (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@44) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_5026) (o@@3 T@Ref) (f_3@@3 T@Field_12027_12032) (v@@3 T@PolymorphicMapType_5575) ) (! (succHeap Heap@@45 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@45) (store (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@45) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@45) (store (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@45) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_5026) (o@@4 T@Ref) (f_3@@4 T@Field_9572_9573) (v@@4 T@FrameType) ) (! (succHeap Heap@@46 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@46) (store (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@46) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@46) (store (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@46) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_5026) (o@@5 T@Ref) (f_3@@5 T@Field_9572_5100) (v@@5 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@47) (store (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@47) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@47) (store (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@47) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_5026) (o@@6 T@Ref) (f_3@@6 T@Field_9572_53) (v@@6 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@48) (store (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@48) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@48) (store (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@48) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_5026) (o@@7 T@Ref) (f_3@@7 T@Field_11134_11139) (v@@7 T@PolymorphicMapType_5575) ) (! (succHeap Heap@@49 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@49) (store (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@49) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@49) (store (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@49) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_5026) (o@@8 T@Ref) (f_3@@8 T@Field_8669_8670) (v@@8 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@50) (store (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@50) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@50) (store (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@50) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_5026) (o@@9 T@Ref) (f_3@@9 T@Field_8669_5100) (v@@9 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@51) (store (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@51) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@51) (store (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@51) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_5026) (o@@10 T@Ref) (f_3@@10 T@Field_8669_53) (v@@10 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@52) (store (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@52) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@52) (store (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@52) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_5026) (o@@11 T@Ref) (f_3@@11 T@Field_5086_11139) (v@@11 T@PolymorphicMapType_5575) ) (! (succHeap Heap@@53 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@53) (store (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@53) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@53) (store (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@53) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_5026) (o@@12 T@Ref) (f_3@@12 T@Field_5086_8670) (v@@12 T@FrameType) ) (! (succHeap Heap@@54 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@54) (store (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@54) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@54) (store (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@54) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_5026) (o@@13 T@Ref) (f_3@@13 T@Field_5099_5100) (v@@13 T@Ref) ) (! (succHeap Heap@@55 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@55) (store (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@55) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@55) (store (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@55) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_5026) (o@@14 T@Ref) (f_3@@14 T@Field_5086_53) (v@@14 Bool) ) (! (succHeap Heap@@56 (PolymorphicMapType_5026 (store (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@56) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (store (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@56) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@56)))
)))
(assert (forall ((this@@26 T@Ref) ) (! (= (PredicateMaskField_2898 (p_2 this@@26)) (|p#sm| this@@26))
 :qid |stdinbpl.362:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_2898 (p_2 this@@26)))
)))
(assert (forall ((this@@27 T@Ref) ) (! (= (PredicateMaskField_2923 (p1 this@@27)) (|p1#sm| this@@27))
 :qid |stdinbpl.416:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_2923 (p1 this@@27)))
)))
(assert (forall ((this@@28 T@Ref) ) (! (= (PredicateMaskField_2948 (p2 this@@28)) (|p2#sm| this@@28))
 :qid |stdinbpl.470:15|
 :skolemid |46|
 :pattern ( (PredicateMaskField_2948 (p2 this@@28)))
)))
(assert (forall ((o@@15 T@Ref) (f T@Field_5099_5100) (Heap@@57 T@PolymorphicMapType_5026) ) (!  (=> (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@57) o@@15 $allocated) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@57) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@57) o@@15 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@57) o@@15 f))
)))
(assert (forall ((p@@4 T@Field_10475_10476) (v_1@@3 T@FrameType) (q T@Field_10475_10476) (w@@3 T@FrameType) (r T@Field_10475_10476) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10475_10475 p@@4 v_1@@3 q w@@3) (InsidePredicate_10475_10475 q w@@3 r u)) (InsidePredicate_10475_10475 p@@4 v_1@@3 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_10475 p@@4 v_1@@3 q w@@3) (InsidePredicate_10475_10475 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_10475_10476) (v_1@@4 T@FrameType) (q@@0 T@Field_10475_10476) (w@@4 T@FrameType) (r@@0 T@Field_9572_9573) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_10475 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_10475_9572 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_10475_9572 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_10475 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_10475_9572 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_10475_10476) (v_1@@5 T@FrameType) (q@@1 T@Field_10475_10476) (w@@5 T@FrameType) (r@@1 T@Field_8669_8670) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_10475 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_10475_8669 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_10475_8669 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_10475 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_10475_8669 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_10475_10476) (v_1@@6 T@FrameType) (q@@2 T@Field_10475_10476) (w@@6 T@FrameType) (r@@2 T@Field_5086_8670) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_10475 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_10475_5086 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_10475_5086 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_10475 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_10475_5086 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_10475_10476) (v_1@@7 T@FrameType) (q@@3 T@Field_9572_9573) (w@@7 T@FrameType) (r@@3 T@Field_10475_10476) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_9572 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_9572_10475 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_10475_10475 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_9572 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_9572_10475 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_10475_10476) (v_1@@8 T@FrameType) (q@@4 T@Field_9572_9573) (w@@8 T@FrameType) (r@@4 T@Field_9572_9573) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_9572 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_9572_9572 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_10475_9572 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_9572 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_9572_9572 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_10475_10476) (v_1@@9 T@FrameType) (q@@5 T@Field_9572_9573) (w@@9 T@FrameType) (r@@5 T@Field_8669_8670) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_9572 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_9572_8669 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_10475_8669 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_9572 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_9572_8669 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_10475_10476) (v_1@@10 T@FrameType) (q@@6 T@Field_9572_9573) (w@@10 T@FrameType) (r@@6 T@Field_5086_8670) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_9572 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_9572_5086 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_10475_5086 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_9572 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_9572_5086 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_10475_10476) (v_1@@11 T@FrameType) (q@@7 T@Field_8669_8670) (w@@11 T@FrameType) (r@@7 T@Field_10475_10476) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_8669 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_8669_10475 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_10475_10475 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_8669 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_8669_10475 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_10475_10476) (v_1@@12 T@FrameType) (q@@8 T@Field_8669_8670) (w@@12 T@FrameType) (r@@8 T@Field_9572_9573) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_8669 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_8669_9572 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_10475_9572 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_8669 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_8669_9572 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_10475_10476) (v_1@@13 T@FrameType) (q@@9 T@Field_8669_8670) (w@@13 T@FrameType) (r@@9 T@Field_8669_8670) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_8669 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_8669_8669 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_10475_8669 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_8669 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_8669_8669 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_10475_10476) (v_1@@14 T@FrameType) (q@@10 T@Field_8669_8670) (w@@14 T@FrameType) (r@@10 T@Field_5086_8670) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_8669 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_8669_5086 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_10475_5086 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_8669 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_8669_5086 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_10475_10476) (v_1@@15 T@FrameType) (q@@11 T@Field_5086_8670) (w@@15 T@FrameType) (r@@11 T@Field_10475_10476) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_5086 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_5086_10475 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_10475_10475 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_5086 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_5086_10475 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_10475_10476) (v_1@@16 T@FrameType) (q@@12 T@Field_5086_8670) (w@@16 T@FrameType) (r@@12 T@Field_9572_9573) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_5086 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_5086_9572 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_10475_9572 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_5086 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_5086_9572 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_10475_10476) (v_1@@17 T@FrameType) (q@@13 T@Field_5086_8670) (w@@17 T@FrameType) (r@@13 T@Field_8669_8670) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_5086 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_5086_8669 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_10475_8669 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_5086 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_5086_8669 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_10475_10476) (v_1@@18 T@FrameType) (q@@14 T@Field_5086_8670) (w@@18 T@FrameType) (r@@14 T@Field_5086_8670) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_5086 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_5086_5086 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_10475_5086 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_5086 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_5086_5086 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_9572_9573) (v_1@@19 T@FrameType) (q@@15 T@Field_10475_10476) (w@@19 T@FrameType) (r@@15 T@Field_10475_10476) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_10475 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_10475_10475 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_9572_10475 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_10475 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_10475_10475 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_9572_9573) (v_1@@20 T@FrameType) (q@@16 T@Field_10475_10476) (w@@20 T@FrameType) (r@@16 T@Field_9572_9573) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_10475 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_10475_9572 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_9572_9572 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_10475 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_10475_9572 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_9572_9573) (v_1@@21 T@FrameType) (q@@17 T@Field_10475_10476) (w@@21 T@FrameType) (r@@17 T@Field_8669_8670) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_10475 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_10475_8669 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_9572_8669 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_10475 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_10475_8669 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_9572_9573) (v_1@@22 T@FrameType) (q@@18 T@Field_10475_10476) (w@@22 T@FrameType) (r@@18 T@Field_5086_8670) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_10475 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_10475_5086 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_9572_5086 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_10475 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_10475_5086 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_9572_9573) (v_1@@23 T@FrameType) (q@@19 T@Field_9572_9573) (w@@23 T@FrameType) (r@@19 T@Field_10475_10476) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_9572 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_9572_10475 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_9572_10475 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_9572 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_9572_10475 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_9572_9573) (v_1@@24 T@FrameType) (q@@20 T@Field_9572_9573) (w@@24 T@FrameType) (r@@20 T@Field_9572_9573) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_9572 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_9572_9572 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_9572_9572 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_9572 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_9572_9572 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_9572_9573) (v_1@@25 T@FrameType) (q@@21 T@Field_9572_9573) (w@@25 T@FrameType) (r@@21 T@Field_8669_8670) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_9572 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_9572_8669 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_9572_8669 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_9572 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_9572_8669 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_9572_9573) (v_1@@26 T@FrameType) (q@@22 T@Field_9572_9573) (w@@26 T@FrameType) (r@@22 T@Field_5086_8670) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_9572 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_9572_5086 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_9572_5086 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_9572 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_9572_5086 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_9572_9573) (v_1@@27 T@FrameType) (q@@23 T@Field_8669_8670) (w@@27 T@FrameType) (r@@23 T@Field_10475_10476) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_8669 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_8669_10475 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_9572_10475 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_8669 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_8669_10475 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_9572_9573) (v_1@@28 T@FrameType) (q@@24 T@Field_8669_8670) (w@@28 T@FrameType) (r@@24 T@Field_9572_9573) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_8669 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_8669_9572 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_9572_9572 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_8669 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_8669_9572 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_9572_9573) (v_1@@29 T@FrameType) (q@@25 T@Field_8669_8670) (w@@29 T@FrameType) (r@@25 T@Field_8669_8670) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_8669 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_8669_8669 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_9572_8669 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_8669 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_8669_8669 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_9572_9573) (v_1@@30 T@FrameType) (q@@26 T@Field_8669_8670) (w@@30 T@FrameType) (r@@26 T@Field_5086_8670) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_8669 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_8669_5086 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_9572_5086 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_8669 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_8669_5086 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_9572_9573) (v_1@@31 T@FrameType) (q@@27 T@Field_5086_8670) (w@@31 T@FrameType) (r@@27 T@Field_10475_10476) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_5086 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_5086_10475 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_9572_10475 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_5086 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_5086_10475 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_9572_9573) (v_1@@32 T@FrameType) (q@@28 T@Field_5086_8670) (w@@32 T@FrameType) (r@@28 T@Field_9572_9573) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_5086 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_5086_9572 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_9572_9572 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_5086 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_5086_9572 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_9572_9573) (v_1@@33 T@FrameType) (q@@29 T@Field_5086_8670) (w@@33 T@FrameType) (r@@29 T@Field_8669_8670) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_5086 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_5086_8669 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_9572_8669 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_5086 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_5086_8669 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_9572_9573) (v_1@@34 T@FrameType) (q@@30 T@Field_5086_8670) (w@@34 T@FrameType) (r@@30 T@Field_5086_8670) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_5086 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_5086_5086 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_9572_5086 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_5086 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_5086_5086 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_8669_8670) (v_1@@35 T@FrameType) (q@@31 T@Field_10475_10476) (w@@35 T@FrameType) (r@@31 T@Field_10475_10476) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_10475 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_10475_10475 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_8669_10475 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_10475 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_10475_10475 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_8669_8670) (v_1@@36 T@FrameType) (q@@32 T@Field_10475_10476) (w@@36 T@FrameType) (r@@32 T@Field_9572_9573) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_10475 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_10475_9572 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_8669_9572 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_10475 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_10475_9572 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_8669_8670) (v_1@@37 T@FrameType) (q@@33 T@Field_10475_10476) (w@@37 T@FrameType) (r@@33 T@Field_8669_8670) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_10475 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_10475_8669 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_8669_8669 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_10475 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_10475_8669 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_8669_8670) (v_1@@38 T@FrameType) (q@@34 T@Field_10475_10476) (w@@38 T@FrameType) (r@@34 T@Field_5086_8670) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_10475 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_10475_5086 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_8669_5086 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_10475 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_10475_5086 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_8669_8670) (v_1@@39 T@FrameType) (q@@35 T@Field_9572_9573) (w@@39 T@FrameType) (r@@35 T@Field_10475_10476) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_9572 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_9572_10475 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_8669_10475 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_9572 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_9572_10475 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_8669_8670) (v_1@@40 T@FrameType) (q@@36 T@Field_9572_9573) (w@@40 T@FrameType) (r@@36 T@Field_9572_9573) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_9572 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_9572_9572 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_8669_9572 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_9572 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_9572_9572 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_8669_8670) (v_1@@41 T@FrameType) (q@@37 T@Field_9572_9573) (w@@41 T@FrameType) (r@@37 T@Field_8669_8670) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_9572 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_9572_8669 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_8669_8669 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_9572 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_9572_8669 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_8669_8670) (v_1@@42 T@FrameType) (q@@38 T@Field_9572_9573) (w@@42 T@FrameType) (r@@38 T@Field_5086_8670) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_9572 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_9572_5086 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_8669_5086 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_9572 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_9572_5086 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_8669_8670) (v_1@@43 T@FrameType) (q@@39 T@Field_8669_8670) (w@@43 T@FrameType) (r@@39 T@Field_10475_10476) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_8669 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_8669_10475 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_8669_10475 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_8669 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_8669_10475 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_8669_8670) (v_1@@44 T@FrameType) (q@@40 T@Field_8669_8670) (w@@44 T@FrameType) (r@@40 T@Field_9572_9573) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_8669 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_8669_9572 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_8669_9572 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_8669 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_8669_9572 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_8669_8670) (v_1@@45 T@FrameType) (q@@41 T@Field_8669_8670) (w@@45 T@FrameType) (r@@41 T@Field_8669_8670) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_8669 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_8669_8669 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_8669_8669 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_8669 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_8669_8669 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_8669_8670) (v_1@@46 T@FrameType) (q@@42 T@Field_8669_8670) (w@@46 T@FrameType) (r@@42 T@Field_5086_8670) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_8669 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_8669_5086 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_8669_5086 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_8669 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_8669_5086 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_8669_8670) (v_1@@47 T@FrameType) (q@@43 T@Field_5086_8670) (w@@47 T@FrameType) (r@@43 T@Field_10475_10476) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_5086 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_5086_10475 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_8669_10475 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_5086 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_5086_10475 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_8669_8670) (v_1@@48 T@FrameType) (q@@44 T@Field_5086_8670) (w@@48 T@FrameType) (r@@44 T@Field_9572_9573) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_5086 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_5086_9572 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_8669_9572 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_5086 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_5086_9572 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_8669_8670) (v_1@@49 T@FrameType) (q@@45 T@Field_5086_8670) (w@@49 T@FrameType) (r@@45 T@Field_8669_8670) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_5086 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_5086_8669 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_8669_8669 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_5086 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_5086_8669 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_8669_8670) (v_1@@50 T@FrameType) (q@@46 T@Field_5086_8670) (w@@50 T@FrameType) (r@@46 T@Field_5086_8670) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_5086 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_5086_5086 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_8669_5086 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_5086 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_5086_5086 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_5086_8670) (v_1@@51 T@FrameType) (q@@47 T@Field_10475_10476) (w@@51 T@FrameType) (r@@47 T@Field_10475_10476) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_10475 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_10475_10475 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_5086_10475 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_10475 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_10475_10475 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_5086_8670) (v_1@@52 T@FrameType) (q@@48 T@Field_10475_10476) (w@@52 T@FrameType) (r@@48 T@Field_9572_9573) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_10475 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_10475_9572 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_5086_9572 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_10475 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_10475_9572 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_5086_8670) (v_1@@53 T@FrameType) (q@@49 T@Field_10475_10476) (w@@53 T@FrameType) (r@@49 T@Field_8669_8670) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_10475 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_10475_8669 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_5086_8669 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_10475 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_10475_8669 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_5086_8670) (v_1@@54 T@FrameType) (q@@50 T@Field_10475_10476) (w@@54 T@FrameType) (r@@50 T@Field_5086_8670) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_10475 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_10475_5086 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_5086_5086 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_10475 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_10475_5086 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_5086_8670) (v_1@@55 T@FrameType) (q@@51 T@Field_9572_9573) (w@@55 T@FrameType) (r@@51 T@Field_10475_10476) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_9572 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_9572_10475 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_5086_10475 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_9572 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_9572_10475 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_5086_8670) (v_1@@56 T@FrameType) (q@@52 T@Field_9572_9573) (w@@56 T@FrameType) (r@@52 T@Field_9572_9573) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_9572 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_9572_9572 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_5086_9572 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_9572 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_9572_9572 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_5086_8670) (v_1@@57 T@FrameType) (q@@53 T@Field_9572_9573) (w@@57 T@FrameType) (r@@53 T@Field_8669_8670) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_9572 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_9572_8669 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_5086_8669 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_9572 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_9572_8669 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_5086_8670) (v_1@@58 T@FrameType) (q@@54 T@Field_9572_9573) (w@@58 T@FrameType) (r@@54 T@Field_5086_8670) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_9572 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_9572_5086 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_5086_5086 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_9572 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_9572_5086 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_5086_8670) (v_1@@59 T@FrameType) (q@@55 T@Field_8669_8670) (w@@59 T@FrameType) (r@@55 T@Field_10475_10476) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_8669 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_8669_10475 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_5086_10475 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_8669 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_8669_10475 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_5086_8670) (v_1@@60 T@FrameType) (q@@56 T@Field_8669_8670) (w@@60 T@FrameType) (r@@56 T@Field_9572_9573) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_8669 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_8669_9572 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_5086_9572 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_8669 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_8669_9572 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_5086_8670) (v_1@@61 T@FrameType) (q@@57 T@Field_8669_8670) (w@@61 T@FrameType) (r@@57 T@Field_8669_8670) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_8669 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_8669_8669 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_5086_8669 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_8669 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_8669_8669 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_5086_8670) (v_1@@62 T@FrameType) (q@@58 T@Field_8669_8670) (w@@62 T@FrameType) (r@@58 T@Field_5086_8670) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_8669 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_8669_5086 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_5086_5086 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_8669 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_8669_5086 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_5086_8670) (v_1@@63 T@FrameType) (q@@59 T@Field_5086_8670) (w@@63 T@FrameType) (r@@59 T@Field_10475_10476) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_5086 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_5086_10475 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_5086_10475 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_5086 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_5086_10475 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_5086_8670) (v_1@@64 T@FrameType) (q@@60 T@Field_5086_8670) (w@@64 T@FrameType) (r@@60 T@Field_9572_9573) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_5086 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_5086_9572 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_5086_9572 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_5086 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_5086_9572 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_5086_8670) (v_1@@65 T@FrameType) (q@@61 T@Field_5086_8670) (w@@65 T@FrameType) (r@@61 T@Field_8669_8670) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_5086 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_5086_8669 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_5086_8669 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_5086 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_5086_8669 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_5086_8670) (v_1@@66 T@FrameType) (q@@62 T@Field_5086_8670) (w@@66 T@FrameType) (r@@62 T@Field_5086_8670) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_5086 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_5086_5086 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_5086_5086 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_5086 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_5086_5086 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_5026) (ExhaleHeap@@25 T@PolymorphicMapType_5026) (Mask@@64 T@PolymorphicMapType_5047) (pm_f@@7 T@Field_10475_10476) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@25 Mask@@64) (=> (and (HasDirectPerm_10475_8670 Mask@@64 null pm_f@@7) (IsPredicateField_2948_2949 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@15 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2 f_2@@15) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@58) o2 f_2@@15) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2 f_2@@15))
)) (forall ((o2@@0 T@Ref) (f_2@@16 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@0 f_2@@16) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@58) o2@@0 f_2@@16) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@0 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@0 f_2@@16))
))) (forall ((o2@@1 T@Ref) (f_2@@17 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@1 f_2@@17) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@58) o2@@1 f_2@@17) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@1 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@1 f_2@@17))
))) (forall ((o2@@2 T@Ref) (f_2@@18 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@2 f_2@@18) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@58) o2@@2 f_2@@18) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@2 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@2 f_2@@18))
))) (forall ((o2@@3 T@Ref) (f_2@@19 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@3 f_2@@19) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@58) o2@@3 f_2@@19) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@3 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@3 f_2@@19))
))) (forall ((o2@@4 T@Ref) (f_2@@20 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@4 f_2@@20) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@58) o2@@4 f_2@@20) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@4 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@4 f_2@@20))
))) (forall ((o2@@5 T@Ref) (f_2@@21 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@5 f_2@@21) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@58) o2@@5 f_2@@21) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@5 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@5 f_2@@21))
))) (forall ((o2@@6 T@Ref) (f_2@@22 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@6 f_2@@22) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@58) o2@@6 f_2@@22) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@6 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@6 f_2@@22))
))) (forall ((o2@@7 T@Ref) (f_2@@23 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@7 f_2@@23) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@58) o2@@7 f_2@@23) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@7 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@7 f_2@@23))
))) (forall ((o2@@8 T@Ref) (f_2@@24 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@8 f_2@@24) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@58) o2@@8 f_2@@24) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@8 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@8 f_2@@24))
))) (forall ((o2@@9 T@Ref) (f_2@@25 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@9 f_2@@25) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@58) o2@@9 f_2@@25) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@9 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@9 f_2@@25))
))) (forall ((o2@@10 T@Ref) (f_2@@26 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@10 f_2@@26) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@58) o2@@10 f_2@@26) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@10 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@10 f_2@@26))
))) (forall ((o2@@11 T@Ref) (f_2@@27 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@11 f_2@@27) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@58) o2@@11 f_2@@27) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@11 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@11 f_2@@27))
))) (forall ((o2@@12 T@Ref) (f_2@@28 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@12 f_2@@28) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@58) o2@@12 f_2@@28) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@12 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@12 f_2@@28))
))) (forall ((o2@@13 T@Ref) (f_2@@29 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@13 f_2@@29) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@58) o2@@13 f_2@@29) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@13 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@13 f_2@@29))
))) (forall ((o2@@14 T@Ref) (f_2@@30 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@14 f_2@@30) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) o2@@14 f_2@@30) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@14 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@14 f_2@@30))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@25 Mask@@64) (IsPredicateField_2948_2949 pm_f@@7))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_5026) (ExhaleHeap@@26 T@PolymorphicMapType_5026) (Mask@@65 T@PolymorphicMapType_5047) (pm_f@@8 T@Field_9572_9573) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@26 Mask@@65) (=> (and (HasDirectPerm_9572_8670 Mask@@65 null pm_f@@8) (IsPredicateField_2923_2924 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@15 T@Ref) (f_2@@31 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@15 f_2@@31) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@59) o2@@15 f_2@@31) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@15 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@15 f_2@@31))
)) (forall ((o2@@16 T@Ref) (f_2@@32 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@16 f_2@@32) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@59) o2@@16 f_2@@32) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@16 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@16 f_2@@32))
))) (forall ((o2@@17 T@Ref) (f_2@@33 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@17 f_2@@33) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@59) o2@@17 f_2@@33) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@17 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@17 f_2@@33))
))) (forall ((o2@@18 T@Ref) (f_2@@34 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@18 f_2@@34) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@59) o2@@18 f_2@@34) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@18 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@18 f_2@@34))
))) (forall ((o2@@19 T@Ref) (f_2@@35 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@19 f_2@@35) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@59) o2@@19 f_2@@35) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@19 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@19 f_2@@35))
))) (forall ((o2@@20 T@Ref) (f_2@@36 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@20 f_2@@36) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@59) o2@@20 f_2@@36) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@20 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@20 f_2@@36))
))) (forall ((o2@@21 T@Ref) (f_2@@37 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@21 f_2@@37) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@59) o2@@21 f_2@@37) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@21 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@21 f_2@@37))
))) (forall ((o2@@22 T@Ref) (f_2@@38 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@22 f_2@@38) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@59) o2@@22 f_2@@38) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@22 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@22 f_2@@38))
))) (forall ((o2@@23 T@Ref) (f_2@@39 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@23 f_2@@39) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@59) o2@@23 f_2@@39) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@23 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@23 f_2@@39))
))) (forall ((o2@@24 T@Ref) (f_2@@40 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@24 f_2@@40) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@59) o2@@24 f_2@@40) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@24 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@24 f_2@@40))
))) (forall ((o2@@25 T@Ref) (f_2@@41 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@25 f_2@@41) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@59) o2@@25 f_2@@41) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@25 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@25 f_2@@41))
))) (forall ((o2@@26 T@Ref) (f_2@@42 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@26 f_2@@42) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) o2@@26 f_2@@42) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@26 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@26 f_2@@42))
))) (forall ((o2@@27 T@Ref) (f_2@@43 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@27 f_2@@43) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@59) o2@@27 f_2@@43) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@27 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@27 f_2@@43))
))) (forall ((o2@@28 T@Ref) (f_2@@44 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@28 f_2@@44) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@59) o2@@28 f_2@@44) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@28 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@28 f_2@@44))
))) (forall ((o2@@29 T@Ref) (f_2@@45 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@29 f_2@@45) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@59) o2@@29 f_2@@45) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@29 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@29 f_2@@45))
))) (forall ((o2@@30 T@Ref) (f_2@@46 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@30 f_2@@46) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@59) o2@@30 f_2@@46) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@30 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@30 f_2@@46))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@26 Mask@@65) (IsPredicateField_2923_2924 pm_f@@8))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_5026) (ExhaleHeap@@27 T@PolymorphicMapType_5026) (Mask@@66 T@PolymorphicMapType_5047) (pm_f@@9 T@Field_8669_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@27 Mask@@66) (=> (and (HasDirectPerm_8669_8670 Mask@@66 null pm_f@@9) (IsPredicateField_2898_2899 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@31 T@Ref) (f_2@@47 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@31 f_2@@47) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@60) o2@@31 f_2@@47) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@31 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@31 f_2@@47))
)) (forall ((o2@@32 T@Ref) (f_2@@48 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@32 f_2@@48) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@60) o2@@32 f_2@@48) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@32 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@32 f_2@@48))
))) (forall ((o2@@33 T@Ref) (f_2@@49 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@33 f_2@@49) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@60) o2@@33 f_2@@49) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@33 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@33 f_2@@49))
))) (forall ((o2@@34 T@Ref) (f_2@@50 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@34 f_2@@50) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@60) o2@@34 f_2@@50) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@34 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@34 f_2@@50))
))) (forall ((o2@@35 T@Ref) (f_2@@51 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@35 f_2@@51) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@60) o2@@35 f_2@@51) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@35 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@35 f_2@@51))
))) (forall ((o2@@36 T@Ref) (f_2@@52 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@36 f_2@@52) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@60) o2@@36 f_2@@52) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@36 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@36 f_2@@52))
))) (forall ((o2@@37 T@Ref) (f_2@@53 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@37 f_2@@53) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@60) o2@@37 f_2@@53) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@37 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@37 f_2@@53))
))) (forall ((o2@@38 T@Ref) (f_2@@54 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@38 f_2@@54) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) o2@@38 f_2@@54) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@38 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@38 f_2@@54))
))) (forall ((o2@@39 T@Ref) (f_2@@55 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@39 f_2@@55) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@60) o2@@39 f_2@@55) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@39 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@39 f_2@@55))
))) (forall ((o2@@40 T@Ref) (f_2@@56 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@40 f_2@@56) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@60) o2@@40 f_2@@56) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@40 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@40 f_2@@56))
))) (forall ((o2@@41 T@Ref) (f_2@@57 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@41 f_2@@57) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@60) o2@@41 f_2@@57) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@41 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@41 f_2@@57))
))) (forall ((o2@@42 T@Ref) (f_2@@58 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@42 f_2@@58) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@60) o2@@42 f_2@@58) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@42 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@42 f_2@@58))
))) (forall ((o2@@43 T@Ref) (f_2@@59 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@43 f_2@@59) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@60) o2@@43 f_2@@59) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@43 f_2@@59)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@43 f_2@@59))
))) (forall ((o2@@44 T@Ref) (f_2@@60 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@44 f_2@@60) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@60) o2@@44 f_2@@60) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@44 f_2@@60)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@44 f_2@@60))
))) (forall ((o2@@45 T@Ref) (f_2@@61 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@45 f_2@@61) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@60) o2@@45 f_2@@61) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@45 f_2@@61)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@45 f_2@@61))
))) (forall ((o2@@46 T@Ref) (f_2@@62 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@46 f_2@@62) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@60) o2@@46 f_2@@62) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@46 f_2@@62)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@46 f_2@@62))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@27 Mask@@66) (IsPredicateField_2898_2899 pm_f@@9))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_5026) (ExhaleHeap@@28 T@PolymorphicMapType_5026) (Mask@@67 T@PolymorphicMapType_5047) (pm_f@@10 T@Field_5086_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@28 Mask@@67) (=> (and (HasDirectPerm_5086_8670 Mask@@67 null pm_f@@10) (IsPredicateField_5086_17655 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@47 T@Ref) (f_2@@63 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@47 f_2@@63) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@61) o2@@47 f_2@@63) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@47 f_2@@63)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@47 f_2@@63))
)) (forall ((o2@@48 T@Ref) (f_2@@64 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@48 f_2@@64) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@61) o2@@48 f_2@@64) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@48 f_2@@64)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@48 f_2@@64))
))) (forall ((o2@@49 T@Ref) (f_2@@65 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@49 f_2@@65) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@61) o2@@49 f_2@@65) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@49 f_2@@65)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@49 f_2@@65))
))) (forall ((o2@@50 T@Ref) (f_2@@66 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@50 f_2@@66) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) o2@@50 f_2@@66) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@50 f_2@@66)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@50 f_2@@66))
))) (forall ((o2@@51 T@Ref) (f_2@@67 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@51 f_2@@67) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@61) o2@@51 f_2@@67) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@51 f_2@@67)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@51 f_2@@67))
))) (forall ((o2@@52 T@Ref) (f_2@@68 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@52 f_2@@68) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@61) o2@@52 f_2@@68) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@52 f_2@@68)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@52 f_2@@68))
))) (forall ((o2@@53 T@Ref) (f_2@@69 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@53 f_2@@69) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@61) o2@@53 f_2@@69) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@53 f_2@@69)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@53 f_2@@69))
))) (forall ((o2@@54 T@Ref) (f_2@@70 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@54 f_2@@70) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@61) o2@@54 f_2@@70) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@54 f_2@@70)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@54 f_2@@70))
))) (forall ((o2@@55 T@Ref) (f_2@@71 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@55 f_2@@71) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@61) o2@@55 f_2@@71) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@55 f_2@@71)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@55 f_2@@71))
))) (forall ((o2@@56 T@Ref) (f_2@@72 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@56 f_2@@72) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@61) o2@@56 f_2@@72) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@56 f_2@@72)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@56 f_2@@72))
))) (forall ((o2@@57 T@Ref) (f_2@@73 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@57 f_2@@73) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@61) o2@@57 f_2@@73) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@57 f_2@@73)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@57 f_2@@73))
))) (forall ((o2@@58 T@Ref) (f_2@@74 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@58 f_2@@74) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@61) o2@@58 f_2@@74) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@58 f_2@@74)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@58 f_2@@74))
))) (forall ((o2@@59 T@Ref) (f_2@@75 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@59 f_2@@75) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@61) o2@@59 f_2@@75) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@59 f_2@@75)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@59 f_2@@75))
))) (forall ((o2@@60 T@Ref) (f_2@@76 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@60 f_2@@76) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@61) o2@@60 f_2@@76) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@60 f_2@@76)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@60 f_2@@76))
))) (forall ((o2@@61 T@Ref) (f_2@@77 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@61 f_2@@77) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@61) o2@@61 f_2@@77) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@61 f_2@@77)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@61 f_2@@77))
))) (forall ((o2@@62 T@Ref) (f_2@@78 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@62 f_2@@78) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@61) o2@@62 f_2@@78) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@62 f_2@@78)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@62 f_2@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@28 Mask@@67) (IsPredicateField_5086_17655 pm_f@@10))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_5026) (ExhaleHeap@@29 T@PolymorphicMapType_5026) (Mask@@68 T@PolymorphicMapType_5047) (pm_f@@11 T@Field_10475_10476) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@29 Mask@@68) (=> (and (HasDirectPerm_10475_8670 Mask@@68 null pm_f@@11) (IsWandField_10475_24582 pm_f@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@63 T@Ref) (f_2@@79 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@63 f_2@@79) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@62) o2@@63 f_2@@79) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@63 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@63 f_2@@79))
)) (forall ((o2@@64 T@Ref) (f_2@@80 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@64 f_2@@80) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@62) o2@@64 f_2@@80) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@64 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@64 f_2@@80))
))) (forall ((o2@@65 T@Ref) (f_2@@81 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@65 f_2@@81) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@62) o2@@65 f_2@@81) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@65 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@65 f_2@@81))
))) (forall ((o2@@66 T@Ref) (f_2@@82 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@66 f_2@@82) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@62) o2@@66 f_2@@82) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@66 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@66 f_2@@82))
))) (forall ((o2@@67 T@Ref) (f_2@@83 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@67 f_2@@83) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@62) o2@@67 f_2@@83) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@67 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@67 f_2@@83))
))) (forall ((o2@@68 T@Ref) (f_2@@84 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@68 f_2@@84) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@62) o2@@68 f_2@@84) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@68 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@68 f_2@@84))
))) (forall ((o2@@69 T@Ref) (f_2@@85 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@69 f_2@@85) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@62) o2@@69 f_2@@85) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@69 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@69 f_2@@85))
))) (forall ((o2@@70 T@Ref) (f_2@@86 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@70 f_2@@86) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@62) o2@@70 f_2@@86) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@70 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@70 f_2@@86))
))) (forall ((o2@@71 T@Ref) (f_2@@87 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@71 f_2@@87) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@62) o2@@71 f_2@@87) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@71 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@71 f_2@@87))
))) (forall ((o2@@72 T@Ref) (f_2@@88 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@72 f_2@@88) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@62) o2@@72 f_2@@88) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@72 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@72 f_2@@88))
))) (forall ((o2@@73 T@Ref) (f_2@@89 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@73 f_2@@89) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@62) o2@@73 f_2@@89) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@73 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@73 f_2@@89))
))) (forall ((o2@@74 T@Ref) (f_2@@90 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@74 f_2@@90) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@62) o2@@74 f_2@@90) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@74 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@74 f_2@@90))
))) (forall ((o2@@75 T@Ref) (f_2@@91 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@75 f_2@@91) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@62) o2@@75 f_2@@91) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@75 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@75 f_2@@91))
))) (forall ((o2@@76 T@Ref) (f_2@@92 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@76 f_2@@92) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@62) o2@@76 f_2@@92) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@76 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@76 f_2@@92))
))) (forall ((o2@@77 T@Ref) (f_2@@93 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@77 f_2@@93) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@62) o2@@77 f_2@@93) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@77 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@77 f_2@@93))
))) (forall ((o2@@78 T@Ref) (f_2@@94 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@78 f_2@@94) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) o2@@78 f_2@@94) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@78 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@78 f_2@@94))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@29 Mask@@68) (IsWandField_10475_24582 pm_f@@11))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_5026) (ExhaleHeap@@30 T@PolymorphicMapType_5026) (Mask@@69 T@PolymorphicMapType_5047) (pm_f@@12 T@Field_9572_9573) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@30 Mask@@69) (=> (and (HasDirectPerm_9572_8670 Mask@@69 null pm_f@@12) (IsWandField_9572_24225 pm_f@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@79 T@Ref) (f_2@@95 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@79 f_2@@95) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@63) o2@@79 f_2@@95) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@79 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@79 f_2@@95))
)) (forall ((o2@@80 T@Ref) (f_2@@96 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@80 f_2@@96) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@63) o2@@80 f_2@@96) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@80 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@80 f_2@@96))
))) (forall ((o2@@81 T@Ref) (f_2@@97 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@81 f_2@@97) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@63) o2@@81 f_2@@97) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@81 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@81 f_2@@97))
))) (forall ((o2@@82 T@Ref) (f_2@@98 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@82 f_2@@98) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@63) o2@@82 f_2@@98) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@82 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@82 f_2@@98))
))) (forall ((o2@@83 T@Ref) (f_2@@99 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@83 f_2@@99) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@63) o2@@83 f_2@@99) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@83 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@83 f_2@@99))
))) (forall ((o2@@84 T@Ref) (f_2@@100 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@84 f_2@@100) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@63) o2@@84 f_2@@100) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@84 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@84 f_2@@100))
))) (forall ((o2@@85 T@Ref) (f_2@@101 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@85 f_2@@101) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@63) o2@@85 f_2@@101) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@85 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@85 f_2@@101))
))) (forall ((o2@@86 T@Ref) (f_2@@102 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@86 f_2@@102) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@63) o2@@86 f_2@@102) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@86 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@86 f_2@@102))
))) (forall ((o2@@87 T@Ref) (f_2@@103 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@87 f_2@@103) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@63) o2@@87 f_2@@103) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@87 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@87 f_2@@103))
))) (forall ((o2@@88 T@Ref) (f_2@@104 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@88 f_2@@104) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@63) o2@@88 f_2@@104) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@88 f_2@@104)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@88 f_2@@104))
))) (forall ((o2@@89 T@Ref) (f_2@@105 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@89 f_2@@105) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@63) o2@@89 f_2@@105) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@89 f_2@@105)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@89 f_2@@105))
))) (forall ((o2@@90 T@Ref) (f_2@@106 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@90 f_2@@106) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) o2@@90 f_2@@106) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@90 f_2@@106)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@90 f_2@@106))
))) (forall ((o2@@91 T@Ref) (f_2@@107 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@91 f_2@@107) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@63) o2@@91 f_2@@107) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@91 f_2@@107)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@91 f_2@@107))
))) (forall ((o2@@92 T@Ref) (f_2@@108 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@92 f_2@@108) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@63) o2@@92 f_2@@108) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@92 f_2@@108)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@92 f_2@@108))
))) (forall ((o2@@93 T@Ref) (f_2@@109 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@93 f_2@@109) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@63) o2@@93 f_2@@109) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@93 f_2@@109)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@93 f_2@@109))
))) (forall ((o2@@94 T@Ref) (f_2@@110 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@94 f_2@@110) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@63) o2@@94 f_2@@110) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@94 f_2@@110)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@94 f_2@@110))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@30 Mask@@69) (IsWandField_9572_24225 pm_f@@12))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_5026) (ExhaleHeap@@31 T@PolymorphicMapType_5026) (Mask@@70 T@PolymorphicMapType_5047) (pm_f@@13 T@Field_8669_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@31 Mask@@70) (=> (and (HasDirectPerm_8669_8670 Mask@@70 null pm_f@@13) (IsWandField_8669_23868 pm_f@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@95 T@Ref) (f_2@@111 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@95 f_2@@111) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@64) o2@@95 f_2@@111) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@95 f_2@@111)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@95 f_2@@111))
)) (forall ((o2@@96 T@Ref) (f_2@@112 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@96 f_2@@112) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@64) o2@@96 f_2@@112) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@96 f_2@@112)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@96 f_2@@112))
))) (forall ((o2@@97 T@Ref) (f_2@@113 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@97 f_2@@113) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@64) o2@@97 f_2@@113) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@97 f_2@@113)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@97 f_2@@113))
))) (forall ((o2@@98 T@Ref) (f_2@@114 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@98 f_2@@114) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@64) o2@@98 f_2@@114) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@98 f_2@@114)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@98 f_2@@114))
))) (forall ((o2@@99 T@Ref) (f_2@@115 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@99 f_2@@115) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@64) o2@@99 f_2@@115) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@99 f_2@@115)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@99 f_2@@115))
))) (forall ((o2@@100 T@Ref) (f_2@@116 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@100 f_2@@116) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@64) o2@@100 f_2@@116) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@100 f_2@@116)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@100 f_2@@116))
))) (forall ((o2@@101 T@Ref) (f_2@@117 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@101 f_2@@117) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@64) o2@@101 f_2@@117) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@101 f_2@@117)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@101 f_2@@117))
))) (forall ((o2@@102 T@Ref) (f_2@@118 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@102 f_2@@118) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) o2@@102 f_2@@118) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@102 f_2@@118)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@102 f_2@@118))
))) (forall ((o2@@103 T@Ref) (f_2@@119 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@103 f_2@@119) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@64) o2@@103 f_2@@119) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@103 f_2@@119)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@103 f_2@@119))
))) (forall ((o2@@104 T@Ref) (f_2@@120 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@104 f_2@@120) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@64) o2@@104 f_2@@120) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@104 f_2@@120)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@104 f_2@@120))
))) (forall ((o2@@105 T@Ref) (f_2@@121 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@105 f_2@@121) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@64) o2@@105 f_2@@121) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@105 f_2@@121)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@105 f_2@@121))
))) (forall ((o2@@106 T@Ref) (f_2@@122 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@106 f_2@@122) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@64) o2@@106 f_2@@122) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@106 f_2@@122)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@106 f_2@@122))
))) (forall ((o2@@107 T@Ref) (f_2@@123 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@107 f_2@@123) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@64) o2@@107 f_2@@123) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@107 f_2@@123)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@107 f_2@@123))
))) (forall ((o2@@108 T@Ref) (f_2@@124 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@108 f_2@@124) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@64) o2@@108 f_2@@124) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@108 f_2@@124)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@108 f_2@@124))
))) (forall ((o2@@109 T@Ref) (f_2@@125 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@109 f_2@@125) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@64) o2@@109 f_2@@125) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@109 f_2@@125)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@109 f_2@@125))
))) (forall ((o2@@110 T@Ref) (f_2@@126 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@110 f_2@@126) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@64) o2@@110 f_2@@126) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@110 f_2@@126)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@110 f_2@@126))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@31 Mask@@70) (IsWandField_8669_23868 pm_f@@13))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_5026) (ExhaleHeap@@32 T@PolymorphicMapType_5026) (Mask@@71 T@PolymorphicMapType_5047) (pm_f@@14 T@Field_5086_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@32 Mask@@71) (=> (and (HasDirectPerm_5086_8670 Mask@@71 null pm_f@@14) (IsWandField_5086_23511 pm_f@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@111 T@Ref) (f_2@@127 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@111 f_2@@127) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@65) o2@@111 f_2@@127) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@111 f_2@@127)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@111 f_2@@127))
)) (forall ((o2@@112 T@Ref) (f_2@@128 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@112 f_2@@128) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@65) o2@@112 f_2@@128) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@112 f_2@@128)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@112 f_2@@128))
))) (forall ((o2@@113 T@Ref) (f_2@@129 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@113 f_2@@129) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@65) o2@@113 f_2@@129) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@113 f_2@@129)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@113 f_2@@129))
))) (forall ((o2@@114 T@Ref) (f_2@@130 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@114 f_2@@130) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) o2@@114 f_2@@130) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@114 f_2@@130)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@114 f_2@@130))
))) (forall ((o2@@115 T@Ref) (f_2@@131 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@115 f_2@@131) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@65) o2@@115 f_2@@131) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@115 f_2@@131)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@115 f_2@@131))
))) (forall ((o2@@116 T@Ref) (f_2@@132 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@116 f_2@@132) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@65) o2@@116 f_2@@132) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@116 f_2@@132)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@116 f_2@@132))
))) (forall ((o2@@117 T@Ref) (f_2@@133 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@117 f_2@@133) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@65) o2@@117 f_2@@133) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@117 f_2@@133)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@117 f_2@@133))
))) (forall ((o2@@118 T@Ref) (f_2@@134 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@118 f_2@@134) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@65) o2@@118 f_2@@134) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@118 f_2@@134)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@118 f_2@@134))
))) (forall ((o2@@119 T@Ref) (f_2@@135 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@119 f_2@@135) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@65) o2@@119 f_2@@135) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@119 f_2@@135)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@119 f_2@@135))
))) (forall ((o2@@120 T@Ref) (f_2@@136 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@120 f_2@@136) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@65) o2@@120 f_2@@136) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@120 f_2@@136)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@120 f_2@@136))
))) (forall ((o2@@121 T@Ref) (f_2@@137 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@121 f_2@@137) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@65) o2@@121 f_2@@137) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@121 f_2@@137)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@121 f_2@@137))
))) (forall ((o2@@122 T@Ref) (f_2@@138 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@122 f_2@@138) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@65) o2@@122 f_2@@138) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@122 f_2@@138)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@122 f_2@@138))
))) (forall ((o2@@123 T@Ref) (f_2@@139 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@123 f_2@@139) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@65) o2@@123 f_2@@139) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@123 f_2@@139)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@123 f_2@@139))
))) (forall ((o2@@124 T@Ref) (f_2@@140 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@124 f_2@@140) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@65) o2@@124 f_2@@140) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@124 f_2@@140)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@124 f_2@@140))
))) (forall ((o2@@125 T@Ref) (f_2@@141 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@125 f_2@@141) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@65) o2@@125 f_2@@141) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@125 f_2@@141)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@125 f_2@@141))
))) (forall ((o2@@126 T@Ref) (f_2@@142 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@126 f_2@@142) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@65) o2@@126 f_2@@142) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@126 f_2@@142)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@126 f_2@@142))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@32 Mask@@71) (IsWandField_5086_23511 pm_f@@14))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |fun#definedness|)
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
(declare-sort T@Field_5086_53 0)
(declare-sort T@Field_5099_5100 0)
(declare-sort T@Field_8669_8670 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9572_9573 0)
(declare-sort T@Field_10475_10476 0)
(declare-sort T@Field_5086_8670 0)
(declare-sort T@Field_5086_11139 0)
(declare-sort T@Field_8669_53 0)
(declare-sort T@Field_8669_5100 0)
(declare-sort T@Field_11134_11139 0)
(declare-sort T@Field_9572_53 0)
(declare-sort T@Field_9572_5100 0)
(declare-sort T@Field_12027_12032 0)
(declare-sort T@Field_10475_53 0)
(declare-sort T@Field_10475_5100 0)
(declare-sort T@Field_12920_12925 0)
(declare-datatypes ((T@PolymorphicMapType_5047 0)) (((PolymorphicMapType_5047 (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| (Array T@Ref T@Field_8669_8670 Real)) (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| (Array T@Ref T@Field_9572_9573 Real)) (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| (Array T@Ref T@Field_10475_10476 Real)) (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| (Array T@Ref T@Field_8669_53 Real)) (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| (Array T@Ref T@Field_8669_5100 Real)) (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| (Array T@Ref T@Field_11134_11139 Real)) (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| (Array T@Ref T@Field_9572_53 Real)) (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| (Array T@Ref T@Field_9572_5100 Real)) (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| (Array T@Ref T@Field_12027_12032 Real)) (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| (Array T@Ref T@Field_10475_53 Real)) (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| (Array T@Ref T@Field_10475_5100 Real)) (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| (Array T@Ref T@Field_12920_12925 Real)) (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| (Array T@Ref T@Field_5086_8670 Real)) (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| (Array T@Ref T@Field_5086_53 Real)) (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| (Array T@Ref T@Field_5099_5100 Real)) (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| (Array T@Ref T@Field_5086_11139 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5575 0)) (((PolymorphicMapType_5575 (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (Array T@Ref T@Field_5086_53 Bool)) (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (Array T@Ref T@Field_5099_5100 Bool)) (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (Array T@Ref T@Field_5086_8670 Bool)) (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (Array T@Ref T@Field_5086_11139 Bool)) (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (Array T@Ref T@Field_8669_53 Bool)) (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (Array T@Ref T@Field_8669_5100 Bool)) (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (Array T@Ref T@Field_8669_8670 Bool)) (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (Array T@Ref T@Field_11134_11139 Bool)) (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (Array T@Ref T@Field_9572_53 Bool)) (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (Array T@Ref T@Field_9572_5100 Bool)) (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (Array T@Ref T@Field_9572_9573 Bool)) (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (Array T@Ref T@Field_12027_12032 Bool)) (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (Array T@Ref T@Field_10475_53 Bool)) (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (Array T@Ref T@Field_10475_5100 Bool)) (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (Array T@Ref T@Field_10475_10476 Bool)) (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (Array T@Ref T@Field_12920_12925 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5026 0)) (((PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| (Array T@Ref T@Field_5086_53 Bool)) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| (Array T@Ref T@Field_5099_5100 T@Ref)) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| (Array T@Ref T@Field_8669_8670 T@FrameType)) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| (Array T@Ref T@Field_9572_9573 T@FrameType)) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| (Array T@Ref T@Field_10475_10476 T@FrameType)) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| (Array T@Ref T@Field_5086_8670 T@FrameType)) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| (Array T@Ref T@Field_5086_11139 T@PolymorphicMapType_5575)) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| (Array T@Ref T@Field_8669_53 Bool)) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| (Array T@Ref T@Field_8669_5100 T@Ref)) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| (Array T@Ref T@Field_11134_11139 T@PolymorphicMapType_5575)) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| (Array T@Ref T@Field_9572_53 Bool)) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| (Array T@Ref T@Field_9572_5100 T@Ref)) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| (Array T@Ref T@Field_12027_12032 T@PolymorphicMapType_5575)) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| (Array T@Ref T@Field_10475_53 Bool)) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| (Array T@Ref T@Field_10475_5100 T@Ref)) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| (Array T@Ref T@Field_12920_12925 T@PolymorphicMapType_5575)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_5026 T@PolymorphicMapType_5026) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5026 T@PolymorphicMapType_5026) Bool)
(declare-fun state (T@PolymorphicMapType_5026 T@PolymorphicMapType_5047) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5047) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5575)
(declare-fun p_2 (T@Ref) T@Field_8669_8670)
(declare-fun IsPredicateField_2898_2899 (T@Field_8669_8670) Bool)
(declare-fun p1 (T@Ref) T@Field_9572_9573)
(declare-fun IsPredicateField_2923_2924 (T@Field_9572_9573) Bool)
(declare-fun p2 (T@Ref) T@Field_10475_10476)
(declare-fun IsPredicateField_2948_2949 (T@Field_10475_10476) Bool)
(declare-fun |fun'| (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun dummyFunction_1372 (Bool) Bool)
(declare-fun |fun#triggerStateless| (T@Ref) Bool)
(declare-fun |fun1'| (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun |fun1#triggerStateless| (T@Ref) Bool)
(declare-fun |fun2'| (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun |fun2#triggerStateless| (T@Ref) Bool)
(declare-fun |p#trigger_2898| (T@PolymorphicMapType_5026 T@Field_8669_8670) Bool)
(declare-fun |p#everUsed_2898| (T@Field_8669_8670) Bool)
(declare-fun |p1#trigger_2923| (T@PolymorphicMapType_5026 T@Field_9572_9573) Bool)
(declare-fun |p1#everUsed_2923| (T@Field_9572_9573) Bool)
(declare-fun |p2#trigger_2948| (T@PolymorphicMapType_5026 T@Field_10475_10476) Bool)
(declare-fun |p2#everUsed_2948| (T@Field_10475_10476) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5026 T@PolymorphicMapType_5026 T@PolymorphicMapType_5047) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2948 (T@Field_10475_10476) T@Field_12920_12925)
(declare-fun HasDirectPerm_10475_8670 (T@PolymorphicMapType_5047 T@Ref T@Field_10475_10476) Bool)
(declare-fun PredicateMaskField_2923 (T@Field_9572_9573) T@Field_12027_12032)
(declare-fun HasDirectPerm_9572_8670 (T@PolymorphicMapType_5047 T@Ref T@Field_9572_9573) Bool)
(declare-fun PredicateMaskField_2898 (T@Field_8669_8670) T@Field_11134_11139)
(declare-fun HasDirectPerm_8669_8670 (T@PolymorphicMapType_5047 T@Ref T@Field_8669_8670) Bool)
(declare-fun IsPredicateField_5086_17655 (T@Field_5086_8670) Bool)
(declare-fun PredicateMaskField_5086 (T@Field_5086_8670) T@Field_5086_11139)
(declare-fun HasDirectPerm_5086_8670 (T@PolymorphicMapType_5047 T@Ref T@Field_5086_8670) Bool)
(declare-fun IsWandField_10475_24582 (T@Field_10475_10476) Bool)
(declare-fun WandMaskField_10475 (T@Field_10475_10476) T@Field_12920_12925)
(declare-fun IsWandField_9572_24225 (T@Field_9572_9573) Bool)
(declare-fun WandMaskField_9572 (T@Field_9572_9573) T@Field_12027_12032)
(declare-fun IsWandField_8669_23868 (T@Field_8669_8670) Bool)
(declare-fun WandMaskField_8669 (T@Field_8669_8670) T@Field_11134_11139)
(declare-fun IsWandField_5086_23511 (T@Field_5086_8670) Bool)
(declare-fun WandMaskField_5086 (T@Field_5086_8670) T@Field_5086_11139)
(declare-fun fun (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun fun2 (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun fun1 (T@PolymorphicMapType_5026 T@Ref) Bool)
(declare-fun |p#sm| (T@Ref) T@Field_11134_11139)
(declare-fun |p1#sm| (T@Ref) T@Field_12027_12032)
(declare-fun |p2#sm| (T@Ref) T@Field_12920_12925)
(declare-fun dummyHeap () T@PolymorphicMapType_5026)
(declare-fun ZeroMask () T@PolymorphicMapType_5047)
(declare-fun $allocated () T@Field_5086_53)
(declare-fun InsidePredicate_10475_10475 (T@Field_10475_10476 T@FrameType T@Field_10475_10476 T@FrameType) Bool)
(declare-fun InsidePredicate_9572_9572 (T@Field_9572_9573 T@FrameType T@Field_9572_9573 T@FrameType) Bool)
(declare-fun InsidePredicate_8669_8669 (T@Field_8669_8670 T@FrameType T@Field_8669_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_5086_5086 (T@Field_5086_8670 T@FrameType T@Field_5086_8670 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5086_35876 (T@Field_5086_11139) Bool)
(declare-fun IsWandField_5086_35892 (T@Field_5086_11139) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5086_5100 (T@Field_5099_5100) Bool)
(declare-fun IsWandField_5086_5100 (T@Field_5099_5100) Bool)
(declare-fun IsPredicateField_5086_53 (T@Field_5086_53) Bool)
(declare-fun IsWandField_5086_53 (T@Field_5086_53) Bool)
(declare-fun IsPredicateField_2948_35213 (T@Field_12920_12925) Bool)
(declare-fun IsWandField_2948_35229 (T@Field_12920_12925) Bool)
(declare-fun IsPredicateField_2948_5100 (T@Field_10475_5100) Bool)
(declare-fun IsWandField_2948_5100 (T@Field_10475_5100) Bool)
(declare-fun IsPredicateField_2948_53 (T@Field_10475_53) Bool)
(declare-fun IsWandField_2948_53 (T@Field_10475_53) Bool)
(declare-fun IsPredicateField_2923_34550 (T@Field_12027_12032) Bool)
(declare-fun IsWandField_2923_34566 (T@Field_12027_12032) Bool)
(declare-fun IsPredicateField_2923_5100 (T@Field_9572_5100) Bool)
(declare-fun IsWandField_2923_5100 (T@Field_9572_5100) Bool)
(declare-fun IsPredicateField_2923_53 (T@Field_9572_53) Bool)
(declare-fun IsWandField_2923_53 (T@Field_9572_53) Bool)
(declare-fun IsPredicateField_2898_33887 (T@Field_11134_11139) Bool)
(declare-fun IsWandField_2898_33903 (T@Field_11134_11139) Bool)
(declare-fun IsPredicateField_2898_5100 (T@Field_8669_5100) Bool)
(declare-fun IsWandField_2898_5100 (T@Field_8669_5100) Bool)
(declare-fun IsPredicateField_2898_53 (T@Field_8669_53) Bool)
(declare-fun IsWandField_2898_53 (T@Field_8669_53) Bool)
(declare-fun HasDirectPerm_10475_17367 (T@PolymorphicMapType_5047 T@Ref T@Field_12920_12925) Bool)
(declare-fun HasDirectPerm_10475_5100 (T@PolymorphicMapType_5047 T@Ref T@Field_10475_5100) Bool)
(declare-fun HasDirectPerm_10475_53 (T@PolymorphicMapType_5047 T@Ref T@Field_10475_53) Bool)
(declare-fun HasDirectPerm_9572_16427 (T@PolymorphicMapType_5047 T@Ref T@Field_12027_12032) Bool)
(declare-fun HasDirectPerm_9572_5100 (T@PolymorphicMapType_5047 T@Ref T@Field_9572_5100) Bool)
(declare-fun HasDirectPerm_9572_53 (T@PolymorphicMapType_5047 T@Ref T@Field_9572_53) Bool)
(declare-fun HasDirectPerm_8669_15487 (T@PolymorphicMapType_5047 T@Ref T@Field_11134_11139) Bool)
(declare-fun HasDirectPerm_8669_5100 (T@PolymorphicMapType_5047 T@Ref T@Field_8669_5100) Bool)
(declare-fun HasDirectPerm_8669_53 (T@PolymorphicMapType_5047 T@Ref T@Field_8669_53) Bool)
(declare-fun HasDirectPerm_5086_14547 (T@PolymorphicMapType_5047 T@Ref T@Field_5086_11139) Bool)
(declare-fun HasDirectPerm_5086_5100 (T@PolymorphicMapType_5047 T@Ref T@Field_5099_5100) Bool)
(declare-fun HasDirectPerm_5086_53 (T@PolymorphicMapType_5047 T@Ref T@Field_5086_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5047 T@PolymorphicMapType_5047 T@PolymorphicMapType_5047) Bool)
(declare-fun |fun#frame| (T@FrameType T@Ref) Bool)
(declare-fun |fun1#frame| (T@FrameType T@Ref) Bool)
(declare-fun |fun2#frame| (T@FrameType T@Ref) Bool)
(declare-fun getPredWandId_2898_2899 (T@Field_8669_8670) Int)
(declare-fun getPredWandId_2923_2924 (T@Field_9572_9573) Int)
(declare-fun getPredWandId_2948_2949 (T@Field_10475_10476) Int)
(declare-fun InsidePredicate_10475_9572 (T@Field_10475_10476 T@FrameType T@Field_9572_9573 T@FrameType) Bool)
(declare-fun InsidePredicate_10475_8669 (T@Field_10475_10476 T@FrameType T@Field_8669_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_10475_5086 (T@Field_10475_10476 T@FrameType T@Field_5086_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_9572_10475 (T@Field_9572_9573 T@FrameType T@Field_10475_10476 T@FrameType) Bool)
(declare-fun InsidePredicate_9572_8669 (T@Field_9572_9573 T@FrameType T@Field_8669_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_9572_5086 (T@Field_9572_9573 T@FrameType T@Field_5086_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_8669_10475 (T@Field_8669_8670 T@FrameType T@Field_10475_10476 T@FrameType) Bool)
(declare-fun InsidePredicate_8669_9572 (T@Field_8669_8670 T@FrameType T@Field_9572_9573 T@FrameType) Bool)
(declare-fun InsidePredicate_8669_5086 (T@Field_8669_8670 T@FrameType T@Field_5086_8670 T@FrameType) Bool)
(declare-fun InsidePredicate_5086_10475 (T@Field_5086_8670 T@FrameType T@Field_10475_10476 T@FrameType) Bool)
(declare-fun InsidePredicate_5086_9572 (T@Field_5086_8670 T@FrameType T@Field_9572_9573 T@FrameType) Bool)
(declare-fun InsidePredicate_5086_8669 (T@Field_5086_8670 T@FrameType T@Field_8669_8670 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5026) (Heap1 T@PolymorphicMapType_5026) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5026) (Mask T@PolymorphicMapType_5047) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5026) (Heap1@@0 T@PolymorphicMapType_5026) (Heap2 T@PolymorphicMapType_5026) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12920_12925) ) (!  (not (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10475_10476) ) (!  (not (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10475_5100) ) (!  (not (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10475_53) ) (!  (not (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12027_12032) ) (!  (not (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9572_9573) ) (!  (not (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9572_5100) ) (!  (not (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9572_53) ) (!  (not (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11134_11139) ) (!  (not (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8669_8670) ) (!  (not (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8669_5100) ) (!  (not (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8669_53) ) (!  (not (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5086_11139) ) (!  (not (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5086_8670) ) (!  (not (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5099_5100) ) (!  (not (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5086_53) ) (!  (not (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_2898_2899 (p_2 this))
 :qid |stdinbpl.366:15|
 :skolemid |35|
 :pattern ( (p_2 this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_2923_2924 (p1 this@@0))
 :qid |stdinbpl.420:15|
 :skolemid |41|
 :pattern ( (p1 this@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_2948_2949 (p2 this@@1))
 :qid |stdinbpl.474:15|
 :skolemid |47|
 :pattern ( (p2 this@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5026) (this@@2 T@Ref) ) (! (dummyFunction_1372 (|fun#triggerStateless| this@@2))
 :qid |stdinbpl.192:15|
 :skolemid |23|
 :pattern ( (|fun'| Heap@@0 this@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5026) (this@@3 T@Ref) ) (! (dummyFunction_1372 (|fun1#triggerStateless| this@@3))
 :qid |stdinbpl.250:15|
 :skolemid |27|
 :pattern ( (|fun1'| Heap@@1 this@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5026) (this@@4 T@Ref) ) (! (dummyFunction_1372 (|fun2#triggerStateless| this@@4))
 :qid |stdinbpl.308:15|
 :skolemid |31|
 :pattern ( (|fun2'| Heap@@2 this@@4))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5026) (this@@5 T@Ref) ) (! (|p#everUsed_2898| (p_2 this@@5))
 :qid |stdinbpl.385:15|
 :skolemid |39|
 :pattern ( (|p#trigger_2898| Heap@@3 (p_2 this@@5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5026) (this@@6 T@Ref) ) (! (|p1#everUsed_2923| (p1 this@@6))
 :qid |stdinbpl.439:15|
 :skolemid |45|
 :pattern ( (|p1#trigger_2923| Heap@@4 (p1 this@@6)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5026) (this@@7 T@Ref) ) (! (|p2#everUsed_2948| (p2 this@@7))
 :qid |stdinbpl.493:15|
 :skolemid |51|
 :pattern ( (|p2#trigger_2948| Heap@@5 (p2 this@@7)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5026) (ExhaleHeap T@PolymorphicMapType_5026) (Mask@@0 T@PolymorphicMapType_5047) (pm_f T@Field_10475_10476) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10475_8670 Mask@@0 null pm_f) (IsPredicateField_2948_2949 pm_f)) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@6) null (PredicateMaskField_2948 pm_f)) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap) null (PredicateMaskField_2948 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_2948_2949 pm_f) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap) null (PredicateMaskField_2948 pm_f)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5026) (ExhaleHeap@@0 T@PolymorphicMapType_5026) (Mask@@1 T@PolymorphicMapType_5047) (pm_f@@0 T@Field_9572_9573) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9572_8670 Mask@@1 null pm_f@@0) (IsPredicateField_2923_2924 pm_f@@0)) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@7) null (PredicateMaskField_2923 pm_f@@0)) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@0) null (PredicateMaskField_2923 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2923_2924 pm_f@@0) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@0) null (PredicateMaskField_2923 pm_f@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5026) (ExhaleHeap@@1 T@PolymorphicMapType_5026) (Mask@@2 T@PolymorphicMapType_5047) (pm_f@@1 T@Field_8669_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8669_8670 Mask@@2 null pm_f@@1) (IsPredicateField_2898_2899 pm_f@@1)) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@8) null (PredicateMaskField_2898 pm_f@@1)) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@1) null (PredicateMaskField_2898 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (IsPredicateField_2898_2899 pm_f@@1) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@1) null (PredicateMaskField_2898 pm_f@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5026) (ExhaleHeap@@2 T@PolymorphicMapType_5026) (Mask@@3 T@PolymorphicMapType_5047) (pm_f@@2 T@Field_5086_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5086_8670 Mask@@3 null pm_f@@2) (IsPredicateField_5086_17655 pm_f@@2)) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@9) null (PredicateMaskField_5086 pm_f@@2)) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@2) null (PredicateMaskField_5086 pm_f@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (IsPredicateField_5086_17655 pm_f@@2) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@2) null (PredicateMaskField_5086 pm_f@@2)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5026) (ExhaleHeap@@3 T@PolymorphicMapType_5026) (Mask@@4 T@PolymorphicMapType_5047) (pm_f@@3 T@Field_10475_10476) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10475_8670 Mask@@4 null pm_f@@3) (IsWandField_10475_24582 pm_f@@3)) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@10) null (WandMaskField_10475 pm_f@@3)) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@3) null (WandMaskField_10475 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (IsWandField_10475_24582 pm_f@@3) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@3) null (WandMaskField_10475 pm_f@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5026) (ExhaleHeap@@4 T@PolymorphicMapType_5026) (Mask@@5 T@PolymorphicMapType_5047) (pm_f@@4 T@Field_9572_9573) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_9572_8670 Mask@@5 null pm_f@@4) (IsWandField_9572_24225 pm_f@@4)) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@11) null (WandMaskField_9572 pm_f@@4)) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@4) null (WandMaskField_9572 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (IsWandField_9572_24225 pm_f@@4) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@4) null (WandMaskField_9572 pm_f@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5026) (ExhaleHeap@@5 T@PolymorphicMapType_5026) (Mask@@6 T@PolymorphicMapType_5047) (pm_f@@5 T@Field_8669_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8669_8670 Mask@@6 null pm_f@@5) (IsWandField_8669_23868 pm_f@@5)) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@12) null (WandMaskField_8669 pm_f@@5)) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@5) null (WandMaskField_8669 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (IsWandField_8669_23868 pm_f@@5) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@5) null (WandMaskField_8669 pm_f@@5)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5026) (ExhaleHeap@@6 T@PolymorphicMapType_5026) (Mask@@7 T@PolymorphicMapType_5047) (pm_f@@6 T@Field_5086_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5086_8670 Mask@@7 null pm_f@@6) (IsWandField_5086_23511 pm_f@@6)) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@13) null (WandMaskField_5086 pm_f@@6)) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@6) null (WandMaskField_5086 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (IsWandField_5086_23511 pm_f@@6) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@6) null (WandMaskField_5086 pm_f@@6)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5026) (Mask@@8 T@PolymorphicMapType_5047) (this@@8 T@Ref) ) (!  (=> (and (state Heap@@14 Mask@@8) (< AssumeFunctionsAbove 0)) (fun Heap@@14 this@@8))
 :qid |stdinbpl.198:15|
 :skolemid |24|
 :pattern ( (state Heap@@14 Mask@@8) (fun Heap@@14 this@@8))
 :pattern ( (state Heap@@14 Mask@@8) (|fun#triggerStateless| this@@8) (|p#trigger_2898| Heap@@14 (p_2 this@@8)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5026) (Mask@@9 T@PolymorphicMapType_5047) (this@@9 T@Ref) ) (!  (=> (and (state Heap@@15 Mask@@9) (< AssumeFunctionsAbove 1)) (fun2 Heap@@15 this@@9))
 :qid |stdinbpl.314:15|
 :skolemid |32|
 :pattern ( (state Heap@@15 Mask@@9) (fun2 Heap@@15 this@@9))
 :pattern ( (state Heap@@15 Mask@@9) (|fun2#triggerStateless| this@@9) (|p2#trigger_2948| Heap@@15 (p2 this@@9)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5026) (Mask@@10 T@PolymorphicMapType_5047) (this@@10 T@Ref) ) (!  (=> (and (state Heap@@16 Mask@@10) (< AssumeFunctionsAbove 2)) (fun1 Heap@@16 this@@10))
 :qid |stdinbpl.256:15|
 :skolemid |28|
 :pattern ( (state Heap@@16 Mask@@10) (fun1 Heap@@16 this@@10))
 :pattern ( (state Heap@@16 Mask@@10) (|fun1#triggerStateless| this@@10) (|p1#trigger_2923| Heap@@16 (p1 this@@10)))
)))
(assert (forall ((this@@11 T@Ref) (this2 T@Ref) ) (!  (=> (= (p_2 this@@11) (p_2 this2)) (= this@@11 this2))
 :qid |stdinbpl.376:15|
 :skolemid |37|
 :pattern ( (p_2 this@@11) (p_2 this2))
)))
(assert (forall ((this@@12 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|p#sm| this@@12) (|p#sm| this2@@0)) (= this@@12 this2@@0))
 :qid |stdinbpl.380:15|
 :skolemid |38|
 :pattern ( (|p#sm| this@@12) (|p#sm| this2@@0))
)))
(assert (forall ((this@@13 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (p1 this@@13) (p1 this2@@1)) (= this@@13 this2@@1))
 :qid |stdinbpl.430:15|
 :skolemid |43|
 :pattern ( (p1 this@@13) (p1 this2@@1))
)))
(assert (forall ((this@@14 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|p1#sm| this@@14) (|p1#sm| this2@@2)) (= this@@14 this2@@2))
 :qid |stdinbpl.434:15|
 :skolemid |44|
 :pattern ( (|p1#sm| this@@14) (|p1#sm| this2@@2))
)))
(assert (forall ((this@@15 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (p2 this@@15) (p2 this2@@3)) (= this@@15 this2@@3))
 :qid |stdinbpl.484:15|
 :skolemid |49|
 :pattern ( (p2 this@@15) (p2 this2@@3))
)))
(assert (forall ((this@@16 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|p2#sm| this@@16) (|p2#sm| this2@@4)) (= this@@16 this2@@4))
 :qid |stdinbpl.488:15|
 :skolemid |50|
 :pattern ( (|p2#sm| this@@16) (|p2#sm| this2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5026) (ExhaleHeap@@7 T@PolymorphicMapType_5026) (Mask@@11 T@PolymorphicMapType_5047) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@11) (=> (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@17) o_1 $allocated) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@11) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_10475_10476) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10475_10475 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10475_10475 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9572_9573) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9572_9572 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9572_9572 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_8669_8670) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_8669_8669 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8669_8669 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_5086_8670) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_5086_5086 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5086_5086 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5026) (ExhaleHeap@@8 T@PolymorphicMapType_5026) (Mask@@12 T@PolymorphicMapType_5047) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@12) (succHeap Heap@@18 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5047) (o_2@@15 T@Ref) (f_4@@15 T@Field_5086_11139) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| Mask@@13) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5086_35876 f_4@@15))) (not (IsWandField_5086_35892 f_4@@15))) (<= (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| Mask@@13) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| Mask@@13) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5047) (o_2@@16 T@Ref) (f_4@@16 T@Field_5099_5100) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| Mask@@14) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5086_5100 f_4@@16))) (not (IsWandField_5086_5100 f_4@@16))) (<= (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| Mask@@14) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| Mask@@14) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5047) (o_2@@17 T@Ref) (f_4@@17 T@Field_5086_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| Mask@@15) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5086_53 f_4@@17))) (not (IsWandField_5086_53 f_4@@17))) (<= (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| Mask@@15) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| Mask@@15) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5047) (o_2@@18 T@Ref) (f_4@@18 T@Field_5086_8670) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| Mask@@16) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5086_17655 f_4@@18))) (not (IsWandField_5086_23511 f_4@@18))) (<= (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| Mask@@16) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| Mask@@16) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5047) (o_2@@19 T@Ref) (f_4@@19 T@Field_12920_12925) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| Mask@@17) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2948_35213 f_4@@19))) (not (IsWandField_2948_35229 f_4@@19))) (<= (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| Mask@@17) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| Mask@@17) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5047) (o_2@@20 T@Ref) (f_4@@20 T@Field_10475_5100) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| Mask@@18) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2948_5100 f_4@@20))) (not (IsWandField_2948_5100 f_4@@20))) (<= (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| Mask@@18) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| Mask@@18) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5047) (o_2@@21 T@Ref) (f_4@@21 T@Field_10475_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| Mask@@19) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2948_53 f_4@@21))) (not (IsWandField_2948_53 f_4@@21))) (<= (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| Mask@@19) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| Mask@@19) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5047) (o_2@@22 T@Ref) (f_4@@22 T@Field_10475_10476) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| Mask@@20) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2948_2949 f_4@@22))) (not (IsWandField_10475_24582 f_4@@22))) (<= (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| Mask@@20) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| Mask@@20) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5047) (o_2@@23 T@Ref) (f_4@@23 T@Field_12027_12032) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| Mask@@21) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_2923_34550 f_4@@23))) (not (IsWandField_2923_34566 f_4@@23))) (<= (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| Mask@@21) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| Mask@@21) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5047) (o_2@@24 T@Ref) (f_4@@24 T@Field_9572_5100) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| Mask@@22) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_2923_5100 f_4@@24))) (not (IsWandField_2923_5100 f_4@@24))) (<= (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| Mask@@22) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| Mask@@22) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5047) (o_2@@25 T@Ref) (f_4@@25 T@Field_9572_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| Mask@@23) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_2923_53 f_4@@25))) (not (IsWandField_2923_53 f_4@@25))) (<= (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| Mask@@23) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| Mask@@23) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5047) (o_2@@26 T@Ref) (f_4@@26 T@Field_9572_9573) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| Mask@@24) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_2923_2924 f_4@@26))) (not (IsWandField_9572_24225 f_4@@26))) (<= (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| Mask@@24) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| Mask@@24) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5047) (o_2@@27 T@Ref) (f_4@@27 T@Field_11134_11139) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| Mask@@25) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_2898_33887 f_4@@27))) (not (IsWandField_2898_33903 f_4@@27))) (<= (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| Mask@@25) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| Mask@@25) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5047) (o_2@@28 T@Ref) (f_4@@28 T@Field_8669_5100) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| Mask@@26) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_2898_5100 f_4@@28))) (not (IsWandField_2898_5100 f_4@@28))) (<= (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| Mask@@26) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| Mask@@26) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_5047) (o_2@@29 T@Ref) (f_4@@29 T@Field_8669_53) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| Mask@@27) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_2898_53 f_4@@29))) (not (IsWandField_2898_53 f_4@@29))) (<= (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| Mask@@27) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| Mask@@27) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_5047) (o_2@@30 T@Ref) (f_4@@30 T@Field_8669_8670) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| Mask@@28) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_2898_2899 f_4@@30))) (not (IsWandField_8669_23868 f_4@@30))) (<= (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| Mask@@28) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| Mask@@28) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_5047) (o_2@@31 T@Ref) (f_4@@31 T@Field_12920_12925) ) (! (= (HasDirectPerm_10475_17367 Mask@@29 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| Mask@@29) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10475_17367 Mask@@29 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_5047) (o_2@@32 T@Ref) (f_4@@32 T@Field_10475_10476) ) (! (= (HasDirectPerm_10475_8670 Mask@@30 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| Mask@@30) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10475_8670 Mask@@30 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_5047) (o_2@@33 T@Ref) (f_4@@33 T@Field_10475_5100) ) (! (= (HasDirectPerm_10475_5100 Mask@@31 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| Mask@@31) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10475_5100 Mask@@31 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_5047) (o_2@@34 T@Ref) (f_4@@34 T@Field_10475_53) ) (! (= (HasDirectPerm_10475_53 Mask@@32 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| Mask@@32) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10475_53 Mask@@32 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_5047) (o_2@@35 T@Ref) (f_4@@35 T@Field_12027_12032) ) (! (= (HasDirectPerm_9572_16427 Mask@@33 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| Mask@@33) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9572_16427 Mask@@33 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_5047) (o_2@@36 T@Ref) (f_4@@36 T@Field_9572_9573) ) (! (= (HasDirectPerm_9572_8670 Mask@@34 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| Mask@@34) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9572_8670 Mask@@34 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_5047) (o_2@@37 T@Ref) (f_4@@37 T@Field_9572_5100) ) (! (= (HasDirectPerm_9572_5100 Mask@@35 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| Mask@@35) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9572_5100 Mask@@35 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_5047) (o_2@@38 T@Ref) (f_4@@38 T@Field_9572_53) ) (! (= (HasDirectPerm_9572_53 Mask@@36 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| Mask@@36) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9572_53 Mask@@36 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_5047) (o_2@@39 T@Ref) (f_4@@39 T@Field_11134_11139) ) (! (= (HasDirectPerm_8669_15487 Mask@@37 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| Mask@@37) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8669_15487 Mask@@37 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_5047) (o_2@@40 T@Ref) (f_4@@40 T@Field_8669_8670) ) (! (= (HasDirectPerm_8669_8670 Mask@@38 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| Mask@@38) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8669_8670 Mask@@38 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_5047) (o_2@@41 T@Ref) (f_4@@41 T@Field_8669_5100) ) (! (= (HasDirectPerm_8669_5100 Mask@@39 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| Mask@@39) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8669_5100 Mask@@39 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_5047) (o_2@@42 T@Ref) (f_4@@42 T@Field_8669_53) ) (! (= (HasDirectPerm_8669_53 Mask@@40 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| Mask@@40) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8669_53 Mask@@40 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_5047) (o_2@@43 T@Ref) (f_4@@43 T@Field_5086_11139) ) (! (= (HasDirectPerm_5086_14547 Mask@@41 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| Mask@@41) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5086_14547 Mask@@41 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_5047) (o_2@@44 T@Ref) (f_4@@44 T@Field_5086_8670) ) (! (= (HasDirectPerm_5086_8670 Mask@@42 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| Mask@@42) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5086_8670 Mask@@42 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_5047) (o_2@@45 T@Ref) (f_4@@45 T@Field_5099_5100) ) (! (= (HasDirectPerm_5086_5100 Mask@@43 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| Mask@@43) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5086_5100 Mask@@43 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_5047) (o_2@@46 T@Ref) (f_4@@46 T@Field_5086_53) ) (! (= (HasDirectPerm_5086_53 Mask@@44 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| Mask@@44) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5086_53 Mask@@44 o_2@@46 f_4@@46))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5026) (ExhaleHeap@@9 T@PolymorphicMapType_5026) (Mask@@45 T@PolymorphicMapType_5047) (o_1@@0 T@Ref) (f_2 T@Field_12920_12925) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@45) (=> (HasDirectPerm_10475_17367 Mask@@45 o_1@@0 f_2) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@19) o_1@@0 f_2) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@9) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@45) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@9) o_1@@0 f_2))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5026) (ExhaleHeap@@10 T@PolymorphicMapType_5026) (Mask@@46 T@PolymorphicMapType_5047) (o_1@@1 T@Ref) (f_2@@0 T@Field_10475_10476) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@46) (=> (HasDirectPerm_10475_8670 Mask@@46 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@20) o_1@@1 f_2@@0) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@10) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@46) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@10) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5026) (ExhaleHeap@@11 T@PolymorphicMapType_5026) (Mask@@47 T@PolymorphicMapType_5047) (o_1@@2 T@Ref) (f_2@@1 T@Field_10475_5100) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@47) (=> (HasDirectPerm_10475_5100 Mask@@47 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@21) o_1@@2 f_2@@1) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@11) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@47) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@11) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5026) (ExhaleHeap@@12 T@PolymorphicMapType_5026) (Mask@@48 T@PolymorphicMapType_5047) (o_1@@3 T@Ref) (f_2@@2 T@Field_10475_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@48) (=> (HasDirectPerm_10475_53 Mask@@48 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@22) o_1@@3 f_2@@2) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@12) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@48) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@12) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5026) (ExhaleHeap@@13 T@PolymorphicMapType_5026) (Mask@@49 T@PolymorphicMapType_5047) (o_1@@4 T@Ref) (f_2@@3 T@Field_12027_12032) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@49) (=> (HasDirectPerm_9572_16427 Mask@@49 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@23) o_1@@4 f_2@@3) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@13) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@49) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@13) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5026) (ExhaleHeap@@14 T@PolymorphicMapType_5026) (Mask@@50 T@PolymorphicMapType_5047) (o_1@@5 T@Ref) (f_2@@4 T@Field_9572_9573) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@50) (=> (HasDirectPerm_9572_8670 Mask@@50 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@24) o_1@@5 f_2@@4) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@14) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@50) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@14) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5026) (ExhaleHeap@@15 T@PolymorphicMapType_5026) (Mask@@51 T@PolymorphicMapType_5047) (o_1@@6 T@Ref) (f_2@@5 T@Field_9572_5100) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@51) (=> (HasDirectPerm_9572_5100 Mask@@51 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@25) o_1@@6 f_2@@5) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@15) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@51) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@15) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5026) (ExhaleHeap@@16 T@PolymorphicMapType_5026) (Mask@@52 T@PolymorphicMapType_5047) (o_1@@7 T@Ref) (f_2@@6 T@Field_9572_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@52) (=> (HasDirectPerm_9572_53 Mask@@52 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@26) o_1@@7 f_2@@6) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@16) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@52) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@16) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5026) (ExhaleHeap@@17 T@PolymorphicMapType_5026) (Mask@@53 T@PolymorphicMapType_5047) (o_1@@8 T@Ref) (f_2@@7 T@Field_11134_11139) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@53) (=> (HasDirectPerm_8669_15487 Mask@@53 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@27) o_1@@8 f_2@@7) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@17) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@53) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@17) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5026) (ExhaleHeap@@18 T@PolymorphicMapType_5026) (Mask@@54 T@PolymorphicMapType_5047) (o_1@@9 T@Ref) (f_2@@8 T@Field_8669_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@54) (=> (HasDirectPerm_8669_8670 Mask@@54 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@28) o_1@@9 f_2@@8) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@18) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@54) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@18) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5026) (ExhaleHeap@@19 T@PolymorphicMapType_5026) (Mask@@55 T@PolymorphicMapType_5047) (o_1@@10 T@Ref) (f_2@@9 T@Field_8669_5100) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@55) (=> (HasDirectPerm_8669_5100 Mask@@55 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@29) o_1@@10 f_2@@9) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@19) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@55) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@19) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5026) (ExhaleHeap@@20 T@PolymorphicMapType_5026) (Mask@@56 T@PolymorphicMapType_5047) (o_1@@11 T@Ref) (f_2@@10 T@Field_8669_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@56) (=> (HasDirectPerm_8669_53 Mask@@56 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@30) o_1@@11 f_2@@10) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@20) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@56) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@20) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5026) (ExhaleHeap@@21 T@PolymorphicMapType_5026) (Mask@@57 T@PolymorphicMapType_5047) (o_1@@12 T@Ref) (f_2@@11 T@Field_5086_11139) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@57) (=> (HasDirectPerm_5086_14547 Mask@@57 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@31) o_1@@12 f_2@@11) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@21) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@57) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@21) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5026) (ExhaleHeap@@22 T@PolymorphicMapType_5026) (Mask@@58 T@PolymorphicMapType_5047) (o_1@@13 T@Ref) (f_2@@12 T@Field_5086_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@58) (=> (HasDirectPerm_5086_8670 Mask@@58 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@32) o_1@@13 f_2@@12) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@22) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@58) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@22) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5026) (ExhaleHeap@@23 T@PolymorphicMapType_5026) (Mask@@59 T@PolymorphicMapType_5047) (o_1@@14 T@Ref) (f_2@@13 T@Field_5099_5100) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@59) (=> (HasDirectPerm_5086_5100 Mask@@59 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@33) o_1@@14 f_2@@13) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@23) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@59) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@23) o_1@@14 f_2@@13))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5026) (ExhaleHeap@@24 T@PolymorphicMapType_5026) (Mask@@60 T@PolymorphicMapType_5047) (o_1@@15 T@Ref) (f_2@@14 T@Field_5086_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@60) (=> (HasDirectPerm_5086_53 Mask@@60 o_1@@15 f_2@@14) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@34) o_1@@15 f_2@@14) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@24) o_1@@15 f_2@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@60) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@24) o_1@@15 f_2@@14))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_5086_11139) ) (! (= (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_5099_5100) ) (! (= (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_5086_53) ) (! (= (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_5086_8670) ) (! (= (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_12920_12925) ) (! (= (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_10475_5100) ) (! (= (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_10475_53) ) (! (= (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_10475_10476) ) (! (= (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_12027_12032) ) (! (= (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_9572_5100) ) (! (= (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_9572_53) ) (! (= (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_9572_9573) ) (! (= (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_11134_11139) ) (! (= (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_8669_5100) ) (! (= (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_8669_53) ) (! (= (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_8669_8670) ) (! (= (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5047) (SummandMask1 T@PolymorphicMapType_5047) (SummandMask2 T@PolymorphicMapType_5047) (o_2@@63 T@Ref) (f_4@@63 T@Field_5086_11139) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| ResultMask) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| SummandMask1) o_2@@63 f_4@@63) (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| SummandMask2) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| ResultMask) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| SummandMask1) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5047_5086_32180#PolymorphicMapType_5047| SummandMask2) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5047) (SummandMask1@@0 T@PolymorphicMapType_5047) (SummandMask2@@0 T@PolymorphicMapType_5047) (o_2@@64 T@Ref) (f_4@@64 T@Field_5099_5100) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| ResultMask@@0) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| SummandMask1@@0) o_2@@64 f_4@@64) (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| SummandMask2@@0) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| ResultMask@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| SummandMask1@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5047_5086_5100#PolymorphicMapType_5047| SummandMask2@@0) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5047) (SummandMask1@@1 T@PolymorphicMapType_5047) (SummandMask2@@1 T@PolymorphicMapType_5047) (o_2@@65 T@Ref) (f_4@@65 T@Field_5086_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| ResultMask@@1) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| SummandMask1@@1) o_2@@65 f_4@@65) (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| SummandMask2@@1) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| ResultMask@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| SummandMask1@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5047_5086_53#PolymorphicMapType_5047| SummandMask2@@1) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5047) (SummandMask1@@2 T@PolymorphicMapType_5047) (SummandMask2@@2 T@PolymorphicMapType_5047) (o_2@@66 T@Ref) (f_4@@66 T@Field_5086_8670) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| ResultMask@@2) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| SummandMask1@@2) o_2@@66 f_4@@66) (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| SummandMask2@@2) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| ResultMask@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| SummandMask1@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5047_5086_2899#PolymorphicMapType_5047| SummandMask2@@2) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5047) (SummandMask1@@3 T@PolymorphicMapType_5047) (SummandMask2@@3 T@PolymorphicMapType_5047) (o_2@@67 T@Ref) (f_4@@67 T@Field_12920_12925) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| ResultMask@@3) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| SummandMask1@@3) o_2@@67 f_4@@67) (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| SummandMask2@@3) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| ResultMask@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| SummandMask1@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5047_2948_31834#PolymorphicMapType_5047| SummandMask2@@3) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5047) (SummandMask1@@4 T@PolymorphicMapType_5047) (SummandMask2@@4 T@PolymorphicMapType_5047) (o_2@@68 T@Ref) (f_4@@68 T@Field_10475_5100) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| ResultMask@@4) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| SummandMask1@@4) o_2@@68 f_4@@68) (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| SummandMask2@@4) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| ResultMask@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| SummandMask1@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5047_2948_5100#PolymorphicMapType_5047| SummandMask2@@4) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5047) (SummandMask1@@5 T@PolymorphicMapType_5047) (SummandMask2@@5 T@PolymorphicMapType_5047) (o_2@@69 T@Ref) (f_4@@69 T@Field_10475_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| ResultMask@@5) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| SummandMask1@@5) o_2@@69 f_4@@69) (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| SummandMask2@@5) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| ResultMask@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| SummandMask1@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5047_2948_53#PolymorphicMapType_5047| SummandMask2@@5) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5047) (SummandMask1@@6 T@PolymorphicMapType_5047) (SummandMask2@@6 T@PolymorphicMapType_5047) (o_2@@70 T@Ref) (f_4@@70 T@Field_10475_10476) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| ResultMask@@6) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| SummandMask1@@6) o_2@@70 f_4@@70) (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| SummandMask2@@6) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| ResultMask@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| SummandMask1@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5047_2948_2949#PolymorphicMapType_5047| SummandMask2@@6) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_5047) (SummandMask1@@7 T@PolymorphicMapType_5047) (SummandMask2@@7 T@PolymorphicMapType_5047) (o_2@@71 T@Ref) (f_4@@71 T@Field_12027_12032) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| ResultMask@@7) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| SummandMask1@@7) o_2@@71 f_4@@71) (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| SummandMask2@@7) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| ResultMask@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| SummandMask1@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5047_2923_31503#PolymorphicMapType_5047| SummandMask2@@7) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_5047) (SummandMask1@@8 T@PolymorphicMapType_5047) (SummandMask2@@8 T@PolymorphicMapType_5047) (o_2@@72 T@Ref) (f_4@@72 T@Field_9572_5100) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| ResultMask@@8) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| SummandMask1@@8) o_2@@72 f_4@@72) (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| SummandMask2@@8) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| ResultMask@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| SummandMask1@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5047_2923_5100#PolymorphicMapType_5047| SummandMask2@@8) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_5047) (SummandMask1@@9 T@PolymorphicMapType_5047) (SummandMask2@@9 T@PolymorphicMapType_5047) (o_2@@73 T@Ref) (f_4@@73 T@Field_9572_53) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| ResultMask@@9) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| SummandMask1@@9) o_2@@73 f_4@@73) (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| SummandMask2@@9) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| ResultMask@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| SummandMask1@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5047_2923_53#PolymorphicMapType_5047| SummandMask2@@9) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_5047) (SummandMask1@@10 T@PolymorphicMapType_5047) (SummandMask2@@10 T@PolymorphicMapType_5047) (o_2@@74 T@Ref) (f_4@@74 T@Field_9572_9573) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| ResultMask@@10) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| SummandMask1@@10) o_2@@74 f_4@@74) (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| SummandMask2@@10) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| ResultMask@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| SummandMask1@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5047_2923_2924#PolymorphicMapType_5047| SummandMask2@@10) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_5047) (SummandMask1@@11 T@PolymorphicMapType_5047) (SummandMask2@@11 T@PolymorphicMapType_5047) (o_2@@75 T@Ref) (f_4@@75 T@Field_11134_11139) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| ResultMask@@11) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| SummandMask1@@11) o_2@@75 f_4@@75) (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| SummandMask2@@11) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| ResultMask@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| SummandMask1@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5047_2898_31172#PolymorphicMapType_5047| SummandMask2@@11) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_5047) (SummandMask1@@12 T@PolymorphicMapType_5047) (SummandMask2@@12 T@PolymorphicMapType_5047) (o_2@@76 T@Ref) (f_4@@76 T@Field_8669_5100) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| ResultMask@@12) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| SummandMask1@@12) o_2@@76 f_4@@76) (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| SummandMask2@@12) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| ResultMask@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| SummandMask1@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5047_2898_5100#PolymorphicMapType_5047| SummandMask2@@12) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_5047) (SummandMask1@@13 T@PolymorphicMapType_5047) (SummandMask2@@13 T@PolymorphicMapType_5047) (o_2@@77 T@Ref) (f_4@@77 T@Field_8669_53) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| ResultMask@@13) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| SummandMask1@@13) o_2@@77 f_4@@77) (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| SummandMask2@@13) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| ResultMask@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| SummandMask1@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5047_2898_53#PolymorphicMapType_5047| SummandMask2@@13) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_5047) (SummandMask1@@14 T@PolymorphicMapType_5047) (SummandMask2@@14 T@PolymorphicMapType_5047) (o_2@@78 T@Ref) (f_4@@78 T@Field_8669_8670) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| ResultMask@@14) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| SummandMask1@@14) o_2@@78 f_4@@78) (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| SummandMask2@@14) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| ResultMask@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| SummandMask1@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5047_2898_2899#PolymorphicMapType_5047| SummandMask2@@14) o_2@@78 f_4@@78))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5026) (Mask@@61 T@PolymorphicMapType_5047) (this@@17 T@Ref) ) (!  (=> (state Heap@@35 Mask@@61) (= (|fun'| Heap@@35 this@@17) (|fun#frame| (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@35) null (p_2 this@@17)) this@@17)))
 :qid |stdinbpl.205:15|
 :skolemid |25|
 :pattern ( (state Heap@@35 Mask@@61) (|fun'| Heap@@35 this@@17))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5026) (Mask@@62 T@PolymorphicMapType_5047) (this@@18 T@Ref) ) (!  (=> (state Heap@@36 Mask@@62) (= (|fun1'| Heap@@36 this@@18) (|fun1#frame| (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@36) null (p1 this@@18)) this@@18)))
 :qid |stdinbpl.263:15|
 :skolemid |29|
 :pattern ( (state Heap@@36 Mask@@62) (|fun1'| Heap@@36 this@@18))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5026) (Mask@@63 T@PolymorphicMapType_5047) (this@@19 T@Ref) ) (!  (=> (state Heap@@37 Mask@@63) (= (|fun2'| Heap@@37 this@@19) (|fun2#frame| (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@37) null (p2 this@@19)) this@@19)))
 :qid |stdinbpl.321:15|
 :skolemid |33|
 :pattern ( (state Heap@@37 Mask@@63) (|fun2'| Heap@@37 this@@19))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5026) (this@@20 T@Ref) ) (!  (and (= (fun Heap@@38 this@@20) (|fun'| Heap@@38 this@@20)) (dummyFunction_1372 (|fun#triggerStateless| this@@20)))
 :qid |stdinbpl.188:15|
 :skolemid |22|
 :pattern ( (fun Heap@@38 this@@20))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5026) (this@@21 T@Ref) ) (!  (and (= (fun1 Heap@@39 this@@21) (|fun1'| Heap@@39 this@@21)) (dummyFunction_1372 (|fun1#triggerStateless| this@@21)))
 :qid |stdinbpl.246:15|
 :skolemid |26|
 :pattern ( (fun1 Heap@@39 this@@21))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5026) (this@@22 T@Ref) ) (!  (and (= (fun2 Heap@@40 this@@22) (|fun2'| Heap@@40 this@@22)) (dummyFunction_1372 (|fun2#triggerStateless| this@@22)))
 :qid |stdinbpl.304:15|
 :skolemid |30|
 :pattern ( (fun2 Heap@@40 this@@22))
)))
(assert (forall ((this@@23 T@Ref) ) (! (= (getPredWandId_2898_2899 (p_2 this@@23)) 0)
 :qid |stdinbpl.370:15|
 :skolemid |36|
 :pattern ( (p_2 this@@23))
)))
(assert (forall ((this@@24 T@Ref) ) (! (= (getPredWandId_2923_2924 (p1 this@@24)) 1)
 :qid |stdinbpl.424:15|
 :skolemid |42|
 :pattern ( (p1 this@@24))
)))
(assert (forall ((this@@25 T@Ref) ) (! (= (getPredWandId_2948_2949 (p2 this@@25)) 2)
 :qid |stdinbpl.478:15|
 :skolemid |48|
 :pattern ( (p2 this@@25))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5026) (o T@Ref) (f_3 T@Field_12920_12925) (v T@PolymorphicMapType_5575) ) (! (succHeap Heap@@41 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@41) (store (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@41) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@41) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@41) (store (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@41) o f_3 v)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5026) (o@@0 T@Ref) (f_3@@0 T@Field_10475_10476) (v@@0 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@42) (store (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@42) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@42) (store (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@42) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@42) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5026) (o@@1 T@Ref) (f_3@@1 T@Field_10475_5100) (v@@1 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@43) (store (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@43) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@43) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@43) (store (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@43) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_5026) (o@@2 T@Ref) (f_3@@2 T@Field_10475_53) (v@@2 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@44) (store (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@44) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@44) (store (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@44) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@44) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_5026) (o@@3 T@Ref) (f_3@@3 T@Field_12027_12032) (v@@3 T@PolymorphicMapType_5575) ) (! (succHeap Heap@@45 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@45) (store (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@45) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@45) (store (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@45) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@45) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_5026) (o@@4 T@Ref) (f_3@@4 T@Field_9572_9573) (v@@4 T@FrameType) ) (! (succHeap Heap@@46 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@46) (store (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@46) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@46) (store (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@46) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@46) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_5026) (o@@5 T@Ref) (f_3@@5 T@Field_9572_5100) (v@@5 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@47) (store (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@47) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@47) (store (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@47) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@47) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_5026) (o@@6 T@Ref) (f_3@@6 T@Field_9572_53) (v@@6 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@48) (store (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@48) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@48) (store (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@48) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@48) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_5026) (o@@7 T@Ref) (f_3@@7 T@Field_11134_11139) (v@@7 T@PolymorphicMapType_5575) ) (! (succHeap Heap@@49 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@49) (store (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@49) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@49) (store (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@49) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@49) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_5026) (o@@8 T@Ref) (f_3@@8 T@Field_8669_8670) (v@@8 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@50) (store (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@50) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@50) (store (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@50) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@50) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_5026) (o@@9 T@Ref) (f_3@@9 T@Field_8669_5100) (v@@9 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@51) (store (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@51) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@51) (store (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@51) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@51) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_5026) (o@@10 T@Ref) (f_3@@10 T@Field_8669_53) (v@@10 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@52) (store (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@52) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@52) (store (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@52) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@52) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_5026) (o@@11 T@Ref) (f_3@@11 T@Field_5086_11139) (v@@11 T@PolymorphicMapType_5575) ) (! (succHeap Heap@@53 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@53) (store (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@53) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@53) (store (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@53) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@53) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_5026) (o@@12 T@Ref) (f_3@@12 T@Field_5086_8670) (v@@12 T@FrameType) ) (! (succHeap Heap@@54 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@54) (store (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@54) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@54) (store (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@54) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@54) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_5026) (o@@13 T@Ref) (f_3@@13 T@Field_5099_5100) (v@@13 T@Ref) ) (! (succHeap Heap@@55 (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@55) (store (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@55) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@55) (store (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@55) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@55) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_5026) (o@@14 T@Ref) (f_3@@14 T@Field_5086_53) (v@@14 Bool) ) (! (succHeap Heap@@56 (PolymorphicMapType_5026 (store (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@56) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5026 (store (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@56) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@56) (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@56)))
)))
(assert (forall ((this@@26 T@Ref) ) (! (= (PredicateMaskField_2898 (p_2 this@@26)) (|p#sm| this@@26))
 :qid |stdinbpl.362:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_2898 (p_2 this@@26)))
)))
(assert (forall ((this@@27 T@Ref) ) (! (= (PredicateMaskField_2923 (p1 this@@27)) (|p1#sm| this@@27))
 :qid |stdinbpl.416:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_2923 (p1 this@@27)))
)))
(assert (forall ((this@@28 T@Ref) ) (! (= (PredicateMaskField_2948 (p2 this@@28)) (|p2#sm| this@@28))
 :qid |stdinbpl.470:15|
 :skolemid |46|
 :pattern ( (PredicateMaskField_2948 (p2 this@@28)))
)))
(assert (forall ((o@@15 T@Ref) (f T@Field_5099_5100) (Heap@@57 T@PolymorphicMapType_5026) ) (!  (=> (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@57) o@@15 $allocated) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@57) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@57) o@@15 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@57) o@@15 f))
)))
(assert (forall ((p@@4 T@Field_10475_10476) (v_1@@3 T@FrameType) (q T@Field_10475_10476) (w@@3 T@FrameType) (r T@Field_10475_10476) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10475_10475 p@@4 v_1@@3 q w@@3) (InsidePredicate_10475_10475 q w@@3 r u)) (InsidePredicate_10475_10475 p@@4 v_1@@3 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_10475 p@@4 v_1@@3 q w@@3) (InsidePredicate_10475_10475 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_10475_10476) (v_1@@4 T@FrameType) (q@@0 T@Field_10475_10476) (w@@4 T@FrameType) (r@@0 T@Field_9572_9573) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_10475 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_10475_9572 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_10475_9572 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_10475 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_10475_9572 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_10475_10476) (v_1@@5 T@FrameType) (q@@1 T@Field_10475_10476) (w@@5 T@FrameType) (r@@1 T@Field_8669_8670) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_10475 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_10475_8669 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_10475_8669 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_10475 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_10475_8669 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_10475_10476) (v_1@@6 T@FrameType) (q@@2 T@Field_10475_10476) (w@@6 T@FrameType) (r@@2 T@Field_5086_8670) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_10475 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_10475_5086 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_10475_5086 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_10475 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_10475_5086 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_10475_10476) (v_1@@7 T@FrameType) (q@@3 T@Field_9572_9573) (w@@7 T@FrameType) (r@@3 T@Field_10475_10476) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_9572 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_9572_10475 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_10475_10475 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_9572 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_9572_10475 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_10475_10476) (v_1@@8 T@FrameType) (q@@4 T@Field_9572_9573) (w@@8 T@FrameType) (r@@4 T@Field_9572_9573) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_9572 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_9572_9572 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_10475_9572 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_9572 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_9572_9572 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_10475_10476) (v_1@@9 T@FrameType) (q@@5 T@Field_9572_9573) (w@@9 T@FrameType) (r@@5 T@Field_8669_8670) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_9572 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_9572_8669 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_10475_8669 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_9572 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_9572_8669 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_10475_10476) (v_1@@10 T@FrameType) (q@@6 T@Field_9572_9573) (w@@10 T@FrameType) (r@@6 T@Field_5086_8670) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_9572 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_9572_5086 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_10475_5086 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_9572 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_9572_5086 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_10475_10476) (v_1@@11 T@FrameType) (q@@7 T@Field_8669_8670) (w@@11 T@FrameType) (r@@7 T@Field_10475_10476) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_8669 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_8669_10475 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_10475_10475 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_8669 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_8669_10475 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_10475_10476) (v_1@@12 T@FrameType) (q@@8 T@Field_8669_8670) (w@@12 T@FrameType) (r@@8 T@Field_9572_9573) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_8669 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_8669_9572 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_10475_9572 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_8669 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_8669_9572 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_10475_10476) (v_1@@13 T@FrameType) (q@@9 T@Field_8669_8670) (w@@13 T@FrameType) (r@@9 T@Field_8669_8670) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_8669 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_8669_8669 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_10475_8669 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_8669 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_8669_8669 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_10475_10476) (v_1@@14 T@FrameType) (q@@10 T@Field_8669_8670) (w@@14 T@FrameType) (r@@10 T@Field_5086_8670) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_8669 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_8669_5086 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_10475_5086 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_8669 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_8669_5086 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_10475_10476) (v_1@@15 T@FrameType) (q@@11 T@Field_5086_8670) (w@@15 T@FrameType) (r@@11 T@Field_10475_10476) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_5086 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_5086_10475 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_10475_10475 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_5086 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_5086_10475 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_10475_10476) (v_1@@16 T@FrameType) (q@@12 T@Field_5086_8670) (w@@16 T@FrameType) (r@@12 T@Field_9572_9573) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_5086 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_5086_9572 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_10475_9572 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_5086 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_5086_9572 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_10475_10476) (v_1@@17 T@FrameType) (q@@13 T@Field_5086_8670) (w@@17 T@FrameType) (r@@13 T@Field_8669_8670) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_5086 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_5086_8669 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_10475_8669 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_5086 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_5086_8669 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_10475_10476) (v_1@@18 T@FrameType) (q@@14 T@Field_5086_8670) (w@@18 T@FrameType) (r@@14 T@Field_5086_8670) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_10475_5086 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_5086_5086 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_10475_5086 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10475_5086 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_5086_5086 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_9572_9573) (v_1@@19 T@FrameType) (q@@15 T@Field_10475_10476) (w@@19 T@FrameType) (r@@15 T@Field_10475_10476) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_10475 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_10475_10475 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_9572_10475 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_10475 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_10475_10475 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_9572_9573) (v_1@@20 T@FrameType) (q@@16 T@Field_10475_10476) (w@@20 T@FrameType) (r@@16 T@Field_9572_9573) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_10475 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_10475_9572 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_9572_9572 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_10475 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_10475_9572 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_9572_9573) (v_1@@21 T@FrameType) (q@@17 T@Field_10475_10476) (w@@21 T@FrameType) (r@@17 T@Field_8669_8670) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_10475 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_10475_8669 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_9572_8669 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_10475 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_10475_8669 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_9572_9573) (v_1@@22 T@FrameType) (q@@18 T@Field_10475_10476) (w@@22 T@FrameType) (r@@18 T@Field_5086_8670) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_10475 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_10475_5086 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_9572_5086 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_10475 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_10475_5086 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_9572_9573) (v_1@@23 T@FrameType) (q@@19 T@Field_9572_9573) (w@@23 T@FrameType) (r@@19 T@Field_10475_10476) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_9572 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_9572_10475 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_9572_10475 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_9572 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_9572_10475 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_9572_9573) (v_1@@24 T@FrameType) (q@@20 T@Field_9572_9573) (w@@24 T@FrameType) (r@@20 T@Field_9572_9573) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_9572 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_9572_9572 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_9572_9572 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_9572 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_9572_9572 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_9572_9573) (v_1@@25 T@FrameType) (q@@21 T@Field_9572_9573) (w@@25 T@FrameType) (r@@21 T@Field_8669_8670) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_9572 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_9572_8669 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_9572_8669 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_9572 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_9572_8669 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_9572_9573) (v_1@@26 T@FrameType) (q@@22 T@Field_9572_9573) (w@@26 T@FrameType) (r@@22 T@Field_5086_8670) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_9572 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_9572_5086 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_9572_5086 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_9572 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_9572_5086 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_9572_9573) (v_1@@27 T@FrameType) (q@@23 T@Field_8669_8670) (w@@27 T@FrameType) (r@@23 T@Field_10475_10476) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_8669 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_8669_10475 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_9572_10475 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_8669 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_8669_10475 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_9572_9573) (v_1@@28 T@FrameType) (q@@24 T@Field_8669_8670) (w@@28 T@FrameType) (r@@24 T@Field_9572_9573) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_8669 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_8669_9572 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_9572_9572 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_8669 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_8669_9572 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_9572_9573) (v_1@@29 T@FrameType) (q@@25 T@Field_8669_8670) (w@@29 T@FrameType) (r@@25 T@Field_8669_8670) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_8669 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_8669_8669 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_9572_8669 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_8669 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_8669_8669 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_9572_9573) (v_1@@30 T@FrameType) (q@@26 T@Field_8669_8670) (w@@30 T@FrameType) (r@@26 T@Field_5086_8670) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_8669 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_8669_5086 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_9572_5086 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_8669 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_8669_5086 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_9572_9573) (v_1@@31 T@FrameType) (q@@27 T@Field_5086_8670) (w@@31 T@FrameType) (r@@27 T@Field_10475_10476) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_5086 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_5086_10475 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_9572_10475 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_5086 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_5086_10475 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_9572_9573) (v_1@@32 T@FrameType) (q@@28 T@Field_5086_8670) (w@@32 T@FrameType) (r@@28 T@Field_9572_9573) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_5086 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_5086_9572 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_9572_9572 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_5086 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_5086_9572 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_9572_9573) (v_1@@33 T@FrameType) (q@@29 T@Field_5086_8670) (w@@33 T@FrameType) (r@@29 T@Field_8669_8670) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_5086 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_5086_8669 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_9572_8669 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_5086 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_5086_8669 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_9572_9573) (v_1@@34 T@FrameType) (q@@30 T@Field_5086_8670) (w@@34 T@FrameType) (r@@30 T@Field_5086_8670) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_9572_5086 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_5086_5086 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_9572_5086 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9572_5086 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_5086_5086 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_8669_8670) (v_1@@35 T@FrameType) (q@@31 T@Field_10475_10476) (w@@35 T@FrameType) (r@@31 T@Field_10475_10476) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_10475 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_10475_10475 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_8669_10475 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_10475 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_10475_10475 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_8669_8670) (v_1@@36 T@FrameType) (q@@32 T@Field_10475_10476) (w@@36 T@FrameType) (r@@32 T@Field_9572_9573) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_10475 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_10475_9572 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_8669_9572 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_10475 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_10475_9572 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_8669_8670) (v_1@@37 T@FrameType) (q@@33 T@Field_10475_10476) (w@@37 T@FrameType) (r@@33 T@Field_8669_8670) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_10475 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_10475_8669 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_8669_8669 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_10475 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_10475_8669 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_8669_8670) (v_1@@38 T@FrameType) (q@@34 T@Field_10475_10476) (w@@38 T@FrameType) (r@@34 T@Field_5086_8670) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_10475 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_10475_5086 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_8669_5086 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_10475 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_10475_5086 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_8669_8670) (v_1@@39 T@FrameType) (q@@35 T@Field_9572_9573) (w@@39 T@FrameType) (r@@35 T@Field_10475_10476) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_9572 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_9572_10475 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_8669_10475 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_9572 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_9572_10475 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_8669_8670) (v_1@@40 T@FrameType) (q@@36 T@Field_9572_9573) (w@@40 T@FrameType) (r@@36 T@Field_9572_9573) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_9572 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_9572_9572 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_8669_9572 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_9572 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_9572_9572 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_8669_8670) (v_1@@41 T@FrameType) (q@@37 T@Field_9572_9573) (w@@41 T@FrameType) (r@@37 T@Field_8669_8670) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_9572 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_9572_8669 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_8669_8669 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_9572 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_9572_8669 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_8669_8670) (v_1@@42 T@FrameType) (q@@38 T@Field_9572_9573) (w@@42 T@FrameType) (r@@38 T@Field_5086_8670) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_9572 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_9572_5086 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_8669_5086 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_9572 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_9572_5086 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_8669_8670) (v_1@@43 T@FrameType) (q@@39 T@Field_8669_8670) (w@@43 T@FrameType) (r@@39 T@Field_10475_10476) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_8669 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_8669_10475 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_8669_10475 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_8669 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_8669_10475 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_8669_8670) (v_1@@44 T@FrameType) (q@@40 T@Field_8669_8670) (w@@44 T@FrameType) (r@@40 T@Field_9572_9573) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_8669 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_8669_9572 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_8669_9572 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_8669 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_8669_9572 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_8669_8670) (v_1@@45 T@FrameType) (q@@41 T@Field_8669_8670) (w@@45 T@FrameType) (r@@41 T@Field_8669_8670) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_8669 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_8669_8669 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_8669_8669 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_8669 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_8669_8669 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_8669_8670) (v_1@@46 T@FrameType) (q@@42 T@Field_8669_8670) (w@@46 T@FrameType) (r@@42 T@Field_5086_8670) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_8669 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_8669_5086 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_8669_5086 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_8669 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_8669_5086 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_8669_8670) (v_1@@47 T@FrameType) (q@@43 T@Field_5086_8670) (w@@47 T@FrameType) (r@@43 T@Field_10475_10476) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_5086 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_5086_10475 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_8669_10475 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_5086 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_5086_10475 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_8669_8670) (v_1@@48 T@FrameType) (q@@44 T@Field_5086_8670) (w@@48 T@FrameType) (r@@44 T@Field_9572_9573) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_5086 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_5086_9572 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_8669_9572 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_5086 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_5086_9572 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_8669_8670) (v_1@@49 T@FrameType) (q@@45 T@Field_5086_8670) (w@@49 T@FrameType) (r@@45 T@Field_8669_8670) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_5086 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_5086_8669 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_8669_8669 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_5086 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_5086_8669 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_8669_8670) (v_1@@50 T@FrameType) (q@@46 T@Field_5086_8670) (w@@50 T@FrameType) (r@@46 T@Field_5086_8670) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_8669_5086 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_5086_5086 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_8669_5086 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8669_5086 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_5086_5086 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_5086_8670) (v_1@@51 T@FrameType) (q@@47 T@Field_10475_10476) (w@@51 T@FrameType) (r@@47 T@Field_10475_10476) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_10475 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_10475_10475 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_5086_10475 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_10475 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_10475_10475 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_5086_8670) (v_1@@52 T@FrameType) (q@@48 T@Field_10475_10476) (w@@52 T@FrameType) (r@@48 T@Field_9572_9573) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_10475 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_10475_9572 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_5086_9572 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_10475 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_10475_9572 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_5086_8670) (v_1@@53 T@FrameType) (q@@49 T@Field_10475_10476) (w@@53 T@FrameType) (r@@49 T@Field_8669_8670) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_10475 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_10475_8669 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_5086_8669 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_10475 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_10475_8669 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_5086_8670) (v_1@@54 T@FrameType) (q@@50 T@Field_10475_10476) (w@@54 T@FrameType) (r@@50 T@Field_5086_8670) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_10475 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_10475_5086 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_5086_5086 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_10475 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_10475_5086 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_5086_8670) (v_1@@55 T@FrameType) (q@@51 T@Field_9572_9573) (w@@55 T@FrameType) (r@@51 T@Field_10475_10476) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_9572 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_9572_10475 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_5086_10475 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_9572 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_9572_10475 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_5086_8670) (v_1@@56 T@FrameType) (q@@52 T@Field_9572_9573) (w@@56 T@FrameType) (r@@52 T@Field_9572_9573) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_9572 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_9572_9572 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_5086_9572 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_9572 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_9572_9572 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_5086_8670) (v_1@@57 T@FrameType) (q@@53 T@Field_9572_9573) (w@@57 T@FrameType) (r@@53 T@Field_8669_8670) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_9572 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_9572_8669 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_5086_8669 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_9572 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_9572_8669 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_5086_8670) (v_1@@58 T@FrameType) (q@@54 T@Field_9572_9573) (w@@58 T@FrameType) (r@@54 T@Field_5086_8670) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_9572 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_9572_5086 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_5086_5086 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_9572 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_9572_5086 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_5086_8670) (v_1@@59 T@FrameType) (q@@55 T@Field_8669_8670) (w@@59 T@FrameType) (r@@55 T@Field_10475_10476) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_8669 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_8669_10475 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_5086_10475 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_8669 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_8669_10475 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_5086_8670) (v_1@@60 T@FrameType) (q@@56 T@Field_8669_8670) (w@@60 T@FrameType) (r@@56 T@Field_9572_9573) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_8669 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_8669_9572 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_5086_9572 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_8669 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_8669_9572 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_5086_8670) (v_1@@61 T@FrameType) (q@@57 T@Field_8669_8670) (w@@61 T@FrameType) (r@@57 T@Field_8669_8670) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_8669 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_8669_8669 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_5086_8669 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_8669 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_8669_8669 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_5086_8670) (v_1@@62 T@FrameType) (q@@58 T@Field_8669_8670) (w@@62 T@FrameType) (r@@58 T@Field_5086_8670) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_8669 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_8669_5086 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_5086_5086 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_8669 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_8669_5086 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_5086_8670) (v_1@@63 T@FrameType) (q@@59 T@Field_5086_8670) (w@@63 T@FrameType) (r@@59 T@Field_10475_10476) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_5086 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_5086_10475 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_5086_10475 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_5086 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_5086_10475 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_5086_8670) (v_1@@64 T@FrameType) (q@@60 T@Field_5086_8670) (w@@64 T@FrameType) (r@@60 T@Field_9572_9573) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_5086 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_5086_9572 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_5086_9572 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_5086 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_5086_9572 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_5086_8670) (v_1@@65 T@FrameType) (q@@61 T@Field_5086_8670) (w@@65 T@FrameType) (r@@61 T@Field_8669_8670) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_5086 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_5086_8669 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_5086_8669 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_5086 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_5086_8669 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_5086_8670) (v_1@@66 T@FrameType) (q@@62 T@Field_5086_8670) (w@@66 T@FrameType) (r@@62 T@Field_5086_8670) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_5086_5086 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_5086_5086 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_5086_5086 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5086_5086 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_5086_5086 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_5026) (ExhaleHeap@@25 T@PolymorphicMapType_5026) (Mask@@64 T@PolymorphicMapType_5047) (pm_f@@7 T@Field_10475_10476) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@25 Mask@@64) (=> (and (HasDirectPerm_10475_8670 Mask@@64 null pm_f@@7) (IsPredicateField_2948_2949 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@15 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2 f_2@@15) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@58) o2 f_2@@15) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2 f_2@@15))
)) (forall ((o2@@0 T@Ref) (f_2@@16 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@0 f_2@@16) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@58) o2@@0 f_2@@16) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@0 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@0 f_2@@16))
))) (forall ((o2@@1 T@Ref) (f_2@@17 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@1 f_2@@17) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@58) o2@@1 f_2@@17) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@1 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@1 f_2@@17))
))) (forall ((o2@@2 T@Ref) (f_2@@18 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@2 f_2@@18) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@58) o2@@2 f_2@@18) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@2 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@2 f_2@@18))
))) (forall ((o2@@3 T@Ref) (f_2@@19 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@3 f_2@@19) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@58) o2@@3 f_2@@19) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@3 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@3 f_2@@19))
))) (forall ((o2@@4 T@Ref) (f_2@@20 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@4 f_2@@20) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@58) o2@@4 f_2@@20) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@4 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@4 f_2@@20))
))) (forall ((o2@@5 T@Ref) (f_2@@21 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@5 f_2@@21) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@58) o2@@5 f_2@@21) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@5 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@5 f_2@@21))
))) (forall ((o2@@6 T@Ref) (f_2@@22 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@6 f_2@@22) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@58) o2@@6 f_2@@22) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@6 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@6 f_2@@22))
))) (forall ((o2@@7 T@Ref) (f_2@@23 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@7 f_2@@23) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@58) o2@@7 f_2@@23) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@7 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@7 f_2@@23))
))) (forall ((o2@@8 T@Ref) (f_2@@24 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@8 f_2@@24) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@58) o2@@8 f_2@@24) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@8 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@8 f_2@@24))
))) (forall ((o2@@9 T@Ref) (f_2@@25 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@9 f_2@@25) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@58) o2@@9 f_2@@25) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@9 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@9 f_2@@25))
))) (forall ((o2@@10 T@Ref) (f_2@@26 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@10 f_2@@26) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@58) o2@@10 f_2@@26) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@10 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@10 f_2@@26))
))) (forall ((o2@@11 T@Ref) (f_2@@27 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@11 f_2@@27) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@58) o2@@11 f_2@@27) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@11 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@11 f_2@@27))
))) (forall ((o2@@12 T@Ref) (f_2@@28 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@12 f_2@@28) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@58) o2@@12 f_2@@28) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@12 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@12 f_2@@28))
))) (forall ((o2@@13 T@Ref) (f_2@@29 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@13 f_2@@29) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@58) o2@@13 f_2@@29) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@13 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@13 f_2@@29))
))) (forall ((o2@@14 T@Ref) (f_2@@30 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) null (PredicateMaskField_2948 pm_f@@7))) o2@@14 f_2@@30) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@58) o2@@14 f_2@@30) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@14 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@25) o2@@14 f_2@@30))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@25 Mask@@64) (IsPredicateField_2948_2949 pm_f@@7))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_5026) (ExhaleHeap@@26 T@PolymorphicMapType_5026) (Mask@@65 T@PolymorphicMapType_5047) (pm_f@@8 T@Field_9572_9573) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@26 Mask@@65) (=> (and (HasDirectPerm_9572_8670 Mask@@65 null pm_f@@8) (IsPredicateField_2923_2924 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@15 T@Ref) (f_2@@31 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@15 f_2@@31) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@59) o2@@15 f_2@@31) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@15 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@15 f_2@@31))
)) (forall ((o2@@16 T@Ref) (f_2@@32 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@16 f_2@@32) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@59) o2@@16 f_2@@32) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@16 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@16 f_2@@32))
))) (forall ((o2@@17 T@Ref) (f_2@@33 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@17 f_2@@33) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@59) o2@@17 f_2@@33) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@17 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@17 f_2@@33))
))) (forall ((o2@@18 T@Ref) (f_2@@34 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@18 f_2@@34) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@59) o2@@18 f_2@@34) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@18 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@18 f_2@@34))
))) (forall ((o2@@19 T@Ref) (f_2@@35 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@19 f_2@@35) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@59) o2@@19 f_2@@35) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@19 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@19 f_2@@35))
))) (forall ((o2@@20 T@Ref) (f_2@@36 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@20 f_2@@36) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@59) o2@@20 f_2@@36) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@20 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@20 f_2@@36))
))) (forall ((o2@@21 T@Ref) (f_2@@37 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@21 f_2@@37) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@59) o2@@21 f_2@@37) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@21 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@21 f_2@@37))
))) (forall ((o2@@22 T@Ref) (f_2@@38 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@22 f_2@@38) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@59) o2@@22 f_2@@38) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@22 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@22 f_2@@38))
))) (forall ((o2@@23 T@Ref) (f_2@@39 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@23 f_2@@39) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@59) o2@@23 f_2@@39) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@23 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@23 f_2@@39))
))) (forall ((o2@@24 T@Ref) (f_2@@40 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@24 f_2@@40) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@59) o2@@24 f_2@@40) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@24 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@24 f_2@@40))
))) (forall ((o2@@25 T@Ref) (f_2@@41 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@25 f_2@@41) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@59) o2@@25 f_2@@41) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@25 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@25 f_2@@41))
))) (forall ((o2@@26 T@Ref) (f_2@@42 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@26 f_2@@42) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) o2@@26 f_2@@42) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@26 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@26 f_2@@42))
))) (forall ((o2@@27 T@Ref) (f_2@@43 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@27 f_2@@43) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@59) o2@@27 f_2@@43) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@27 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@27 f_2@@43))
))) (forall ((o2@@28 T@Ref) (f_2@@44 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@28 f_2@@44) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@59) o2@@28 f_2@@44) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@28 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@28 f_2@@44))
))) (forall ((o2@@29 T@Ref) (f_2@@45 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@29 f_2@@45) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@59) o2@@29 f_2@@45) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@29 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@29 f_2@@45))
))) (forall ((o2@@30 T@Ref) (f_2@@46 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@59) null (PredicateMaskField_2923 pm_f@@8))) o2@@30 f_2@@46) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@59) o2@@30 f_2@@46) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@30 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@26) o2@@30 f_2@@46))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@26 Mask@@65) (IsPredicateField_2923_2924 pm_f@@8))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_5026) (ExhaleHeap@@27 T@PolymorphicMapType_5026) (Mask@@66 T@PolymorphicMapType_5047) (pm_f@@9 T@Field_8669_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@27 Mask@@66) (=> (and (HasDirectPerm_8669_8670 Mask@@66 null pm_f@@9) (IsPredicateField_2898_2899 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@31 T@Ref) (f_2@@47 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@31 f_2@@47) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@60) o2@@31 f_2@@47) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@31 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@31 f_2@@47))
)) (forall ((o2@@32 T@Ref) (f_2@@48 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@32 f_2@@48) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@60) o2@@32 f_2@@48) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@32 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@32 f_2@@48))
))) (forall ((o2@@33 T@Ref) (f_2@@49 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@33 f_2@@49) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@60) o2@@33 f_2@@49) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@33 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@33 f_2@@49))
))) (forall ((o2@@34 T@Ref) (f_2@@50 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@34 f_2@@50) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@60) o2@@34 f_2@@50) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@34 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@34 f_2@@50))
))) (forall ((o2@@35 T@Ref) (f_2@@51 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@35 f_2@@51) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@60) o2@@35 f_2@@51) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@35 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@35 f_2@@51))
))) (forall ((o2@@36 T@Ref) (f_2@@52 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@36 f_2@@52) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@60) o2@@36 f_2@@52) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@36 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@36 f_2@@52))
))) (forall ((o2@@37 T@Ref) (f_2@@53 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@37 f_2@@53) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@60) o2@@37 f_2@@53) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@37 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@37 f_2@@53))
))) (forall ((o2@@38 T@Ref) (f_2@@54 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@38 f_2@@54) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) o2@@38 f_2@@54) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@38 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@38 f_2@@54))
))) (forall ((o2@@39 T@Ref) (f_2@@55 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@39 f_2@@55) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@60) o2@@39 f_2@@55) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@39 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@39 f_2@@55))
))) (forall ((o2@@40 T@Ref) (f_2@@56 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@40 f_2@@56) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@60) o2@@40 f_2@@56) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@40 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@40 f_2@@56))
))) (forall ((o2@@41 T@Ref) (f_2@@57 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@41 f_2@@57) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@60) o2@@41 f_2@@57) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@41 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@41 f_2@@57))
))) (forall ((o2@@42 T@Ref) (f_2@@58 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@42 f_2@@58) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@60) o2@@42 f_2@@58) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@42 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@42 f_2@@58))
))) (forall ((o2@@43 T@Ref) (f_2@@59 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@43 f_2@@59) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@60) o2@@43 f_2@@59) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@43 f_2@@59)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@43 f_2@@59))
))) (forall ((o2@@44 T@Ref) (f_2@@60 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@44 f_2@@60) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@60) o2@@44 f_2@@60) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@44 f_2@@60)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@44 f_2@@60))
))) (forall ((o2@@45 T@Ref) (f_2@@61 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@45 f_2@@61) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@60) o2@@45 f_2@@61) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@45 f_2@@61)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@45 f_2@@61))
))) (forall ((o2@@46 T@Ref) (f_2@@62 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@60) null (PredicateMaskField_2898 pm_f@@9))) o2@@46 f_2@@62) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@60) o2@@46 f_2@@62) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@46 f_2@@62)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@27) o2@@46 f_2@@62))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@27 Mask@@66) (IsPredicateField_2898_2899 pm_f@@9))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_5026) (ExhaleHeap@@28 T@PolymorphicMapType_5026) (Mask@@67 T@PolymorphicMapType_5047) (pm_f@@10 T@Field_5086_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@28 Mask@@67) (=> (and (HasDirectPerm_5086_8670 Mask@@67 null pm_f@@10) (IsPredicateField_5086_17655 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@47 T@Ref) (f_2@@63 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@47 f_2@@63) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@61) o2@@47 f_2@@63) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@47 f_2@@63)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@47 f_2@@63))
)) (forall ((o2@@48 T@Ref) (f_2@@64 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@48 f_2@@64) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@61) o2@@48 f_2@@64) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@48 f_2@@64)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@48 f_2@@64))
))) (forall ((o2@@49 T@Ref) (f_2@@65 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@49 f_2@@65) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@61) o2@@49 f_2@@65) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@49 f_2@@65)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@49 f_2@@65))
))) (forall ((o2@@50 T@Ref) (f_2@@66 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@50 f_2@@66) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) o2@@50 f_2@@66) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@50 f_2@@66)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@50 f_2@@66))
))) (forall ((o2@@51 T@Ref) (f_2@@67 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@51 f_2@@67) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@61) o2@@51 f_2@@67) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@51 f_2@@67)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@51 f_2@@67))
))) (forall ((o2@@52 T@Ref) (f_2@@68 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@52 f_2@@68) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@61) o2@@52 f_2@@68) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@52 f_2@@68)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@52 f_2@@68))
))) (forall ((o2@@53 T@Ref) (f_2@@69 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@53 f_2@@69) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@61) o2@@53 f_2@@69) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@53 f_2@@69)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@53 f_2@@69))
))) (forall ((o2@@54 T@Ref) (f_2@@70 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@54 f_2@@70) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@61) o2@@54 f_2@@70) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@54 f_2@@70)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@54 f_2@@70))
))) (forall ((o2@@55 T@Ref) (f_2@@71 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@55 f_2@@71) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@61) o2@@55 f_2@@71) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@55 f_2@@71)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@55 f_2@@71))
))) (forall ((o2@@56 T@Ref) (f_2@@72 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@56 f_2@@72) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@61) o2@@56 f_2@@72) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@56 f_2@@72)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@56 f_2@@72))
))) (forall ((o2@@57 T@Ref) (f_2@@73 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@57 f_2@@73) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@61) o2@@57 f_2@@73) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@57 f_2@@73)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@57 f_2@@73))
))) (forall ((o2@@58 T@Ref) (f_2@@74 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@58 f_2@@74) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@61) o2@@58 f_2@@74) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@58 f_2@@74)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@58 f_2@@74))
))) (forall ((o2@@59 T@Ref) (f_2@@75 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@59 f_2@@75) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@61) o2@@59 f_2@@75) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@59 f_2@@75)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@59 f_2@@75))
))) (forall ((o2@@60 T@Ref) (f_2@@76 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@60 f_2@@76) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@61) o2@@60 f_2@@76) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@60 f_2@@76)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@60 f_2@@76))
))) (forall ((o2@@61 T@Ref) (f_2@@77 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@61 f_2@@77) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@61) o2@@61 f_2@@77) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@61 f_2@@77)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@61 f_2@@77))
))) (forall ((o2@@62 T@Ref) (f_2@@78 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@61) null (PredicateMaskField_5086 pm_f@@10))) o2@@62 f_2@@78) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@61) o2@@62 f_2@@78) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@62 f_2@@78)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@28) o2@@62 f_2@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@28 Mask@@67) (IsPredicateField_5086_17655 pm_f@@10))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_5026) (ExhaleHeap@@29 T@PolymorphicMapType_5026) (Mask@@68 T@PolymorphicMapType_5047) (pm_f@@11 T@Field_10475_10476) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@29 Mask@@68) (=> (and (HasDirectPerm_10475_8670 Mask@@68 null pm_f@@11) (IsWandField_10475_24582 pm_f@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@63 T@Ref) (f_2@@79 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@63 f_2@@79) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@62) o2@@63 f_2@@79) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@63 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@63 f_2@@79))
)) (forall ((o2@@64 T@Ref) (f_2@@80 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@64 f_2@@80) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@62) o2@@64 f_2@@80) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@64 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@64 f_2@@80))
))) (forall ((o2@@65 T@Ref) (f_2@@81 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@65 f_2@@81) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@62) o2@@65 f_2@@81) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@65 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@65 f_2@@81))
))) (forall ((o2@@66 T@Ref) (f_2@@82 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@66 f_2@@82) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@62) o2@@66 f_2@@82) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@66 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@66 f_2@@82))
))) (forall ((o2@@67 T@Ref) (f_2@@83 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@67 f_2@@83) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@62) o2@@67 f_2@@83) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@67 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@67 f_2@@83))
))) (forall ((o2@@68 T@Ref) (f_2@@84 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@68 f_2@@84) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@62) o2@@68 f_2@@84) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@68 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@68 f_2@@84))
))) (forall ((o2@@69 T@Ref) (f_2@@85 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@69 f_2@@85) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@62) o2@@69 f_2@@85) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@69 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@69 f_2@@85))
))) (forall ((o2@@70 T@Ref) (f_2@@86 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@70 f_2@@86) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@62) o2@@70 f_2@@86) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@70 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@70 f_2@@86))
))) (forall ((o2@@71 T@Ref) (f_2@@87 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@71 f_2@@87) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@62) o2@@71 f_2@@87) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@71 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@71 f_2@@87))
))) (forall ((o2@@72 T@Ref) (f_2@@88 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@72 f_2@@88) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@62) o2@@72 f_2@@88) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@72 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@72 f_2@@88))
))) (forall ((o2@@73 T@Ref) (f_2@@89 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@73 f_2@@89) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@62) o2@@73 f_2@@89) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@73 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@73 f_2@@89))
))) (forall ((o2@@74 T@Ref) (f_2@@90 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@74 f_2@@90) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@62) o2@@74 f_2@@90) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@74 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@74 f_2@@90))
))) (forall ((o2@@75 T@Ref) (f_2@@91 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@75 f_2@@91) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@62) o2@@75 f_2@@91) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@75 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@75 f_2@@91))
))) (forall ((o2@@76 T@Ref) (f_2@@92 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@76 f_2@@92) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@62) o2@@76 f_2@@92) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@76 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@76 f_2@@92))
))) (forall ((o2@@77 T@Ref) (f_2@@93 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@77 f_2@@93) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@62) o2@@77 f_2@@93) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@77 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@77 f_2@@93))
))) (forall ((o2@@78 T@Ref) (f_2@@94 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) null (WandMaskField_10475 pm_f@@11))) o2@@78 f_2@@94) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@62) o2@@78 f_2@@94) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@78 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@29) o2@@78 f_2@@94))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@29 Mask@@68) (IsWandField_10475_24582 pm_f@@11))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_5026) (ExhaleHeap@@30 T@PolymorphicMapType_5026) (Mask@@69 T@PolymorphicMapType_5047) (pm_f@@12 T@Field_9572_9573) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@30 Mask@@69) (=> (and (HasDirectPerm_9572_8670 Mask@@69 null pm_f@@12) (IsWandField_9572_24225 pm_f@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@79 T@Ref) (f_2@@95 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@79 f_2@@95) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@63) o2@@79 f_2@@95) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@79 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@79 f_2@@95))
)) (forall ((o2@@80 T@Ref) (f_2@@96 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@80 f_2@@96) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@63) o2@@80 f_2@@96) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@80 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@80 f_2@@96))
))) (forall ((o2@@81 T@Ref) (f_2@@97 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@81 f_2@@97) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@63) o2@@81 f_2@@97) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@81 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@81 f_2@@97))
))) (forall ((o2@@82 T@Ref) (f_2@@98 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@82 f_2@@98) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@63) o2@@82 f_2@@98) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@82 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@82 f_2@@98))
))) (forall ((o2@@83 T@Ref) (f_2@@99 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@83 f_2@@99) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@63) o2@@83 f_2@@99) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@83 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@83 f_2@@99))
))) (forall ((o2@@84 T@Ref) (f_2@@100 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@84 f_2@@100) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@63) o2@@84 f_2@@100) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@84 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@84 f_2@@100))
))) (forall ((o2@@85 T@Ref) (f_2@@101 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@85 f_2@@101) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@63) o2@@85 f_2@@101) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@85 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@85 f_2@@101))
))) (forall ((o2@@86 T@Ref) (f_2@@102 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@86 f_2@@102) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@63) o2@@86 f_2@@102) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@86 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@86 f_2@@102))
))) (forall ((o2@@87 T@Ref) (f_2@@103 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@87 f_2@@103) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@63) o2@@87 f_2@@103) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@87 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@87 f_2@@103))
))) (forall ((o2@@88 T@Ref) (f_2@@104 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@88 f_2@@104) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@63) o2@@88 f_2@@104) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@88 f_2@@104)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@88 f_2@@104))
))) (forall ((o2@@89 T@Ref) (f_2@@105 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@89 f_2@@105) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@63) o2@@89 f_2@@105) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@89 f_2@@105)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@89 f_2@@105))
))) (forall ((o2@@90 T@Ref) (f_2@@106 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@90 f_2@@106) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) o2@@90 f_2@@106) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@90 f_2@@106)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@90 f_2@@106))
))) (forall ((o2@@91 T@Ref) (f_2@@107 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@91 f_2@@107) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@63) o2@@91 f_2@@107) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@91 f_2@@107)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@91 f_2@@107))
))) (forall ((o2@@92 T@Ref) (f_2@@108 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@92 f_2@@108) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@63) o2@@92 f_2@@108) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@92 f_2@@108)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@92 f_2@@108))
))) (forall ((o2@@93 T@Ref) (f_2@@109 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@93 f_2@@109) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@63) o2@@93 f_2@@109) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@93 f_2@@109)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@93 f_2@@109))
))) (forall ((o2@@94 T@Ref) (f_2@@110 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@63) null (WandMaskField_9572 pm_f@@12))) o2@@94 f_2@@110) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@63) o2@@94 f_2@@110) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@94 f_2@@110)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@30) o2@@94 f_2@@110))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@30 Mask@@69) (IsWandField_9572_24225 pm_f@@12))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_5026) (ExhaleHeap@@31 T@PolymorphicMapType_5026) (Mask@@70 T@PolymorphicMapType_5047) (pm_f@@13 T@Field_8669_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@31 Mask@@70) (=> (and (HasDirectPerm_8669_8670 Mask@@70 null pm_f@@13) (IsWandField_8669_23868 pm_f@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@95 T@Ref) (f_2@@111 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@95 f_2@@111) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@64) o2@@95 f_2@@111) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@95 f_2@@111)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@95 f_2@@111))
)) (forall ((o2@@96 T@Ref) (f_2@@112 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@96 f_2@@112) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@64) o2@@96 f_2@@112) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@96 f_2@@112)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@96 f_2@@112))
))) (forall ((o2@@97 T@Ref) (f_2@@113 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@97 f_2@@113) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@64) o2@@97 f_2@@113) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@97 f_2@@113)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@97 f_2@@113))
))) (forall ((o2@@98 T@Ref) (f_2@@114 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@98 f_2@@114) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@64) o2@@98 f_2@@114) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@98 f_2@@114)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@98 f_2@@114))
))) (forall ((o2@@99 T@Ref) (f_2@@115 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@99 f_2@@115) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@64) o2@@99 f_2@@115) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@99 f_2@@115)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@99 f_2@@115))
))) (forall ((o2@@100 T@Ref) (f_2@@116 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@100 f_2@@116) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@64) o2@@100 f_2@@116) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@100 f_2@@116)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@100 f_2@@116))
))) (forall ((o2@@101 T@Ref) (f_2@@117 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@101 f_2@@117) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@64) o2@@101 f_2@@117) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@101 f_2@@117)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@101 f_2@@117))
))) (forall ((o2@@102 T@Ref) (f_2@@118 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@102 f_2@@118) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) o2@@102 f_2@@118) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@102 f_2@@118)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@102 f_2@@118))
))) (forall ((o2@@103 T@Ref) (f_2@@119 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@103 f_2@@119) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@64) o2@@103 f_2@@119) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@103 f_2@@119)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@103 f_2@@119))
))) (forall ((o2@@104 T@Ref) (f_2@@120 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@104 f_2@@120) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@64) o2@@104 f_2@@120) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@104 f_2@@120)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@104 f_2@@120))
))) (forall ((o2@@105 T@Ref) (f_2@@121 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@105 f_2@@121) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@64) o2@@105 f_2@@121) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@105 f_2@@121)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@105 f_2@@121))
))) (forall ((o2@@106 T@Ref) (f_2@@122 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@106 f_2@@122) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@64) o2@@106 f_2@@122) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@106 f_2@@122)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@106 f_2@@122))
))) (forall ((o2@@107 T@Ref) (f_2@@123 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@107 f_2@@123) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@64) o2@@107 f_2@@123) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@107 f_2@@123)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@107 f_2@@123))
))) (forall ((o2@@108 T@Ref) (f_2@@124 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@108 f_2@@124) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@64) o2@@108 f_2@@124) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@108 f_2@@124)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@108 f_2@@124))
))) (forall ((o2@@109 T@Ref) (f_2@@125 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@109 f_2@@125) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@64) o2@@109 f_2@@125) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@109 f_2@@125)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@109 f_2@@125))
))) (forall ((o2@@110 T@Ref) (f_2@@126 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@64) null (WandMaskField_8669 pm_f@@13))) o2@@110 f_2@@126) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@64) o2@@110 f_2@@126) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@110 f_2@@126)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@31) o2@@110 f_2@@126))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@31 Mask@@70) (IsWandField_8669_23868 pm_f@@13))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_5026) (ExhaleHeap@@32 T@PolymorphicMapType_5026) (Mask@@71 T@PolymorphicMapType_5047) (pm_f@@14 T@Field_5086_8670) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@32 Mask@@71) (=> (and (HasDirectPerm_5086_8670 Mask@@71 null pm_f@@14) (IsWandField_5086_23511 pm_f@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@111 T@Ref) (f_2@@127 T@Field_5086_53) ) (!  (=> (select (|PolymorphicMapType_5575_5086_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@111 f_2@@127) (= (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| Heap@@65) o2@@111 f_2@@127) (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@111 f_2@@127)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2703_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@111 f_2@@127))
)) (forall ((o2@@112 T@Ref) (f_2@@128 T@Field_5099_5100) ) (!  (=> (select (|PolymorphicMapType_5575_5086_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@112 f_2@@128) (= (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| Heap@@65) o2@@112 f_2@@128) (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@112 f_2@@128)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2706_2707#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@112 f_2@@128))
))) (forall ((o2@@113 T@Ref) (f_2@@129 T@Field_5086_8670) ) (!  (=> (select (|PolymorphicMapType_5575_5086_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@113 f_2@@129) (= (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| Heap@@65) o2@@113 f_2@@129) (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@113 f_2@@129)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_8670#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@113 f_2@@129))
))) (forall ((o2@@114 T@Ref) (f_2@@130 T@Field_5086_11139) ) (!  (=> (select (|PolymorphicMapType_5575_5086_19591#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@114 f_2@@130) (= (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) o2@@114 f_2@@130) (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@114 f_2@@130)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@114 f_2@@130))
))) (forall ((o2@@115 T@Ref) (f_2@@131 T@Field_8669_53) ) (!  (=> (select (|PolymorphicMapType_5575_8669_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@115 f_2@@131) (= (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| Heap@@65) o2@@115 f_2@@131) (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@115 f_2@@131)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@115 f_2@@131))
))) (forall ((o2@@116 T@Ref) (f_2@@132 T@Field_8669_5100) ) (!  (=> (select (|PolymorphicMapType_5575_8669_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@116 f_2@@132) (= (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| Heap@@65) o2@@116 f_2@@132) (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@116 f_2@@132)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@116 f_2@@132))
))) (forall ((o2@@117 T@Ref) (f_2@@133 T@Field_8669_8670) ) (!  (=> (select (|PolymorphicMapType_5575_8669_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@117 f_2@@133) (= (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| Heap@@65) o2@@117 f_2@@133) (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@117 f_2@@133)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2898_2899#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@117 f_2@@133))
))) (forall ((o2@@118 T@Ref) (f_2@@134 T@Field_11134_11139) ) (!  (=> (select (|PolymorphicMapType_5575_8669_20441#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@118 f_2@@134) (= (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| Heap@@65) o2@@118 f_2@@134) (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@118 f_2@@134)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_8669_15529#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@118 f_2@@134))
))) (forall ((o2@@119 T@Ref) (f_2@@135 T@Field_9572_53) ) (!  (=> (select (|PolymorphicMapType_5575_9572_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@119 f_2@@135) (= (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| Heap@@65) o2@@119 f_2@@135) (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@119 f_2@@135)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@119 f_2@@135))
))) (forall ((o2@@120 T@Ref) (f_2@@136 T@Field_9572_5100) ) (!  (=> (select (|PolymorphicMapType_5575_9572_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@120 f_2@@136) (= (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| Heap@@65) o2@@120 f_2@@136) (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@120 f_2@@136)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@120 f_2@@136))
))) (forall ((o2@@121 T@Ref) (f_2@@137 T@Field_9572_9573) ) (!  (=> (select (|PolymorphicMapType_5575_9572_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@121 f_2@@137) (= (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| Heap@@65) o2@@121 f_2@@137) (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@121 f_2@@137)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2923_2924#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@121 f_2@@137))
))) (forall ((o2@@122 T@Ref) (f_2@@138 T@Field_12027_12032) ) (!  (=> (select (|PolymorphicMapType_5575_9572_21291#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@122 f_2@@138) (= (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| Heap@@65) o2@@122 f_2@@138) (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@122 f_2@@138)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_9572_16469#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@122 f_2@@138))
))) (forall ((o2@@123 T@Ref) (f_2@@139 T@Field_10475_53) ) (!  (=> (select (|PolymorphicMapType_5575_10475_53#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@123 f_2@@139) (= (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| Heap@@65) o2@@123 f_2@@139) (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@123 f_2@@139)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_53#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@123 f_2@@139))
))) (forall ((o2@@124 T@Ref) (f_2@@140 T@Field_10475_5100) ) (!  (=> (select (|PolymorphicMapType_5575_10475_5100#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@124 f_2@@140) (= (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| Heap@@65) o2@@124 f_2@@140) (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@124 f_2@@140)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_5100#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@124 f_2@@140))
))) (forall ((o2@@125 T@Ref) (f_2@@141 T@Field_10475_10476) ) (!  (=> (select (|PolymorphicMapType_5575_10475_8670#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@125 f_2@@141) (= (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| Heap@@65) o2@@125 f_2@@141) (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@125 f_2@@141)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_2948_2949#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@125 f_2@@141))
))) (forall ((o2@@126 T@Ref) (f_2@@142 T@Field_12920_12925) ) (!  (=> (select (|PolymorphicMapType_5575_10475_22141#PolymorphicMapType_5575| (select (|PolymorphicMapType_5026_5086_14589#PolymorphicMapType_5026| Heap@@65) null (WandMaskField_5086 pm_f@@14))) o2@@126 f_2@@142) (= (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| Heap@@65) o2@@126 f_2@@142) (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@126 f_2@@142)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5026_10475_17409#PolymorphicMapType_5026| ExhaleHeap@@32) o2@@126 f_2@@142))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@32 Mask@@71) (IsWandField_5086_23511 pm_f@@14))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

