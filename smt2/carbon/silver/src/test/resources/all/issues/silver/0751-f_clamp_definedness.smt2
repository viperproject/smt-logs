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
(declare-sort T@Field_3947_53 0)
(declare-sort T@Field_3960_3961 0)
(declare-sort T@Field_3947_10525 0)
(declare-sort T@Field_3947_10392 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3908 0)) (((PolymorphicMapType_3908 (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| (Array T@Ref T@Field_3947_53 Real)) (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| (Array T@Ref T@Field_3960_3961 Real)) (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| (Array T@Ref T@Field_3947_10392 Real)) (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| (Array T@Ref T@Field_3947_10525 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4436 0)) (((PolymorphicMapType_4436 (|PolymorphicMapType_4436_3947_53#PolymorphicMapType_4436| (Array T@Ref T@Field_3947_53 Bool)) (|PolymorphicMapType_4436_3947_3961#PolymorphicMapType_4436| (Array T@Ref T@Field_3960_3961 Bool)) (|PolymorphicMapType_4436_3947_10392#PolymorphicMapType_4436| (Array T@Ref T@Field_3947_10392 Bool)) (|PolymorphicMapType_4436_3947_11505#PolymorphicMapType_4436| (Array T@Ref T@Field_3947_10525 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3887 0)) (((PolymorphicMapType_3887 (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| (Array T@Ref T@Field_3947_53 Bool)) (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| (Array T@Ref T@Field_3960_3961 T@Ref)) (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| (Array T@Ref T@Field_3947_10525 T@PolymorphicMapType_4436)) (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| (Array T@Ref T@Field_3947_10392 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3887 T@PolymorphicMapType_3887) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3887 T@PolymorphicMapType_3887) Bool)
(declare-fun state (T@PolymorphicMapType_3887 T@PolymorphicMapType_3908) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3908) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4436)
(declare-fun |f_get'| (T@PolymorphicMapType_3887 Int) Int)
(declare-fun dummyFunction_1320 (Int) Bool)
(declare-fun |f_get#triggerStateless| (Int) Int)
(declare-fun |f_get2'| (T@PolymorphicMapType_3887 Int) Int)
(declare-fun |f_get2#triggerStateless| (Int) Int)
(declare-fun f_get (T@PolymorphicMapType_3887 Int) Int)
(declare-fun f_get2 (T@PolymorphicMapType_3887 Int) Int)
(declare-fun |f_clamp'| (T@PolymorphicMapType_3887) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |f_clamp#trigger| (T@FrameType) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3887 T@PolymorphicMapType_3887 T@PolymorphicMapType_3908) Bool)
(declare-fun IsPredicateField_3947_10483 (T@Field_3947_10392) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3947 (T@Field_3947_10392) T@Field_3947_10525)
(declare-fun HasDirectPerm_3947_10456 (T@PolymorphicMapType_3908 T@Ref T@Field_3947_10392) Bool)
(declare-fun IsWandField_3947_12032 (T@Field_3947_10392) Bool)
(declare-fun WandMaskField_3947 (T@Field_3947_10392) T@Field_3947_10525)
(declare-fun dummyHeap () T@PolymorphicMapType_3887)
(declare-fun ZeroMask () T@PolymorphicMapType_3908)
(declare-fun $allocated () T@Field_3947_53)
(declare-fun InsidePredicate_3947_3947 (T@Field_3947_10392 T@FrameType T@Field_3947_10392 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3947_14995 (T@Field_3947_10525) Bool)
(declare-fun IsWandField_3947_15011 (T@Field_3947_10525) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3947_3961 (T@Field_3960_3961) Bool)
(declare-fun IsWandField_3947_3961 (T@Field_3960_3961) Bool)
(declare-fun IsPredicateField_3947_53 (T@Field_3947_53) Bool)
(declare-fun IsWandField_3947_53 (T@Field_3947_53) Bool)
(declare-fun HasDirectPerm_3947_15366 (T@PolymorphicMapType_3908 T@Ref T@Field_3947_10525) Bool)
(declare-fun HasDirectPerm_3947_3961 (T@PolymorphicMapType_3908 T@Ref T@Field_3960_3961) Bool)
(declare-fun HasDirectPerm_3947_53 (T@PolymorphicMapType_3908 T@Ref T@Field_3947_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun f_clamp (T@PolymorphicMapType_3887) Int)
(declare-fun |f_clamp#triggerStateless| () Int)
(declare-fun sumMask (T@PolymorphicMapType_3908 T@PolymorphicMapType_3908 T@PolymorphicMapType_3908) Bool)
(declare-fun |f_get#frame| (T@FrameType Int) Int)
(declare-fun |f_get2#frame| (T@FrameType Int) Int)
(declare-fun |f_clamp#frame| (T@FrameType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_3887) (Heap1 T@PolymorphicMapType_3887) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3887) (Mask T@PolymorphicMapType_3908) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3887) (Heap1@@0 T@PolymorphicMapType_3887) (Heap2 T@PolymorphicMapType_3887) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3947_10525) ) (!  (not (select (|PolymorphicMapType_4436_3947_11505#PolymorphicMapType_4436| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4436_3947_11505#PolymorphicMapType_4436| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3947_10392) ) (!  (not (select (|PolymorphicMapType_4436_3947_10392#PolymorphicMapType_4436| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4436_3947_10392#PolymorphicMapType_4436| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3960_3961) ) (!  (not (select (|PolymorphicMapType_4436_3947_3961#PolymorphicMapType_4436| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4436_3947_3961#PolymorphicMapType_4436| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3947_53) ) (!  (not (select (|PolymorphicMapType_4436_3947_53#PolymorphicMapType_4436| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4436_3947_53#PolymorphicMapType_4436| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3887) (idx_1 Int) ) (! (dummyFunction_1320 (|f_get#triggerStateless| idx_1))
 :qid |stdinbpl.192:15|
 :skolemid |23|
 :pattern ( (|f_get'| Heap@@0 idx_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3887) (idx_1@@0 Int) ) (! (dummyFunction_1320 (|f_get2#triggerStateless| idx_1@@0))
 :qid |stdinbpl.233:15|
 :skolemid |26|
 :pattern ( (|f_get2'| Heap@@1 idx_1@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3887) (idx_1@@1 Int) ) (!  (and (= (f_get Heap@@2 idx_1@@1) (|f_get'| Heap@@2 idx_1@@1)) (dummyFunction_1320 (|f_get#triggerStateless| idx_1@@1)))
 :qid |stdinbpl.188:15|
 :skolemid |22|
 :pattern ( (f_get Heap@@2 idx_1@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3887) (idx_1@@2 Int) ) (!  (and (= (f_get2 Heap@@3 idx_1@@2) (|f_get2'| Heap@@3 idx_1@@2)) (dummyFunction_1320 (|f_get2#triggerStateless| idx_1@@2)))
 :qid |stdinbpl.229:15|
 :skolemid |25|
 :pattern ( (f_get2 Heap@@3 idx_1@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3887) (Mask@@0 T@PolymorphicMapType_3908) ) (!  (=> (and (state Heap@@4 Mask@@0) (or (< AssumeFunctionsAbove 0) (|f_clamp#trigger| EmptyFrame))) (= (|f_clamp'| Heap@@4) 0))
 :qid |stdinbpl.291:15|
 :skolemid |31|
 :pattern ( (state Heap@@4 Mask@@0) (|f_clamp'| Heap@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3887) (ExhaleHeap T@PolymorphicMapType_3887) (Mask@@1 T@PolymorphicMapType_3908) (pm_f_5 T@Field_3947_10392) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_3947_10456 Mask@@1 null pm_f_5) (IsPredicateField_3947_10483 pm_f_5)) (= (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@5) null (PredicateMaskField_3947 pm_f_5)) (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| ExhaleHeap) null (PredicateMaskField_3947 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_3947_10483 pm_f_5) (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| ExhaleHeap) null (PredicateMaskField_3947 pm_f_5)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3887) (ExhaleHeap@@0 T@PolymorphicMapType_3887) (Mask@@2 T@PolymorphicMapType_3908) (pm_f_5@@0 T@Field_3947_10392) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3947_10456 Mask@@2 null pm_f_5@@0) (IsWandField_3947_12032 pm_f_5@@0)) (= (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@6) null (WandMaskField_3947 pm_f_5@@0)) (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| ExhaleHeap@@0) null (WandMaskField_3947 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsWandField_3947_12032 pm_f_5@@0) (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| ExhaleHeap@@0) null (WandMaskField_3947 pm_f_5@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3887) (ExhaleHeap@@1 T@PolymorphicMapType_3887) (Mask@@3 T@PolymorphicMapType_3908) (pm_f_5@@1 T@Field_3947_10392) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_3947_10456 Mask@@3 null pm_f_5@@1) (IsPredicateField_3947_10483 pm_f_5@@1)) (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_3947_53) ) (!  (=> (select (|PolymorphicMapType_4436_3947_53#PolymorphicMapType_4436| (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@7) null (PredicateMaskField_3947 pm_f_5@@1))) o2_5 f_16) (= (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@7) o2_5 f_16) (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| ExhaleHeap@@1) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| ExhaleHeap@@1) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_3960_3961) ) (!  (=> (select (|PolymorphicMapType_4436_3947_3961#PolymorphicMapType_4436| (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@7) null (PredicateMaskField_3947 pm_f_5@@1))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@7) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| ExhaleHeap@@1) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| ExhaleHeap@@1) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_3947_10392) ) (!  (=> (select (|PolymorphicMapType_4436_3947_10392#PolymorphicMapType_4436| (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@7) null (PredicateMaskField_3947 pm_f_5@@1))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| Heap@@7) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| ExhaleHeap@@1) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| ExhaleHeap@@1) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_3947_10525) ) (!  (=> (select (|PolymorphicMapType_4436_3947_11505#PolymorphicMapType_4436| (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@7) null (PredicateMaskField_3947 pm_f_5@@1))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@7) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| ExhaleHeap@@1) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| ExhaleHeap@@1) o2_5@@2 f_16@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsPredicateField_3947_10483 pm_f_5@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3887) (ExhaleHeap@@2 T@PolymorphicMapType_3887) (Mask@@4 T@PolymorphicMapType_3908) (pm_f_5@@2 T@Field_3947_10392) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3947_10456 Mask@@4 null pm_f_5@@2) (IsWandField_3947_12032 pm_f_5@@2)) (and (and (and (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_3947_53) ) (!  (=> (select (|PolymorphicMapType_4436_3947_53#PolymorphicMapType_4436| (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@8) null (WandMaskField_3947 pm_f_5@@2))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@8) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| ExhaleHeap@@2) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| ExhaleHeap@@2) o2_5@@3 f_16@@3))
)) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_3960_3961) ) (!  (=> (select (|PolymorphicMapType_4436_3947_3961#PolymorphicMapType_4436| (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@8) null (WandMaskField_3947 pm_f_5@@2))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@8) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| ExhaleHeap@@2) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| ExhaleHeap@@2) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_3947_10392) ) (!  (=> (select (|PolymorphicMapType_4436_3947_10392#PolymorphicMapType_4436| (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@8) null (WandMaskField_3947 pm_f_5@@2))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| Heap@@8) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| ExhaleHeap@@2) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| ExhaleHeap@@2) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_3947_10525) ) (!  (=> (select (|PolymorphicMapType_4436_3947_11505#PolymorphicMapType_4436| (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@8) null (WandMaskField_3947 pm_f_5@@2))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@8) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| ExhaleHeap@@2) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| ExhaleHeap@@2) o2_5@@6 f_16@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_3947_12032 pm_f_5@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3887) (ExhaleHeap@@3 T@PolymorphicMapType_3887) (Mask@@5 T@PolymorphicMapType_3908) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@9) o_12 $allocated) (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| ExhaleHeap@@3) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| ExhaleHeap@@3) o_12 $allocated))
)))
(assert (forall ((p T@Field_3947_10392) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3947_3947 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3947_3947 p v_1 p w))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3887) (ExhaleHeap@@4 T@PolymorphicMapType_3887) (Mask@@6 T@PolymorphicMapType_3908) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@10 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3908) (o_2@@3 T@Ref) (f_4@@3 T@Field_3947_10525) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3947_14995 f_4@@3))) (not (IsWandField_3947_15011 f_4@@3))) (<= (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3908) (o_2@@4 T@Ref) (f_4@@4 T@Field_3947_10392) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3947_10483 f_4@@4))) (not (IsWandField_3947_12032 f_4@@4))) (<= (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3908) (o_2@@5 T@Ref) (f_4@@5 T@Field_3960_3961) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3947_3961 f_4@@5))) (not (IsWandField_3947_3961 f_4@@5))) (<= (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3908) (o_2@@6 T@Ref) (f_4@@6 T@Field_3947_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3947_53 f_4@@6))) (not (IsWandField_3947_53 f_4@@6))) (<= (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3908) (o_2@@7 T@Ref) (f_4@@7 T@Field_3947_10525) ) (! (= (HasDirectPerm_3947_15366 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3947_15366 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3908) (o_2@@8 T@Ref) (f_4@@8 T@Field_3947_10392) ) (! (= (HasDirectPerm_3947_10456 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3947_10456 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3908) (o_2@@9 T@Ref) (f_4@@9 T@Field_3960_3961) ) (! (= (HasDirectPerm_3947_3961 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3947_3961 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3908) (o_2@@10 T@Ref) (f_4@@10 T@Field_3947_53) ) (! (= (HasDirectPerm_3947_53 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3947_53 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3887) (ExhaleHeap@@5 T@PolymorphicMapType_3887) (Mask@@15 T@PolymorphicMapType_3908) (o_12@@0 T@Ref) (f_16@@7 T@Field_3947_10525) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_3947_15366 Mask@@15 o_12@@0 f_16@@7) (= (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@11) o_12@@0 f_16@@7) (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| ExhaleHeap@@5) o_12@@0 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| ExhaleHeap@@5) o_12@@0 f_16@@7))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3887) (ExhaleHeap@@6 T@PolymorphicMapType_3887) (Mask@@16 T@PolymorphicMapType_3908) (o_12@@1 T@Ref) (f_16@@8 T@Field_3947_10392) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_3947_10456 Mask@@16 o_12@@1 f_16@@8) (= (select (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| Heap@@12) o_12@@1 f_16@@8) (select (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| ExhaleHeap@@6) o_12@@1 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| ExhaleHeap@@6) o_12@@1 f_16@@8))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3887) (ExhaleHeap@@7 T@PolymorphicMapType_3887) (Mask@@17 T@PolymorphicMapType_3908) (o_12@@2 T@Ref) (f_16@@9 T@Field_3960_3961) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_3947_3961 Mask@@17 o_12@@2 f_16@@9) (= (select (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@13) o_12@@2 f_16@@9) (select (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| ExhaleHeap@@7) o_12@@2 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| ExhaleHeap@@7) o_12@@2 f_16@@9))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3887) (ExhaleHeap@@8 T@PolymorphicMapType_3887) (Mask@@18 T@PolymorphicMapType_3908) (o_12@@3 T@Ref) (f_16@@10 T@Field_3947_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_3947_53 Mask@@18 o_12@@3 f_16@@10) (= (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@14) o_12@@3 f_16@@10) (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| ExhaleHeap@@8) o_12@@3 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| ExhaleHeap@@8) o_12@@3 f_16@@10))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3887) ) (!  (and (= (f_clamp Heap@@15) (|f_clamp'| Heap@@15)) (dummyFunction_1320 |f_clamp#triggerStateless|))
 :qid |stdinbpl.274:15|
 :skolemid |28|
 :pattern ( (f_clamp Heap@@15))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3947_10525) ) (! (= (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3947_10392) ) (! (= (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3960_3961) ) (! (= (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3947_53) ) (! (= (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3908) (SummandMask1 T@PolymorphicMapType_3908) (SummandMask2 T@PolymorphicMapType_3908) (o_2@@15 T@Ref) (f_4@@15 T@Field_3947_10525) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3908_3947_14086#PolymorphicMapType_3908| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3908) (SummandMask1@@0 T@PolymorphicMapType_3908) (SummandMask2@@0 T@PolymorphicMapType_3908) (o_2@@16 T@Ref) (f_4@@16 T@Field_3947_10392) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3908_3947_10392#PolymorphicMapType_3908| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3908) (SummandMask1@@1 T@PolymorphicMapType_3908) (SummandMask2@@1 T@PolymorphicMapType_3908) (o_2@@17 T@Ref) (f_4@@17 T@Field_3960_3961) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3908_3947_3961#PolymorphicMapType_3908| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3908) (SummandMask1@@2 T@PolymorphicMapType_3908) (SummandMask2@@2 T@PolymorphicMapType_3908) (o_2@@18 T@Ref) (f_4@@18 T@Field_3947_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3908_3947_53#PolymorphicMapType_3908| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3887) (Mask@@19 T@PolymorphicMapType_3908) (idx_1@@3 Int) ) (!  (=> (state Heap@@16 Mask@@19) (= (|f_get'| Heap@@16 idx_1@@3) (|f_get#frame| EmptyFrame idx_1@@3)))
 :qid |stdinbpl.199:15|
 :skolemid |24|
 :pattern ( (state Heap@@16 Mask@@19) (|f_get'| Heap@@16 idx_1@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3887) (Mask@@20 T@PolymorphicMapType_3908) (idx_1@@4 Int) ) (!  (=> (state Heap@@17 Mask@@20) (= (|f_get2'| Heap@@17 idx_1@@4) (|f_get2#frame| EmptyFrame idx_1@@4)))
 :qid |stdinbpl.240:15|
 :skolemid |27|
 :pattern ( (state Heap@@17 Mask@@20) (|f_get2'| Heap@@17 idx_1@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3887) ) (! (dummyFunction_1320 |f_clamp#triggerStateless|)
 :qid |stdinbpl.278:15|
 :skolemid |29|
 :pattern ( (|f_clamp'| Heap@@18))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3887) (Mask@@21 T@PolymorphicMapType_3908) ) (!  (=> (state Heap@@19 Mask@@21) (= (|f_clamp'| Heap@@19) (|f_clamp#frame| EmptyFrame)))
 :qid |stdinbpl.285:15|
 :skolemid |30|
 :pattern ( (state Heap@@19 Mask@@21) (|f_clamp'| Heap@@19))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3887) (o_11 T@Ref) (f_17 T@Field_3947_10392) (v T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_3887 (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@20) (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@20) (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@20) (store (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| Heap@@20) o_11 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3887 (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@20) (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@20) (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@20) (store (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| Heap@@20) o_11 f_17 v)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3887) (o_11@@0 T@Ref) (f_17@@0 T@Field_3947_10525) (v@@0 T@PolymorphicMapType_4436) ) (! (succHeap Heap@@21 (PolymorphicMapType_3887 (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@21) (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@21) (store (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@21) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3887 (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@21) (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@21) (store (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@21) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3887) (o_11@@1 T@Ref) (f_17@@1 T@Field_3960_3961) (v@@1 T@Ref) ) (! (succHeap Heap@@22 (PolymorphicMapType_3887 (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@22) (store (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@22) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@22) (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3887 (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@22) (store (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@22) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@22) (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3887) (o_11@@2 T@Ref) (f_17@@2 T@Field_3947_53) (v@@2 Bool) ) (! (succHeap Heap@@23 (PolymorphicMapType_3887 (store (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@23) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@23) (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@23) (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3887 (store (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@23) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@23) (|PolymorphicMapType_3887_3947_10569#PolymorphicMapType_3887| Heap@@23) (|PolymorphicMapType_3887_3947_10392#PolymorphicMapType_3887| Heap@@23)))
)))
(assert (forall ((o_11@@3 T@Ref) (f_10 T@Field_3960_3961) (Heap@@24 T@PolymorphicMapType_3887) ) (!  (=> (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@24) o_11@@3 $allocated) (select (|PolymorphicMapType_3887_2039_53#PolymorphicMapType_3887| Heap@@24) (select (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@24) o_11@@3 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3887_2042_2043#PolymorphicMapType_3887| Heap@@24) o_11@@3 f_10))
)))
(assert (forall ((p@@1 T@Field_3947_10392) (v_1@@0 T@FrameType) (q T@Field_3947_10392) (w@@0 T@FrameType) (r T@Field_3947_10392) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3947_3947 p@@1 v_1@@0 q w@@0) (InsidePredicate_3947_3947 q w@@0 r u)) (InsidePredicate_3947_3947 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3947_3947 p@@1 v_1@@0 q w@@0) (InsidePredicate_3947_3947 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |f_clamp#definedness|)
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
