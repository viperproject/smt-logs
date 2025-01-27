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
(declare-sort T@Field_4774_53 0)
(declare-sort T@Field_4787_4788 0)
(declare-sort T@Field_2482_14004 0)
(declare-sort T@Field_2482_13871 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4735 0)) (((PolymorphicMapType_4735 (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| (Array T@Ref T@Field_4787_4788 Real)) (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| (Array T@Ref T@Field_4774_53 Real)) (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| (Array T@Ref T@Field_2482_13871 Real)) (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| (Array T@Ref T@Field_2482_14004 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5263 0)) (((PolymorphicMapType_5263 (|PolymorphicMapType_5263_4774_53#PolymorphicMapType_5263| (Array T@Ref T@Field_4774_53 Bool)) (|PolymorphicMapType_5263_4774_4788#PolymorphicMapType_5263| (Array T@Ref T@Field_4787_4788 Bool)) (|PolymorphicMapType_5263_4774_13871#PolymorphicMapType_5263| (Array T@Ref T@Field_2482_13871 Bool)) (|PolymorphicMapType_5263_4774_14984#PolymorphicMapType_5263| (Array T@Ref T@Field_2482_14004 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4714 0)) (((PolymorphicMapType_4714 (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| (Array T@Ref T@Field_4774_53 Bool)) (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| (Array T@Ref T@Field_4787_4788 T@Ref)) (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| (Array T@Ref T@Field_2482_14004 T@PolymorphicMapType_5263)) (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| (Array T@Ref T@Field_2482_13871 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4774_53)
(declare-fun f_7 () T@Field_4787_4788)
(declare-fun succHeap (T@PolymorphicMapType_4714 T@PolymorphicMapType_4714) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4714 T@PolymorphicMapType_4714) Bool)
(declare-fun state (T@PolymorphicMapType_4714 T@PolymorphicMapType_4735) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4735) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5263)
(declare-fun |fun'| (T@PolymorphicMapType_4714 T@Ref) Bool)
(declare-fun dummyFunction_1380 (Bool) Bool)
(declare-fun |fun#triggerStateless| (T@Ref) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4714 T@PolymorphicMapType_4714 T@PolymorphicMapType_4735) Bool)
(declare-fun IsPredicateField_2482_13962 (T@Field_2482_13871) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2482 (T@Field_2482_13871) T@Field_2482_14004)
(declare-fun HasDirectPerm_2482_13935 (T@PolymorphicMapType_4735 T@Ref T@Field_2482_13871) Bool)
(declare-fun IsWandField_2482_15511 (T@Field_2482_13871) Bool)
(declare-fun WandMaskField_2482 (T@Field_2482_13871) T@Field_2482_14004)
(declare-fun dummyHeap () T@PolymorphicMapType_4714)
(declare-fun ZeroMask () T@PolymorphicMapType_4735)
(declare-fun InsidePredicate_4774_4774 (T@Field_2482_13871 T@FrameType T@Field_2482_13871 T@FrameType) Bool)
(declare-fun IsPredicateField_2482_2483 (T@Field_4787_4788) Bool)
(declare-fun IsWandField_2482_2483 (T@Field_4787_4788) Bool)
(declare-fun fun (T@PolymorphicMapType_4714 T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2482_18445 (T@Field_2482_14004) Bool)
(declare-fun IsWandField_2482_18461 (T@Field_2482_14004) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2482_53 (T@Field_4774_53) Bool)
(declare-fun IsWandField_2482_53 (T@Field_4774_53) Bool)
(declare-fun HasDirectPerm_2482_18816 (T@PolymorphicMapType_4735 T@Ref T@Field_2482_14004) Bool)
(declare-fun HasDirectPerm_2482_53 (T@PolymorphicMapType_4735 T@Ref T@Field_4774_53) Bool)
(declare-fun HasDirectPerm_2482_2483 (T@PolymorphicMapType_4735 T@Ref T@Field_4787_4788) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4735 T@PolymorphicMapType_4735 T@PolymorphicMapType_4735) Bool)
(declare-fun |fun#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_2483 (T@Ref) T@FrameType)
(assert (forall ((Heap0 T@PolymorphicMapType_4714) (Heap1 T@PolymorphicMapType_4714) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4714) (Mask T@PolymorphicMapType_4735) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4714) (Heap1@@0 T@PolymorphicMapType_4714) (Heap2 T@PolymorphicMapType_4714) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2482_14004) ) (!  (not (select (|PolymorphicMapType_5263_4774_14984#PolymorphicMapType_5263| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5263_4774_14984#PolymorphicMapType_5263| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2482_13871) ) (!  (not (select (|PolymorphicMapType_5263_4774_13871#PolymorphicMapType_5263| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5263_4774_13871#PolymorphicMapType_5263| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4787_4788) ) (!  (not (select (|PolymorphicMapType_5263_4774_4788#PolymorphicMapType_5263| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5263_4774_4788#PolymorphicMapType_5263| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4774_53) ) (!  (not (select (|PolymorphicMapType_5263_4774_53#PolymorphicMapType_5263| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5263_4774_53#PolymorphicMapType_5263| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4714) (this T@Ref) ) (! (dummyFunction_1380 (|fun#triggerStateless| this))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|fun'| Heap@@0 this))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4714) (ExhaleHeap T@PolymorphicMapType_4714) (Mask@@0 T@PolymorphicMapType_4735) (pm_f T@Field_2482_13871) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2482_13935 Mask@@0 null pm_f) (IsPredicateField_2482_13962 pm_f)) (= (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@1) null (PredicateMaskField_2482 pm_f)) (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| ExhaleHeap) null (PredicateMaskField_2482 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_2482_13962 pm_f) (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| ExhaleHeap) null (PredicateMaskField_2482 pm_f)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4714) (ExhaleHeap@@0 T@PolymorphicMapType_4714) (Mask@@1 T@PolymorphicMapType_4735) (pm_f@@0 T@Field_2482_13871) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2482_13935 Mask@@1 null pm_f@@0) (IsWandField_2482_15511 pm_f@@0)) (= (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@2) null (WandMaskField_2482 pm_f@@0)) (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| ExhaleHeap@@0) null (WandMaskField_2482 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_2482_15511 pm_f@@0) (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| ExhaleHeap@@0) null (WandMaskField_2482 pm_f@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4714) (ExhaleHeap@@1 T@PolymorphicMapType_4714) (Mask@@2 T@PolymorphicMapType_4735) (pm_f@@1 T@Field_2482_13871) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_2482_13935 Mask@@2 null pm_f@@1) (IsPredicateField_2482_13962 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_4774_53) ) (!  (=> (select (|PolymorphicMapType_5263_4774_53#PolymorphicMapType_5263| (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@3) null (PredicateMaskField_2482 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@3) o2 f_2) (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4787_4788) ) (!  (=> (select (|PolymorphicMapType_5263_4774_4788#PolymorphicMapType_5263| (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@3) null (PredicateMaskField_2482 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@3) o2@@0 f_2@@0) (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_2482_13871) ) (!  (=> (select (|PolymorphicMapType_5263_4774_13871#PolymorphicMapType_5263| (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@3) null (PredicateMaskField_2482 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| Heap@@3) o2@@1 f_2@@1) (select (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_2482_14004) ) (!  (=> (select (|PolymorphicMapType_5263_4774_14984#PolymorphicMapType_5263| (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@3) null (PredicateMaskField_2482 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@3) o2@@2 f_2@@2) (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_2482_13962 pm_f@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4714) (ExhaleHeap@@2 T@PolymorphicMapType_4714) (Mask@@3 T@PolymorphicMapType_4735) (pm_f@@2 T@Field_2482_13871) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2482_13935 Mask@@3 null pm_f@@2) (IsWandField_2482_15511 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_4774_53) ) (!  (=> (select (|PolymorphicMapType_5263_4774_53#PolymorphicMapType_5263| (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@4) null (WandMaskField_2482 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_4787_4788) ) (!  (=> (select (|PolymorphicMapType_5263_4774_4788#PolymorphicMapType_5263| (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@4) null (WandMaskField_2482 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@4) o2@@4 f_2@@4) (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_2482_13871) ) (!  (=> (select (|PolymorphicMapType_5263_4774_13871#PolymorphicMapType_5263| (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@4) null (WandMaskField_2482 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| Heap@@4) o2@@5 f_2@@5) (select (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_2482_14004) ) (!  (=> (select (|PolymorphicMapType_5263_4774_14984#PolymorphicMapType_5263| (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@4) null (WandMaskField_2482 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@4) o2@@6 f_2@@6) (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_2482_15511 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4714) (ExhaleHeap@@3 T@PolymorphicMapType_4714) (Mask@@4 T@PolymorphicMapType_4735) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@5) o_1 $allocated) (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_2482_13871) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4774_4774 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4774_4774 p v_1 p w))
)))
(assert  (not (IsPredicateField_2482_2483 f_7)))
(assert  (not (IsWandField_2482_2483 f_7)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4714) (ExhaleHeap@@4 T@PolymorphicMapType_4714) (Mask@@5 T@PolymorphicMapType_4735) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@6 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4714) (Mask@@6 T@PolymorphicMapType_4735) (this@@0 T@Ref) ) (!  (=> (and (state Heap@@7 Mask@@6) (< AssumeFunctionsAbove 0)) (=> (not (= (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@7) this@@0 f_7) null)) (fun Heap@@7 this@@0)))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap@@7 Mask@@6) (fun Heap@@7 this@@0))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4735) (o_2@@3 T@Ref) (f_4@@3 T@Field_2482_14004) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2482_18445 f_4@@3))) (not (IsWandField_2482_18461 f_4@@3))) (<= (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4735) (o_2@@4 T@Ref) (f_4@@4 T@Field_2482_13871) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2482_13962 f_4@@4))) (not (IsWandField_2482_15511 f_4@@4))) (<= (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4735) (o_2@@5 T@Ref) (f_4@@5 T@Field_4774_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2482_53 f_4@@5))) (not (IsWandField_2482_53 f_4@@5))) (<= (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4735) (o_2@@6 T@Ref) (f_4@@6 T@Field_4787_4788) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2482_2483 f_4@@6))) (not (IsWandField_2482_2483 f_4@@6))) (<= (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4735) (o_2@@7 T@Ref) (f_4@@7 T@Field_2482_14004) ) (! (= (HasDirectPerm_2482_18816 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2482_18816 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4735) (o_2@@8 T@Ref) (f_4@@8 T@Field_2482_13871) ) (! (= (HasDirectPerm_2482_13935 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2482_13935 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4735) (o_2@@9 T@Ref) (f_4@@9 T@Field_4774_53) ) (! (= (HasDirectPerm_2482_53 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2482_53 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4735) (o_2@@10 T@Ref) (f_4@@10 T@Field_4787_4788) ) (! (= (HasDirectPerm_2482_2483 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2482_2483 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4714) (ExhaleHeap@@5 T@PolymorphicMapType_4714) (Mask@@15 T@PolymorphicMapType_4735) (o_1@@0 T@Ref) (f_2@@7 T@Field_2482_14004) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_2482_18816 Mask@@15 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@8) o_1@@0 f_2@@7) (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4714) (ExhaleHeap@@6 T@PolymorphicMapType_4714) (Mask@@16 T@PolymorphicMapType_4735) (o_1@@1 T@Ref) (f_2@@8 T@Field_2482_13871) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_2482_13935 Mask@@16 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| Heap@@9) o_1@@1 f_2@@8) (select (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4714) (ExhaleHeap@@7 T@PolymorphicMapType_4714) (Mask@@17 T@PolymorphicMapType_4735) (o_1@@2 T@Ref) (f_2@@9 T@Field_4774_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_2482_53 Mask@@17 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@10) o_1@@2 f_2@@9) (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4714) (ExhaleHeap@@8 T@PolymorphicMapType_4714) (Mask@@18 T@PolymorphicMapType_4735) (o_1@@3 T@Ref) (f_2@@10 T@Field_4787_4788) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_2482_2483 Mask@@18 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@11) o_1@@3 f_2@@10) (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_2482_14004) ) (! (= (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_2482_13871) ) (! (= (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_4774_53) ) (! (= (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4787_4788) ) (! (= (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4735) (SummandMask1 T@PolymorphicMapType_4735) (SummandMask2 T@PolymorphicMapType_4735) (o_2@@15 T@Ref) (f_4@@15 T@Field_2482_14004) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4735) (SummandMask1@@0 T@PolymorphicMapType_4735) (SummandMask2@@0 T@PolymorphicMapType_4735) (o_2@@16 T@Ref) (f_4@@16 T@Field_2482_13871) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4735) (SummandMask1@@1 T@PolymorphicMapType_4735) (SummandMask2@@1 T@PolymorphicMapType_4735) (o_2@@17 T@Ref) (f_4@@17 T@Field_4774_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4735) (SummandMask1@@2 T@PolymorphicMapType_4735) (SummandMask2@@2 T@PolymorphicMapType_4735) (o_2@@18 T@Ref) (f_4@@18 T@Field_4787_4788) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4714) (Mask@@19 T@PolymorphicMapType_4735) (this@@1 T@Ref) ) (!  (=> (state Heap@@12 Mask@@19) (= (|fun'| Heap@@12 this@@1) (|fun#frame| (FrameFragment_2483 (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@12) this@@1 f_7)) this@@1)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@12 Mask@@19) (|fun'| Heap@@12 this@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4714) (this@@2 T@Ref) ) (!  (and (= (fun Heap@@13 this@@2) (|fun'| Heap@@13 this@@2)) (dummyFunction_1380 (|fun#triggerStateless| this@@2)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (fun Heap@@13 this@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4714) (o T@Ref) (f_3 T@Field_2482_13871) (v T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_4714 (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@14) (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@14) (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@14) (store (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| Heap@@14) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4714 (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@14) (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@14) (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@14) (store (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| Heap@@14) o f_3 v)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4714) (o@@0 T@Ref) (f_3@@0 T@Field_2482_14004) (v@@0 T@PolymorphicMapType_5263) ) (! (succHeap Heap@@15 (PolymorphicMapType_4714 (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@15) (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@15) (store (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@15) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4714 (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@15) (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@15) (store (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@15) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4714) (o@@1 T@Ref) (f_3@@1 T@Field_4787_4788) (v@@1 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_4714 (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@16) (store (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@16) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@16) (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4714 (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@16) (store (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@16) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@16) (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4714) (o@@2 T@Ref) (f_3@@2 T@Field_4774_53) (v@@2 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_4714 (store (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@17) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@17) (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@17) (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4714 (store (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@17) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@17) (|PolymorphicMapType_4714_2482_14048#PolymorphicMapType_4714| Heap@@17) (|PolymorphicMapType_4714_4774_13871#PolymorphicMapType_4714| Heap@@17)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_4787_4788) (Heap@@18 T@PolymorphicMapType_4714) ) (!  (=> (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@18) o@@3 $allocated) (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@18) (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@18) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4714_2357_2358#PolymorphicMapType_4714| Heap@@18) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_2482_13871) (v_1@@0 T@FrameType) (q T@Field_2482_13871) (w@@0 T@FrameType) (r T@Field_2482_13871) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4774_4774 p@@1 v_1@@0 q w@@0) (InsidePredicate_4774_4774 q w@@0 r u)) (InsidePredicate_4774_4774 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4774_4774 p@@1 v_1@@0 q w@@0) (InsidePredicate_4774_4774 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_4714)
(declare-fun this@@3 () T@Ref)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_4735)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_4714_2354_53#PolymorphicMapType_4714| Heap@@19) this@@3 $allocated)) (and (= AssumeFunctionsAbove 0) (= perm@0 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= this@@3 null))) (= Mask@0 (PolymorphicMapType_4735 (store (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| ZeroMask) this@@3 f_7 (+ (select (|PolymorphicMapType_4735_2482_2483#PolymorphicMapType_4735| ZeroMask) this@@3 f_7) perm@0)) (|PolymorphicMapType_4735_2482_53#PolymorphicMapType_4735| ZeroMask) (|PolymorphicMapType_4735_2482_13871#PolymorphicMapType_4735| ZeroMask) (|PolymorphicMapType_4735_2482_17550#PolymorphicMapType_4735| ZeroMask)))) (and (state Heap@@19 Mask@0) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_2482_2483 Mask@0 this@@3 f_7))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
