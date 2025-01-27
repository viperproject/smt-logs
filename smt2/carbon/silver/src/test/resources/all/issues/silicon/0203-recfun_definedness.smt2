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
(declare-sort T@Field_3750_53 0)
(declare-sort T@Field_3763_3764 0)
(declare-sort T@Field_3750_9596 0)
(declare-sort T@Field_3750_9463 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3711 0)) (((PolymorphicMapType_3711 (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| (Array T@Ref T@Field_3750_53 Real)) (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| (Array T@Ref T@Field_3763_3764 Real)) (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| (Array T@Ref T@Field_3750_9463 Real)) (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| (Array T@Ref T@Field_3750_9596 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4239 0)) (((PolymorphicMapType_4239 (|PolymorphicMapType_4239_3750_53#PolymorphicMapType_4239| (Array T@Ref T@Field_3750_53 Bool)) (|PolymorphicMapType_4239_3750_3764#PolymorphicMapType_4239| (Array T@Ref T@Field_3763_3764 Bool)) (|PolymorphicMapType_4239_3750_9463#PolymorphicMapType_4239| (Array T@Ref T@Field_3750_9463 Bool)) (|PolymorphicMapType_4239_3750_10576#PolymorphicMapType_4239| (Array T@Ref T@Field_3750_9596 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3690 0)) (((PolymorphicMapType_3690 (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| (Array T@Ref T@Field_3750_53 Bool)) (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| (Array T@Ref T@Field_3763_3764 T@Ref)) (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| (Array T@Ref T@Field_3750_9596 T@PolymorphicMapType_4239)) (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| (Array T@Ref T@Field_3750_9463 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3690 T@PolymorphicMapType_3690) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3690 T@PolymorphicMapType_3690) Bool)
(declare-fun state (T@PolymorphicMapType_3690 T@PolymorphicMapType_3711) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3711) Bool)
(declare-sort T@DummyDomainType 0)
(declare-fun |count'| (T@PolymorphicMapType_3690 Int Int T@DummyDomainType) Int)
(declare-fun dummyFunction_1538 (Int) Bool)
(declare-fun |count#triggerStateless| (Int Int T@DummyDomainType) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_4239)
(declare-fun |recfun'| (T@PolymorphicMapType_3690 Int) Int)
(declare-fun |recfun#triggerStateless| (Int) Int)
(declare-fun recfun (T@PolymorphicMapType_3690 Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3690 T@PolymorphicMapType_3690 T@PolymorphicMapType_3711) Bool)
(declare-fun IsPredicateField_3750_9554 (T@Field_3750_9463) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3750 (T@Field_3750_9463) T@Field_3750_9596)
(declare-fun HasDirectPerm_3750_9527 (T@PolymorphicMapType_3711 T@Ref T@Field_3750_9463) Bool)
(declare-fun IsWandField_3750_11103 (T@Field_3750_9463) Bool)
(declare-fun WandMaskField_3750 (T@Field_3750_9463) T@Field_3750_9596)
(declare-fun dummyHeap () T@PolymorphicMapType_3690)
(declare-fun ZeroMask () T@PolymorphicMapType_3711)
(declare-fun $allocated () T@Field_3750_53)
(declare-fun InsidePredicate_3750_3750 (T@Field_3750_9463 T@FrameType T@Field_3750_9463 T@FrameType) Bool)
(declare-fun |recfun#trigger| (T@FrameType Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3750_14066 (T@Field_3750_9596) Bool)
(declare-fun IsWandField_3750_14082 (T@Field_3750_9596) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3750_3764 (T@Field_3763_3764) Bool)
(declare-fun IsWandField_3750_3764 (T@Field_3763_3764) Bool)
(declare-fun IsPredicateField_3750_53 (T@Field_3750_53) Bool)
(declare-fun IsWandField_3750_53 (T@Field_3750_53) Bool)
(declare-fun |count#frame| (T@FrameType Int Int T@DummyDomainType) Int)
(declare-fun |count#trigger| (T@FrameType Int Int T@DummyDomainType) Bool)
(declare-fun HasDirectPerm_3750_14437 (T@PolymorphicMapType_3711 T@Ref T@Field_3750_9596) Bool)
(declare-fun HasDirectPerm_3750_3764 (T@PolymorphicMapType_3711 T@Ref T@Field_3763_3764) Bool)
(declare-fun HasDirectPerm_3750_53 (T@PolymorphicMapType_3711 T@Ref T@Field_3750_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3711 T@PolymorphicMapType_3711 T@PolymorphicMapType_3711) Bool)
(declare-fun count_2 (T@PolymorphicMapType_3690 Int Int T@DummyDomainType) Int)
(declare-fun loc (T@DummyDomainType Int) Bool)
(declare-fun |recfun#frame| (T@FrameType Int) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_3690) (Heap1 T@PolymorphicMapType_3690) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3690) (Mask T@PolymorphicMapType_3711) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3690) (Heap1@@0 T@PolymorphicMapType_3690) (Heap2 T@PolymorphicMapType_3690) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3690) (lo Int) (hi Int) (a_2 T@DummyDomainType) ) (! (dummyFunction_1538 (|count#triggerStateless| lo hi a_2))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|count'| Heap@@0 lo hi a_2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3750_9596) ) (!  (not (select (|PolymorphicMapType_4239_3750_10576#PolymorphicMapType_4239| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4239_3750_10576#PolymorphicMapType_4239| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3750_9463) ) (!  (not (select (|PolymorphicMapType_4239_3750_9463#PolymorphicMapType_4239| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4239_3750_9463#PolymorphicMapType_4239| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3763_3764) ) (!  (not (select (|PolymorphicMapType_4239_3750_3764#PolymorphicMapType_4239| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4239_3750_3764#PolymorphicMapType_4239| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3750_53) ) (!  (not (select (|PolymorphicMapType_4239_3750_53#PolymorphicMapType_4239| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4239_3750_53#PolymorphicMapType_4239| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3690) (x Int) ) (! (dummyFunction_1538 (|recfun#triggerStateless| x))
 :qid |stdinbpl.272:15|
 :skolemid |28|
 :pattern ( (|recfun'| Heap@@1 x))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3690) (Mask@@0 T@PolymorphicMapType_3711) (x@@0 Int) ) (!  (=> (and (state Heap@@2 Mask@@0) (< AssumeFunctionsAbove 0)) (=> (> x@@0 0) (= (recfun Heap@@2 x@@0) (- 0 x@@0))))
 :qid |stdinbpl.278:15|
 :skolemid |29|
 :pattern ( (state Heap@@2 Mask@@0) (recfun Heap@@2 x@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3690) (x@@1 Int) ) (!  (and (= (recfun Heap@@3 x@@1) (|recfun'| Heap@@3 x@@1)) (dummyFunction_1538 (|recfun#triggerStateless| x@@1)))
 :qid |stdinbpl.268:15|
 :skolemid |27|
 :pattern ( (recfun Heap@@3 x@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3690) (ExhaleHeap T@PolymorphicMapType_3690) (Mask@@1 T@PolymorphicMapType_3711) (pm_f T@Field_3750_9463) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_3750_9527 Mask@@1 null pm_f) (IsPredicateField_3750_9554 pm_f)) (= (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@4) null (PredicateMaskField_3750 pm_f)) (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| ExhaleHeap) null (PredicateMaskField_3750 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_3750_9554 pm_f) (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| ExhaleHeap) null (PredicateMaskField_3750 pm_f)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3690) (ExhaleHeap@@0 T@PolymorphicMapType_3690) (Mask@@2 T@PolymorphicMapType_3711) (pm_f@@0 T@Field_3750_9463) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3750_9527 Mask@@2 null pm_f@@0) (IsWandField_3750_11103 pm_f@@0)) (= (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@5) null (WandMaskField_3750 pm_f@@0)) (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| ExhaleHeap@@0) null (WandMaskField_3750 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsWandField_3750_11103 pm_f@@0) (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| ExhaleHeap@@0) null (WandMaskField_3750 pm_f@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3690) (ExhaleHeap@@1 T@PolymorphicMapType_3690) (Mask@@3 T@PolymorphicMapType_3711) (pm_f@@1 T@Field_3750_9463) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_3750_9527 Mask@@3 null pm_f@@1) (IsPredicateField_3750_9554 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3750_53) ) (!  (=> (select (|PolymorphicMapType_4239_3750_53#PolymorphicMapType_4239| (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@6) null (PredicateMaskField_3750 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@6) o2 f_2) (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3763_3764) ) (!  (=> (select (|PolymorphicMapType_4239_3750_3764#PolymorphicMapType_4239| (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@6) null (PredicateMaskField_3750 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@6) o2@@0 f_2@@0) (select (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3750_9463) ) (!  (=> (select (|PolymorphicMapType_4239_3750_9463#PolymorphicMapType_4239| (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@6) null (PredicateMaskField_3750 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| Heap@@6) o2@@1 f_2@@1) (select (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3750_9596) ) (!  (=> (select (|PolymorphicMapType_4239_3750_10576#PolymorphicMapType_4239| (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@6) null (PredicateMaskField_3750 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@6) o2@@2 f_2@@2) (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsPredicateField_3750_9554 pm_f@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3690) (ExhaleHeap@@2 T@PolymorphicMapType_3690) (Mask@@4 T@PolymorphicMapType_3711) (pm_f@@2 T@Field_3750_9463) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3750_9527 Mask@@4 null pm_f@@2) (IsWandField_3750_11103 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3750_53) ) (!  (=> (select (|PolymorphicMapType_4239_3750_53#PolymorphicMapType_4239| (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@7) null (WandMaskField_3750 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@7) o2@@3 f_2@@3) (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3763_3764) ) (!  (=> (select (|PolymorphicMapType_4239_3750_3764#PolymorphicMapType_4239| (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@7) null (WandMaskField_3750 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@7) o2@@4 f_2@@4) (select (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3750_9463) ) (!  (=> (select (|PolymorphicMapType_4239_3750_9463#PolymorphicMapType_4239| (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@7) null (WandMaskField_3750 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| Heap@@7) o2@@5 f_2@@5) (select (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3750_9596) ) (!  (=> (select (|PolymorphicMapType_4239_3750_10576#PolymorphicMapType_4239| (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@7) null (WandMaskField_3750 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@7) o2@@6 f_2@@6) (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_3750_11103 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3690) (ExhaleHeap@@3 T@PolymorphicMapType_3690) (Mask@@5 T@PolymorphicMapType_3711) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@8) o_1 $allocated) (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3750_9463) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3750_3750 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3750_3750 p v_1 p w))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3690) (Mask@@6 T@PolymorphicMapType_3711) (x@@2 Int) ) (!  (=> (and (state Heap@@9 Mask@@6) (or (< AssumeFunctionsAbove 0) (|recfun#trigger| EmptyFrame x@@2))) (=> (> x@@2 0) (< (|recfun'| Heap@@9 x@@2) 0)))
 :qid |stdinbpl.291:15|
 :skolemid |31|
 :pattern ( (state Heap@@9 Mask@@6) (|recfun'| Heap@@9 x@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3690) (ExhaleHeap@@4 T@PolymorphicMapType_3690) (Mask@@7 T@PolymorphicMapType_3711) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@10 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3711) (o_2@@3 T@Ref) (f_4@@3 T@Field_3750_9596) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3750_14066 f_4@@3))) (not (IsWandField_3750_14082 f_4@@3))) (<= (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3711) (o_2@@4 T@Ref) (f_4@@4 T@Field_3750_9463) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3750_9554 f_4@@4))) (not (IsWandField_3750_11103 f_4@@4))) (<= (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3711) (o_2@@5 T@Ref) (f_4@@5 T@Field_3763_3764) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3750_3764 f_4@@5))) (not (IsWandField_3750_3764 f_4@@5))) (<= (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3711) (o_2@@6 T@Ref) (f_4@@6 T@Field_3750_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3750_53 f_4@@6))) (not (IsWandField_3750_53 f_4@@6))) (<= (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3690) (Mask@@12 T@PolymorphicMapType_3711) (lo@@0 Int) (hi@@0 Int) (a_2@@0 T@DummyDomainType) ) (!  (=> (state Heap@@11 Mask@@12) (= (|count'| Heap@@11 lo@@0 hi@@0 a_2@@0) (|count#frame| EmptyFrame lo@@0 hi@@0 a_2@@0)))
 :qid |stdinbpl.208:15|
 :skolemid |24|
 :pattern ( (state Heap@@11 Mask@@12) (|count'| Heap@@11 lo@@0 hi@@0 a_2@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3690) (Mask@@13 T@PolymorphicMapType_3711) (lo@@1 Int) (hi@@1 Int) (a_2@@1 T@DummyDomainType) ) (!  (=> (and (state Heap@@12 Mask@@13) (or (< AssumeFunctionsAbove 1) (|count#trigger| EmptyFrame lo@@1 hi@@1 a_2@@1))) (=> (<= hi@@1 lo@@1) (= (|count'| Heap@@12 lo@@1 hi@@1 a_2@@1) 0)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@12 Mask@@13) (|count'| Heap@@12 lo@@1 hi@@1 a_2@@1))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3711) (o_2@@7 T@Ref) (f_4@@7 T@Field_3750_9596) ) (! (= (HasDirectPerm_3750_14437 Mask@@14 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| Mask@@14) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3750_14437 Mask@@14 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3711) (o_2@@8 T@Ref) (f_4@@8 T@Field_3750_9463) ) (! (= (HasDirectPerm_3750_9527 Mask@@15 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| Mask@@15) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3750_9527 Mask@@15 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3711) (o_2@@9 T@Ref) (f_4@@9 T@Field_3763_3764) ) (! (= (HasDirectPerm_3750_3764 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3750_3764 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3711) (o_2@@10 T@Ref) (f_4@@10 T@Field_3750_53) ) (! (= (HasDirectPerm_3750_53 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3750_53 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3690) (ExhaleHeap@@5 T@PolymorphicMapType_3690) (Mask@@18 T@PolymorphicMapType_3711) (o_1@@0 T@Ref) (f_2@@7 T@Field_3750_9596) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_3750_14437 Mask@@18 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@13) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3690) (ExhaleHeap@@6 T@PolymorphicMapType_3690) (Mask@@19 T@PolymorphicMapType_3711) (o_1@@1 T@Ref) (f_2@@8 T@Field_3750_9463) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_3750_9527 Mask@@19 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| Heap@@14) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3690) (ExhaleHeap@@7 T@PolymorphicMapType_3690) (Mask@@20 T@PolymorphicMapType_3711) (o_1@@2 T@Ref) (f_2@@9 T@Field_3763_3764) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_3750_3764 Mask@@20 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@15) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3690) (ExhaleHeap@@8 T@PolymorphicMapType_3690) (Mask@@21 T@PolymorphicMapType_3711) (o_1@@3 T@Ref) (f_2@@10 T@Field_3750_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_3750_53 Mask@@21 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@16) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3750_9596) ) (! (= (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3750_9463) ) (! (= (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3763_3764) ) (! (= (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3750_53) ) (! (= (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3711) (SummandMask1 T@PolymorphicMapType_3711) (SummandMask2 T@PolymorphicMapType_3711) (o_2@@15 T@Ref) (f_4@@15 T@Field_3750_9596) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3711_3750_13157#PolymorphicMapType_3711| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3711) (SummandMask1@@0 T@PolymorphicMapType_3711) (SummandMask2@@0 T@PolymorphicMapType_3711) (o_2@@16 T@Ref) (f_4@@16 T@Field_3750_9463) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3711_3750_9463#PolymorphicMapType_3711| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3711) (SummandMask1@@1 T@PolymorphicMapType_3711) (SummandMask2@@1 T@PolymorphicMapType_3711) (o_2@@17 T@Ref) (f_4@@17 T@Field_3763_3764) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3711_3750_3764#PolymorphicMapType_3711| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3711) (SummandMask1@@2 T@PolymorphicMapType_3711) (SummandMask2@@2 T@PolymorphicMapType_3711) (o_2@@18 T@Ref) (f_4@@18 T@Field_3750_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3711_3750_53#PolymorphicMapType_3711| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3690) (lo@@2 Int) (hi@@2 Int) (a_2@@2 T@DummyDomainType) ) (!  (and (= (count_2 Heap@@17 lo@@2 hi@@2 a_2@@2) (|count'| Heap@@17 lo@@2 hi@@2 a_2@@2)) (dummyFunction_1538 (|count#triggerStateless| lo@@2 hi@@2 a_2@@2)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (count_2 Heap@@17 lo@@2 hi@@2 a_2@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3690) (Mask@@22 T@PolymorphicMapType_3711) (lo@@3 Int) (hi@@3 Int) (a_2@@3 T@DummyDomainType) ) (!  (=> (and (state Heap@@18 Mask@@22) (or (< AssumeFunctionsAbove 1) (|count#trigger| EmptyFrame lo@@3 hi@@3 a_2@@3))) (=> (<= lo@@3 hi@@3) (= (|count'| Heap@@18 lo@@3 (+ hi@@3 1) a_2@@3) (+ (|count'| Heap@@18 lo@@3 hi@@3 a_2@@3) (ite (loc a_2@@3 hi@@3) 0 1)))))
 :qid |stdinbpl.218:15|
 :skolemid |26|
 :pattern ( (state Heap@@18 Mask@@22) (|count'| Heap@@18 lo@@3 hi@@3 a_2@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3690) (Mask@@23 T@PolymorphicMapType_3711) (x@@3 Int) ) (!  (=> (state Heap@@19 Mask@@23) (= (|recfun'| Heap@@19 x@@3) (|recfun#frame| EmptyFrame x@@3)))
 :qid |stdinbpl.285:15|
 :skolemid |30|
 :pattern ( (state Heap@@19 Mask@@23) (|recfun'| Heap@@19 x@@3))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3690) (o T@Ref) (f_3 T@Field_3750_9463) (v T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_3690 (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@20) (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@20) (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@20) (store (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| Heap@@20) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3690 (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@20) (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@20) (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@20) (store (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| Heap@@20) o f_3 v)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3690) (o@@0 T@Ref) (f_3@@0 T@Field_3750_9596) (v@@0 T@PolymorphicMapType_4239) ) (! (succHeap Heap@@21 (PolymorphicMapType_3690 (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@21) (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@21) (store (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@21) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3690 (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@21) (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@21) (store (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@21) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3690) (o@@1 T@Ref) (f_3@@1 T@Field_3763_3764) (v@@1 T@Ref) ) (! (succHeap Heap@@22 (PolymorphicMapType_3690 (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@22) (store (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@22) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@22) (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3690 (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@22) (store (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@22) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@22) (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3690) (o@@2 T@Ref) (f_3@@2 T@Field_3750_53) (v@@2 Bool) ) (! (succHeap Heap@@23 (PolymorphicMapType_3690 (store (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@23) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@23) (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@23) (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3690 (store (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@23) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@23) (|PolymorphicMapType_3690_3750_9640#PolymorphicMapType_3690| Heap@@23) (|PolymorphicMapType_3690_3750_9463#PolymorphicMapType_3690| Heap@@23)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3763_3764) (Heap@@24 T@PolymorphicMapType_3690) ) (!  (=> (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@24) o@@3 $allocated) (select (|PolymorphicMapType_3690_2007_53#PolymorphicMapType_3690| Heap@@24) (select (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@24) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3690_2010_2011#PolymorphicMapType_3690| Heap@@24) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3750_9463) (v_1@@0 T@FrameType) (q T@Field_3750_9463) (w@@0 T@FrameType) (r T@Field_3750_9463) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3750_3750 p@@1 v_1@@0 q w@@0) (InsidePredicate_3750_3750 q w@@0 r u)) (InsidePredicate_3750_3750 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3750_3750 p@@1 v_1@@0 q w@@0) (InsidePredicate_3750_3750 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@4 () Int)
(declare-fun Heap@@25 () T@PolymorphicMapType_3690)
(declare-fun Result@0 () Int)
(set-info :boogie-vc-id |recfun#definedness|)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon4_Else_correct  (=> (and (|recfun#trigger| EmptyFrame x@@4) (= (ControlFlow 0 4) (- 0 3))) (< (recfun Heap@@25 x@@4) 0))))
(let ((anon4_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (> x@@4 0))))
(let ((anon0_correct  (=> (and (state Heap@@25 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (= AssumeFunctionsAbove 0) (> x@@4 0)) (and (state Heap@@25 ZeroMask) (= Result@0 (- 0 x@@4)))) (and (=> (= (ControlFlow 0 5) 2) anon4_Then_correct) (=> (= (ControlFlow 0 5) 4) anon4_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
