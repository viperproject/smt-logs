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
(declare-sort T@Field_17086_53 0)
(declare-sort T@Field_17099_17100 0)
(declare-sort T@Field_20413_1189 0)
(declare-sort T@Field_9244_45925 0)
(declare-sort T@Field_9244_45792 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_17047 0)) (((PolymorphicMapType_17047 (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| (Array T@Ref T@Field_20413_1189 Real)) (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| (Array T@Ref T@Field_17086_53 Real)) (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| (Array T@Ref T@Field_17099_17100 Real)) (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| (Array T@Ref T@Field_9244_45792 Real)) (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| (Array T@Ref T@Field_9244_45925 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17575 0)) (((PolymorphicMapType_17575 (|PolymorphicMapType_17575_17086_53#PolymorphicMapType_17575| (Array T@Ref T@Field_17086_53 Bool)) (|PolymorphicMapType_17575_17086_17100#PolymorphicMapType_17575| (Array T@Ref T@Field_17099_17100 Bool)) (|PolymorphicMapType_17575_17086_1189#PolymorphicMapType_17575| (Array T@Ref T@Field_20413_1189 Bool)) (|PolymorphicMapType_17575_17086_45792#PolymorphicMapType_17575| (Array T@Ref T@Field_9244_45792 Bool)) (|PolymorphicMapType_17575_17086_47103#PolymorphicMapType_17575| (Array T@Ref T@Field_9244_45925 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17026 0)) (((PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| (Array T@Ref T@Field_17086_53 Bool)) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| (Array T@Ref T@Field_17099_17100 T@Ref)) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| (Array T@Ref T@Field_20413_1189 Int)) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| (Array T@Ref T@Field_9244_45925 T@PolymorphicMapType_17575)) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| (Array T@Ref T@Field_9244_45792 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_17086_53)
(declare-fun x_42 () T@Field_20413_1189)
(declare-fun succHeap (T@PolymorphicMapType_17026 T@PolymorphicMapType_17026) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_17026 T@PolymorphicMapType_17026) Bool)
(declare-fun state (T@PolymorphicMapType_17026 T@PolymorphicMapType_17047) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_17047) Bool)
(declare-fun t4_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_17575)
(declare-fun |s0'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun dummyFunction_1381 (Int) Bool)
(declare-fun |s0#triggerStateless| (T@Ref) Int)
(declare-fun |s0Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |s0Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |s1'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |s1#triggerStateless| (T@Ref) Int)
(declare-fun |s1Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |s1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |s2'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |s2#triggerStateless| (T@Ref) Int)
(declare-fun |i0'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |i0#triggerStateless| (T@Ref) Int)
(declare-fun |i0Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |i0Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |i1'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |i1#triggerStateless| (T@Ref) Int)
(declare-fun |i1Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |i1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |e0'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |e0#triggerStateless| (T@Ref) Int)
(declare-fun |e0Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |e0Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |e1'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |e1#triggerStateless| (T@Ref) Int)
(declare-fun |e1Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |e1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |ie0'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |ie0#triggerStateless| (T@Ref) Int)
(declare-fun |ie0Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |ie0Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |ie1'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |ie1#triggerStateless| (T@Ref) Int)
(declare-fun |ie1Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |ie1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t1'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t1#triggerStateless| (T@Ref) Int)
(declare-fun |t1Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t2'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t2#triggerStateless| (T@Ref) Int)
(declare-fun |t2Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t2Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t3'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t3#triggerStateless| (T@Ref) Int)
(declare-fun |t3Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t3Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t4'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t4#triggerStateless| (T@Ref) Int)
(declare-fun |t4Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t4Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t5'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t5#triggerStateless| (T@Ref) Int)
(declare-fun |t5Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t5Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t6'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t6#triggerStateless| (T@Ref) Int)
(declare-fun |t6Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t6Abstract#triggerStateless| (T@Ref) Int)
(declare-fun s0_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun s0Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun s1_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun s1Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun s2_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun i0_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun i0Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun i1_7 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun i1Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun e0_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun e0Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun e1_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun e1Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun ie0_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun ie0Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun ie1_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun ie1Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t1_3 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t1Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t2_3 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t2Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t3_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t3Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t4Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t5_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t5Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t6 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t6Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_17026 T@PolymorphicMapType_17026 T@PolymorphicMapType_17047) Bool)
(declare-fun IsPredicateField_9244_45883 (T@Field_9244_45792) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9244 (T@Field_9244_45792) T@Field_9244_45925)
(declare-fun HasDirectPerm_9244_45856 (T@PolymorphicMapType_17047 T@Ref T@Field_9244_45792) Bool)
(declare-fun IsWandField_9244_47630 (T@Field_9244_45792) Bool)
(declare-fun WandMaskField_9244 (T@Field_9244_45792) T@Field_9244_45925)
(declare-fun |t5#trigger| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |t5Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_17026)
(declare-fun ZeroMask () T@PolymorphicMapType_17047)
(declare-fun InsidePredicate_17086_17086 (T@Field_9244_45792 T@FrameType T@Field_9244_45792 T@FrameType) Bool)
(declare-fun IsPredicateField_9244_1189 (T@Field_20413_1189) Bool)
(declare-fun IsWandField_9244_1189 (T@Field_20413_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9244_51176 (T@Field_9244_45925) Bool)
(declare-fun IsWandField_9244_51192 (T@Field_9244_45925) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9244_17100 (T@Field_17099_17100) Bool)
(declare-fun IsWandField_9244_17100 (T@Field_17099_17100) Bool)
(declare-fun IsPredicateField_9244_53 (T@Field_17086_53) Bool)
(declare-fun IsWandField_9244_53 (T@Field_17086_53) Bool)
(declare-fun HasDirectPerm_9244_51630 (T@PolymorphicMapType_17047 T@Ref T@Field_9244_45925) Bool)
(declare-fun HasDirectPerm_9244_17100 (T@PolymorphicMapType_17047 T@Ref T@Field_17099_17100) Bool)
(declare-fun HasDirectPerm_9244_53 (T@PolymorphicMapType_17047 T@Ref T@Field_17086_53) Bool)
(declare-fun HasDirectPerm_9244_1189 (T@PolymorphicMapType_17047 T@Ref T@Field_20413_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_17047 T@PolymorphicMapType_17047 T@PolymorphicMapType_17047) Bool)
(declare-fun |i1Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |ie1Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |ie1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |t6Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |s1Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |i1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |s1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |t6#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |t2#frame| (T@FrameType T@Ref) Int)
(declare-fun |t2Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |t4#frame| (T@FrameType T@Ref) Int)
(declare-fun |t4Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |t5#frame| (T@FrameType T@Ref) Int)
(declare-fun |t5Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |s0#frame| (T@FrameType T@Ref) Int)
(declare-fun |s0Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |s1#frame| (T@FrameType T@Ref) Int)
(declare-fun |s1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |s2#frame| (T@FrameType T@Ref) Int)
(declare-fun |i0#frame| (T@FrameType T@Ref) Int)
(declare-fun |i0Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |i1#frame| (T@FrameType T@Ref) Int)
(declare-fun |i1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |e0#frame| (T@FrameType T@Ref) Int)
(declare-fun |e0Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |e1#frame| (T@FrameType T@Ref) Int)
(declare-fun |e1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |ie0#frame| (T@FrameType T@Ref) Int)
(declare-fun |ie0Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |ie1#frame| (T@FrameType T@Ref) Int)
(declare-fun |ie1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |t1#frame| (T@FrameType T@Ref) Int)
(declare-fun |t1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |t3#frame| (T@FrameType T@Ref) Int)
(declare-fun |t3Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |t6#frame| (T@FrameType T@Ref) Int)
(declare-fun |t6Abstract#frame| (T@FrameType T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_17026) (Heap1 T@PolymorphicMapType_17026) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_17026) (Mask T@PolymorphicMapType_17047) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_17026) (Heap1@@0 T@PolymorphicMapType_17026) (Heap2 T@PolymorphicMapType_17026) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_17026) (Mask@@0 T@PolymorphicMapType_17047) (this T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 13)) (=> (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@0) this x_42) 0) (= (t4_1 Heap@@0 this) 0)))
 :qid |stdinbpl.1823:15|
 :skolemid |111|
 :pattern ( (state Heap@@0 Mask@@0) (t4_1 Heap@@0 this))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9244_45925) ) (!  (not (select (|PolymorphicMapType_17575_17086_47103#PolymorphicMapType_17575| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17575_17086_47103#PolymorphicMapType_17575| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9244_45792) ) (!  (not (select (|PolymorphicMapType_17575_17086_45792#PolymorphicMapType_17575| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17575_17086_45792#PolymorphicMapType_17575| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20413_1189) ) (!  (not (select (|PolymorphicMapType_17575_17086_1189#PolymorphicMapType_17575| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17575_17086_1189#PolymorphicMapType_17575| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_17099_17100) ) (!  (not (select (|PolymorphicMapType_17575_17086_17100#PolymorphicMapType_17575| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17575_17086_17100#PolymorphicMapType_17575| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_17086_53) ) (!  (not (select (|PolymorphicMapType_17575_17086_53#PolymorphicMapType_17575| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17575_17086_53#PolymorphicMapType_17575| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_17026) (this@@0 T@Ref) ) (! (dummyFunction_1381 (|s0#triggerStateless| this@@0))
 :qid |stdinbpl.226:15|
 :skolemid |23|
 :pattern ( (|s0'| Heap@@1 this@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_17026) (this@@1 T@Ref) ) (! (dummyFunction_1381 (|s0Abstract#triggerStateless| this@@1))
 :qid |stdinbpl.286:15|
 :skolemid |27|
 :pattern ( (|s0Abstract'| Heap@@2 this@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_17026) (this@@2 T@Ref) ) (! (dummyFunction_1381 (|s1#triggerStateless| this@@2))
 :qid |stdinbpl.337:15|
 :skolemid |30|
 :pattern ( (|s1'| Heap@@3 this@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_17026) (this@@3 T@Ref) ) (! (dummyFunction_1381 (|s1Abstract#triggerStateless| this@@3))
 :qid |stdinbpl.408:15|
 :skolemid |35|
 :pattern ( (|s1Abstract'| Heap@@4 this@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_17026) (this@@4 T@Ref) ) (! (dummyFunction_1381 (|s2#triggerStateless| this@@4))
 :qid |stdinbpl.465:15|
 :skolemid |39|
 :pattern ( (|s2'| Heap@@5 this@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_17026) (this@@5 T@Ref) ) (! (dummyFunction_1381 (|i0#triggerStateless| this@@5))
 :qid |stdinbpl.526:15|
 :skolemid |43|
 :pattern ( (|i0'| Heap@@6 this@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_17026) (this@@6 T@Ref) ) (! (dummyFunction_1381 (|i0Abstract#triggerStateless| this@@6))
 :qid |stdinbpl.594:15|
 :skolemid |47|
 :pattern ( (|i0Abstract'| Heap@@7 this@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_17026) (this@@7 T@Ref) ) (! (dummyFunction_1381 (|i1#triggerStateless| this@@7))
 :qid |stdinbpl.653:15|
 :skolemid |50|
 :pattern ( (|i1'| Heap@@8 this@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_17026) (this@@8 T@Ref) ) (! (dummyFunction_1381 (|i1Abstract#triggerStateless| this@@8))
 :qid |stdinbpl.730:15|
 :skolemid |55|
 :pattern ( (|i1Abstract'| Heap@@9 this@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_17026) (this@@9 T@Ref) ) (! (dummyFunction_1381 (|e0#triggerStateless| this@@9))
 :qid |stdinbpl.795:15|
 :skolemid |59|
 :pattern ( (|e0'| Heap@@10 this@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_17026) (this@@10 T@Ref) ) (! (dummyFunction_1381 (|e0Abstract#triggerStateless| this@@10))
 :qid |stdinbpl.863:15|
 :skolemid |63|
 :pattern ( (|e0Abstract'| Heap@@11 this@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_17026) (this@@11 T@Ref) ) (! (dummyFunction_1381 (|e1#triggerStateless| this@@11))
 :qid |stdinbpl.922:15|
 :skolemid |66|
 :pattern ( (|e1'| Heap@@12 this@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_17026) (this@@12 T@Ref) ) (! (dummyFunction_1381 (|e1Abstract#triggerStateless| this@@12))
 :qid |stdinbpl.998:15|
 :skolemid |70|
 :pattern ( (|e1Abstract'| Heap@@13 this@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_17026) (this@@13 T@Ref) ) (! (dummyFunction_1381 (|ie0#triggerStateless| this@@13))
 :qid |stdinbpl.1060:15|
 :skolemid |73|
 :pattern ( (|ie0'| Heap@@14 this@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_17026) (this@@14 T@Ref) ) (! (dummyFunction_1381 (|ie0Abstract#triggerStateless| this@@14))
 :qid |stdinbpl.1134:15|
 :skolemid |77|
 :pattern ( (|ie0Abstract'| Heap@@15 this@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_17026) (this@@15 T@Ref) ) (! (dummyFunction_1381 (|ie1#triggerStateless| this@@15))
 :qid |stdinbpl.1199:15|
 :skolemid |80|
 :pattern ( (|ie1'| Heap@@16 this@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_17026) (this@@16 T@Ref) ) (! (dummyFunction_1381 (|ie1Abstract#triggerStateless| this@@16))
 :qid |stdinbpl.1284:15|
 :skolemid |85|
 :pattern ( (|ie1Abstract'| Heap@@17 this@@16))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_17026) (this@@17 T@Ref) ) (! (dummyFunction_1381 (|t1#triggerStateless| this@@17))
 :qid |stdinbpl.1355:15|
 :skolemid |89|
 :pattern ( (|t1'| Heap@@18 this@@17))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_17026) (this@@18 T@Ref) ) (! (dummyFunction_1381 (|t1Abstract#triggerStateless| this@@18))
 :qid |stdinbpl.1430:15|
 :skolemid |93|
 :pattern ( (|t1Abstract'| Heap@@19 this@@18))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_17026) (this@@19 T@Ref) ) (! (dummyFunction_1381 (|t2#triggerStateless| this@@19))
 :qid |stdinbpl.1496:15|
 :skolemid |96|
 :pattern ( (|t2'| Heap@@20 this@@19))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_17026) (this@@20 T@Ref) ) (! (dummyFunction_1381 (|t2Abstract#triggerStateless| this@@20))
 :qid |stdinbpl.1571:15|
 :skolemid |100|
 :pattern ( (|t2Abstract'| Heap@@21 this@@20))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_17026) (this@@21 T@Ref) ) (! (dummyFunction_1381 (|t3#triggerStateless| this@@21))
 :qid |stdinbpl.1637:15|
 :skolemid |103|
 :pattern ( (|t3'| Heap@@22 this@@21))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_17026) (this@@22 T@Ref) ) (! (dummyFunction_1381 (|t3Abstract#triggerStateless| this@@22))
 :qid |stdinbpl.1734:15|
 :skolemid |107|
 :pattern ( (|t3Abstract'| Heap@@23 this@@22))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_17026) (this@@23 T@Ref) ) (! (dummyFunction_1381 (|t4#triggerStateless| this@@23))
 :qid |stdinbpl.1817:15|
 :skolemid |110|
 :pattern ( (|t4'| Heap@@24 this@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_17026) (this@@24 T@Ref) ) (! (dummyFunction_1381 (|t4Abstract#triggerStateless| this@@24))
 :qid |stdinbpl.1914:15|
 :skolemid |114|
 :pattern ( (|t4Abstract'| Heap@@25 this@@24))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_17026) (this@@25 T@Ref) ) (! (dummyFunction_1381 (|t5#triggerStateless| this@@25))
 :qid |stdinbpl.1997:15|
 :skolemid |117|
 :pattern ( (|t5'| Heap@@26 this@@25))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_17026) (this@@26 T@Ref) ) (! (dummyFunction_1381 (|t5Abstract#triggerStateless| this@@26))
 :qid |stdinbpl.2090:15|
 :skolemid |122|
 :pattern ( (|t5Abstract'| Heap@@27 this@@26))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_17026) (this@@27 T@Ref) ) (! (dummyFunction_1381 (|t6#triggerStateless| this@@27))
 :qid |stdinbpl.2171:15|
 :skolemid |126|
 :pattern ( (|t6'| Heap@@28 this@@27))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_17026) (this@@28 T@Ref) ) (! (dummyFunction_1381 (|t6Abstract#triggerStateless| this@@28))
 :qid |stdinbpl.2264:15|
 :skolemid |131|
 :pattern ( (|t6Abstract'| Heap@@29 this@@28))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_17026) (this@@29 T@Ref) ) (!  (and (= (s0_1 Heap@@30 this@@29) (|s0'| Heap@@30 this@@29)) (dummyFunction_1381 (|s0#triggerStateless| this@@29)))
 :qid |stdinbpl.222:15|
 :skolemid |22|
 :pattern ( (s0_1 Heap@@30 this@@29))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_17026) (this@@30 T@Ref) ) (!  (and (= (s0Abstract Heap@@31 this@@30) (|s0Abstract'| Heap@@31 this@@30)) (dummyFunction_1381 (|s0Abstract#triggerStateless| this@@30)))
 :qid |stdinbpl.282:15|
 :skolemid |26|
 :pattern ( (s0Abstract Heap@@31 this@@30))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_17026) (this@@31 T@Ref) ) (!  (and (= (s1_1 Heap@@32 this@@31) (|s1'| Heap@@32 this@@31)) (dummyFunction_1381 (|s1#triggerStateless| this@@31)))
 :qid |stdinbpl.333:15|
 :skolemid |29|
 :pattern ( (s1_1 Heap@@32 this@@31))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_17026) (this@@32 T@Ref) ) (!  (and (= (s1Abstract Heap@@33 this@@32) (|s1Abstract'| Heap@@33 this@@32)) (dummyFunction_1381 (|s1Abstract#triggerStateless| this@@32)))
 :qid |stdinbpl.404:15|
 :skolemid |34|
 :pattern ( (s1Abstract Heap@@33 this@@32))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_17026) (this@@33 T@Ref) ) (!  (and (= (s2_1 Heap@@34 this@@33) (|s2'| Heap@@34 this@@33)) (dummyFunction_1381 (|s2#triggerStateless| this@@33)))
 :qid |stdinbpl.461:15|
 :skolemid |38|
 :pattern ( (s2_1 Heap@@34 this@@33))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_17026) (this@@34 T@Ref) ) (!  (and (= (i0_1 Heap@@35 this@@34) (|i0'| Heap@@35 this@@34)) (dummyFunction_1381 (|i0#triggerStateless| this@@34)))
 :qid |stdinbpl.522:15|
 :skolemid |42|
 :pattern ( (i0_1 Heap@@35 this@@34))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_17026) (this@@35 T@Ref) ) (!  (and (= (i0Abstract Heap@@36 this@@35) (|i0Abstract'| Heap@@36 this@@35)) (dummyFunction_1381 (|i0Abstract#triggerStateless| this@@35)))
 :qid |stdinbpl.590:15|
 :skolemid |46|
 :pattern ( (i0Abstract Heap@@36 this@@35))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_17026) (this@@36 T@Ref) ) (!  (and (= (i1_7 Heap@@37 this@@36) (|i1'| Heap@@37 this@@36)) (dummyFunction_1381 (|i1#triggerStateless| this@@36)))
 :qid |stdinbpl.649:15|
 :skolemid |49|
 :pattern ( (i1_7 Heap@@37 this@@36))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_17026) (this@@37 T@Ref) ) (!  (and (= (i1Abstract Heap@@38 this@@37) (|i1Abstract'| Heap@@38 this@@37)) (dummyFunction_1381 (|i1Abstract#triggerStateless| this@@37)))
 :qid |stdinbpl.726:15|
 :skolemid |54|
 :pattern ( (i1Abstract Heap@@38 this@@37))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_17026) (this@@38 T@Ref) ) (!  (and (= (e0_1 Heap@@39 this@@38) (|e0'| Heap@@39 this@@38)) (dummyFunction_1381 (|e0#triggerStateless| this@@38)))
 :qid |stdinbpl.791:15|
 :skolemid |58|
 :pattern ( (e0_1 Heap@@39 this@@38))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_17026) (this@@39 T@Ref) ) (!  (and (= (e0Abstract Heap@@40 this@@39) (|e0Abstract'| Heap@@40 this@@39)) (dummyFunction_1381 (|e0Abstract#triggerStateless| this@@39)))
 :qid |stdinbpl.859:15|
 :skolemid |62|
 :pattern ( (e0Abstract Heap@@40 this@@39))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_17026) (this@@40 T@Ref) ) (!  (and (= (e1_1 Heap@@41 this@@40) (|e1'| Heap@@41 this@@40)) (dummyFunction_1381 (|e1#triggerStateless| this@@40)))
 :qid |stdinbpl.918:15|
 :skolemid |65|
 :pattern ( (e1_1 Heap@@41 this@@40))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_17026) (this@@41 T@Ref) ) (!  (and (= (e1Abstract Heap@@42 this@@41) (|e1Abstract'| Heap@@42 this@@41)) (dummyFunction_1381 (|e1Abstract#triggerStateless| this@@41)))
 :qid |stdinbpl.994:15|
 :skolemid |69|
 :pattern ( (e1Abstract Heap@@42 this@@41))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_17026) (this@@42 T@Ref) ) (!  (and (= (ie0_1 Heap@@43 this@@42) (|ie0'| Heap@@43 this@@42)) (dummyFunction_1381 (|ie0#triggerStateless| this@@42)))
 :qid |stdinbpl.1056:15|
 :skolemid |72|
 :pattern ( (ie0_1 Heap@@43 this@@42))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_17026) (this@@43 T@Ref) ) (!  (and (= (ie0Abstract Heap@@44 this@@43) (|ie0Abstract'| Heap@@44 this@@43)) (dummyFunction_1381 (|ie0Abstract#triggerStateless| this@@43)))
 :qid |stdinbpl.1130:15|
 :skolemid |76|
 :pattern ( (ie0Abstract Heap@@44 this@@43))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_17026) (this@@44 T@Ref) ) (!  (and (= (ie1_1 Heap@@45 this@@44) (|ie1'| Heap@@45 this@@44)) (dummyFunction_1381 (|ie1#triggerStateless| this@@44)))
 :qid |stdinbpl.1195:15|
 :skolemid |79|
 :pattern ( (ie1_1 Heap@@45 this@@44))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_17026) (this@@45 T@Ref) ) (!  (and (= (ie1Abstract Heap@@46 this@@45) (|ie1Abstract'| Heap@@46 this@@45)) (dummyFunction_1381 (|ie1Abstract#triggerStateless| this@@45)))
 :qid |stdinbpl.1280:15|
 :skolemid |84|
 :pattern ( (ie1Abstract Heap@@46 this@@45))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_17026) (this@@46 T@Ref) ) (!  (and (= (t1_3 Heap@@47 this@@46) (|t1'| Heap@@47 this@@46)) (dummyFunction_1381 (|t1#triggerStateless| this@@46)))
 :qid |stdinbpl.1351:15|
 :skolemid |88|
 :pattern ( (t1_3 Heap@@47 this@@46))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_17026) (this@@47 T@Ref) ) (!  (and (= (t1Abstract Heap@@48 this@@47) (|t1Abstract'| Heap@@48 this@@47)) (dummyFunction_1381 (|t1Abstract#triggerStateless| this@@47)))
 :qid |stdinbpl.1426:15|
 :skolemid |92|
 :pattern ( (t1Abstract Heap@@48 this@@47))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_17026) (this@@48 T@Ref) ) (!  (and (= (t2_3 Heap@@49 this@@48) (|t2'| Heap@@49 this@@48)) (dummyFunction_1381 (|t2#triggerStateless| this@@48)))
 :qid |stdinbpl.1492:15|
 :skolemid |95|
 :pattern ( (t2_3 Heap@@49 this@@48))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_17026) (this@@49 T@Ref) ) (!  (and (= (t2Abstract Heap@@50 this@@49) (|t2Abstract'| Heap@@50 this@@49)) (dummyFunction_1381 (|t2Abstract#triggerStateless| this@@49)))
 :qid |stdinbpl.1567:15|
 :skolemid |99|
 :pattern ( (t2Abstract Heap@@50 this@@49))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_17026) (this@@50 T@Ref) ) (!  (and (= (t3_1 Heap@@51 this@@50) (|t3'| Heap@@51 this@@50)) (dummyFunction_1381 (|t3#triggerStateless| this@@50)))
 :qid |stdinbpl.1633:15|
 :skolemid |102|
 :pattern ( (t3_1 Heap@@51 this@@50))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_17026) (this@@51 T@Ref) ) (!  (and (= (t3Abstract Heap@@52 this@@51) (|t3Abstract'| Heap@@52 this@@51)) (dummyFunction_1381 (|t3Abstract#triggerStateless| this@@51)))
 :qid |stdinbpl.1730:15|
 :skolemid |106|
 :pattern ( (t3Abstract Heap@@52 this@@51))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_17026) (this@@52 T@Ref) ) (!  (and (= (t4_1 Heap@@53 this@@52) (|t4'| Heap@@53 this@@52)) (dummyFunction_1381 (|t4#triggerStateless| this@@52)))
 :qid |stdinbpl.1813:15|
 :skolemid |109|
 :pattern ( (t4_1 Heap@@53 this@@52))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_17026) (this@@53 T@Ref) ) (!  (and (= (t4Abstract Heap@@54 this@@53) (|t4Abstract'| Heap@@54 this@@53)) (dummyFunction_1381 (|t4Abstract#triggerStateless| this@@53)))
 :qid |stdinbpl.1910:15|
 :skolemid |113|
 :pattern ( (t4Abstract Heap@@54 this@@53))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_17026) (this@@54 T@Ref) ) (!  (and (= (t5_1 Heap@@55 this@@54) (|t5'| Heap@@55 this@@54)) (dummyFunction_1381 (|t5#triggerStateless| this@@54)))
 :qid |stdinbpl.1993:15|
 :skolemid |116|
 :pattern ( (t5_1 Heap@@55 this@@54))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_17026) (this@@55 T@Ref) ) (!  (and (= (t5Abstract Heap@@56 this@@55) (|t5Abstract'| Heap@@56 this@@55)) (dummyFunction_1381 (|t5Abstract#triggerStateless| this@@55)))
 :qid |stdinbpl.2086:15|
 :skolemid |121|
 :pattern ( (t5Abstract Heap@@56 this@@55))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_17026) (this@@56 T@Ref) ) (!  (and (= (t6 Heap@@57 this@@56) (|t6'| Heap@@57 this@@56)) (dummyFunction_1381 (|t6#triggerStateless| this@@56)))
 :qid |stdinbpl.2167:15|
 :skolemid |125|
 :pattern ( (t6 Heap@@57 this@@56))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_17026) (this@@57 T@Ref) ) (!  (and (= (t6Abstract Heap@@58 this@@57) (|t6Abstract'| Heap@@58 this@@57)) (dummyFunction_1381 (|t6Abstract#triggerStateless| this@@57)))
 :qid |stdinbpl.2260:15|
 :skolemid |130|
 :pattern ( (t6Abstract Heap@@58 this@@57))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_17026) (ExhaleHeap T@PolymorphicMapType_17026) (Mask@@1 T@PolymorphicMapType_17047) (pm_f T@Field_9244_45792) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_9244_45856 Mask@@1 null pm_f) (IsPredicateField_9244_45883 pm_f)) (= (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@59) null (PredicateMaskField_9244 pm_f)) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap) null (PredicateMaskField_9244 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap Mask@@1) (IsPredicateField_9244_45883 pm_f) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap) null (PredicateMaskField_9244 pm_f)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_17026) (ExhaleHeap@@0 T@PolymorphicMapType_17026) (Mask@@2 T@PolymorphicMapType_17047) (pm_f@@0 T@Field_9244_45792) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_9244_45856 Mask@@2 null pm_f@@0) (IsWandField_9244_47630 pm_f@@0)) (= (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@60) null (WandMaskField_9244 pm_f@@0)) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@0) null (WandMaskField_9244 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@0 Mask@@2) (IsWandField_9244_47630 pm_f@@0) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@0) null (WandMaskField_9244 pm_f@@0)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_17026) (Mask@@3 T@PolymorphicMapType_17047) (this@@58 T@Ref) ) (!  (=> (and (state Heap@@61 Mask@@3) (or (< AssumeFunctionsAbove 9) (|t5#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@61) this@@58 x_42)) this@@58))) (and (not (= this@@58 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@61) this@@58 x_42) 0)))
 :qid |stdinbpl.2016:15|
 :skolemid |120|
 :pattern ( (state Heap@@61 Mask@@3) (|t5'| Heap@@61 this@@58))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_17026) (Mask@@4 T@PolymorphicMapType_17047) (this@@59 T@Ref) ) (!  (=> (and (state Heap@@62 Mask@@4) (or (< AssumeFunctionsAbove 10) (|t5Abstract#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@62) this@@59 x_42)) this@@59))) (and (not (= this@@59 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@62) this@@59 x_42) 0)))
 :qid |stdinbpl.2103:15|
 :skolemid |124|
 :pattern ( (state Heap@@62 Mask@@4) (|t5Abstract'| Heap@@62 this@@59))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_17026) (Mask@@5 T@PolymorphicMapType_17047) (this@@60 T@Ref) ) (!  (=> (and (state Heap@@63 Mask@@5) (< AssumeFunctionsAbove 6)) (=> (and (not (= this@@60 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@63) this@@60 x_42) 0)) (= (e0_1 Heap@@63 this@@60) 0)))
 :qid |stdinbpl.801:15|
 :skolemid |60|
 :pattern ( (state Heap@@63 Mask@@5) (e0_1 Heap@@63 this@@60))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_17026) (Mask@@6 T@PolymorphicMapType_17047) (this@@61 T@Ref) ) (!  (=> (and (state Heap@@64 Mask@@6) (< AssumeFunctionsAbove 18)) (=> (and (not (= this@@61 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@64) this@@61 x_42) 0)) (= (t1_3 Heap@@64 this@@61) 0)))
 :qid |stdinbpl.1361:15|
 :skolemid |90|
 :pattern ( (state Heap@@64 Mask@@6) (t1_3 Heap@@64 this@@61))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_17026) (Mask@@7 T@PolymorphicMapType_17047) (this@@62 T@Ref) ) (!  (=> (and (state Heap@@65 Mask@@7) (< AssumeFunctionsAbove 20)) (=> (and (not (= this@@62 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@65) this@@62 x_42) 0)) (= (ie0_1 Heap@@65 this@@62) 0)))
 :qid |stdinbpl.1066:15|
 :skolemid |74|
 :pattern ( (state Heap@@65 Mask@@7) (ie0_1 Heap@@65 this@@62))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_17026) (Mask@@8 T@PolymorphicMapType_17047) (this@@63 T@Ref) ) (!  (=> (and (state Heap@@66 Mask@@8) (< AssumeFunctionsAbove 25)) (=> (and (not (= this@@63 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@66) this@@63 x_42) 0)) (= (s0_1 Heap@@66 this@@63) 0)))
 :qid |stdinbpl.232:15|
 :skolemid |24|
 :pattern ( (state Heap@@66 Mask@@8) (s0_1 Heap@@66 this@@63))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@67 T@PolymorphicMapType_17026) (ExhaleHeap@@1 T@PolymorphicMapType_17026) (Mask@@9 T@PolymorphicMapType_17047) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@1 Mask@@9) (=> (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@67) o_1 $allocated) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@1 Mask@@9) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_9244_45792) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17086_17086 p v_1 p w))
 :qid |stdinbpl.202:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17086_17086 p v_1 p w))
)))
(assert  (not (IsPredicateField_9244_1189 x_42)))
(assert  (not (IsWandField_9244_1189 x_42)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_17026) (ExhaleHeap@@2 T@PolymorphicMapType_17026) (Mask@@10 T@PolymorphicMapType_17047) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@2 Mask@@10) (succHeap Heap@@68 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@2 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_17047) (o_2@@4 T@Ref) (f_4@@4 T@Field_9244_45925) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9244_51176 f_4@@4))) (not (IsWandField_9244_51192 f_4@@4))) (<= (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_17047) (o_2@@5 T@Ref) (f_4@@5 T@Field_9244_45792) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9244_45883 f_4@@5))) (not (IsWandField_9244_47630 f_4@@5))) (<= (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_17047) (o_2@@6 T@Ref) (f_4@@6 T@Field_17099_17100) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9244_17100 f_4@@6))) (not (IsWandField_9244_17100 f_4@@6))) (<= (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_17047) (o_2@@7 T@Ref) (f_4@@7 T@Field_17086_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| Mask@@14) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9244_53 f_4@@7))) (not (IsWandField_9244_53 f_4@@7))) (<= (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| Mask@@14) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| Mask@@14) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_17047) (o_2@@8 T@Ref) (f_4@@8 T@Field_20413_1189) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| Mask@@15) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9244_1189 f_4@@8))) (not (IsWandField_9244_1189 f_4@@8))) (<= (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| Mask@@15) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| Mask@@15) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_17047) (o_2@@9 T@Ref) (f_4@@9 T@Field_9244_45925) ) (! (= (HasDirectPerm_9244_51630 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9244_51630 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_17047) (o_2@@10 T@Ref) (f_4@@10 T@Field_9244_45792) ) (! (= (HasDirectPerm_9244_45856 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9244_45856 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_17047) (o_2@@11 T@Ref) (f_4@@11 T@Field_17099_17100) ) (! (= (HasDirectPerm_9244_17100 Mask@@18 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| Mask@@18) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9244_17100 Mask@@18 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_17047) (o_2@@12 T@Ref) (f_4@@12 T@Field_17086_53) ) (! (= (HasDirectPerm_9244_53 Mask@@19 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| Mask@@19) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9244_53 Mask@@19 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_17047) (o_2@@13 T@Ref) (f_4@@13 T@Field_20413_1189) ) (! (= (HasDirectPerm_9244_1189 Mask@@20 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| Mask@@20) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9244_1189 Mask@@20 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_17026) (ExhaleHeap@@3 T@PolymorphicMapType_17026) (Mask@@21 T@PolymorphicMapType_17047) (pm_f@@1 T@Field_9244_45792) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@3 Mask@@21) (=> (and (HasDirectPerm_9244_45856 Mask@@21 null pm_f@@1) (IsPredicateField_9244_45883 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_17086_53) ) (!  (=> (select (|PolymorphicMapType_17575_17086_53#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) null (PredicateMaskField_9244 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@69) o2 f_2) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_17099_17100) ) (!  (=> (select (|PolymorphicMapType_17575_17086_17100#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) null (PredicateMaskField_9244 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@69) o2@@0 f_2@@0) (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_20413_1189) ) (!  (=> (select (|PolymorphicMapType_17575_17086_1189#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) null (PredicateMaskField_9244 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@69) o2@@1 f_2@@1) (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_9244_45792) ) (!  (=> (select (|PolymorphicMapType_17575_17086_45792#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) null (PredicateMaskField_9244 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@69) o2@@2 f_2@@2) (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_9244_45925) ) (!  (=> (select (|PolymorphicMapType_17575_17086_47103#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) null (PredicateMaskField_9244 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) o2@@3 f_2@@3) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@3 Mask@@21) (IsPredicateField_9244_45883 pm_f@@1))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_17026) (ExhaleHeap@@4 T@PolymorphicMapType_17026) (Mask@@22 T@PolymorphicMapType_17047) (pm_f@@2 T@Field_9244_45792) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@4 Mask@@22) (=> (and (HasDirectPerm_9244_45856 Mask@@22 null pm_f@@2) (IsWandField_9244_47630 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_17086_53) ) (!  (=> (select (|PolymorphicMapType_17575_17086_53#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) null (WandMaskField_9244 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@70) o2@@4 f_2@@4) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_17099_17100) ) (!  (=> (select (|PolymorphicMapType_17575_17086_17100#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) null (WandMaskField_9244 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@70) o2@@5 f_2@@5) (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_20413_1189) ) (!  (=> (select (|PolymorphicMapType_17575_17086_1189#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) null (WandMaskField_9244 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@70) o2@@6 f_2@@6) (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_9244_45792) ) (!  (=> (select (|PolymorphicMapType_17575_17086_45792#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) null (WandMaskField_9244 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@70) o2@@7 f_2@@7) (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_9244_45925) ) (!  (=> (select (|PolymorphicMapType_17575_17086_47103#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) null (WandMaskField_9244 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) o2@@8 f_2@@8) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@4 Mask@@22) (IsWandField_9244_47630 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.190:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_17026) (ExhaleHeap@@5 T@PolymorphicMapType_17026) (Mask@@23 T@PolymorphicMapType_17047) (o_1@@0 T@Ref) (f_2@@9 T@Field_9244_45925) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@5 Mask@@23) (=> (HasDirectPerm_9244_51630 Mask@@23 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@71) o_1@@0 f_2@@9) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@5 Mask@@23) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_17026) (ExhaleHeap@@6 T@PolymorphicMapType_17026) (Mask@@24 T@PolymorphicMapType_17047) (o_1@@1 T@Ref) (f_2@@10 T@Field_9244_45792) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@6 Mask@@24) (=> (HasDirectPerm_9244_45856 Mask@@24 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@72) o_1@@1 f_2@@10) (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@6 Mask@@24) (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_17026) (ExhaleHeap@@7 T@PolymorphicMapType_17026) (Mask@@25 T@PolymorphicMapType_17047) (o_1@@2 T@Ref) (f_2@@11 T@Field_17099_17100) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@7 Mask@@25) (=> (HasDirectPerm_9244_17100 Mask@@25 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@73) o_1@@2 f_2@@11) (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@7 Mask@@25) (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_17026) (ExhaleHeap@@8 T@PolymorphicMapType_17026) (Mask@@26 T@PolymorphicMapType_17047) (o_1@@3 T@Ref) (f_2@@12 T@Field_17086_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@8 Mask@@26) (=> (HasDirectPerm_9244_53 Mask@@26 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@74) o_1@@3 f_2@@12) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@8 Mask@@26) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_17026) (ExhaleHeap@@9 T@PolymorphicMapType_17026) (Mask@@27 T@PolymorphicMapType_17047) (o_1@@4 T@Ref) (f_2@@13 T@Field_20413_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_9244_1189 Mask@@27 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@75) o_1@@4 f_2@@13) (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9244_45925) ) (! (= (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9244_45792) ) (! (= (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_17099_17100) ) (! (= (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_17086_53) ) (! (= (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_20413_1189) ) (! (= (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_17047) (SummandMask1 T@PolymorphicMapType_17047) (SummandMask2 T@PolymorphicMapType_17047) (o_2@@19 T@Ref) (f_4@@19 T@Field_9244_45925) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_17047) (SummandMask1@@0 T@PolymorphicMapType_17047) (SummandMask2@@0 T@PolymorphicMapType_17047) (o_2@@20 T@Ref) (f_4@@20 T@Field_9244_45792) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_17047) (SummandMask1@@1 T@PolymorphicMapType_17047) (SummandMask2@@1 T@PolymorphicMapType_17047) (o_2@@21 T@Ref) (f_4@@21 T@Field_17099_17100) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_17047) (SummandMask1@@2 T@PolymorphicMapType_17047) (SummandMask2@@2 T@PolymorphicMapType_17047) (o_2@@22 T@Ref) (f_4@@22 T@Field_17086_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_17047) (SummandMask1@@3 T@PolymorphicMapType_17047) (SummandMask2@@3 T@PolymorphicMapType_17047) (o_2@@23 T@Ref) (f_4@@23 T@Field_20413_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_17026) (Mask@@28 T@PolymorphicMapType_17047) (this@@64 T@Ref) ) (!  (=> (and (state Heap@@76 Mask@@28) (< AssumeFunctionsAbove 21)) (=> (not (= this@@64 null)) (= (s2_1 Heap@@76 this@@64) (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@76) this@@64 x_42))))
 :qid |stdinbpl.471:15|
 :skolemid |40|
 :pattern ( (state Heap@@76 Mask@@28) (s2_1 Heap@@76 this@@64))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_17026) (Mask@@29 T@PolymorphicMapType_17047) (this@@65 T@Ref) ) (!  (=> (and (state Heap@@77 Mask@@29) (or (< AssumeFunctionsAbove 1) (|i1Abstract#trigger| EmptyFrame this@@65))) (and (not (= this@@65 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@77) this@@65 x_42) 0)))
 :qid |stdinbpl.743:15|
 :skolemid |57|
 :pattern ( (state Heap@@77 Mask@@29) (|i1Abstract'| Heap@@77 this@@65))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_17026) (Mask@@30 T@PolymorphicMapType_17047) (this@@66 T@Ref) ) (!  (=> (and (state Heap@@78 Mask@@30) (or (< AssumeFunctionsAbove 2) (|ie1Abstract#trigger| EmptyFrame this@@66))) (and (not (= this@@66 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@78) this@@66 x_42) 0)))
 :qid |stdinbpl.1297:15|
 :skolemid |87|
 :pattern ( (state Heap@@78 Mask@@30) (|ie1Abstract'| Heap@@78 this@@66))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_17026) (Mask@@31 T@PolymorphicMapType_17047) (this@@67 T@Ref) ) (!  (=> (and (state Heap@@79 Mask@@31) (or (< AssumeFunctionsAbove 5) (|ie1#trigger| EmptyFrame this@@67))) (and (not (= this@@67 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@79) this@@67 x_42) 0)))
 :qid |stdinbpl.1218:15|
 :skolemid |83|
 :pattern ( (state Heap@@79 Mask@@31) (|ie1'| Heap@@79 this@@67))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_17026) (Mask@@32 T@PolymorphicMapType_17047) (this@@68 T@Ref) ) (!  (=> (and (state Heap@@80 Mask@@32) (or (< AssumeFunctionsAbove 16) (|t6Abstract#trigger| EmptyFrame this@@68))) (and (not (= this@@68 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@80) this@@68 x_42) 0)))
 :qid |stdinbpl.2277:15|
 :skolemid |133|
 :pattern ( (state Heap@@80 Mask@@32) (|t6Abstract'| Heap@@80 this@@68))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_17026) (Mask@@33 T@PolymorphicMapType_17047) (this@@69 T@Ref) ) (!  (=> (and (state Heap@@81 Mask@@33) (or (< AssumeFunctionsAbove 19) (|s1Abstract#trigger| EmptyFrame this@@69))) (and (not (= this@@69 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@81) this@@69 x_42) 0)))
 :qid |stdinbpl.421:15|
 :skolemid |37|
 :pattern ( (state Heap@@81 Mask@@33) (|s1Abstract'| Heap@@81 this@@69))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_17026) (Mask@@34 T@PolymorphicMapType_17047) (this@@70 T@Ref) ) (!  (=> (and (state Heap@@82 Mask@@34) (or (< AssumeFunctionsAbove 23) (|i1#trigger| EmptyFrame this@@70))) (and (not (= this@@70 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@82) this@@70 x_42) 0)))
 :qid |stdinbpl.672:15|
 :skolemid |53|
 :pattern ( (state Heap@@82 Mask@@34) (|i1'| Heap@@82 this@@70))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_17026) (Mask@@35 T@PolymorphicMapType_17047) (this@@71 T@Ref) ) (!  (=> (and (state Heap@@83 Mask@@35) (or (< AssumeFunctionsAbove 24) (|s1#trigger| EmptyFrame this@@71))) (and (not (= this@@71 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@83) this@@71 x_42) 0)))
 :qid |stdinbpl.356:15|
 :skolemid |33|
 :pattern ( (state Heap@@83 Mask@@35) (|s1'| Heap@@83 this@@71))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_17026) (Mask@@36 T@PolymorphicMapType_17047) (this@@72 T@Ref) ) (!  (=> (and (state Heap@@84 Mask@@36) (or (< AssumeFunctionsAbove 27) (|t6#trigger| EmptyFrame this@@72))) (and (not (= this@@72 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@84) this@@72 x_42) 0)))
 :qid |stdinbpl.2190:15|
 :skolemid |129|
 :pattern ( (state Heap@@84 Mask@@36) (|t6'| Heap@@84 this@@72))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_17026) (Mask@@37 T@PolymorphicMapType_17047) (this@@73 T@Ref) ) (!  (=> (state Heap@@85 Mask@@37) (= (|t2'| Heap@@85 this@@73) (|t2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@85) this@@73 x_42)) this@@73)))
 :qid |stdinbpl.1509:15|
 :skolemid |98|
 :pattern ( (state Heap@@85 Mask@@37) (|t2'| Heap@@85 this@@73))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_17026) (Mask@@38 T@PolymorphicMapType_17047) (this@@74 T@Ref) ) (!  (=> (state Heap@@86 Mask@@38) (= (|t2Abstract'| Heap@@86 this@@74) (|t2Abstract#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@86) this@@74 x_42)) this@@74)))
 :qid |stdinbpl.1578:15|
 :skolemid |101|
 :pattern ( (state Heap@@86 Mask@@38) (|t2Abstract'| Heap@@86 this@@74))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_17026) (Mask@@39 T@PolymorphicMapType_17047) (this@@75 T@Ref) ) (!  (=> (state Heap@@87 Mask@@39) (= (|t4'| Heap@@87 this@@75) (|t4#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@87) this@@75 x_42)) this@@75)))
 :qid |stdinbpl.1830:15|
 :skolemid |112|
 :pattern ( (state Heap@@87 Mask@@39) (|t4'| Heap@@87 this@@75))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_17026) (Mask@@40 T@PolymorphicMapType_17047) (this@@76 T@Ref) ) (!  (=> (state Heap@@88 Mask@@40) (= (|t4Abstract'| Heap@@88 this@@76) (|t4Abstract#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@88) this@@76 x_42)) this@@76)))
 :qid |stdinbpl.1921:15|
 :skolemid |115|
 :pattern ( (state Heap@@88 Mask@@40) (|t4Abstract'| Heap@@88 this@@76))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_17026) (Mask@@41 T@PolymorphicMapType_17047) (this@@77 T@Ref) ) (!  (=> (state Heap@@89 Mask@@41) (= (|t5'| Heap@@89 this@@77) (|t5#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@89) this@@77 x_42)) this@@77)))
 :qid |stdinbpl.2010:15|
 :skolemid |119|
 :pattern ( (state Heap@@89 Mask@@41) (|t5'| Heap@@89 this@@77))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_17026) (Mask@@42 T@PolymorphicMapType_17047) (this@@78 T@Ref) ) (!  (=> (state Heap@@90 Mask@@42) (= (|t5Abstract'| Heap@@90 this@@78) (|t5Abstract#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@90) this@@78 x_42)) this@@78)))
 :qid |stdinbpl.2097:15|
 :skolemid |123|
 :pattern ( (state Heap@@90 Mask@@42) (|t5Abstract'| Heap@@90 this@@78))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_17026) (Mask@@43 T@PolymorphicMapType_17047) (this@@79 T@Ref) ) (!  (=> (state Heap@@91 Mask@@43) (= (|s0'| Heap@@91 this@@79) (|s0#frame| EmptyFrame this@@79)))
 :qid |stdinbpl.239:15|
 :skolemid |25|
 :pattern ( (state Heap@@91 Mask@@43) (|s0'| Heap@@91 this@@79))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_17026) (Mask@@44 T@PolymorphicMapType_17047) (this@@80 T@Ref) ) (!  (=> (state Heap@@92 Mask@@44) (= (|s0Abstract'| Heap@@92 this@@80) (|s0Abstract#frame| EmptyFrame this@@80)))
 :qid |stdinbpl.293:15|
 :skolemid |28|
 :pattern ( (state Heap@@92 Mask@@44) (|s0Abstract'| Heap@@92 this@@80))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_17026) (Mask@@45 T@PolymorphicMapType_17047) (this@@81 T@Ref) ) (!  (=> (state Heap@@93 Mask@@45) (= (|s1'| Heap@@93 this@@81) (|s1#frame| EmptyFrame this@@81)))
 :qid |stdinbpl.350:15|
 :skolemid |32|
 :pattern ( (state Heap@@93 Mask@@45) (|s1'| Heap@@93 this@@81))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_17026) (Mask@@46 T@PolymorphicMapType_17047) (this@@82 T@Ref) ) (!  (=> (state Heap@@94 Mask@@46) (= (|s1Abstract'| Heap@@94 this@@82) (|s1Abstract#frame| EmptyFrame this@@82)))
 :qid |stdinbpl.415:15|
 :skolemid |36|
 :pattern ( (state Heap@@94 Mask@@46) (|s1Abstract'| Heap@@94 this@@82))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_17026) (Mask@@47 T@PolymorphicMapType_17047) (this@@83 T@Ref) ) (!  (=> (state Heap@@95 Mask@@47) (= (|s2'| Heap@@95 this@@83) (|s2#frame| EmptyFrame this@@83)))
 :qid |stdinbpl.478:15|
 :skolemid |41|
 :pattern ( (state Heap@@95 Mask@@47) (|s2'| Heap@@95 this@@83))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_17026) (Mask@@48 T@PolymorphicMapType_17047) (this@@84 T@Ref) ) (!  (=> (state Heap@@96 Mask@@48) (= (|i0'| Heap@@96 this@@84) (|i0#frame| EmptyFrame this@@84)))
 :qid |stdinbpl.539:15|
 :skolemid |45|
 :pattern ( (state Heap@@96 Mask@@48) (|i0'| Heap@@96 this@@84))
)))
(assert (forall ((Heap@@97 T@PolymorphicMapType_17026) (Mask@@49 T@PolymorphicMapType_17047) (this@@85 T@Ref) ) (!  (=> (state Heap@@97 Mask@@49) (= (|i0Abstract'| Heap@@97 this@@85) (|i0Abstract#frame| EmptyFrame this@@85)))
 :qid |stdinbpl.601:15|
 :skolemid |48|
 :pattern ( (state Heap@@97 Mask@@49) (|i0Abstract'| Heap@@97 this@@85))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_17026) (Mask@@50 T@PolymorphicMapType_17047) (this@@86 T@Ref) ) (!  (=> (state Heap@@98 Mask@@50) (= (|i1'| Heap@@98 this@@86) (|i1#frame| EmptyFrame this@@86)))
 :qid |stdinbpl.666:15|
 :skolemid |52|
 :pattern ( (state Heap@@98 Mask@@50) (|i1'| Heap@@98 this@@86))
)))
(assert (forall ((Heap@@99 T@PolymorphicMapType_17026) (Mask@@51 T@PolymorphicMapType_17047) (this@@87 T@Ref) ) (!  (=> (state Heap@@99 Mask@@51) (= (|i1Abstract'| Heap@@99 this@@87) (|i1Abstract#frame| EmptyFrame this@@87)))
 :qid |stdinbpl.737:15|
 :skolemid |56|
 :pattern ( (state Heap@@99 Mask@@51) (|i1Abstract'| Heap@@99 this@@87))
)))
(assert (forall ((Heap@@100 T@PolymorphicMapType_17026) (Mask@@52 T@PolymorphicMapType_17047) (this@@88 T@Ref) ) (!  (=> (state Heap@@100 Mask@@52) (= (|e0'| Heap@@100 this@@88) (|e0#frame| EmptyFrame this@@88)))
 :qid |stdinbpl.808:15|
 :skolemid |61|
 :pattern ( (state Heap@@100 Mask@@52) (|e0'| Heap@@100 this@@88))
)))
(assert (forall ((Heap@@101 T@PolymorphicMapType_17026) (Mask@@53 T@PolymorphicMapType_17047) (this@@89 T@Ref) ) (!  (=> (state Heap@@101 Mask@@53) (= (|e0Abstract'| Heap@@101 this@@89) (|e0Abstract#frame| EmptyFrame this@@89)))
 :qid |stdinbpl.870:15|
 :skolemid |64|
 :pattern ( (state Heap@@101 Mask@@53) (|e0Abstract'| Heap@@101 this@@89))
)))
(assert (forall ((Heap@@102 T@PolymorphicMapType_17026) (Mask@@54 T@PolymorphicMapType_17047) (this@@90 T@Ref) ) (!  (=> (state Heap@@102 Mask@@54) (= (|e1'| Heap@@102 this@@90) (|e1#frame| EmptyFrame this@@90)))
 :qid |stdinbpl.935:15|
 :skolemid |68|
 :pattern ( (state Heap@@102 Mask@@54) (|e1'| Heap@@102 this@@90))
)))
(assert (forall ((Heap@@103 T@PolymorphicMapType_17026) (Mask@@55 T@PolymorphicMapType_17047) (this@@91 T@Ref) ) (!  (=> (state Heap@@103 Mask@@55) (= (|e1Abstract'| Heap@@103 this@@91) (|e1Abstract#frame| EmptyFrame this@@91)))
 :qid |stdinbpl.1005:15|
 :skolemid |71|
 :pattern ( (state Heap@@103 Mask@@55) (|e1Abstract'| Heap@@103 this@@91))
)))
(assert (forall ((Heap@@104 T@PolymorphicMapType_17026) (Mask@@56 T@PolymorphicMapType_17047) (this@@92 T@Ref) ) (!  (=> (state Heap@@104 Mask@@56) (= (|ie0'| Heap@@104 this@@92) (|ie0#frame| EmptyFrame this@@92)))
 :qid |stdinbpl.1073:15|
 :skolemid |75|
 :pattern ( (state Heap@@104 Mask@@56) (|ie0'| Heap@@104 this@@92))
)))
(assert (forall ((Heap@@105 T@PolymorphicMapType_17026) (Mask@@57 T@PolymorphicMapType_17047) (this@@93 T@Ref) ) (!  (=> (state Heap@@105 Mask@@57) (= (|ie0Abstract'| Heap@@105 this@@93) (|ie0Abstract#frame| EmptyFrame this@@93)))
 :qid |stdinbpl.1141:15|
 :skolemid |78|
 :pattern ( (state Heap@@105 Mask@@57) (|ie0Abstract'| Heap@@105 this@@93))
)))
(assert (forall ((Heap@@106 T@PolymorphicMapType_17026) (Mask@@58 T@PolymorphicMapType_17047) (this@@94 T@Ref) ) (!  (=> (state Heap@@106 Mask@@58) (= (|ie1'| Heap@@106 this@@94) (|ie1#frame| EmptyFrame this@@94)))
 :qid |stdinbpl.1212:15|
 :skolemid |82|
 :pattern ( (state Heap@@106 Mask@@58) (|ie1'| Heap@@106 this@@94))
)))
(assert (forall ((Heap@@107 T@PolymorphicMapType_17026) (Mask@@59 T@PolymorphicMapType_17047) (this@@95 T@Ref) ) (!  (=> (state Heap@@107 Mask@@59) (= (|ie1Abstract'| Heap@@107 this@@95) (|ie1Abstract#frame| EmptyFrame this@@95)))
 :qid |stdinbpl.1291:15|
 :skolemid |86|
 :pattern ( (state Heap@@107 Mask@@59) (|ie1Abstract'| Heap@@107 this@@95))
)))
(assert (forall ((Heap@@108 T@PolymorphicMapType_17026) (Mask@@60 T@PolymorphicMapType_17047) (this@@96 T@Ref) ) (!  (=> (state Heap@@108 Mask@@60) (= (|t1'| Heap@@108 this@@96) (|t1#frame| EmptyFrame this@@96)))
 :qid |stdinbpl.1368:15|
 :skolemid |91|
 :pattern ( (state Heap@@108 Mask@@60) (|t1'| Heap@@108 this@@96))
)))
(assert (forall ((Heap@@109 T@PolymorphicMapType_17026) (Mask@@61 T@PolymorphicMapType_17047) (this@@97 T@Ref) ) (!  (=> (state Heap@@109 Mask@@61) (= (|t1Abstract'| Heap@@109 this@@97) (|t1Abstract#frame| EmptyFrame this@@97)))
 :qid |stdinbpl.1437:15|
 :skolemid |94|
 :pattern ( (state Heap@@109 Mask@@61) (|t1Abstract'| Heap@@109 this@@97))
)))
(assert (forall ((Heap@@110 T@PolymorphicMapType_17026) (Mask@@62 T@PolymorphicMapType_17047) (this@@98 T@Ref) ) (!  (=> (state Heap@@110 Mask@@62) (= (|t3'| Heap@@110 this@@98) (|t3#frame| EmptyFrame this@@98)))
 :qid |stdinbpl.1650:15|
 :skolemid |105|
 :pattern ( (state Heap@@110 Mask@@62) (|t3'| Heap@@110 this@@98))
)))
(assert (forall ((Heap@@111 T@PolymorphicMapType_17026) (Mask@@63 T@PolymorphicMapType_17047) (this@@99 T@Ref) ) (!  (=> (state Heap@@111 Mask@@63) (= (|t3Abstract'| Heap@@111 this@@99) (|t3Abstract#frame| EmptyFrame this@@99)))
 :qid |stdinbpl.1741:15|
 :skolemid |108|
 :pattern ( (state Heap@@111 Mask@@63) (|t3Abstract'| Heap@@111 this@@99))
)))
(assert (forall ((Heap@@112 T@PolymorphicMapType_17026) (Mask@@64 T@PolymorphicMapType_17047) (this@@100 T@Ref) ) (!  (=> (state Heap@@112 Mask@@64) (= (|t6'| Heap@@112 this@@100) (|t6#frame| EmptyFrame this@@100)))
 :qid |stdinbpl.2184:15|
 :skolemid |128|
 :pattern ( (state Heap@@112 Mask@@64) (|t6'| Heap@@112 this@@100))
)))
(assert (forall ((Heap@@113 T@PolymorphicMapType_17026) (Mask@@65 T@PolymorphicMapType_17047) (this@@101 T@Ref) ) (!  (=> (state Heap@@113 Mask@@65) (= (|t6Abstract'| Heap@@113 this@@101) (|t6Abstract#frame| EmptyFrame this@@101)))
 :qid |stdinbpl.2271:15|
 :skolemid |132|
 :pattern ( (state Heap@@113 Mask@@65) (|t6Abstract'| Heap@@113 this@@101))
)))
(assert (forall ((Heap@@114 T@PolymorphicMapType_17026) (o T@Ref) (f_3 T@Field_9244_45792) (v T@FrameType) ) (! (succHeap Heap@@114 (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@114) (store (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@114) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@114) (store (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@114) o f_3 v)))
)))
(assert (forall ((Heap@@115 T@PolymorphicMapType_17026) (o@@0 T@Ref) (f_3@@0 T@Field_9244_45925) (v@@0 T@PolymorphicMapType_17575) ) (! (succHeap Heap@@115 (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@115) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@115) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@115) (store (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@115) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@115)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@115) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@115) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@115) (store (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@115) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@115)))
)))
(assert (forall ((Heap@@116 T@PolymorphicMapType_17026) (o@@1 T@Ref) (f_3@@1 T@Field_20413_1189) (v@@1 Int) ) (! (succHeap Heap@@116 (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@116) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@116) (store (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@116) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@116) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@116)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@116) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@116) (store (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@116) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@116) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@116)))
)))
(assert (forall ((Heap@@117 T@PolymorphicMapType_17026) (o@@2 T@Ref) (f_3@@2 T@Field_17099_17100) (v@@2 T@Ref) ) (! (succHeap Heap@@117 (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@117) (store (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@117) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@117) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@117) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@117)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@117) (store (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@117) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@117) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@117) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@117)))
)))
(assert (forall ((Heap@@118 T@PolymorphicMapType_17026) (o@@3 T@Ref) (f_3@@3 T@Field_17086_53) (v@@3 Bool) ) (! (succHeap Heap@@118 (PolymorphicMapType_17026 (store (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@118) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@118)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17026 (store (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@118) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@118)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_17099_17100) (Heap@@119 T@PolymorphicMapType_17026) ) (!  (=> (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@119) o@@4 $allocated) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@119) (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@119) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@119) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_9244_45792) (v_1@@0 T@FrameType) (q T@Field_9244_45792) (w@@0 T@FrameType) (r T@Field_9244_45792) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17086_17086 p@@1 v_1@@0 q w@@0) (InsidePredicate_17086_17086 q w@@0 r u)) (InsidePredicate_17086_17086 p@@1 v_1@@0 r u))
 :qid |stdinbpl.197:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17086_17086 p@@1 v_1@@0 q w@@0) (InsidePredicate_17086_17086 q w@@0 r u))
)))
(assert (forall ((Heap@@120 T@PolymorphicMapType_17026) (Mask@@66 T@PolymorphicMapType_17047) (this@@102 T@Ref) ) (!  (=> (and (state Heap@@120 Mask@@66) (< AssumeFunctionsAbove 5)) (= (ie1_1 Heap@@120 this@@102) 0))
 :qid |stdinbpl.1205:15|
 :skolemid |81|
 :pattern ( (state Heap@@120 Mask@@66) (ie1_1 Heap@@120 this@@102))
)))
(assert (forall ((Heap@@121 T@PolymorphicMapType_17026) (Mask@@67 T@PolymorphicMapType_17047) (this@@103 T@Ref) ) (!  (=> (and (state Heap@@121 Mask@@67) (< AssumeFunctionsAbove 7)) (= (t2_3 Heap@@121 this@@103) 0))
 :qid |stdinbpl.1502:15|
 :skolemid |97|
 :pattern ( (state Heap@@121 Mask@@67) (t2_3 Heap@@121 this@@103))
)))
(assert (forall ((Heap@@122 T@PolymorphicMapType_17026) (Mask@@68 T@PolymorphicMapType_17047) (this@@104 T@Ref) ) (!  (=> (and (state Heap@@122 Mask@@68) (< AssumeFunctionsAbove 9)) (= (t5_1 Heap@@122 this@@104) 0))
 :qid |stdinbpl.2003:15|
 :skolemid |118|
 :pattern ( (state Heap@@122 Mask@@68) (t5_1 Heap@@122 this@@104))
)))
(assert (forall ((Heap@@123 T@PolymorphicMapType_17026) (Mask@@69 T@PolymorphicMapType_17047) (this@@105 T@Ref) ) (!  (=> (and (state Heap@@123 Mask@@69) (< AssumeFunctionsAbove 12)) (= (e1_1 Heap@@123 this@@105) 0))
 :qid |stdinbpl.928:15|
 :skolemid |67|
 :pattern ( (state Heap@@123 Mask@@69) (e1_1 Heap@@123 this@@105))
)))
(assert (forall ((Heap@@124 T@PolymorphicMapType_17026) (Mask@@70 T@PolymorphicMapType_17047) (this@@106 T@Ref) ) (!  (=> (and (state Heap@@124 Mask@@70) (< AssumeFunctionsAbove 15)) (= (i0_1 Heap@@124 this@@106) 0))
 :qid |stdinbpl.532:15|
 :skolemid |44|
 :pattern ( (state Heap@@124 Mask@@70) (i0_1 Heap@@124 this@@106))
)))
(assert (forall ((Heap@@125 T@PolymorphicMapType_17026) (Mask@@71 T@PolymorphicMapType_17047) (this@@107 T@Ref) ) (!  (=> (and (state Heap@@125 Mask@@71) (< AssumeFunctionsAbove 23)) (= (i1_7 Heap@@125 this@@107) 0))
 :qid |stdinbpl.659:15|
 :skolemid |51|
 :pattern ( (state Heap@@125 Mask@@71) (i1_7 Heap@@125 this@@107))
)))
(assert (forall ((Heap@@126 T@PolymorphicMapType_17026) (Mask@@72 T@PolymorphicMapType_17047) (this@@108 T@Ref) ) (!  (=> (and (state Heap@@126 Mask@@72) (< AssumeFunctionsAbove 24)) (= (s1_1 Heap@@126 this@@108) 0))
 :qid |stdinbpl.343:15|
 :skolemid |31|
 :pattern ( (state Heap@@126 Mask@@72) (s1_1 Heap@@126 this@@108))
)))
(assert (forall ((Heap@@127 T@PolymorphicMapType_17026) (Mask@@73 T@PolymorphicMapType_17047) (this@@109 T@Ref) ) (!  (=> (and (state Heap@@127 Mask@@73) (< AssumeFunctionsAbove 27)) (= (t6 Heap@@127 this@@109) 0))
 :qid |stdinbpl.2177:15|
 :skolemid |127|
 :pattern ( (state Heap@@127 Mask@@73) (t6 Heap@@127 this@@109))
)))
(assert (forall ((Heap@@128 T@PolymorphicMapType_17026) (Mask@@74 T@PolymorphicMapType_17047) (this@@110 T@Ref) ) (!  (=> (and (state Heap@@128 Mask@@74) (< AssumeFunctionsAbove 28)) (= (t3_1 Heap@@128 this@@110) 0))
 :qid |stdinbpl.1643:15|
 :skolemid |104|
 :pattern ( (state Heap@@128 Mask@@74) (t3_1 Heap@@128 this@@110))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@111 () T@Ref)
(declare-fun Heap@@129 () T@PolymorphicMapType_17026)
(declare-fun Mask@0 () T@PolymorphicMapType_17047)
(set-info :boogie-vc-id |t4#definedness|)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon6_Else_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (not (= this@@111 null))) (=> (not (= this@@111 null)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_9244_1189 ZeroMask this@@111 x_42)) (=> (HasDirectPerm_9244_1189 ZeroMask this@@111 x_42) (=> (= (ControlFlow 0 5) (- 0 4)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@129) this@@111 x_42) 0))))))))
(let ((anon6_Then_correct true))
(let ((anon5_Else_correct  (=> (state Heap@@129 ZeroMask) (and (=> (= (ControlFlow 0 8) 3) anon6_Then_correct) (=> (= (ControlFlow 0 8) 5) anon6_Else_correct)))))
(let ((anon5_Then_correct  (=> (and (and (not (= this@@111 null)) (= Mask@0 (PolymorphicMapType_17047 (store (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| ZeroMask) this@@111 x_42 (+ (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| ZeroMask) this@@111 x_42) FullPerm)) (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| ZeroMask) (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| ZeroMask) (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| ZeroMask) (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| ZeroMask)))) (and (state Heap@@129 Mask@0) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_9244_1189 Mask@0 this@@111 x_42))))
(let ((anon0_correct  (=> (and (and (state Heap@@129 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@129) this@@111 $allocated) (= AssumeFunctionsAbove 13))) (and (=> (= (ControlFlow 0 9) 2) anon5_Then_correct) (=> (= (ControlFlow 0 9) 8) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 7))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 6))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_17086_53 0)
(declare-sort T@Field_17099_17100 0)
(declare-sort T@Field_20413_1189 0)
(declare-sort T@Field_9244_45925 0)
(declare-sort T@Field_9244_45792 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_17047 0)) (((PolymorphicMapType_17047 (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| (Array T@Ref T@Field_20413_1189 Real)) (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| (Array T@Ref T@Field_17086_53 Real)) (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| (Array T@Ref T@Field_17099_17100 Real)) (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| (Array T@Ref T@Field_9244_45792 Real)) (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| (Array T@Ref T@Field_9244_45925 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17575 0)) (((PolymorphicMapType_17575 (|PolymorphicMapType_17575_17086_53#PolymorphicMapType_17575| (Array T@Ref T@Field_17086_53 Bool)) (|PolymorphicMapType_17575_17086_17100#PolymorphicMapType_17575| (Array T@Ref T@Field_17099_17100 Bool)) (|PolymorphicMapType_17575_17086_1189#PolymorphicMapType_17575| (Array T@Ref T@Field_20413_1189 Bool)) (|PolymorphicMapType_17575_17086_45792#PolymorphicMapType_17575| (Array T@Ref T@Field_9244_45792 Bool)) (|PolymorphicMapType_17575_17086_47103#PolymorphicMapType_17575| (Array T@Ref T@Field_9244_45925 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17026 0)) (((PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| (Array T@Ref T@Field_17086_53 Bool)) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| (Array T@Ref T@Field_17099_17100 T@Ref)) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| (Array T@Ref T@Field_20413_1189 Int)) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| (Array T@Ref T@Field_9244_45925 T@PolymorphicMapType_17575)) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| (Array T@Ref T@Field_9244_45792 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_17086_53)
(declare-fun x_42 () T@Field_20413_1189)
(declare-fun succHeap (T@PolymorphicMapType_17026 T@PolymorphicMapType_17026) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_17026 T@PolymorphicMapType_17026) Bool)
(declare-fun state (T@PolymorphicMapType_17026 T@PolymorphicMapType_17047) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_17047) Bool)
(declare-fun t4_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_17575)
(declare-fun |s0'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun dummyFunction_1381 (Int) Bool)
(declare-fun |s0#triggerStateless| (T@Ref) Int)
(declare-fun |s0Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |s0Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |s1'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |s1#triggerStateless| (T@Ref) Int)
(declare-fun |s1Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |s1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |s2'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |s2#triggerStateless| (T@Ref) Int)
(declare-fun |i0'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |i0#triggerStateless| (T@Ref) Int)
(declare-fun |i0Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |i0Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |i1'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |i1#triggerStateless| (T@Ref) Int)
(declare-fun |i1Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |i1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |e0'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |e0#triggerStateless| (T@Ref) Int)
(declare-fun |e0Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |e0Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |e1'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |e1#triggerStateless| (T@Ref) Int)
(declare-fun |e1Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |e1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |ie0'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |ie0#triggerStateless| (T@Ref) Int)
(declare-fun |ie0Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |ie0Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |ie1'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |ie1#triggerStateless| (T@Ref) Int)
(declare-fun |ie1Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |ie1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t1'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t1#triggerStateless| (T@Ref) Int)
(declare-fun |t1Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t2'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t2#triggerStateless| (T@Ref) Int)
(declare-fun |t2Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t2Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t3'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t3#triggerStateless| (T@Ref) Int)
(declare-fun |t3Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t3Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t4'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t4#triggerStateless| (T@Ref) Int)
(declare-fun |t4Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t4Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t5'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t5#triggerStateless| (T@Ref) Int)
(declare-fun |t5Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t5Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |t6'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t6#triggerStateless| (T@Ref) Int)
(declare-fun |t6Abstract'| (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun |t6Abstract#triggerStateless| (T@Ref) Int)
(declare-fun s0_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun s0Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun s1_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun s1Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun s2_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun i0_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun i0Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun i1_7 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun i1Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun e0_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun e0Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun e1_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun e1Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun ie0_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun ie0Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun ie1_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun ie1Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t1_3 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t1Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t2_3 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t2Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t3_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t3Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t4Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t5_1 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t5Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t6 (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun t6Abstract (T@PolymorphicMapType_17026 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_17026 T@PolymorphicMapType_17026 T@PolymorphicMapType_17047) Bool)
(declare-fun IsPredicateField_9244_45883 (T@Field_9244_45792) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9244 (T@Field_9244_45792) T@Field_9244_45925)
(declare-fun HasDirectPerm_9244_45856 (T@PolymorphicMapType_17047 T@Ref T@Field_9244_45792) Bool)
(declare-fun IsWandField_9244_47630 (T@Field_9244_45792) Bool)
(declare-fun WandMaskField_9244 (T@Field_9244_45792) T@Field_9244_45925)
(declare-fun |t5#trigger| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |t5Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_17026)
(declare-fun ZeroMask () T@PolymorphicMapType_17047)
(declare-fun InsidePredicate_17086_17086 (T@Field_9244_45792 T@FrameType T@Field_9244_45792 T@FrameType) Bool)
(declare-fun IsPredicateField_9244_1189 (T@Field_20413_1189) Bool)
(declare-fun IsWandField_9244_1189 (T@Field_20413_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9244_51176 (T@Field_9244_45925) Bool)
(declare-fun IsWandField_9244_51192 (T@Field_9244_45925) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9244_17100 (T@Field_17099_17100) Bool)
(declare-fun IsWandField_9244_17100 (T@Field_17099_17100) Bool)
(declare-fun IsPredicateField_9244_53 (T@Field_17086_53) Bool)
(declare-fun IsWandField_9244_53 (T@Field_17086_53) Bool)
(declare-fun HasDirectPerm_9244_51630 (T@PolymorphicMapType_17047 T@Ref T@Field_9244_45925) Bool)
(declare-fun HasDirectPerm_9244_17100 (T@PolymorphicMapType_17047 T@Ref T@Field_17099_17100) Bool)
(declare-fun HasDirectPerm_9244_53 (T@PolymorphicMapType_17047 T@Ref T@Field_17086_53) Bool)
(declare-fun HasDirectPerm_9244_1189 (T@PolymorphicMapType_17047 T@Ref T@Field_20413_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_17047 T@PolymorphicMapType_17047 T@PolymorphicMapType_17047) Bool)
(declare-fun |i1Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |ie1Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |ie1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |t6Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |s1Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |i1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |s1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |t6#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |t2#frame| (T@FrameType T@Ref) Int)
(declare-fun |t2Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |t4#frame| (T@FrameType T@Ref) Int)
(declare-fun |t4Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |t5#frame| (T@FrameType T@Ref) Int)
(declare-fun |t5Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |s0#frame| (T@FrameType T@Ref) Int)
(declare-fun |s0Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |s1#frame| (T@FrameType T@Ref) Int)
(declare-fun |s1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |s2#frame| (T@FrameType T@Ref) Int)
(declare-fun |i0#frame| (T@FrameType T@Ref) Int)
(declare-fun |i0Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |i1#frame| (T@FrameType T@Ref) Int)
(declare-fun |i1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |e0#frame| (T@FrameType T@Ref) Int)
(declare-fun |e0Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |e1#frame| (T@FrameType T@Ref) Int)
(declare-fun |e1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |ie0#frame| (T@FrameType T@Ref) Int)
(declare-fun |ie0Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |ie1#frame| (T@FrameType T@Ref) Int)
(declare-fun |ie1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |t1#frame| (T@FrameType T@Ref) Int)
(declare-fun |t1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |t3#frame| (T@FrameType T@Ref) Int)
(declare-fun |t3Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |t6#frame| (T@FrameType T@Ref) Int)
(declare-fun |t6Abstract#frame| (T@FrameType T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_17026) (Heap1 T@PolymorphicMapType_17026) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_17026) (Mask T@PolymorphicMapType_17047) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_17026) (Heap1@@0 T@PolymorphicMapType_17026) (Heap2 T@PolymorphicMapType_17026) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_17026) (Mask@@0 T@PolymorphicMapType_17047) (this T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 13)) (=> (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@0) this x_42) 0) (= (t4_1 Heap@@0 this) 0)))
 :qid |stdinbpl.1823:15|
 :skolemid |111|
 :pattern ( (state Heap@@0 Mask@@0) (t4_1 Heap@@0 this))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9244_45925) ) (!  (not (select (|PolymorphicMapType_17575_17086_47103#PolymorphicMapType_17575| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17575_17086_47103#PolymorphicMapType_17575| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9244_45792) ) (!  (not (select (|PolymorphicMapType_17575_17086_45792#PolymorphicMapType_17575| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17575_17086_45792#PolymorphicMapType_17575| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20413_1189) ) (!  (not (select (|PolymorphicMapType_17575_17086_1189#PolymorphicMapType_17575| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17575_17086_1189#PolymorphicMapType_17575| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_17099_17100) ) (!  (not (select (|PolymorphicMapType_17575_17086_17100#PolymorphicMapType_17575| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17575_17086_17100#PolymorphicMapType_17575| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_17086_53) ) (!  (not (select (|PolymorphicMapType_17575_17086_53#PolymorphicMapType_17575| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17575_17086_53#PolymorphicMapType_17575| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_17026) (this@@0 T@Ref) ) (! (dummyFunction_1381 (|s0#triggerStateless| this@@0))
 :qid |stdinbpl.226:15|
 :skolemid |23|
 :pattern ( (|s0'| Heap@@1 this@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_17026) (this@@1 T@Ref) ) (! (dummyFunction_1381 (|s0Abstract#triggerStateless| this@@1))
 :qid |stdinbpl.286:15|
 :skolemid |27|
 :pattern ( (|s0Abstract'| Heap@@2 this@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_17026) (this@@2 T@Ref) ) (! (dummyFunction_1381 (|s1#triggerStateless| this@@2))
 :qid |stdinbpl.337:15|
 :skolemid |30|
 :pattern ( (|s1'| Heap@@3 this@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_17026) (this@@3 T@Ref) ) (! (dummyFunction_1381 (|s1Abstract#triggerStateless| this@@3))
 :qid |stdinbpl.408:15|
 :skolemid |35|
 :pattern ( (|s1Abstract'| Heap@@4 this@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_17026) (this@@4 T@Ref) ) (! (dummyFunction_1381 (|s2#triggerStateless| this@@4))
 :qid |stdinbpl.465:15|
 :skolemid |39|
 :pattern ( (|s2'| Heap@@5 this@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_17026) (this@@5 T@Ref) ) (! (dummyFunction_1381 (|i0#triggerStateless| this@@5))
 :qid |stdinbpl.526:15|
 :skolemid |43|
 :pattern ( (|i0'| Heap@@6 this@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_17026) (this@@6 T@Ref) ) (! (dummyFunction_1381 (|i0Abstract#triggerStateless| this@@6))
 :qid |stdinbpl.594:15|
 :skolemid |47|
 :pattern ( (|i0Abstract'| Heap@@7 this@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_17026) (this@@7 T@Ref) ) (! (dummyFunction_1381 (|i1#triggerStateless| this@@7))
 :qid |stdinbpl.653:15|
 :skolemid |50|
 :pattern ( (|i1'| Heap@@8 this@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_17026) (this@@8 T@Ref) ) (! (dummyFunction_1381 (|i1Abstract#triggerStateless| this@@8))
 :qid |stdinbpl.730:15|
 :skolemid |55|
 :pattern ( (|i1Abstract'| Heap@@9 this@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_17026) (this@@9 T@Ref) ) (! (dummyFunction_1381 (|e0#triggerStateless| this@@9))
 :qid |stdinbpl.795:15|
 :skolemid |59|
 :pattern ( (|e0'| Heap@@10 this@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_17026) (this@@10 T@Ref) ) (! (dummyFunction_1381 (|e0Abstract#triggerStateless| this@@10))
 :qid |stdinbpl.863:15|
 :skolemid |63|
 :pattern ( (|e0Abstract'| Heap@@11 this@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_17026) (this@@11 T@Ref) ) (! (dummyFunction_1381 (|e1#triggerStateless| this@@11))
 :qid |stdinbpl.922:15|
 :skolemid |66|
 :pattern ( (|e1'| Heap@@12 this@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_17026) (this@@12 T@Ref) ) (! (dummyFunction_1381 (|e1Abstract#triggerStateless| this@@12))
 :qid |stdinbpl.998:15|
 :skolemid |70|
 :pattern ( (|e1Abstract'| Heap@@13 this@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_17026) (this@@13 T@Ref) ) (! (dummyFunction_1381 (|ie0#triggerStateless| this@@13))
 :qid |stdinbpl.1060:15|
 :skolemid |73|
 :pattern ( (|ie0'| Heap@@14 this@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_17026) (this@@14 T@Ref) ) (! (dummyFunction_1381 (|ie0Abstract#triggerStateless| this@@14))
 :qid |stdinbpl.1134:15|
 :skolemid |77|
 :pattern ( (|ie0Abstract'| Heap@@15 this@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_17026) (this@@15 T@Ref) ) (! (dummyFunction_1381 (|ie1#triggerStateless| this@@15))
 :qid |stdinbpl.1199:15|
 :skolemid |80|
 :pattern ( (|ie1'| Heap@@16 this@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_17026) (this@@16 T@Ref) ) (! (dummyFunction_1381 (|ie1Abstract#triggerStateless| this@@16))
 :qid |stdinbpl.1284:15|
 :skolemid |85|
 :pattern ( (|ie1Abstract'| Heap@@17 this@@16))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_17026) (this@@17 T@Ref) ) (! (dummyFunction_1381 (|t1#triggerStateless| this@@17))
 :qid |stdinbpl.1355:15|
 :skolemid |89|
 :pattern ( (|t1'| Heap@@18 this@@17))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_17026) (this@@18 T@Ref) ) (! (dummyFunction_1381 (|t1Abstract#triggerStateless| this@@18))
 :qid |stdinbpl.1430:15|
 :skolemid |93|
 :pattern ( (|t1Abstract'| Heap@@19 this@@18))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_17026) (this@@19 T@Ref) ) (! (dummyFunction_1381 (|t2#triggerStateless| this@@19))
 :qid |stdinbpl.1496:15|
 :skolemid |96|
 :pattern ( (|t2'| Heap@@20 this@@19))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_17026) (this@@20 T@Ref) ) (! (dummyFunction_1381 (|t2Abstract#triggerStateless| this@@20))
 :qid |stdinbpl.1571:15|
 :skolemid |100|
 :pattern ( (|t2Abstract'| Heap@@21 this@@20))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_17026) (this@@21 T@Ref) ) (! (dummyFunction_1381 (|t3#triggerStateless| this@@21))
 :qid |stdinbpl.1637:15|
 :skolemid |103|
 :pattern ( (|t3'| Heap@@22 this@@21))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_17026) (this@@22 T@Ref) ) (! (dummyFunction_1381 (|t3Abstract#triggerStateless| this@@22))
 :qid |stdinbpl.1734:15|
 :skolemid |107|
 :pattern ( (|t3Abstract'| Heap@@23 this@@22))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_17026) (this@@23 T@Ref) ) (! (dummyFunction_1381 (|t4#triggerStateless| this@@23))
 :qid |stdinbpl.1817:15|
 :skolemid |110|
 :pattern ( (|t4'| Heap@@24 this@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_17026) (this@@24 T@Ref) ) (! (dummyFunction_1381 (|t4Abstract#triggerStateless| this@@24))
 :qid |stdinbpl.1914:15|
 :skolemid |114|
 :pattern ( (|t4Abstract'| Heap@@25 this@@24))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_17026) (this@@25 T@Ref) ) (! (dummyFunction_1381 (|t5#triggerStateless| this@@25))
 :qid |stdinbpl.1997:15|
 :skolemid |117|
 :pattern ( (|t5'| Heap@@26 this@@25))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_17026) (this@@26 T@Ref) ) (! (dummyFunction_1381 (|t5Abstract#triggerStateless| this@@26))
 :qid |stdinbpl.2090:15|
 :skolemid |122|
 :pattern ( (|t5Abstract'| Heap@@27 this@@26))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_17026) (this@@27 T@Ref) ) (! (dummyFunction_1381 (|t6#triggerStateless| this@@27))
 :qid |stdinbpl.2171:15|
 :skolemid |126|
 :pattern ( (|t6'| Heap@@28 this@@27))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_17026) (this@@28 T@Ref) ) (! (dummyFunction_1381 (|t6Abstract#triggerStateless| this@@28))
 :qid |stdinbpl.2264:15|
 :skolemid |131|
 :pattern ( (|t6Abstract'| Heap@@29 this@@28))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_17026) (this@@29 T@Ref) ) (!  (and (= (s0_1 Heap@@30 this@@29) (|s0'| Heap@@30 this@@29)) (dummyFunction_1381 (|s0#triggerStateless| this@@29)))
 :qid |stdinbpl.222:15|
 :skolemid |22|
 :pattern ( (s0_1 Heap@@30 this@@29))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_17026) (this@@30 T@Ref) ) (!  (and (= (s0Abstract Heap@@31 this@@30) (|s0Abstract'| Heap@@31 this@@30)) (dummyFunction_1381 (|s0Abstract#triggerStateless| this@@30)))
 :qid |stdinbpl.282:15|
 :skolemid |26|
 :pattern ( (s0Abstract Heap@@31 this@@30))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_17026) (this@@31 T@Ref) ) (!  (and (= (s1_1 Heap@@32 this@@31) (|s1'| Heap@@32 this@@31)) (dummyFunction_1381 (|s1#triggerStateless| this@@31)))
 :qid |stdinbpl.333:15|
 :skolemid |29|
 :pattern ( (s1_1 Heap@@32 this@@31))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_17026) (this@@32 T@Ref) ) (!  (and (= (s1Abstract Heap@@33 this@@32) (|s1Abstract'| Heap@@33 this@@32)) (dummyFunction_1381 (|s1Abstract#triggerStateless| this@@32)))
 :qid |stdinbpl.404:15|
 :skolemid |34|
 :pattern ( (s1Abstract Heap@@33 this@@32))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_17026) (this@@33 T@Ref) ) (!  (and (= (s2_1 Heap@@34 this@@33) (|s2'| Heap@@34 this@@33)) (dummyFunction_1381 (|s2#triggerStateless| this@@33)))
 :qid |stdinbpl.461:15|
 :skolemid |38|
 :pattern ( (s2_1 Heap@@34 this@@33))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_17026) (this@@34 T@Ref) ) (!  (and (= (i0_1 Heap@@35 this@@34) (|i0'| Heap@@35 this@@34)) (dummyFunction_1381 (|i0#triggerStateless| this@@34)))
 :qid |stdinbpl.522:15|
 :skolemid |42|
 :pattern ( (i0_1 Heap@@35 this@@34))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_17026) (this@@35 T@Ref) ) (!  (and (= (i0Abstract Heap@@36 this@@35) (|i0Abstract'| Heap@@36 this@@35)) (dummyFunction_1381 (|i0Abstract#triggerStateless| this@@35)))
 :qid |stdinbpl.590:15|
 :skolemid |46|
 :pattern ( (i0Abstract Heap@@36 this@@35))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_17026) (this@@36 T@Ref) ) (!  (and (= (i1_7 Heap@@37 this@@36) (|i1'| Heap@@37 this@@36)) (dummyFunction_1381 (|i1#triggerStateless| this@@36)))
 :qid |stdinbpl.649:15|
 :skolemid |49|
 :pattern ( (i1_7 Heap@@37 this@@36))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_17026) (this@@37 T@Ref) ) (!  (and (= (i1Abstract Heap@@38 this@@37) (|i1Abstract'| Heap@@38 this@@37)) (dummyFunction_1381 (|i1Abstract#triggerStateless| this@@37)))
 :qid |stdinbpl.726:15|
 :skolemid |54|
 :pattern ( (i1Abstract Heap@@38 this@@37))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_17026) (this@@38 T@Ref) ) (!  (and (= (e0_1 Heap@@39 this@@38) (|e0'| Heap@@39 this@@38)) (dummyFunction_1381 (|e0#triggerStateless| this@@38)))
 :qid |stdinbpl.791:15|
 :skolemid |58|
 :pattern ( (e0_1 Heap@@39 this@@38))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_17026) (this@@39 T@Ref) ) (!  (and (= (e0Abstract Heap@@40 this@@39) (|e0Abstract'| Heap@@40 this@@39)) (dummyFunction_1381 (|e0Abstract#triggerStateless| this@@39)))
 :qid |stdinbpl.859:15|
 :skolemid |62|
 :pattern ( (e0Abstract Heap@@40 this@@39))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_17026) (this@@40 T@Ref) ) (!  (and (= (e1_1 Heap@@41 this@@40) (|e1'| Heap@@41 this@@40)) (dummyFunction_1381 (|e1#triggerStateless| this@@40)))
 :qid |stdinbpl.918:15|
 :skolemid |65|
 :pattern ( (e1_1 Heap@@41 this@@40))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_17026) (this@@41 T@Ref) ) (!  (and (= (e1Abstract Heap@@42 this@@41) (|e1Abstract'| Heap@@42 this@@41)) (dummyFunction_1381 (|e1Abstract#triggerStateless| this@@41)))
 :qid |stdinbpl.994:15|
 :skolemid |69|
 :pattern ( (e1Abstract Heap@@42 this@@41))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_17026) (this@@42 T@Ref) ) (!  (and (= (ie0_1 Heap@@43 this@@42) (|ie0'| Heap@@43 this@@42)) (dummyFunction_1381 (|ie0#triggerStateless| this@@42)))
 :qid |stdinbpl.1056:15|
 :skolemid |72|
 :pattern ( (ie0_1 Heap@@43 this@@42))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_17026) (this@@43 T@Ref) ) (!  (and (= (ie0Abstract Heap@@44 this@@43) (|ie0Abstract'| Heap@@44 this@@43)) (dummyFunction_1381 (|ie0Abstract#triggerStateless| this@@43)))
 :qid |stdinbpl.1130:15|
 :skolemid |76|
 :pattern ( (ie0Abstract Heap@@44 this@@43))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_17026) (this@@44 T@Ref) ) (!  (and (= (ie1_1 Heap@@45 this@@44) (|ie1'| Heap@@45 this@@44)) (dummyFunction_1381 (|ie1#triggerStateless| this@@44)))
 :qid |stdinbpl.1195:15|
 :skolemid |79|
 :pattern ( (ie1_1 Heap@@45 this@@44))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_17026) (this@@45 T@Ref) ) (!  (and (= (ie1Abstract Heap@@46 this@@45) (|ie1Abstract'| Heap@@46 this@@45)) (dummyFunction_1381 (|ie1Abstract#triggerStateless| this@@45)))
 :qid |stdinbpl.1280:15|
 :skolemid |84|
 :pattern ( (ie1Abstract Heap@@46 this@@45))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_17026) (this@@46 T@Ref) ) (!  (and (= (t1_3 Heap@@47 this@@46) (|t1'| Heap@@47 this@@46)) (dummyFunction_1381 (|t1#triggerStateless| this@@46)))
 :qid |stdinbpl.1351:15|
 :skolemid |88|
 :pattern ( (t1_3 Heap@@47 this@@46))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_17026) (this@@47 T@Ref) ) (!  (and (= (t1Abstract Heap@@48 this@@47) (|t1Abstract'| Heap@@48 this@@47)) (dummyFunction_1381 (|t1Abstract#triggerStateless| this@@47)))
 :qid |stdinbpl.1426:15|
 :skolemid |92|
 :pattern ( (t1Abstract Heap@@48 this@@47))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_17026) (this@@48 T@Ref) ) (!  (and (= (t2_3 Heap@@49 this@@48) (|t2'| Heap@@49 this@@48)) (dummyFunction_1381 (|t2#triggerStateless| this@@48)))
 :qid |stdinbpl.1492:15|
 :skolemid |95|
 :pattern ( (t2_3 Heap@@49 this@@48))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_17026) (this@@49 T@Ref) ) (!  (and (= (t2Abstract Heap@@50 this@@49) (|t2Abstract'| Heap@@50 this@@49)) (dummyFunction_1381 (|t2Abstract#triggerStateless| this@@49)))
 :qid |stdinbpl.1567:15|
 :skolemid |99|
 :pattern ( (t2Abstract Heap@@50 this@@49))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_17026) (this@@50 T@Ref) ) (!  (and (= (t3_1 Heap@@51 this@@50) (|t3'| Heap@@51 this@@50)) (dummyFunction_1381 (|t3#triggerStateless| this@@50)))
 :qid |stdinbpl.1633:15|
 :skolemid |102|
 :pattern ( (t3_1 Heap@@51 this@@50))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_17026) (this@@51 T@Ref) ) (!  (and (= (t3Abstract Heap@@52 this@@51) (|t3Abstract'| Heap@@52 this@@51)) (dummyFunction_1381 (|t3Abstract#triggerStateless| this@@51)))
 :qid |stdinbpl.1730:15|
 :skolemid |106|
 :pattern ( (t3Abstract Heap@@52 this@@51))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_17026) (this@@52 T@Ref) ) (!  (and (= (t4_1 Heap@@53 this@@52) (|t4'| Heap@@53 this@@52)) (dummyFunction_1381 (|t4#triggerStateless| this@@52)))
 :qid |stdinbpl.1813:15|
 :skolemid |109|
 :pattern ( (t4_1 Heap@@53 this@@52))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_17026) (this@@53 T@Ref) ) (!  (and (= (t4Abstract Heap@@54 this@@53) (|t4Abstract'| Heap@@54 this@@53)) (dummyFunction_1381 (|t4Abstract#triggerStateless| this@@53)))
 :qid |stdinbpl.1910:15|
 :skolemid |113|
 :pattern ( (t4Abstract Heap@@54 this@@53))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_17026) (this@@54 T@Ref) ) (!  (and (= (t5_1 Heap@@55 this@@54) (|t5'| Heap@@55 this@@54)) (dummyFunction_1381 (|t5#triggerStateless| this@@54)))
 :qid |stdinbpl.1993:15|
 :skolemid |116|
 :pattern ( (t5_1 Heap@@55 this@@54))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_17026) (this@@55 T@Ref) ) (!  (and (= (t5Abstract Heap@@56 this@@55) (|t5Abstract'| Heap@@56 this@@55)) (dummyFunction_1381 (|t5Abstract#triggerStateless| this@@55)))
 :qid |stdinbpl.2086:15|
 :skolemid |121|
 :pattern ( (t5Abstract Heap@@56 this@@55))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_17026) (this@@56 T@Ref) ) (!  (and (= (t6 Heap@@57 this@@56) (|t6'| Heap@@57 this@@56)) (dummyFunction_1381 (|t6#triggerStateless| this@@56)))
 :qid |stdinbpl.2167:15|
 :skolemid |125|
 :pattern ( (t6 Heap@@57 this@@56))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_17026) (this@@57 T@Ref) ) (!  (and (= (t6Abstract Heap@@58 this@@57) (|t6Abstract'| Heap@@58 this@@57)) (dummyFunction_1381 (|t6Abstract#triggerStateless| this@@57)))
 :qid |stdinbpl.2260:15|
 :skolemid |130|
 :pattern ( (t6Abstract Heap@@58 this@@57))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_17026) (ExhaleHeap T@PolymorphicMapType_17026) (Mask@@1 T@PolymorphicMapType_17047) (pm_f T@Field_9244_45792) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_9244_45856 Mask@@1 null pm_f) (IsPredicateField_9244_45883 pm_f)) (= (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@59) null (PredicateMaskField_9244 pm_f)) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap) null (PredicateMaskField_9244 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap Mask@@1) (IsPredicateField_9244_45883 pm_f) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap) null (PredicateMaskField_9244 pm_f)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_17026) (ExhaleHeap@@0 T@PolymorphicMapType_17026) (Mask@@2 T@PolymorphicMapType_17047) (pm_f@@0 T@Field_9244_45792) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_9244_45856 Mask@@2 null pm_f@@0) (IsWandField_9244_47630 pm_f@@0)) (= (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@60) null (WandMaskField_9244 pm_f@@0)) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@0) null (WandMaskField_9244 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@0 Mask@@2) (IsWandField_9244_47630 pm_f@@0) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@0) null (WandMaskField_9244 pm_f@@0)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_17026) (Mask@@3 T@PolymorphicMapType_17047) (this@@58 T@Ref) ) (!  (=> (and (state Heap@@61 Mask@@3) (or (< AssumeFunctionsAbove 9) (|t5#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@61) this@@58 x_42)) this@@58))) (and (not (= this@@58 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@61) this@@58 x_42) 0)))
 :qid |stdinbpl.2016:15|
 :skolemid |120|
 :pattern ( (state Heap@@61 Mask@@3) (|t5'| Heap@@61 this@@58))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_17026) (Mask@@4 T@PolymorphicMapType_17047) (this@@59 T@Ref) ) (!  (=> (and (state Heap@@62 Mask@@4) (or (< AssumeFunctionsAbove 10) (|t5Abstract#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@62) this@@59 x_42)) this@@59))) (and (not (= this@@59 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@62) this@@59 x_42) 0)))
 :qid |stdinbpl.2103:15|
 :skolemid |124|
 :pattern ( (state Heap@@62 Mask@@4) (|t5Abstract'| Heap@@62 this@@59))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_17026) (Mask@@5 T@PolymorphicMapType_17047) (this@@60 T@Ref) ) (!  (=> (and (state Heap@@63 Mask@@5) (< AssumeFunctionsAbove 6)) (=> (and (not (= this@@60 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@63) this@@60 x_42) 0)) (= (e0_1 Heap@@63 this@@60) 0)))
 :qid |stdinbpl.801:15|
 :skolemid |60|
 :pattern ( (state Heap@@63 Mask@@5) (e0_1 Heap@@63 this@@60))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_17026) (Mask@@6 T@PolymorphicMapType_17047) (this@@61 T@Ref) ) (!  (=> (and (state Heap@@64 Mask@@6) (< AssumeFunctionsAbove 18)) (=> (and (not (= this@@61 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@64) this@@61 x_42) 0)) (= (t1_3 Heap@@64 this@@61) 0)))
 :qid |stdinbpl.1361:15|
 :skolemid |90|
 :pattern ( (state Heap@@64 Mask@@6) (t1_3 Heap@@64 this@@61))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_17026) (Mask@@7 T@PolymorphicMapType_17047) (this@@62 T@Ref) ) (!  (=> (and (state Heap@@65 Mask@@7) (< AssumeFunctionsAbove 20)) (=> (and (not (= this@@62 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@65) this@@62 x_42) 0)) (= (ie0_1 Heap@@65 this@@62) 0)))
 :qid |stdinbpl.1066:15|
 :skolemid |74|
 :pattern ( (state Heap@@65 Mask@@7) (ie0_1 Heap@@65 this@@62))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_17026) (Mask@@8 T@PolymorphicMapType_17047) (this@@63 T@Ref) ) (!  (=> (and (state Heap@@66 Mask@@8) (< AssumeFunctionsAbove 25)) (=> (and (not (= this@@63 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@66) this@@63 x_42) 0)) (= (s0_1 Heap@@66 this@@63) 0)))
 :qid |stdinbpl.232:15|
 :skolemid |24|
 :pattern ( (state Heap@@66 Mask@@8) (s0_1 Heap@@66 this@@63))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@67 T@PolymorphicMapType_17026) (ExhaleHeap@@1 T@PolymorphicMapType_17026) (Mask@@9 T@PolymorphicMapType_17047) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@1 Mask@@9) (=> (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@67) o_1 $allocated) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@1 Mask@@9) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_9244_45792) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17086_17086 p v_1 p w))
 :qid |stdinbpl.202:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17086_17086 p v_1 p w))
)))
(assert  (not (IsPredicateField_9244_1189 x_42)))
(assert  (not (IsWandField_9244_1189 x_42)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_17026) (ExhaleHeap@@2 T@PolymorphicMapType_17026) (Mask@@10 T@PolymorphicMapType_17047) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@2 Mask@@10) (succHeap Heap@@68 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@2 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_17047) (o_2@@4 T@Ref) (f_4@@4 T@Field_9244_45925) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9244_51176 f_4@@4))) (not (IsWandField_9244_51192 f_4@@4))) (<= (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_17047) (o_2@@5 T@Ref) (f_4@@5 T@Field_9244_45792) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9244_45883 f_4@@5))) (not (IsWandField_9244_47630 f_4@@5))) (<= (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_17047) (o_2@@6 T@Ref) (f_4@@6 T@Field_17099_17100) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9244_17100 f_4@@6))) (not (IsWandField_9244_17100 f_4@@6))) (<= (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_17047) (o_2@@7 T@Ref) (f_4@@7 T@Field_17086_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| Mask@@14) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9244_53 f_4@@7))) (not (IsWandField_9244_53 f_4@@7))) (<= (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| Mask@@14) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| Mask@@14) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_17047) (o_2@@8 T@Ref) (f_4@@8 T@Field_20413_1189) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| Mask@@15) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9244_1189 f_4@@8))) (not (IsWandField_9244_1189 f_4@@8))) (<= (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| Mask@@15) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| Mask@@15) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_17047) (o_2@@9 T@Ref) (f_4@@9 T@Field_9244_45925) ) (! (= (HasDirectPerm_9244_51630 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9244_51630 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_17047) (o_2@@10 T@Ref) (f_4@@10 T@Field_9244_45792) ) (! (= (HasDirectPerm_9244_45856 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9244_45856 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_17047) (o_2@@11 T@Ref) (f_4@@11 T@Field_17099_17100) ) (! (= (HasDirectPerm_9244_17100 Mask@@18 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| Mask@@18) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9244_17100 Mask@@18 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_17047) (o_2@@12 T@Ref) (f_4@@12 T@Field_17086_53) ) (! (= (HasDirectPerm_9244_53 Mask@@19 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| Mask@@19) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9244_53 Mask@@19 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_17047) (o_2@@13 T@Ref) (f_4@@13 T@Field_20413_1189) ) (! (= (HasDirectPerm_9244_1189 Mask@@20 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| Mask@@20) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9244_1189 Mask@@20 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_17026) (ExhaleHeap@@3 T@PolymorphicMapType_17026) (Mask@@21 T@PolymorphicMapType_17047) (pm_f@@1 T@Field_9244_45792) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@3 Mask@@21) (=> (and (HasDirectPerm_9244_45856 Mask@@21 null pm_f@@1) (IsPredicateField_9244_45883 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_17086_53) ) (!  (=> (select (|PolymorphicMapType_17575_17086_53#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) null (PredicateMaskField_9244 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@69) o2 f_2) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_17099_17100) ) (!  (=> (select (|PolymorphicMapType_17575_17086_17100#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) null (PredicateMaskField_9244 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@69) o2@@0 f_2@@0) (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_20413_1189) ) (!  (=> (select (|PolymorphicMapType_17575_17086_1189#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) null (PredicateMaskField_9244 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@69) o2@@1 f_2@@1) (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_9244_45792) ) (!  (=> (select (|PolymorphicMapType_17575_17086_45792#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) null (PredicateMaskField_9244 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@69) o2@@2 f_2@@2) (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_9244_45925) ) (!  (=> (select (|PolymorphicMapType_17575_17086_47103#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) null (PredicateMaskField_9244 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@69) o2@@3 f_2@@3) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@3 Mask@@21) (IsPredicateField_9244_45883 pm_f@@1))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_17026) (ExhaleHeap@@4 T@PolymorphicMapType_17026) (Mask@@22 T@PolymorphicMapType_17047) (pm_f@@2 T@Field_9244_45792) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@4 Mask@@22) (=> (and (HasDirectPerm_9244_45856 Mask@@22 null pm_f@@2) (IsWandField_9244_47630 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_17086_53) ) (!  (=> (select (|PolymorphicMapType_17575_17086_53#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) null (WandMaskField_9244 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@70) o2@@4 f_2@@4) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_17099_17100) ) (!  (=> (select (|PolymorphicMapType_17575_17086_17100#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) null (WandMaskField_9244 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@70) o2@@5 f_2@@5) (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_20413_1189) ) (!  (=> (select (|PolymorphicMapType_17575_17086_1189#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) null (WandMaskField_9244 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@70) o2@@6 f_2@@6) (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_9244_45792) ) (!  (=> (select (|PolymorphicMapType_17575_17086_45792#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) null (WandMaskField_9244 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@70) o2@@7 f_2@@7) (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_9244_45925) ) (!  (=> (select (|PolymorphicMapType_17575_17086_47103#PolymorphicMapType_17575| (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) null (WandMaskField_9244 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@70) o2@@8 f_2@@8) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@4 Mask@@22) (IsWandField_9244_47630 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.190:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_17026) (ExhaleHeap@@5 T@PolymorphicMapType_17026) (Mask@@23 T@PolymorphicMapType_17047) (o_1@@0 T@Ref) (f_2@@9 T@Field_9244_45925) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@5 Mask@@23) (=> (HasDirectPerm_9244_51630 Mask@@23 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@71) o_1@@0 f_2@@9) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@5 Mask@@23) (select (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_17026) (ExhaleHeap@@6 T@PolymorphicMapType_17026) (Mask@@24 T@PolymorphicMapType_17047) (o_1@@1 T@Ref) (f_2@@10 T@Field_9244_45792) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@6 Mask@@24) (=> (HasDirectPerm_9244_45856 Mask@@24 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@72) o_1@@1 f_2@@10) (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@6 Mask@@24) (select (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_17026) (ExhaleHeap@@7 T@PolymorphicMapType_17026) (Mask@@25 T@PolymorphicMapType_17047) (o_1@@2 T@Ref) (f_2@@11 T@Field_17099_17100) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@7 Mask@@25) (=> (HasDirectPerm_9244_17100 Mask@@25 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@73) o_1@@2 f_2@@11) (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@7 Mask@@25) (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_17026) (ExhaleHeap@@8 T@PolymorphicMapType_17026) (Mask@@26 T@PolymorphicMapType_17047) (o_1@@3 T@Ref) (f_2@@12 T@Field_17086_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@8 Mask@@26) (=> (HasDirectPerm_9244_53 Mask@@26 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@74) o_1@@3 f_2@@12) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@8 Mask@@26) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_17026) (ExhaleHeap@@9 T@PolymorphicMapType_17026) (Mask@@27 T@PolymorphicMapType_17047) (o_1@@4 T@Ref) (f_2@@13 T@Field_20413_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_9244_1189 Mask@@27 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@75) o_1@@4 f_2@@13) (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9244_45925) ) (! (= (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9244_45792) ) (! (= (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_17099_17100) ) (! (= (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_17086_53) ) (! (= (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_20413_1189) ) (! (= (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_17047) (SummandMask1 T@PolymorphicMapType_17047) (SummandMask2 T@PolymorphicMapType_17047) (o_2@@19 T@Ref) (f_4@@19 T@Field_9244_45925) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17047_9244_50047#PolymorphicMapType_17047| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_17047) (SummandMask1@@0 T@PolymorphicMapType_17047) (SummandMask2@@0 T@PolymorphicMapType_17047) (o_2@@20 T@Ref) (f_4@@20 T@Field_9244_45792) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17047_9244_45792#PolymorphicMapType_17047| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_17047) (SummandMask1@@1 T@PolymorphicMapType_17047) (SummandMask2@@1 T@PolymorphicMapType_17047) (o_2@@21 T@Ref) (f_4@@21 T@Field_17099_17100) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17047_9244_17100#PolymorphicMapType_17047| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_17047) (SummandMask1@@2 T@PolymorphicMapType_17047) (SummandMask2@@2 T@PolymorphicMapType_17047) (o_2@@22 T@Ref) (f_4@@22 T@Field_17086_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17047_9244_53#PolymorphicMapType_17047| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_17047) (SummandMask1@@3 T@PolymorphicMapType_17047) (SummandMask2@@3 T@PolymorphicMapType_17047) (o_2@@23 T@Ref) (f_4@@23 T@Field_20413_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17047_9244_1189#PolymorphicMapType_17047| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_17026) (Mask@@28 T@PolymorphicMapType_17047) (this@@64 T@Ref) ) (!  (=> (and (state Heap@@76 Mask@@28) (< AssumeFunctionsAbove 21)) (=> (not (= this@@64 null)) (= (s2_1 Heap@@76 this@@64) (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@76) this@@64 x_42))))
 :qid |stdinbpl.471:15|
 :skolemid |40|
 :pattern ( (state Heap@@76 Mask@@28) (s2_1 Heap@@76 this@@64))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_17026) (Mask@@29 T@PolymorphicMapType_17047) (this@@65 T@Ref) ) (!  (=> (and (state Heap@@77 Mask@@29) (or (< AssumeFunctionsAbove 1) (|i1Abstract#trigger| EmptyFrame this@@65))) (and (not (= this@@65 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@77) this@@65 x_42) 0)))
 :qid |stdinbpl.743:15|
 :skolemid |57|
 :pattern ( (state Heap@@77 Mask@@29) (|i1Abstract'| Heap@@77 this@@65))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_17026) (Mask@@30 T@PolymorphicMapType_17047) (this@@66 T@Ref) ) (!  (=> (and (state Heap@@78 Mask@@30) (or (< AssumeFunctionsAbove 2) (|ie1Abstract#trigger| EmptyFrame this@@66))) (and (not (= this@@66 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@78) this@@66 x_42) 0)))
 :qid |stdinbpl.1297:15|
 :skolemid |87|
 :pattern ( (state Heap@@78 Mask@@30) (|ie1Abstract'| Heap@@78 this@@66))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_17026) (Mask@@31 T@PolymorphicMapType_17047) (this@@67 T@Ref) ) (!  (=> (and (state Heap@@79 Mask@@31) (or (< AssumeFunctionsAbove 5) (|ie1#trigger| EmptyFrame this@@67))) (and (not (= this@@67 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@79) this@@67 x_42) 0)))
 :qid |stdinbpl.1218:15|
 :skolemid |83|
 :pattern ( (state Heap@@79 Mask@@31) (|ie1'| Heap@@79 this@@67))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_17026) (Mask@@32 T@PolymorphicMapType_17047) (this@@68 T@Ref) ) (!  (=> (and (state Heap@@80 Mask@@32) (or (< AssumeFunctionsAbove 16) (|t6Abstract#trigger| EmptyFrame this@@68))) (and (not (= this@@68 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@80) this@@68 x_42) 0)))
 :qid |stdinbpl.2277:15|
 :skolemid |133|
 :pattern ( (state Heap@@80 Mask@@32) (|t6Abstract'| Heap@@80 this@@68))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_17026) (Mask@@33 T@PolymorphicMapType_17047) (this@@69 T@Ref) ) (!  (=> (and (state Heap@@81 Mask@@33) (or (< AssumeFunctionsAbove 19) (|s1Abstract#trigger| EmptyFrame this@@69))) (and (not (= this@@69 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@81) this@@69 x_42) 0)))
 :qid |stdinbpl.421:15|
 :skolemid |37|
 :pattern ( (state Heap@@81 Mask@@33) (|s1Abstract'| Heap@@81 this@@69))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_17026) (Mask@@34 T@PolymorphicMapType_17047) (this@@70 T@Ref) ) (!  (=> (and (state Heap@@82 Mask@@34) (or (< AssumeFunctionsAbove 23) (|i1#trigger| EmptyFrame this@@70))) (and (not (= this@@70 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@82) this@@70 x_42) 0)))
 :qid |stdinbpl.672:15|
 :skolemid |53|
 :pattern ( (state Heap@@82 Mask@@34) (|i1'| Heap@@82 this@@70))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_17026) (Mask@@35 T@PolymorphicMapType_17047) (this@@71 T@Ref) ) (!  (=> (and (state Heap@@83 Mask@@35) (or (< AssumeFunctionsAbove 24) (|s1#trigger| EmptyFrame this@@71))) (and (not (= this@@71 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@83) this@@71 x_42) 0)))
 :qid |stdinbpl.356:15|
 :skolemid |33|
 :pattern ( (state Heap@@83 Mask@@35) (|s1'| Heap@@83 this@@71))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_17026) (Mask@@36 T@PolymorphicMapType_17047) (this@@72 T@Ref) ) (!  (=> (and (state Heap@@84 Mask@@36) (or (< AssumeFunctionsAbove 27) (|t6#trigger| EmptyFrame this@@72))) (and (not (= this@@72 null)) (= (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@84) this@@72 x_42) 0)))
 :qid |stdinbpl.2190:15|
 :skolemid |129|
 :pattern ( (state Heap@@84 Mask@@36) (|t6'| Heap@@84 this@@72))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_17026) (Mask@@37 T@PolymorphicMapType_17047) (this@@73 T@Ref) ) (!  (=> (state Heap@@85 Mask@@37) (= (|t2'| Heap@@85 this@@73) (|t2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@85) this@@73 x_42)) this@@73)))
 :qid |stdinbpl.1509:15|
 :skolemid |98|
 :pattern ( (state Heap@@85 Mask@@37) (|t2'| Heap@@85 this@@73))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_17026) (Mask@@38 T@PolymorphicMapType_17047) (this@@74 T@Ref) ) (!  (=> (state Heap@@86 Mask@@38) (= (|t2Abstract'| Heap@@86 this@@74) (|t2Abstract#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@86) this@@74 x_42)) this@@74)))
 :qid |stdinbpl.1578:15|
 :skolemid |101|
 :pattern ( (state Heap@@86 Mask@@38) (|t2Abstract'| Heap@@86 this@@74))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_17026) (Mask@@39 T@PolymorphicMapType_17047) (this@@75 T@Ref) ) (!  (=> (state Heap@@87 Mask@@39) (= (|t4'| Heap@@87 this@@75) (|t4#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@87) this@@75 x_42)) this@@75)))
 :qid |stdinbpl.1830:15|
 :skolemid |112|
 :pattern ( (state Heap@@87 Mask@@39) (|t4'| Heap@@87 this@@75))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_17026) (Mask@@40 T@PolymorphicMapType_17047) (this@@76 T@Ref) ) (!  (=> (state Heap@@88 Mask@@40) (= (|t4Abstract'| Heap@@88 this@@76) (|t4Abstract#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@88) this@@76 x_42)) this@@76)))
 :qid |stdinbpl.1921:15|
 :skolemid |115|
 :pattern ( (state Heap@@88 Mask@@40) (|t4Abstract'| Heap@@88 this@@76))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_17026) (Mask@@41 T@PolymorphicMapType_17047) (this@@77 T@Ref) ) (!  (=> (state Heap@@89 Mask@@41) (= (|t5'| Heap@@89 this@@77) (|t5#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@89) this@@77 x_42)) this@@77)))
 :qid |stdinbpl.2010:15|
 :skolemid |119|
 :pattern ( (state Heap@@89 Mask@@41) (|t5'| Heap@@89 this@@77))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_17026) (Mask@@42 T@PolymorphicMapType_17047) (this@@78 T@Ref) ) (!  (=> (state Heap@@90 Mask@@42) (= (|t5Abstract'| Heap@@90 this@@78) (|t5Abstract#frame| (FrameFragment_1189 (select (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@90) this@@78 x_42)) this@@78)))
 :qid |stdinbpl.2097:15|
 :skolemid |123|
 :pattern ( (state Heap@@90 Mask@@42) (|t5Abstract'| Heap@@90 this@@78))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_17026) (Mask@@43 T@PolymorphicMapType_17047) (this@@79 T@Ref) ) (!  (=> (state Heap@@91 Mask@@43) (= (|s0'| Heap@@91 this@@79) (|s0#frame| EmptyFrame this@@79)))
 :qid |stdinbpl.239:15|
 :skolemid |25|
 :pattern ( (state Heap@@91 Mask@@43) (|s0'| Heap@@91 this@@79))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_17026) (Mask@@44 T@PolymorphicMapType_17047) (this@@80 T@Ref) ) (!  (=> (state Heap@@92 Mask@@44) (= (|s0Abstract'| Heap@@92 this@@80) (|s0Abstract#frame| EmptyFrame this@@80)))
 :qid |stdinbpl.293:15|
 :skolemid |28|
 :pattern ( (state Heap@@92 Mask@@44) (|s0Abstract'| Heap@@92 this@@80))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_17026) (Mask@@45 T@PolymorphicMapType_17047) (this@@81 T@Ref) ) (!  (=> (state Heap@@93 Mask@@45) (= (|s1'| Heap@@93 this@@81) (|s1#frame| EmptyFrame this@@81)))
 :qid |stdinbpl.350:15|
 :skolemid |32|
 :pattern ( (state Heap@@93 Mask@@45) (|s1'| Heap@@93 this@@81))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_17026) (Mask@@46 T@PolymorphicMapType_17047) (this@@82 T@Ref) ) (!  (=> (state Heap@@94 Mask@@46) (= (|s1Abstract'| Heap@@94 this@@82) (|s1Abstract#frame| EmptyFrame this@@82)))
 :qid |stdinbpl.415:15|
 :skolemid |36|
 :pattern ( (state Heap@@94 Mask@@46) (|s1Abstract'| Heap@@94 this@@82))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_17026) (Mask@@47 T@PolymorphicMapType_17047) (this@@83 T@Ref) ) (!  (=> (state Heap@@95 Mask@@47) (= (|s2'| Heap@@95 this@@83) (|s2#frame| EmptyFrame this@@83)))
 :qid |stdinbpl.478:15|
 :skolemid |41|
 :pattern ( (state Heap@@95 Mask@@47) (|s2'| Heap@@95 this@@83))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_17026) (Mask@@48 T@PolymorphicMapType_17047) (this@@84 T@Ref) ) (!  (=> (state Heap@@96 Mask@@48) (= (|i0'| Heap@@96 this@@84) (|i0#frame| EmptyFrame this@@84)))
 :qid |stdinbpl.539:15|
 :skolemid |45|
 :pattern ( (state Heap@@96 Mask@@48) (|i0'| Heap@@96 this@@84))
)))
(assert (forall ((Heap@@97 T@PolymorphicMapType_17026) (Mask@@49 T@PolymorphicMapType_17047) (this@@85 T@Ref) ) (!  (=> (state Heap@@97 Mask@@49) (= (|i0Abstract'| Heap@@97 this@@85) (|i0Abstract#frame| EmptyFrame this@@85)))
 :qid |stdinbpl.601:15|
 :skolemid |48|
 :pattern ( (state Heap@@97 Mask@@49) (|i0Abstract'| Heap@@97 this@@85))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_17026) (Mask@@50 T@PolymorphicMapType_17047) (this@@86 T@Ref) ) (!  (=> (state Heap@@98 Mask@@50) (= (|i1'| Heap@@98 this@@86) (|i1#frame| EmptyFrame this@@86)))
 :qid |stdinbpl.666:15|
 :skolemid |52|
 :pattern ( (state Heap@@98 Mask@@50) (|i1'| Heap@@98 this@@86))
)))
(assert (forall ((Heap@@99 T@PolymorphicMapType_17026) (Mask@@51 T@PolymorphicMapType_17047) (this@@87 T@Ref) ) (!  (=> (state Heap@@99 Mask@@51) (= (|i1Abstract'| Heap@@99 this@@87) (|i1Abstract#frame| EmptyFrame this@@87)))
 :qid |stdinbpl.737:15|
 :skolemid |56|
 :pattern ( (state Heap@@99 Mask@@51) (|i1Abstract'| Heap@@99 this@@87))
)))
(assert (forall ((Heap@@100 T@PolymorphicMapType_17026) (Mask@@52 T@PolymorphicMapType_17047) (this@@88 T@Ref) ) (!  (=> (state Heap@@100 Mask@@52) (= (|e0'| Heap@@100 this@@88) (|e0#frame| EmptyFrame this@@88)))
 :qid |stdinbpl.808:15|
 :skolemid |61|
 :pattern ( (state Heap@@100 Mask@@52) (|e0'| Heap@@100 this@@88))
)))
(assert (forall ((Heap@@101 T@PolymorphicMapType_17026) (Mask@@53 T@PolymorphicMapType_17047) (this@@89 T@Ref) ) (!  (=> (state Heap@@101 Mask@@53) (= (|e0Abstract'| Heap@@101 this@@89) (|e0Abstract#frame| EmptyFrame this@@89)))
 :qid |stdinbpl.870:15|
 :skolemid |64|
 :pattern ( (state Heap@@101 Mask@@53) (|e0Abstract'| Heap@@101 this@@89))
)))
(assert (forall ((Heap@@102 T@PolymorphicMapType_17026) (Mask@@54 T@PolymorphicMapType_17047) (this@@90 T@Ref) ) (!  (=> (state Heap@@102 Mask@@54) (= (|e1'| Heap@@102 this@@90) (|e1#frame| EmptyFrame this@@90)))
 :qid |stdinbpl.935:15|
 :skolemid |68|
 :pattern ( (state Heap@@102 Mask@@54) (|e1'| Heap@@102 this@@90))
)))
(assert (forall ((Heap@@103 T@PolymorphicMapType_17026) (Mask@@55 T@PolymorphicMapType_17047) (this@@91 T@Ref) ) (!  (=> (state Heap@@103 Mask@@55) (= (|e1Abstract'| Heap@@103 this@@91) (|e1Abstract#frame| EmptyFrame this@@91)))
 :qid |stdinbpl.1005:15|
 :skolemid |71|
 :pattern ( (state Heap@@103 Mask@@55) (|e1Abstract'| Heap@@103 this@@91))
)))
(assert (forall ((Heap@@104 T@PolymorphicMapType_17026) (Mask@@56 T@PolymorphicMapType_17047) (this@@92 T@Ref) ) (!  (=> (state Heap@@104 Mask@@56) (= (|ie0'| Heap@@104 this@@92) (|ie0#frame| EmptyFrame this@@92)))
 :qid |stdinbpl.1073:15|
 :skolemid |75|
 :pattern ( (state Heap@@104 Mask@@56) (|ie0'| Heap@@104 this@@92))
)))
(assert (forall ((Heap@@105 T@PolymorphicMapType_17026) (Mask@@57 T@PolymorphicMapType_17047) (this@@93 T@Ref) ) (!  (=> (state Heap@@105 Mask@@57) (= (|ie0Abstract'| Heap@@105 this@@93) (|ie0Abstract#frame| EmptyFrame this@@93)))
 :qid |stdinbpl.1141:15|
 :skolemid |78|
 :pattern ( (state Heap@@105 Mask@@57) (|ie0Abstract'| Heap@@105 this@@93))
)))
(assert (forall ((Heap@@106 T@PolymorphicMapType_17026) (Mask@@58 T@PolymorphicMapType_17047) (this@@94 T@Ref) ) (!  (=> (state Heap@@106 Mask@@58) (= (|ie1'| Heap@@106 this@@94) (|ie1#frame| EmptyFrame this@@94)))
 :qid |stdinbpl.1212:15|
 :skolemid |82|
 :pattern ( (state Heap@@106 Mask@@58) (|ie1'| Heap@@106 this@@94))
)))
(assert (forall ((Heap@@107 T@PolymorphicMapType_17026) (Mask@@59 T@PolymorphicMapType_17047) (this@@95 T@Ref) ) (!  (=> (state Heap@@107 Mask@@59) (= (|ie1Abstract'| Heap@@107 this@@95) (|ie1Abstract#frame| EmptyFrame this@@95)))
 :qid |stdinbpl.1291:15|
 :skolemid |86|
 :pattern ( (state Heap@@107 Mask@@59) (|ie1Abstract'| Heap@@107 this@@95))
)))
(assert (forall ((Heap@@108 T@PolymorphicMapType_17026) (Mask@@60 T@PolymorphicMapType_17047) (this@@96 T@Ref) ) (!  (=> (state Heap@@108 Mask@@60) (= (|t1'| Heap@@108 this@@96) (|t1#frame| EmptyFrame this@@96)))
 :qid |stdinbpl.1368:15|
 :skolemid |91|
 :pattern ( (state Heap@@108 Mask@@60) (|t1'| Heap@@108 this@@96))
)))
(assert (forall ((Heap@@109 T@PolymorphicMapType_17026) (Mask@@61 T@PolymorphicMapType_17047) (this@@97 T@Ref) ) (!  (=> (state Heap@@109 Mask@@61) (= (|t1Abstract'| Heap@@109 this@@97) (|t1Abstract#frame| EmptyFrame this@@97)))
 :qid |stdinbpl.1437:15|
 :skolemid |94|
 :pattern ( (state Heap@@109 Mask@@61) (|t1Abstract'| Heap@@109 this@@97))
)))
(assert (forall ((Heap@@110 T@PolymorphicMapType_17026) (Mask@@62 T@PolymorphicMapType_17047) (this@@98 T@Ref) ) (!  (=> (state Heap@@110 Mask@@62) (= (|t3'| Heap@@110 this@@98) (|t3#frame| EmptyFrame this@@98)))
 :qid |stdinbpl.1650:15|
 :skolemid |105|
 :pattern ( (state Heap@@110 Mask@@62) (|t3'| Heap@@110 this@@98))
)))
(assert (forall ((Heap@@111 T@PolymorphicMapType_17026) (Mask@@63 T@PolymorphicMapType_17047) (this@@99 T@Ref) ) (!  (=> (state Heap@@111 Mask@@63) (= (|t3Abstract'| Heap@@111 this@@99) (|t3Abstract#frame| EmptyFrame this@@99)))
 :qid |stdinbpl.1741:15|
 :skolemid |108|
 :pattern ( (state Heap@@111 Mask@@63) (|t3Abstract'| Heap@@111 this@@99))
)))
(assert (forall ((Heap@@112 T@PolymorphicMapType_17026) (Mask@@64 T@PolymorphicMapType_17047) (this@@100 T@Ref) ) (!  (=> (state Heap@@112 Mask@@64) (= (|t6'| Heap@@112 this@@100) (|t6#frame| EmptyFrame this@@100)))
 :qid |stdinbpl.2184:15|
 :skolemid |128|
 :pattern ( (state Heap@@112 Mask@@64) (|t6'| Heap@@112 this@@100))
)))
(assert (forall ((Heap@@113 T@PolymorphicMapType_17026) (Mask@@65 T@PolymorphicMapType_17047) (this@@101 T@Ref) ) (!  (=> (state Heap@@113 Mask@@65) (= (|t6Abstract'| Heap@@113 this@@101) (|t6Abstract#frame| EmptyFrame this@@101)))
 :qid |stdinbpl.2271:15|
 :skolemid |132|
 :pattern ( (state Heap@@113 Mask@@65) (|t6Abstract'| Heap@@113 this@@101))
)))
(assert (forall ((Heap@@114 T@PolymorphicMapType_17026) (o T@Ref) (f_3 T@Field_9244_45792) (v T@FrameType) ) (! (succHeap Heap@@114 (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@114) (store (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@114) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@114) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@114) (store (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@114) o f_3 v)))
)))
(assert (forall ((Heap@@115 T@PolymorphicMapType_17026) (o@@0 T@Ref) (f_3@@0 T@Field_9244_45925) (v@@0 T@PolymorphicMapType_17575) ) (! (succHeap Heap@@115 (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@115) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@115) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@115) (store (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@115) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@115)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@115) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@115) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@115) (store (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@115) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@115)))
)))
(assert (forall ((Heap@@116 T@PolymorphicMapType_17026) (o@@1 T@Ref) (f_3@@1 T@Field_20413_1189) (v@@1 Int) ) (! (succHeap Heap@@116 (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@116) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@116) (store (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@116) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@116) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@116)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@116) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@116) (store (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@116) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@116) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@116)))
)))
(assert (forall ((Heap@@117 T@PolymorphicMapType_17026) (o@@2 T@Ref) (f_3@@2 T@Field_17099_17100) (v@@2 T@Ref) ) (! (succHeap Heap@@117 (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@117) (store (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@117) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@117) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@117) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@117)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17026 (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@117) (store (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@117) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@117) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@117) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@117)))
)))
(assert (forall ((Heap@@118 T@PolymorphicMapType_17026) (o@@3 T@Ref) (f_3@@3 T@Field_17086_53) (v@@3 Bool) ) (! (succHeap Heap@@118 (PolymorphicMapType_17026 (store (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@118) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@118)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17026 (store (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@118) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_9244_1189#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_9244_45969#PolymorphicMapType_17026| Heap@@118) (|PolymorphicMapType_17026_17086_45792#PolymorphicMapType_17026| Heap@@118)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_17099_17100) (Heap@@119 T@PolymorphicMapType_17026) ) (!  (=> (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@119) o@@4 $allocated) (select (|PolymorphicMapType_17026_9116_53#PolymorphicMapType_17026| Heap@@119) (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@119) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_17026_9119_9120#PolymorphicMapType_17026| Heap@@119) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_9244_45792) (v_1@@0 T@FrameType) (q T@Field_9244_45792) (w@@0 T@FrameType) (r T@Field_9244_45792) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17086_17086 p@@1 v_1@@0 q w@@0) (InsidePredicate_17086_17086 q w@@0 r u)) (InsidePredicate_17086_17086 p@@1 v_1@@0 r u))
 :qid |stdinbpl.197:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17086_17086 p@@1 v_1@@0 q w@@0) (InsidePredicate_17086_17086 q w@@0 r u))
)))
(assert (forall ((Heap@@120 T@PolymorphicMapType_17026) (Mask@@66 T@PolymorphicMapType_17047) (this@@102 T@Ref) ) (!  (=> (and (state Heap@@120 Mask@@66) (< AssumeFunctionsAbove 5)) (= (ie1_1 Heap@@120 this@@102) 0))
 :qid |stdinbpl.1205:15|
 :skolemid |81|
 :pattern ( (state Heap@@120 Mask@@66) (ie1_1 Heap@@120 this@@102))
)))
(assert (forall ((Heap@@121 T@PolymorphicMapType_17026) (Mask@@67 T@PolymorphicMapType_17047) (this@@103 T@Ref) ) (!  (=> (and (state Heap@@121 Mask@@67) (< AssumeFunctionsAbove 7)) (= (t2_3 Heap@@121 this@@103) 0))
 :qid |stdinbpl.1502:15|
 :skolemid |97|
 :pattern ( (state Heap@@121 Mask@@67) (t2_3 Heap@@121 this@@103))
)))
(assert (forall ((Heap@@122 T@PolymorphicMapType_17026) (Mask@@68 T@PolymorphicMapType_17047) (this@@104 T@Ref) ) (!  (=> (and (state Heap@@122 Mask@@68) (< AssumeFunctionsAbove 9)) (= (t5_1 Heap@@122 this@@104) 0))
 :qid |stdinbpl.2003:15|
 :skolemid |118|
 :pattern ( (state Heap@@122 Mask@@68) (t5_1 Heap@@122 this@@104))
)))
(assert (forall ((Heap@@123 T@PolymorphicMapType_17026) (Mask@@69 T@PolymorphicMapType_17047) (this@@105 T@Ref) ) (!  (=> (and (state Heap@@123 Mask@@69) (< AssumeFunctionsAbove 12)) (= (e1_1 Heap@@123 this@@105) 0))
 :qid |stdinbpl.928:15|
 :skolemid |67|
 :pattern ( (state Heap@@123 Mask@@69) (e1_1 Heap@@123 this@@105))
)))
(assert (forall ((Heap@@124 T@PolymorphicMapType_17026) (Mask@@70 T@PolymorphicMapType_17047) (this@@106 T@Ref) ) (!  (=> (and (state Heap@@124 Mask@@70) (< AssumeFunctionsAbove 15)) (= (i0_1 Heap@@124 this@@106) 0))
 :qid |stdinbpl.532:15|
 :skolemid |44|
 :pattern ( (state Heap@@124 Mask@@70) (i0_1 Heap@@124 this@@106))
)))
(assert (forall ((Heap@@125 T@PolymorphicMapType_17026) (Mask@@71 T@PolymorphicMapType_17047) (this@@107 T@Ref) ) (!  (=> (and (state Heap@@125 Mask@@71) (< AssumeFunctionsAbove 23)) (= (i1_7 Heap@@125 this@@107) 0))
 :qid |stdinbpl.659:15|
 :skolemid |51|
 :pattern ( (state Heap@@125 Mask@@71) (i1_7 Heap@@125 this@@107))
)))
(assert (forall ((Heap@@126 T@PolymorphicMapType_17026) (Mask@@72 T@PolymorphicMapType_17047) (this@@108 T@Ref) ) (!  (=> (and (state Heap@@126 Mask@@72) (< AssumeFunctionsAbove 24)) (= (s1_1 Heap@@126 this@@108) 0))
 :qid |stdinbpl.343:15|
 :skolemid |31|
 :pattern ( (state Heap@@126 Mask@@72) (s1_1 Heap@@126 this@@108))
)))
(assert (forall ((Heap@@127 T@PolymorphicMapType_17026) (Mask@@73 T@PolymorphicMapType_17047) (this@@109 T@Ref) ) (!  (=> (and (state Heap@@127 Mask@@73) (< AssumeFunctionsAbove 27)) (= (t6 Heap@@127 this@@109) 0))
 :qid |stdinbpl.2177:15|
 :skolemid |127|
 :pattern ( (state Heap@@127 Mask@@73) (t6 Heap@@127 this@@109))
)))
(assert (forall ((Heap@@128 T@PolymorphicMapType_17026) (Mask@@74 T@PolymorphicMapType_17047) (this@@110 T@Ref) ) (!  (=> (and (state Heap@@128 Mask@@74) (< AssumeFunctionsAbove 28)) (= (t3_1 Heap@@128 this@@110) 0))
 :qid |stdinbpl.1643:15|
 :skolemid |104|
 :pattern ( (state Heap@@128 Mask@@74) (t3_1 Heap@@128 this@@110))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid

