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
(declare-sort T@Field_5499_53 0)
(declare-sort T@Field_5512_5513 0)
(declare-sort T@Field_10275_2712 0)
(declare-sort T@Field_5499_14165 0)
(declare-sort T@Field_5499_14032 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5460 0)) (((PolymorphicMapType_5460 (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| (Array T@Ref T@Field_10275_2712 Real)) (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| (Array T@Ref T@Field_5499_53 Real)) (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| (Array T@Ref T@Field_5512_5513 Real)) (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| (Array T@Ref T@Field_5499_14032 Real)) (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| (Array T@Ref T@Field_5499_14165 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5988 0)) (((PolymorphicMapType_5988 (|PolymorphicMapType_5988_5499_53#PolymorphicMapType_5988| (Array T@Ref T@Field_5499_53 Bool)) (|PolymorphicMapType_5988_5499_5513#PolymorphicMapType_5988| (Array T@Ref T@Field_5512_5513 Bool)) (|PolymorphicMapType_5988_5499_2712#PolymorphicMapType_5988| (Array T@Ref T@Field_10275_2712 Bool)) (|PolymorphicMapType_5988_5499_14032#PolymorphicMapType_5988| (Array T@Ref T@Field_5499_14032 Bool)) (|PolymorphicMapType_5988_5499_15343#PolymorphicMapType_5988| (Array T@Ref T@Field_5499_14165 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5439 0)) (((PolymorphicMapType_5439 (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| (Array T@Ref T@Field_5499_53 Bool)) (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| (Array T@Ref T@Field_5512_5513 T@Ref)) (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| (Array T@Ref T@Field_10275_2712 Int)) (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| (Array T@Ref T@Field_5499_14165 T@PolymorphicMapType_5988)) (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| (Array T@Ref T@Field_5499_14032 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5499_53)
(declare-fun f_7 () T@Field_10275_2712)
(declare-fun succHeap (T@PolymorphicMapType_5439 T@PolymorphicMapType_5439) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5439 T@PolymorphicMapType_5439) Bool)
(declare-fun __iar__assume_helper_8 (Bool Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real Real) Real)
(declare-fun NoPerm () Real)
(declare-fun state (T@PolymorphicMapType_5439 T@PolymorphicMapType_5460) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5460) Bool)
(declare-fun __iar__assume_helper_1 (Bool Real Real) Real)
(declare-fun ZeroPMask () T@PolymorphicMapType_5988)
(declare-fun __iar__assume_helper_7 (Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real) Real)
(declare-fun __iar__assume_helper_6 (Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real) Real)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5439 T@PolymorphicMapType_5439 T@PolymorphicMapType_5460) Bool)
(declare-fun IsPredicateField_5499_14123 (T@Field_5499_14032) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5499 (T@Field_5499_14032) T@Field_5499_14165)
(declare-fun HasDirectPerm_5499_14096 (T@PolymorphicMapType_5460 T@Ref T@Field_5499_14032) Bool)
(declare-fun IsWandField_5499_15870 (T@Field_5499_14032) Bool)
(declare-fun WandMaskField_5499 (T@Field_5499_14032) T@Field_5499_14165)
(declare-fun dummyHeap () T@PolymorphicMapType_5439)
(declare-fun ZeroMask () T@PolymorphicMapType_5460)
(declare-fun __iar__assume_helper_9 (Bool Bool Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real Real Real) Real)
(declare-fun InsidePredicate_5499_5499 (T@Field_5499_14032 T@FrameType T@Field_5499_14032 T@FrameType) Bool)
(declare-fun __iar__assume_helper_2 (Bool Bool Real Real Real) Real)
(declare-fun IsPredicateField_3740_2712 (T@Field_10275_2712) Bool)
(declare-fun IsWandField_3740_2712 (T@Field_10275_2712) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3740_19416 (T@Field_5499_14165) Bool)
(declare-fun IsWandField_3740_19432 (T@Field_5499_14165) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3740_5513 (T@Field_5512_5513) Bool)
(declare-fun IsWandField_3740_5513 (T@Field_5512_5513) Bool)
(declare-fun IsPredicateField_3740_53 (T@Field_5499_53) Bool)
(declare-fun IsWandField_3740_53 (T@Field_5499_53) Bool)
(declare-fun HasDirectPerm_5499_19870 (T@PolymorphicMapType_5460 T@Ref T@Field_5499_14165) Bool)
(declare-fun HasDirectPerm_5499_2712 (T@PolymorphicMapType_5460 T@Ref T@Field_10275_2712) Bool)
(declare-fun HasDirectPerm_5499_5513 (T@PolymorphicMapType_5460 T@Ref T@Field_5512_5513) Bool)
(declare-fun HasDirectPerm_5499_53 (T@PolymorphicMapType_5460 T@Ref T@Field_5499_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun __iar__assume_helper_3 (Bool Bool Bool Real Real Real Real) Real)
(declare-fun sumMask (T@PolymorphicMapType_5460 T@PolymorphicMapType_5460 T@PolymorphicMapType_5460) Bool)
(declare-fun __iar__assume_helper_10 (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real Real Real Real) Real)
(declare-fun __iar__assume_helper_4 (Bool Bool Bool Bool Real Real Real Real Real) Real)
(declare-fun __iar__assume_helper_5 (Bool Bool Bool Bool Bool Real Real Real Real Real Real) Real)
(assert (forall ((Heap0 T@PolymorphicMapType_5439) (Heap1 T@PolymorphicMapType_5439) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((c_8 Bool) (c_7 Bool) (c_6 Bool) (c_5_1 Bool) (c_4_2 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_8 Real) (p_7_3 Real) (p_6_1 Real) (p_5 Real) (p_4_1 Real) (p_3_1 Real) (p_2_1 Real) (p_1_1 Real) (p_0_1 Real) ) (! (= (__iar__assume_helper_8 c_8 c_7 c_6 c_5_1 c_4_2 c_3 c_2 c_1 p_8 p_7_3 p_6_1 p_5 p_4_1 p_3_1 p_2_1 p_1_1 p_0_1) (+ (+ (+ (+ (+ (+ (+ (+ p_0_1 (ite c_1 p_1_1 NoPerm)) (ite c_2 p_2_1 NoPerm)) (ite c_3 p_3_1 NoPerm)) (ite c_4_2 p_4_1 NoPerm)) (ite c_5_1 p_5 NoPerm)) (ite c_6 p_6_1 NoPerm)) (ite c_7 p_7_3 NoPerm)) (ite c_8 p_8 NoPerm)))
 :qid |stdinbpl.256:15|
 :skolemid |29|
 :pattern ( (__iar__assume_helper_8 c_8 c_7 c_6 c_5_1 c_4_2 c_3 c_2 c_1 p_8 p_7_3 p_6_1 p_5 p_4_1 p_3_1 p_2_1 p_1_1 p_0_1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5439) (Mask T@PolymorphicMapType_5460) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5439) (Heap1@@0 T@PolymorphicMapType_5439) (Heap2 T@PolymorphicMapType_5439) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((c_1@@0 Bool) (p_1_1@@0 Real) (p_0_1@@0 Real) ) (! (= (__iar__assume_helper_1 c_1@@0 p_1_1@@0 p_0_1@@0) (+ p_0_1@@0 (ite c_1@@0 p_1_1@@0 NoPerm)))
 :qid |stdinbpl.214:15|
 :skolemid |22|
 :pattern ( (__iar__assume_helper_1 c_1@@0 p_1_1@@0 p_0_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5499_14165) ) (!  (not (select (|PolymorphicMapType_5988_5499_15343#PolymorphicMapType_5988| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5988_5499_15343#PolymorphicMapType_5988| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5499_14032) ) (!  (not (select (|PolymorphicMapType_5988_5499_14032#PolymorphicMapType_5988| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5988_5499_14032#PolymorphicMapType_5988| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10275_2712) ) (!  (not (select (|PolymorphicMapType_5988_5499_2712#PolymorphicMapType_5988| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5988_5499_2712#PolymorphicMapType_5988| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5512_5513) ) (!  (not (select (|PolymorphicMapType_5988_5499_5513#PolymorphicMapType_5988| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5988_5499_5513#PolymorphicMapType_5988| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5499_53) ) (!  (not (select (|PolymorphicMapType_5988_5499_53#PolymorphicMapType_5988| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5988_5499_53#PolymorphicMapType_5988| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((c_7@@0 Bool) (c_6@@0 Bool) (c_5_1@@0 Bool) (c_4_2@@0 Bool) (c_3@@0 Bool) (c_2@@0 Bool) (c_1@@1 Bool) (p_7_3@@0 Real) (p_6_1@@0 Real) (p_5@@0 Real) (p_4_1@@0 Real) (p_3_1@@0 Real) (p_2_1@@0 Real) (p_1_1@@1 Real) (p_0_1@@1 Real) ) (! (= (__iar__assume_helper_7 c_7@@0 c_6@@0 c_5_1@@0 c_4_2@@0 c_3@@0 c_2@@0 c_1@@1 p_7_3@@0 p_6_1@@0 p_5@@0 p_4_1@@0 p_3_1@@0 p_2_1@@0 p_1_1@@1 p_0_1@@1) (+ (+ (+ (+ (+ (+ (+ p_0_1@@1 (ite c_1@@1 p_1_1@@1 NoPerm)) (ite c_2@@0 p_2_1@@0 NoPerm)) (ite c_3@@0 p_3_1@@0 NoPerm)) (ite c_4_2@@0 p_4_1@@0 NoPerm)) (ite c_5_1@@0 p_5@@0 NoPerm)) (ite c_6@@0 p_6_1@@0 NoPerm)) (ite c_7@@0 p_7_3@@0 NoPerm)))
 :qid |stdinbpl.250:15|
 :skolemid |28|
 :pattern ( (__iar__assume_helper_7 c_7@@0 c_6@@0 c_5_1@@0 c_4_2@@0 c_3@@0 c_2@@0 c_1@@1 p_7_3@@0 p_6_1@@0 p_5@@0 p_4_1@@0 p_3_1@@0 p_2_1@@0 p_1_1@@1 p_0_1@@1))
)))
(assert (forall ((c_6@@1 Bool) (c_5_1@@1 Bool) (c_4_2@@1 Bool) (c_3@@1 Bool) (c_2@@1 Bool) (c_1@@2 Bool) (p_6_1@@1 Real) (p_5@@1 Real) (p_4_1@@1 Real) (p_3_1@@1 Real) (p_2_1@@1 Real) (p_1_1@@2 Real) (p_0_1@@2 Real) ) (! (= (__iar__assume_helper_6 c_6@@1 c_5_1@@1 c_4_2@@1 c_3@@1 c_2@@1 c_1@@2 p_6_1@@1 p_5@@1 p_4_1@@1 p_3_1@@1 p_2_1@@1 p_1_1@@2 p_0_1@@2) (+ (+ (+ (+ (+ (+ p_0_1@@2 (ite c_1@@2 p_1_1@@2 NoPerm)) (ite c_2@@1 p_2_1@@1 NoPerm)) (ite c_3@@1 p_3_1@@1 NoPerm)) (ite c_4_2@@1 p_4_1@@1 NoPerm)) (ite c_5_1@@1 p_5@@1 NoPerm)) (ite c_6@@1 p_6_1@@1 NoPerm)))
 :qid |stdinbpl.244:15|
 :skolemid |27|
 :pattern ( (__iar__assume_helper_6 c_6@@1 c_5_1@@1 c_4_2@@1 c_3@@1 c_2@@1 c_1@@2 p_6_1@@1 p_5@@1 p_4_1@@1 p_3_1@@1 p_2_1@@1 p_1_1@@2 p_0_1@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5439) (ExhaleHeap T@PolymorphicMapType_5439) (Mask@@0 T@PolymorphicMapType_5460) (pm_f T@Field_5499_14032) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5499_14096 Mask@@0 null pm_f) (IsPredicateField_5499_14123 pm_f)) (= (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@0) null (PredicateMaskField_5499 pm_f)) (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| ExhaleHeap) null (PredicateMaskField_5499 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5499_14123 pm_f) (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| ExhaleHeap) null (PredicateMaskField_5499 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5439) (ExhaleHeap@@0 T@PolymorphicMapType_5439) (Mask@@1 T@PolymorphicMapType_5460) (pm_f@@0 T@Field_5499_14032) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5499_14096 Mask@@1 null pm_f@@0) (IsWandField_5499_15870 pm_f@@0)) (= (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@1) null (WandMaskField_5499 pm_f@@0)) (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| ExhaleHeap@@0) null (WandMaskField_5499 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5499_15870 pm_f@@0) (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| ExhaleHeap@@0) null (WandMaskField_5499 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((c_9 Bool) (c_8@@0 Bool) (c_7@@1 Bool) (c_6@@2 Bool) (c_5_1@@2 Bool) (c_4_2@@2 Bool) (c_3@@2 Bool) (c_2@@2 Bool) (c_1@@3 Bool) (p_9_3 Real) (p_8@@0 Real) (p_7_3@@1 Real) (p_6_1@@2 Real) (p_5@@2 Real) (p_4_1@@2 Real) (p_3_1@@2 Real) (p_2_1@@2 Real) (p_1_1@@3 Real) (p_0_1@@3 Real) ) (! (= (__iar__assume_helper_9 c_9 c_8@@0 c_7@@1 c_6@@2 c_5_1@@2 c_4_2@@2 c_3@@2 c_2@@2 c_1@@3 p_9_3 p_8@@0 p_7_3@@1 p_6_1@@2 p_5@@2 p_4_1@@2 p_3_1@@2 p_2_1@@2 p_1_1@@3 p_0_1@@3) (+ (+ (+ (+ (+ (+ (+ (+ (+ p_0_1@@3 (ite c_1@@3 p_1_1@@3 NoPerm)) (ite c_2@@2 p_2_1@@2 NoPerm)) (ite c_3@@2 p_3_1@@2 NoPerm)) (ite c_4_2@@2 p_4_1@@2 NoPerm)) (ite c_5_1@@2 p_5@@2 NoPerm)) (ite c_6@@2 p_6_1@@2 NoPerm)) (ite c_7@@1 p_7_3@@1 NoPerm)) (ite c_8@@0 p_8@@0 NoPerm)) (ite c_9 p_9_3 NoPerm)))
 :qid |stdinbpl.262:15|
 :skolemid |30|
 :pattern ( (__iar__assume_helper_9 c_9 c_8@@0 c_7@@1 c_6@@2 c_5_1@@2 c_4_2@@2 c_3@@2 c_2@@2 c_1@@3 p_9_3 p_8@@0 p_7_3@@1 p_6_1@@2 p_5@@2 p_4_1@@2 p_3_1@@2 p_2_1@@2 p_1_1@@3 p_0_1@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5439) (ExhaleHeap@@1 T@PolymorphicMapType_5439) (Mask@@2 T@PolymorphicMapType_5460) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_5499_14032) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5499_5499 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5499_5499 p v_1 p w))
)))
(assert (forall ((c_2@@3 Bool) (c_1@@4 Bool) (p_2_1@@3 Real) (p_1_1@@4 Real) (p_0_1@@4 Real) ) (! (= (__iar__assume_helper_2 c_2@@3 c_1@@4 p_2_1@@3 p_1_1@@4 p_0_1@@4) (+ (+ p_0_1@@4 (ite c_1@@4 p_1_1@@4 NoPerm)) (ite c_2@@3 p_2_1@@3 NoPerm)))
 :qid |stdinbpl.220:15|
 :skolemid |23|
 :pattern ( (__iar__assume_helper_2 c_2@@3 c_1@@4 p_2_1@@3 p_1_1@@4 p_0_1@@4))
)))
(assert  (not (IsPredicateField_3740_2712 f_7)))
(assert  (not (IsWandField_3740_2712 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5439) (ExhaleHeap@@2 T@PolymorphicMapType_5439) (Mask@@3 T@PolymorphicMapType_5460) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_5460) (o_2@@4 T@Ref) (f_4@@4 T@Field_5499_14165) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3740_19416 f_4@@4))) (not (IsWandField_3740_19432 f_4@@4))) (<= (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_5460) (o_2@@5 T@Ref) (f_4@@5 T@Field_5499_14032) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5499_14123 f_4@@5))) (not (IsWandField_5499_15870 f_4@@5))) (<= (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5460) (o_2@@6 T@Ref) (f_4@@6 T@Field_5512_5513) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3740_5513 f_4@@6))) (not (IsWandField_3740_5513 f_4@@6))) (<= (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5460) (o_2@@7 T@Ref) (f_4@@7 T@Field_5499_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3740_53 f_4@@7))) (not (IsWandField_3740_53 f_4@@7))) (<= (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5460) (o_2@@8 T@Ref) (f_4@@8 T@Field_10275_2712) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3740_2712 f_4@@8))) (not (IsWandField_3740_2712 f_4@@8))) (<= (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5460) (o_2@@9 T@Ref) (f_4@@9 T@Field_5499_14165) ) (! (= (HasDirectPerm_5499_19870 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5499_19870 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5460) (o_2@@10 T@Ref) (f_4@@10 T@Field_5499_14032) ) (! (= (HasDirectPerm_5499_14096 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5499_14096 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5460) (o_2@@11 T@Ref) (f_4@@11 T@Field_10275_2712) ) (! (= (HasDirectPerm_5499_2712 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5499_2712 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5460) (o_2@@12 T@Ref) (f_4@@12 T@Field_5512_5513) ) (! (= (HasDirectPerm_5499_5513 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5499_5513 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5460) (o_2@@13 T@Ref) (f_4@@13 T@Field_5499_53) ) (! (= (HasDirectPerm_5499_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5499_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5439) (ExhaleHeap@@3 T@PolymorphicMapType_5439) (Mask@@14 T@PolymorphicMapType_5460) (pm_f@@1 T@Field_5499_14032) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_5499_14096 Mask@@14 null pm_f@@1) (IsPredicateField_5499_14123 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_5499_53) ) (!  (=> (select (|PolymorphicMapType_5988_5499_53#PolymorphicMapType_5988| (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@4) null (PredicateMaskField_5499 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@4) o2 f_2) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_5512_5513) ) (!  (=> (select (|PolymorphicMapType_5988_5499_5513#PolymorphicMapType_5988| (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@4) null (PredicateMaskField_5499 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_10275_2712) ) (!  (=> (select (|PolymorphicMapType_5988_5499_2712#PolymorphicMapType_5988| (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@4) null (PredicateMaskField_5499 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5499_14032) ) (!  (=> (select (|PolymorphicMapType_5988_5499_14032#PolymorphicMapType_5988| (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@4) null (PredicateMaskField_5499 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5499_14165) ) (!  (=> (select (|PolymorphicMapType_5988_5499_15343#PolymorphicMapType_5988| (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@4) null (PredicateMaskField_5499 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_5499_14123 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5439) (ExhaleHeap@@4 T@PolymorphicMapType_5439) (Mask@@15 T@PolymorphicMapType_5460) (pm_f@@2 T@Field_5499_14032) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_5499_14096 Mask@@15 null pm_f@@2) (IsWandField_5499_15870 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_5499_53) ) (!  (=> (select (|PolymorphicMapType_5988_5499_53#PolymorphicMapType_5988| (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@5) null (WandMaskField_5499 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_5512_5513) ) (!  (=> (select (|PolymorphicMapType_5988_5499_5513#PolymorphicMapType_5988| (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@5) null (WandMaskField_5499 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_10275_2712) ) (!  (=> (select (|PolymorphicMapType_5988_5499_2712#PolymorphicMapType_5988| (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@5) null (WandMaskField_5499 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_5499_14032) ) (!  (=> (select (|PolymorphicMapType_5988_5499_14032#PolymorphicMapType_5988| (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@5) null (WandMaskField_5499 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_5499_14165) ) (!  (=> (select (|PolymorphicMapType_5988_5499_15343#PolymorphicMapType_5988| (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@5) null (WandMaskField_5499 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_5499_15870 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5439) (ExhaleHeap@@5 T@PolymorphicMapType_5439) (Mask@@16 T@PolymorphicMapType_5460) (o_1@@0 T@Ref) (f_2@@9 T@Field_5499_14165) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5499_19870 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@6) o_1@@0 f_2@@9) (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5439) (ExhaleHeap@@6 T@PolymorphicMapType_5439) (Mask@@17 T@PolymorphicMapType_5460) (o_1@@1 T@Ref) (f_2@@10 T@Field_5499_14032) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5499_14096 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@7) o_1@@1 f_2@@10) (select (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5439) (ExhaleHeap@@7 T@PolymorphicMapType_5439) (Mask@@18 T@PolymorphicMapType_5460) (o_1@@2 T@Ref) (f_2@@11 T@Field_10275_2712) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5499_2712 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@8) o_1@@2 f_2@@11) (select (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5439) (ExhaleHeap@@8 T@PolymorphicMapType_5439) (Mask@@19 T@PolymorphicMapType_5460) (o_1@@3 T@Ref) (f_2@@12 T@Field_5512_5513) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5499_5513 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@9) o_1@@3 f_2@@12) (select (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5439) (ExhaleHeap@@9 T@PolymorphicMapType_5439) (Mask@@20 T@PolymorphicMapType_5460) (o_1@@4 T@Ref) (f_2@@13 T@Field_5499_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_5499_53 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@10) o_1@@4 f_2@@13) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((c_3@@3 Bool) (c_2@@4 Bool) (c_1@@5 Bool) (p_3_1@@3 Real) (p_2_1@@4 Real) (p_1_1@@5 Real) (p_0_1@@5 Real) ) (! (= (__iar__assume_helper_3 c_3@@3 c_2@@4 c_1@@5 p_3_1@@3 p_2_1@@4 p_1_1@@5 p_0_1@@5) (+ (+ (+ p_0_1@@5 (ite c_1@@5 p_1_1@@5 NoPerm)) (ite c_2@@4 p_2_1@@4 NoPerm)) (ite c_3@@3 p_3_1@@3 NoPerm)))
 :qid |stdinbpl.226:15|
 :skolemid |24|
 :pattern ( (__iar__assume_helper_3 c_3@@3 c_2@@4 c_1@@5 p_3_1@@3 p_2_1@@4 p_1_1@@5 p_0_1@@5))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5499_14165) ) (! (= (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5499_14032) ) (! (= (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5512_5513) ) (! (= (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5499_53) ) (! (= (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10275_2712) ) (! (= (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5460) (SummandMask1 T@PolymorphicMapType_5460) (SummandMask2 T@PolymorphicMapType_5460) (o_2@@19 T@Ref) (f_4@@19 T@Field_5499_14165) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5460) (SummandMask1@@0 T@PolymorphicMapType_5460) (SummandMask2@@0 T@PolymorphicMapType_5460) (o_2@@20 T@Ref) (f_4@@20 T@Field_5499_14032) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5460) (SummandMask1@@1 T@PolymorphicMapType_5460) (SummandMask2@@1 T@PolymorphicMapType_5460) (o_2@@21 T@Ref) (f_4@@21 T@Field_5512_5513) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5460) (SummandMask1@@2 T@PolymorphicMapType_5460) (SummandMask2@@2 T@PolymorphicMapType_5460) (o_2@@22 T@Ref) (f_4@@22 T@Field_5499_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5460) (SummandMask1@@3 T@PolymorphicMapType_5460) (SummandMask2@@3 T@PolymorphicMapType_5460) (o_2@@23 T@Ref) (f_4@@23 T@Field_10275_2712) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((c_10_2 Bool) (c_9@@0 Bool) (c_8@@1 Bool) (c_7@@2 Bool) (c_6@@3 Bool) (c_5_1@@3 Bool) (c_4_2@@3 Bool) (c_3@@4 Bool) (c_2@@5 Bool) (c_1@@6 Bool) (p_10 Real) (p_9_3@@0 Real) (p_8@@1 Real) (p_7_3@@2 Real) (p_6_1@@3 Real) (p_5@@3 Real) (p_4_1@@3 Real) (p_3_1@@4 Real) (p_2_1@@5 Real) (p_1_1@@6 Real) (p_0_1@@6 Real) ) (! (= (__iar__assume_helper_10 c_10_2 c_9@@0 c_8@@1 c_7@@2 c_6@@3 c_5_1@@3 c_4_2@@3 c_3@@4 c_2@@5 c_1@@6 p_10 p_9_3@@0 p_8@@1 p_7_3@@2 p_6_1@@3 p_5@@3 p_4_1@@3 p_3_1@@4 p_2_1@@5 p_1_1@@6 p_0_1@@6) (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ p_0_1@@6 (ite c_1@@6 p_1_1@@6 NoPerm)) (ite c_2@@5 p_2_1@@5 NoPerm)) (ite c_3@@4 p_3_1@@4 NoPerm)) (ite c_4_2@@3 p_4_1@@3 NoPerm)) (ite c_5_1@@3 p_5@@3 NoPerm)) (ite c_6@@3 p_6_1@@3 NoPerm)) (ite c_7@@2 p_7_3@@2 NoPerm)) (ite c_8@@1 p_8@@1 NoPerm)) (ite c_9@@0 p_9_3@@0 NoPerm)) (ite c_10_2 p_10 NoPerm)))
 :qid |stdinbpl.268:15|
 :skolemid |31|
 :pattern ( (__iar__assume_helper_10 c_10_2 c_9@@0 c_8@@1 c_7@@2 c_6@@3 c_5_1@@3 c_4_2@@3 c_3@@4 c_2@@5 c_1@@6 p_10 p_9_3@@0 p_8@@1 p_7_3@@2 p_6_1@@3 p_5@@3 p_4_1@@3 p_3_1@@4 p_2_1@@5 p_1_1@@6 p_0_1@@6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5439) (o T@Ref) (f_3 T@Field_5499_14032) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_5439 (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@11) (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@11) (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@11) (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@11) (store (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@11) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5439 (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@11) (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@11) (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@11) (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@11) (store (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@11) o f_3 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5439) (o@@0 T@Ref) (f_3@@0 T@Field_5499_14165) (v@@0 T@PolymorphicMapType_5988) ) (! (succHeap Heap@@12 (PolymorphicMapType_5439 (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@12) (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@12) (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@12) (store (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5439 (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@12) (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@12) (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@12) (store (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5439) (o@@1 T@Ref) (f_3@@1 T@Field_10275_2712) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_5439 (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@13) (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@13) (store (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@13) (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5439 (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@13) (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@13) (store (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@13) (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5439) (o@@2 T@Ref) (f_3@@2 T@Field_5512_5513) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_5439 (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@14) (store (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@14) (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@14) (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5439 (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@14) (store (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@14) (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@14) (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5439) (o@@3 T@Ref) (f_3@@3 T@Field_5499_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_5439 (store (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@15) (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@15) (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@15) (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5439 (store (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@15) (|PolymorphicMapType_5439_5499_2712#PolymorphicMapType_5439| Heap@@15) (|PolymorphicMapType_5439_5499_14209#PolymorphicMapType_5439| Heap@@15) (|PolymorphicMapType_5439_5499_14032#PolymorphicMapType_5439| Heap@@15)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_5512_5513) (Heap@@16 T@PolymorphicMapType_5439) ) (!  (=> (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@16) o@@4 $allocated) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@16) (select (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@16) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5439_3455_3456#PolymorphicMapType_5439| Heap@@16) o@@4 f))
)))
(assert (forall ((c_4_2@@4 Bool) (c_3@@5 Bool) (c_2@@6 Bool) (c_1@@7 Bool) (p_4_1@@4 Real) (p_3_1@@5 Real) (p_2_1@@6 Real) (p_1_1@@7 Real) (p_0_1@@7 Real) ) (! (= (__iar__assume_helper_4 c_4_2@@4 c_3@@5 c_2@@6 c_1@@7 p_4_1@@4 p_3_1@@5 p_2_1@@6 p_1_1@@7 p_0_1@@7) (+ (+ (+ (+ p_0_1@@7 (ite c_1@@7 p_1_1@@7 NoPerm)) (ite c_2@@6 p_2_1@@6 NoPerm)) (ite c_3@@5 p_3_1@@5 NoPerm)) (ite c_4_2@@4 p_4_1@@4 NoPerm)))
 :qid |stdinbpl.232:15|
 :skolemid |25|
 :pattern ( (__iar__assume_helper_4 c_4_2@@4 c_3@@5 c_2@@6 c_1@@7 p_4_1@@4 p_3_1@@5 p_2_1@@6 p_1_1@@7 p_0_1@@7))
)))
(assert (forall ((p@@1 T@Field_5499_14032) (v_1@@0 T@FrameType) (q T@Field_5499_14032) (w@@0 T@FrameType) (r T@Field_5499_14032) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5499_5499 p@@1 v_1@@0 q w@@0) (InsidePredicate_5499_5499 q w@@0 r u)) (InsidePredicate_5499_5499 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5499_5499 p@@1 v_1@@0 q w@@0) (InsidePredicate_5499_5499 q w@@0 r u))
)))
(assert (forall ((c_5_1@@4 Bool) (c_4_2@@5 Bool) (c_3@@6 Bool) (c_2@@7 Bool) (c_1@@8 Bool) (p_5@@4 Real) (p_4_1@@5 Real) (p_3_1@@6 Real) (p_2_1@@7 Real) (p_1_1@@8 Real) (p_0_1@@8 Real) ) (! (= (__iar__assume_helper_5 c_5_1@@4 c_4_2@@5 c_3@@6 c_2@@7 c_1@@8 p_5@@4 p_4_1@@5 p_3_1@@6 p_2_1@@7 p_1_1@@8 p_0_1@@8) (+ (+ (+ (+ (+ p_0_1@@8 (ite c_1@@8 p_1_1@@8 NoPerm)) (ite c_2@@7 p_2_1@@7 NoPerm)) (ite c_3@@6 p_3_1@@6 NoPerm)) (ite c_4_2@@5 p_4_1@@5 NoPerm)) (ite c_5_1@@4 p_5@@4 NoPerm)))
 :qid |stdinbpl.238:15|
 :skolemid |26|
 :pattern ( (__iar__assume_helper_5 c_5_1@@4 c_4_2@@5 c_3@@6 c_2@@7 c_1@@8 p_5@@4 p_4_1@@5 p_3_1@@6 p_2_1@@7 p_1_1@@8 p_0_1@@8))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun p_1 () Real)
(declare-fun Heap@@17 () T@PolymorphicMapType_5439)
(declare-fun x1_2 () T@Ref)
(declare-fun x2 () T@Ref)
(declare-fun x3 () T@Ref)
(declare-fun x4 () T@Ref)
(declare-fun x5 () T@Ref)
(declare-fun x6 () T@Ref)
(declare-fun x7_20 () T@Ref)
(declare-fun x8_20 () T@Ref)
(declare-fun x9_20 () T@Ref)
(declare-fun x10 () T@Ref)
(declare-fun x11 () T@Ref)
(declare-fun x12 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_5460)
(set-info :boogie-vc-id m)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (=> (and (< NoPerm p_1) (= (ControlFlow 0 2) (- 0 1))) false)))
(let ((anon0_correct  (=> (and (and (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x1_2 $allocated) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x2 $allocated))) (and (and (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x3 $allocated) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x4 $allocated)) (and (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x5 $allocated) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x6 $allocated)))) (and (and (and (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x7_20 $allocated) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x8_20 $allocated)) (and (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x9_20 $allocated) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x10 $allocated))) (and (and (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x11 $allocated) (select (|PolymorphicMapType_5439_3452_53#PolymorphicMapType_5439| Heap@@17) x12 $allocated)) (and (<= NoPerm p_1) (state Heap@@17 ZeroMask))))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (>= p_1 NoPerm)) (=> (>= p_1 NoPerm) (=> (and (=> (> p_1 NoPerm) (not (= x1_2 null))) (= Mask@0 (PolymorphicMapType_5460 (store (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| ZeroMask) x1_2 f_7 (+ (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| ZeroMask) x1_2 f_7) p_1)) (|PolymorphicMapType_5460_3740_53#PolymorphicMapType_5460| ZeroMask) (|PolymorphicMapType_5460_3740_5513#PolymorphicMapType_5460| ZeroMask) (|PolymorphicMapType_5460_3740_14032#PolymorphicMapType_5460| ZeroMask) (|PolymorphicMapType_5460_3740_18287#PolymorphicMapType_5460| ZeroMask)))) (=> (and (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (state Heap@@17 Mask@0) (<= p_1 (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@0) x2 f_7)))) (=> (and (and (and (and (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (<= (__iar__assume_helper_1 (= x2 x3) p_1 p_1) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@0) x3 f_7)) (state Heap@@17 Mask@0))) (and (and (state Heap@@17 Mask@0) (<= (__iar__assume_helper_2 (= x2 x4) (= x3 x4) p_1 p_1 p_1) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@0) x4 f_7))) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)))) (and (and (and (<= (__iar__assume_helper_3 (= x2 x5) (= x3 x5) (= x4 x5) p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@0) x5 f_7)) (state Heap@@17 Mask@0)) (and (state Heap@@17 Mask@0) (<= (__iar__assume_helper_4 (= x2 x6) (= x3 x6) (= x4 x6) (= x5 x6) p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@0) x6 f_7)))) (and (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (<= (__iar__assume_helper_5 (= x2 x7_20) (= x3 x7_20) (= x4 x7_20) (= x5 x7_20) (= x6 x7_20) p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@0) x7_20 f_7)) (state Heap@@17 Mask@0))))) (and (and (and (and (state Heap@@17 Mask@0) (<= (__iar__assume_helper_6 (= x2 x8_20) (= x3 x8_20) (= x4 x8_20) (= x5 x8_20) (= x6 x8_20) (= x7_20 x8_20) p_1 p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@0) x8_20 f_7))) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0))) (and (and (<= (__iar__assume_helper_7 (= x2 x9_20) (= x3 x9_20) (= x4 x9_20) (= x5 x9_20) (= x6 x9_20) (= x7_20 x9_20) (= x8_20 x9_20) p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@0) x9_20 f_7)) (state Heap@@17 Mask@0)) (and (state Heap@@17 Mask@0) (<= (__iar__assume_helper_8 (= x2 x10) (= x3 x10) (= x4 x10) (= x5 x10) (= x6 x10) (= x7_20 x10) (= x8_20 x10) (= x9_20 x10) p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@0) x10 f_7))))) (and (and (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (<= (__iar__assume_helper_9 (= x2 x11) (= x3 x11) (= x4 x11) (= x5 x11) (= x6 x11) (= x7_20 x11) (= x8_20 x11) (= x9_20 x11) (= x10 x11) p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@0) x11 f_7)) (state Heap@@17 Mask@0))) (and (and (state Heap@@17 Mask@0) (<= (__iar__assume_helper_10 (= x2 x12) (= x3 x12) (= x4 x12) (= x5 x12) (= x6 x12) (= x7_20 x12) (= x8_20 x12) (= x9_20 x12) (= x10 x12) (= x11 x12) p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_5460_3740_2712#PolymorphicMapType_5460| Mask@0) x12 f_7))) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)))))) (and (=> (= (ControlFlow 0 4) 2) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
