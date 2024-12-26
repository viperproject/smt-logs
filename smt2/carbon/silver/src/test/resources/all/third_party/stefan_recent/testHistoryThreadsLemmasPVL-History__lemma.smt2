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
(declare-sort T@Field_3856_53 0)
(declare-sort T@Field_3869_3870 0)
(declare-sort T@Field_3856_10577 0)
(declare-sort T@Field_3856_10444 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3817 0)) (((PolymorphicMapType_3817 (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| (Array T@Ref T@Field_3856_53 Real)) (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| (Array T@Ref T@Field_3869_3870 Real)) (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| (Array T@Ref T@Field_3856_10444 Real)) (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| (Array T@Ref T@Field_3856_10577 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4345 0)) (((PolymorphicMapType_4345 (|PolymorphicMapType_4345_3856_53#PolymorphicMapType_4345| (Array T@Ref T@Field_3856_53 Bool)) (|PolymorphicMapType_4345_3856_3870#PolymorphicMapType_4345| (Array T@Ref T@Field_3869_3870 Bool)) (|PolymorphicMapType_4345_3856_10444#PolymorphicMapType_4345| (Array T@Ref T@Field_3856_10444 Bool)) (|PolymorphicMapType_4345_3856_11557#PolymorphicMapType_4345| (Array T@Ref T@Field_3856_10577 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3796 0)) (((PolymorphicMapType_3796 (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| (Array T@Ref T@Field_3856_53 Bool)) (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| (Array T@Ref T@Field_3869_3870 T@Ref)) (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| (Array T@Ref T@Field_3856_10577 T@PolymorphicMapType_4345)) (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| (Array T@Ref T@Field_3856_10444 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3796 T@PolymorphicMapType_3796) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3796 T@PolymorphicMapType_3796) Bool)
(declare-fun state (T@PolymorphicMapType_3796 T@PolymorphicMapType_3817) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3817) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4345)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3796 T@PolymorphicMapType_3796 T@PolymorphicMapType_3817) Bool)
(declare-fun IsPredicateField_3856_10535 (T@Field_3856_10444) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3856 (T@Field_3856_10444) T@Field_3856_10577)
(declare-fun HasDirectPerm_3856_10508 (T@PolymorphicMapType_3817 T@Ref T@Field_3856_10444) Bool)
(declare-fun IsWandField_3856_12084 (T@Field_3856_10444) Bool)
(declare-fun WandMaskField_3856 (T@Field_3856_10444) T@Field_3856_10577)
(declare-fun dummyHeap () T@PolymorphicMapType_3796)
(declare-fun ZeroMask () T@PolymorphicMapType_3817)
(declare-fun $allocated () T@Field_3856_53)
(declare-fun InsidePredicate_3856_3856 (T@Field_3856_10444 T@FrameType T@Field_3856_10444 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3856_15047 (T@Field_3856_10577) Bool)
(declare-fun IsWandField_3856_15063 (T@Field_3856_10577) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3856_3870 (T@Field_3869_3870) Bool)
(declare-fun IsWandField_3856_3870 (T@Field_3869_3870) Bool)
(declare-fun IsPredicateField_3856_53 (T@Field_3856_53) Bool)
(declare-fun IsWandField_3856_53 (T@Field_3856_53) Bool)
(declare-fun HasDirectPerm_3856_15418 (T@PolymorphicMapType_3817 T@Ref T@Field_3856_10577) Bool)
(declare-fun HasDirectPerm_3856_3870 (T@PolymorphicMapType_3817 T@Ref T@Field_3869_3870) Bool)
(declare-fun HasDirectPerm_3856_53 (T@PolymorphicMapType_3817 T@Ref T@Field_3856_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-sort T@ProcessDomainType 0)
(declare-fun p_seq (T@ProcessDomainType T@ProcessDomainType) T@ProcessDomainType)
(declare-fun p_single (Int) T@ProcessDomainType)
(declare-fun p_incr () T@ProcessDomainType)
(declare-fun p_empty () T@ProcessDomainType)
(declare-fun sumMask (T@PolymorphicMapType_3817 T@PolymorphicMapType_3817 T@PolymorphicMapType_3817) Bool)
(declare-fun p_merge (T@ProcessDomainType T@ProcessDomainType) T@ProcessDomainType)
(declare-fun p_dual (Int Int) T@ProcessDomainType)
(assert (forall ((Heap0 T@PolymorphicMapType_3796) (Heap1 T@PolymorphicMapType_3796) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3796) (Mask T@PolymorphicMapType_3817) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3796) (Heap1@@0 T@PolymorphicMapType_3796) (Heap2 T@PolymorphicMapType_3796) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3856_10577) ) (!  (not (select (|PolymorphicMapType_4345_3856_11557#PolymorphicMapType_4345| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4345_3856_11557#PolymorphicMapType_4345| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3856_10444) ) (!  (not (select (|PolymorphicMapType_4345_3856_10444#PolymorphicMapType_4345| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4345_3856_10444#PolymorphicMapType_4345| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3869_3870) ) (!  (not (select (|PolymorphicMapType_4345_3856_3870#PolymorphicMapType_4345| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4345_3856_3870#PolymorphicMapType_4345| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3856_53) ) (!  (not (select (|PolymorphicMapType_4345_3856_53#PolymorphicMapType_4345| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4345_3856_53#PolymorphicMapType_4345| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3796) (ExhaleHeap T@PolymorphicMapType_3796) (Mask@@0 T@PolymorphicMapType_3817) (pm_f T@Field_3856_10444) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3856_10508 Mask@@0 null pm_f) (IsPredicateField_3856_10535 pm_f)) (= (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@0) null (PredicateMaskField_3856 pm_f)) (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| ExhaleHeap) null (PredicateMaskField_3856 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3856_10535 pm_f) (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| ExhaleHeap) null (PredicateMaskField_3856 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3796) (ExhaleHeap@@0 T@PolymorphicMapType_3796) (Mask@@1 T@PolymorphicMapType_3817) (pm_f@@0 T@Field_3856_10444) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3856_10508 Mask@@1 null pm_f@@0) (IsWandField_3856_12084 pm_f@@0)) (= (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@1) null (WandMaskField_3856 pm_f@@0)) (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| ExhaleHeap@@0) null (WandMaskField_3856 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3856_12084 pm_f@@0) (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| ExhaleHeap@@0) null (WandMaskField_3856 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3796) (ExhaleHeap@@1 T@PolymorphicMapType_3796) (Mask@@2 T@PolymorphicMapType_3817) (pm_f@@1 T@Field_3856_10444) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3856_10508 Mask@@2 null pm_f@@1) (IsPredicateField_3856_10535 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3856_53) ) (!  (=> (select (|PolymorphicMapType_4345_3856_53#PolymorphicMapType_4345| (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@2) null (PredicateMaskField_3856 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@2) o2 f_2) (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3869_3870) ) (!  (=> (select (|PolymorphicMapType_4345_3856_3870#PolymorphicMapType_4345| (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@2) null (PredicateMaskField_3856 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3856_10444) ) (!  (=> (select (|PolymorphicMapType_4345_3856_10444#PolymorphicMapType_4345| (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@2) null (PredicateMaskField_3856 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3856_10577) ) (!  (=> (select (|PolymorphicMapType_4345_3856_11557#PolymorphicMapType_4345| (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@2) null (PredicateMaskField_3856 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3856_10535 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3796) (ExhaleHeap@@2 T@PolymorphicMapType_3796) (Mask@@3 T@PolymorphicMapType_3817) (pm_f@@2 T@Field_3856_10444) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3856_10508 Mask@@3 null pm_f@@2) (IsWandField_3856_12084 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3856_53) ) (!  (=> (select (|PolymorphicMapType_4345_3856_53#PolymorphicMapType_4345| (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@3) null (WandMaskField_3856 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3869_3870) ) (!  (=> (select (|PolymorphicMapType_4345_3856_3870#PolymorphicMapType_4345| (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@3) null (WandMaskField_3856 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3856_10444) ) (!  (=> (select (|PolymorphicMapType_4345_3856_10444#PolymorphicMapType_4345| (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@3) null (WandMaskField_3856 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3856_10577) ) (!  (=> (select (|PolymorphicMapType_4345_3856_11557#PolymorphicMapType_4345| (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@3) null (WandMaskField_3856 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3856_12084 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3796) (ExhaleHeap@@3 T@PolymorphicMapType_3796) (Mask@@4 T@PolymorphicMapType_3817) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3856_10444) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3856_3856 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3856_3856 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3796) (ExhaleHeap@@4 T@PolymorphicMapType_3796) (Mask@@5 T@PolymorphicMapType_3817) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3817) (o_2@@3 T@Ref) (f_4@@3 T@Field_3856_10577) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3856_15047 f_4@@3))) (not (IsWandField_3856_15063 f_4@@3))) (<= (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3817) (o_2@@4 T@Ref) (f_4@@4 T@Field_3856_10444) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3856_10535 f_4@@4))) (not (IsWandField_3856_12084 f_4@@4))) (<= (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3817) (o_2@@5 T@Ref) (f_4@@5 T@Field_3869_3870) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3856_3870 f_4@@5))) (not (IsWandField_3856_3870 f_4@@5))) (<= (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3817) (o_2@@6 T@Ref) (f_4@@6 T@Field_3856_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3856_53 f_4@@6))) (not (IsWandField_3856_53 f_4@@6))) (<= (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3817) (o_2@@7 T@Ref) (f_4@@7 T@Field_3856_10577) ) (! (= (HasDirectPerm_3856_15418 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3856_15418 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3817) (o_2@@8 T@Ref) (f_4@@8 T@Field_3856_10444) ) (! (= (HasDirectPerm_3856_10508 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3856_10508 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3817) (o_2@@9 T@Ref) (f_4@@9 T@Field_3869_3870) ) (! (= (HasDirectPerm_3856_3870 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3856_3870 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3817) (o_2@@10 T@Ref) (f_4@@10 T@Field_3856_53) ) (! (= (HasDirectPerm_3856_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3856_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3796) (ExhaleHeap@@5 T@PolymorphicMapType_3796) (Mask@@14 T@PolymorphicMapType_3817) (o_1@@0 T@Ref) (f_2@@7 T@Field_3856_10577) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_3856_15418 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3796) (ExhaleHeap@@6 T@PolymorphicMapType_3796) (Mask@@15 T@PolymorphicMapType_3817) (o_1@@1 T@Ref) (f_2@@8 T@Field_3856_10444) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_3856_10508 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3796) (ExhaleHeap@@7 T@PolymorphicMapType_3796) (Mask@@16 T@PolymorphicMapType_3817) (o_1@@2 T@Ref) (f_2@@9 T@Field_3869_3870) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_3856_3870 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3796) (ExhaleHeap@@8 T@PolymorphicMapType_3796) (Mask@@17 T@PolymorphicMapType_3817) (o_1@@3 T@Ref) (f_2@@10 T@Field_3856_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_3856_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((p1_2 T@ProcessDomainType) ) (! (forall ((p2_1 T@ProcessDomainType) ) (! (forall ((p3_1 T@ProcessDomainType) ) (! (= (p_seq (p_seq p1_2 p2_1) p3_1) (p_seq p1_2 (p_seq p2_1 p3_1)))
 :qid |stdinbpl.224:13|
 :skolemid |25|
 :pattern ( (p_seq (p_seq p1_2 p2_1) p3_1))
 :pattern ( (p_seq p1_2 (p_seq p2_1 p3_1)))
))
 :qid |stdinbpl.222:11|
 :skolemid |26|
 :pattern ( (p_seq p1_2 p2_1))
))
 :qid |stdinbpl.220:15|
 :skolemid |27|
)))
(assert (forall ((n Int) ) (! (= (ite (> n 0) (p_seq p_incr (p_single (- n 1))) p_empty) (p_single n))
 :qid |stdinbpl.232:15|
 :skolemid |28|
 :pattern ( (p_single n))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3856_10577) ) (! (= (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3856_10444) ) (! (= (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3869_3870) ) (! (= (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3856_53) ) (! (= (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3817) (SummandMask1 T@PolymorphicMapType_3817) (SummandMask2 T@PolymorphicMapType_3817) (o_2@@15 T@Ref) (f_4@@15 T@Field_3856_10577) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3817_3856_14138#PolymorphicMapType_3817| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3817) (SummandMask1@@0 T@PolymorphicMapType_3817) (SummandMask2@@0 T@PolymorphicMapType_3817) (o_2@@16 T@Ref) (f_4@@16 T@Field_3856_10444) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3817_3856_10444#PolymorphicMapType_3817| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3817) (SummandMask1@@1 T@PolymorphicMapType_3817) (SummandMask2@@1 T@PolymorphicMapType_3817) (o_2@@17 T@Ref) (f_4@@17 T@Field_3869_3870) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3817_3856_3870#PolymorphicMapType_3817| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3817) (SummandMask1@@2 T@PolymorphicMapType_3817) (SummandMask2@@2 T@PolymorphicMapType_3817) (o_2@@18 T@Ref) (f_4@@18 T@Field_3856_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3817_3856_53#PolymorphicMapType_3817| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((p_1 T@ProcessDomainType) ) (! (= (p_merge p_empty p_1) p_1)
 :qid |stdinbpl.202:15|
 :skolemid |22|
 :pattern ( (p_merge p_empty p_1))
)))
(assert (forall ((p_1@@0 T@ProcessDomainType) ) (! (= (p_seq p_empty p_1@@0) p_1@@0)
 :qid |stdinbpl.208:15|
 :skolemid |23|
 :pattern ( (p_seq p_empty p_1@@0))
)))
(assert (forall ((p_1@@1 T@ProcessDomainType) ) (! (= (p_seq p_1@@1 p_empty) p_1@@1)
 :qid |stdinbpl.214:15|
 :skolemid |24|
 :pattern ( (p_seq p_1@@1 p_empty))
)))
(assert (forall ((n@@0 Int) (m_17 Int) ) (! (= (p_merge (p_single n@@0) (p_single m_17)) (p_dual n@@0 m_17))
 :qid |stdinbpl.238:15|
 :skolemid |29|
 :pattern ( (p_dual n@@0 m_17))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3796) (o T@Ref) (f_3 T@Field_3856_10444) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_3796 (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@10) (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@10) (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@10) (store (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| Heap@@10) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3796 (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@10) (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@10) (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@10) (store (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| Heap@@10) o f_3 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3796) (o@@0 T@Ref) (f_3@@0 T@Field_3856_10577) (v@@0 T@PolymorphicMapType_4345) ) (! (succHeap Heap@@11 (PolymorphicMapType_3796 (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@11) (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@11) (store (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3796 (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@11) (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@11) (store (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3796) (o@@1 T@Ref) (f_3@@1 T@Field_3869_3870) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_3796 (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@12) (store (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@12) (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3796 (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@12) (store (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@12) (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3796) (o@@2 T@Ref) (f_3@@2 T@Field_3856_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_3796 (store (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@13) (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@13) (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3796 (store (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@13) (|PolymorphicMapType_3796_3856_10621#PolymorphicMapType_3796| Heap@@13) (|PolymorphicMapType_3796_3856_10444#PolymorphicMapType_3796| Heap@@13)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3869_3870) (Heap@@14 T@PolymorphicMapType_3796) ) (!  (=> (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@14) o@@3 $allocated) (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@14) (select (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@14) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3796_2041_2042#PolymorphicMapType_3796| Heap@@14) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3856_10444) (v_1@@0 T@FrameType) (q T@Field_3856_10444) (w@@0 T@FrameType) (r T@Field_3856_10444) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3856_3856 p@@1 v_1@@0 q w@@0) (InsidePredicate_3856_3856 q w@@0 r u)) (InsidePredicate_3856_3856 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3856_3856 p@@1 v_1@@0 q w@@0) (InsidePredicate_3856_3856 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_3796)
(declare-fun n@@1 () Int)
(declare-fun arg_n@0 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(set-info :boogie-vc-id History__lemma)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon4_correct  (=> (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 3) (- 0 2))) (= (p_single n@@1) (ite (> n@@1 0) (p_seq (p_single (- n@@1 1)) p_incr) p_empty)))))
(let ((anon6_Else_correct  (=> (and (> 2 n@@1) (= (ControlFlow 0 8) 3)) anon4_correct)))
(let ((anon6_Then_correct  (=> (and (>= n@@1 2) (= arg_n@0 (- n@@1 2))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 4) (- 0 5)) (>= arg_n@0 0)) (=> (>= arg_n@0 0) (=> (and (and (= (p_single arg_n@0) (ite (> arg_n@0 0) (p_seq (p_single (- arg_n@0 1)) p_incr) p_empty)) (state Heap@@15 ZeroMask)) (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 4) 3))) anon4_correct))))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_3796_2038_53#PolymorphicMapType_3796| Heap@@15) diz $allocated)) (and (not (= diz null)) (state Heap@@15 ZeroMask))) (and (and (>= current_thread_id 0) (state Heap@@15 ZeroMask)) (and (>= n@@1 0) (state Heap@@15 ZeroMask)))) (and (and (=> (= (ControlFlow 0 9) 1) anon5_Then_correct) (=> (= (ControlFlow 0 9) 4) anon6_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
