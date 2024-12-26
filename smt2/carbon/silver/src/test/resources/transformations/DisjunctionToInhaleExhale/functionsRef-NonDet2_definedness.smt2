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
(declare-sort T@Field_4188_53 0)
(declare-sort T@Field_4201_4202 0)
(declare-sort T@Field_4188_10855 0)
(declare-sort T@Field_4188_10722 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4149 0)) (((PolymorphicMapType_4149 (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| (Array T@Ref T@Field_4188_53 Real)) (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| (Array T@Ref T@Field_4201_4202 Real)) (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| (Array T@Ref T@Field_4188_10722 Real)) (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| (Array T@Ref T@Field_4188_10855 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4677 0)) (((PolymorphicMapType_4677 (|PolymorphicMapType_4677_4188_53#PolymorphicMapType_4677| (Array T@Ref T@Field_4188_53 Bool)) (|PolymorphicMapType_4677_4188_4202#PolymorphicMapType_4677| (Array T@Ref T@Field_4201_4202 Bool)) (|PolymorphicMapType_4677_4188_10722#PolymorphicMapType_4677| (Array T@Ref T@Field_4188_10722 Bool)) (|PolymorphicMapType_4677_4188_11835#PolymorphicMapType_4677| (Array T@Ref T@Field_4188_10855 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4128 0)) (((PolymorphicMapType_4128 (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| (Array T@Ref T@Field_4188_53 Bool)) (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| (Array T@Ref T@Field_4201_4202 T@Ref)) (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| (Array T@Ref T@Field_4188_10855 T@PolymorphicMapType_4677)) (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| (Array T@Ref T@Field_4188_10722 T@FrameType)) ) ) ))
(declare-fun state (T@PolymorphicMapType_4128 T@PolymorphicMapType_4149) Bool)
(declare-fun |NonDet2'| (T@PolymorphicMapType_4128 Bool Bool) Bool)
(declare-fun |NonDet2#frame| (T@FrameType Bool Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_4128 T@PolymorphicMapType_4128) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4128 T@PolymorphicMapType_4128) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4149) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4677)
(declare-fun dummyFunction_1353 (Bool) Bool)
(declare-fun |NonDet2#triggerStateless| (Bool Bool) Bool)
(declare-fun |NonDet1'| (T@PolymorphicMapType_4128 Bool) Bool)
(declare-fun |NonDet1#triggerStateless| (Bool) Bool)
(declare-fun |func'| (T@PolymorphicMapType_4128 Bool) Bool)
(declare-fun |func#triggerStateless| (Bool) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4128 T@PolymorphicMapType_4128 T@PolymorphicMapType_4149) Bool)
(declare-fun IsPredicateField_4188_10813 (T@Field_4188_10722) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4188 (T@Field_4188_10722) T@Field_4188_10855)
(declare-fun HasDirectPerm_4188_10786 (T@PolymorphicMapType_4149 T@Ref T@Field_4188_10722) Bool)
(declare-fun IsWandField_4188_12362 (T@Field_4188_10722) Bool)
(declare-fun WandMaskField_4188 (T@Field_4188_10722) T@Field_4188_10855)
(declare-fun NonDet2 (T@PolymorphicMapType_4128 Bool Bool) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun func (T@PolymorphicMapType_4128 Bool) Bool)
(declare-fun NonDet1 (T@PolymorphicMapType_4128 Bool) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_4128)
(declare-fun ZeroMask () T@PolymorphicMapType_4149)
(declare-fun $allocated () T@Field_4188_53)
(declare-fun InsidePredicate_4188_4188 (T@Field_4188_10722 T@FrameType T@Field_4188_10722 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4188_15325 (T@Field_4188_10855) Bool)
(declare-fun IsWandField_4188_15341 (T@Field_4188_10855) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4188_4202 (T@Field_4201_4202) Bool)
(declare-fun IsWandField_4188_4202 (T@Field_4201_4202) Bool)
(declare-fun IsPredicateField_4188_53 (T@Field_4188_53) Bool)
(declare-fun IsWandField_4188_53 (T@Field_4188_53) Bool)
(declare-fun HasDirectPerm_4188_15696 (T@PolymorphicMapType_4149 T@Ref T@Field_4188_10855) Bool)
(declare-fun HasDirectPerm_4188_4202 (T@PolymorphicMapType_4149 T@Ref T@Field_4201_4202) Bool)
(declare-fun HasDirectPerm_4188_53 (T@PolymorphicMapType_4149 T@Ref T@Field_4188_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4149 T@PolymorphicMapType_4149 T@PolymorphicMapType_4149) Bool)
(declare-fun |NonDet1#frame| (T@FrameType Bool) Bool)
(declare-fun |func#frame| (T@FrameType Bool) Bool)
(declare-fun |func#trigger| (T@FrameType Bool) Bool)
(assert (forall ((Heap T@PolymorphicMapType_4128) (Mask T@PolymorphicMapType_4149) (vari1 Bool) (vari2 Bool) ) (!  (=> (state Heap Mask) (= (|NonDet2'| Heap vari1 vari2) (|NonDet2#frame| EmptyFrame vari1 vari2)))
 :qid |stdinbpl.255:15|
 :skolemid |29|
 :pattern ( (state Heap Mask) (|NonDet2'| Heap vari1 vari2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_4128) (Heap1 T@PolymorphicMapType_4128) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4128) (Mask@@0 T@PolymorphicMapType_4149) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4128) (Heap1@@0 T@PolymorphicMapType_4128) (Heap2 T@PolymorphicMapType_4128) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4188_10855) ) (!  (not (select (|PolymorphicMapType_4677_4188_11835#PolymorphicMapType_4677| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4677_4188_11835#PolymorphicMapType_4677| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4188_10722) ) (!  (not (select (|PolymorphicMapType_4677_4188_10722#PolymorphicMapType_4677| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4677_4188_10722#PolymorphicMapType_4677| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4201_4202) ) (!  (not (select (|PolymorphicMapType_4677_4188_4202#PolymorphicMapType_4677| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4677_4188_4202#PolymorphicMapType_4677| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4188_53) ) (!  (not (select (|PolymorphicMapType_4677_4188_53#PolymorphicMapType_4677| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4677_4188_53#PolymorphicMapType_4677| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4128) (vari1@@0 Bool) (vari2@@0 Bool) ) (! (dummyFunction_1353 (|NonDet2#triggerStateless| vari1@@0 vari2@@0))
 :qid |stdinbpl.242:15|
 :skolemid |27|
 :pattern ( (|NonDet2'| Heap@@1 vari1@@0 vari2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4128) (vari1@@1 Bool) ) (! (dummyFunction_1353 (|NonDet1#triggerStateless| vari1@@1))
 :qid |stdinbpl.192:15|
 :skolemid |23|
 :pattern ( (|NonDet1'| Heap@@2 vari1@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4128) (b_24 Bool) ) (! (dummyFunction_1353 (|func#triggerStateless| b_24))
 :qid |stdinbpl.292:15|
 :skolemid |31|
 :pattern ( (|func'| Heap@@3 b_24))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4128) (ExhaleHeap T@PolymorphicMapType_4128) (Mask@@1 T@PolymorphicMapType_4149) (pm_f_1 T@Field_4188_10722) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_4188_10786 Mask@@1 null pm_f_1) (IsPredicateField_4188_10813 pm_f_1)) (= (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@4) null (PredicateMaskField_4188 pm_f_1)) (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| ExhaleHeap) null (PredicateMaskField_4188 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_4188_10813 pm_f_1) (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| ExhaleHeap) null (PredicateMaskField_4188 pm_f_1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4128) (ExhaleHeap@@0 T@PolymorphicMapType_4128) (Mask@@2 T@PolymorphicMapType_4149) (pm_f_1@@0 T@Field_4188_10722) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_4188_10786 Mask@@2 null pm_f_1@@0) (IsWandField_4188_12362 pm_f_1@@0)) (= (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@5) null (WandMaskField_4188 pm_f_1@@0)) (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| ExhaleHeap@@0) null (WandMaskField_4188 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsWandField_4188_12362 pm_f_1@@0) (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| ExhaleHeap@@0) null (WandMaskField_4188 pm_f_1@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4128) (Mask@@3 T@PolymorphicMapType_4149) (vari1@@2 Bool) (vari2@@1 Bool) ) (!  (=> (and (state Heap@@6 Mask@@3) (< AssumeFunctionsAbove 2)) (NonDet2 Heap@@6 vari1@@2 vari2@@1))
 :qid |stdinbpl.248:15|
 :skolemid |28|
 :pattern ( (state Heap@@6 Mask@@3) (NonDet2 Heap@@6 vari1@@2 vari2@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4128) (Mask@@4 T@PolymorphicMapType_4149) (b_24@@0 Bool) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 0)) (func Heap@@7 b_24@@0))
 :qid |stdinbpl.298:15|
 :skolemid |32|
 :pattern ( (state Heap@@7 Mask@@4) (func Heap@@7 b_24@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4128) (Mask@@5 T@PolymorphicMapType_4149) (vari1@@3 Bool) ) (!  (=> (and (state Heap@@8 Mask@@5) (< AssumeFunctionsAbove 1)) (NonDet1 Heap@@8 vari1@@3))
 :qid |stdinbpl.198:15|
 :skolemid |24|
 :pattern ( (state Heap@@8 Mask@@5) (NonDet1 Heap@@8 vari1@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4128) (ExhaleHeap@@1 T@PolymorphicMapType_4128) (Mask@@6 T@PolymorphicMapType_4149) (pm_f_1@@1 T@Field_4188_10722) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_4188_10786 Mask@@6 null pm_f_1@@1) (IsPredicateField_4188_10813 pm_f_1@@1)) (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_4188_53) ) (!  (=> (select (|PolymorphicMapType_4677_4188_53#PolymorphicMapType_4677| (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@9) null (PredicateMaskField_4188 pm_f_1@@1))) o2_1 f_8) (= (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@9) o2_1 f_8) (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| ExhaleHeap@@1) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| ExhaleHeap@@1) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_4201_4202) ) (!  (=> (select (|PolymorphicMapType_4677_4188_4202#PolymorphicMapType_4677| (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@9) null (PredicateMaskField_4188 pm_f_1@@1))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@9) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| ExhaleHeap@@1) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| ExhaleHeap@@1) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_4188_10722) ) (!  (=> (select (|PolymorphicMapType_4677_4188_10722#PolymorphicMapType_4677| (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@9) null (PredicateMaskField_4188 pm_f_1@@1))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| Heap@@9) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| ExhaleHeap@@1) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| ExhaleHeap@@1) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_4188_10855) ) (!  (=> (select (|PolymorphicMapType_4677_4188_11835#PolymorphicMapType_4677| (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@9) null (PredicateMaskField_4188 pm_f_1@@1))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@9) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| ExhaleHeap@@1) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| ExhaleHeap@@1) o2_1@@2 f_8@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (IsPredicateField_4188_10813 pm_f_1@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4128) (ExhaleHeap@@2 T@PolymorphicMapType_4128) (Mask@@7 T@PolymorphicMapType_4149) (pm_f_1@@2 T@Field_4188_10722) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_4188_10786 Mask@@7 null pm_f_1@@2) (IsWandField_4188_12362 pm_f_1@@2)) (and (and (and (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_4188_53) ) (!  (=> (select (|PolymorphicMapType_4677_4188_53#PolymorphicMapType_4677| (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@10) null (WandMaskField_4188 pm_f_1@@2))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@10) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| ExhaleHeap@@2) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| ExhaleHeap@@2) o2_1@@3 f_8@@3))
)) (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_4201_4202) ) (!  (=> (select (|PolymorphicMapType_4677_4188_4202#PolymorphicMapType_4677| (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@10) null (WandMaskField_4188 pm_f_1@@2))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@10) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| ExhaleHeap@@2) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| ExhaleHeap@@2) o2_1@@4 f_8@@4))
))) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_4188_10722) ) (!  (=> (select (|PolymorphicMapType_4677_4188_10722#PolymorphicMapType_4677| (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@10) null (WandMaskField_4188 pm_f_1@@2))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| Heap@@10) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| ExhaleHeap@@2) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| ExhaleHeap@@2) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_4188_10855) ) (!  (=> (select (|PolymorphicMapType_4677_4188_11835#PolymorphicMapType_4677| (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@10) null (WandMaskField_4188 pm_f_1@@2))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@10) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| ExhaleHeap@@2) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| ExhaleHeap@@2) o2_1@@6 f_8@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (IsWandField_4188_12362 pm_f_1@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4128) (ExhaleHeap@@3 T@PolymorphicMapType_4128) (Mask@@8 T@PolymorphicMapType_4149) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (=> (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@11) o_3 $allocated) (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| ExhaleHeap@@3) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| ExhaleHeap@@3) o_3 $allocated))
)))
(assert (forall ((p T@Field_4188_10722) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4188_4188 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4188_4188 p v_1 p w))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4128) (ExhaleHeap@@4 T@PolymorphicMapType_4128) (Mask@@9 T@PolymorphicMapType_4149) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4149) (o_2@@3 T@Ref) (f_4@@3 T@Field_4188_10855) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| Mask@@10) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4188_15325 f_4@@3))) (not (IsWandField_4188_15341 f_4@@3))) (<= (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| Mask@@10) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| Mask@@10) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4149) (o_2@@4 T@Ref) (f_4@@4 T@Field_4188_10722) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4188_10813 f_4@@4))) (not (IsWandField_4188_12362 f_4@@4))) (<= (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4149) (o_2@@5 T@Ref) (f_4@@5 T@Field_4201_4202) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4188_4202 f_4@@5))) (not (IsWandField_4188_4202 f_4@@5))) (<= (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4149) (o_2@@6 T@Ref) (f_4@@6 T@Field_4188_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4188_53 f_4@@6))) (not (IsWandField_4188_53 f_4@@6))) (<= (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4149) (o_2@@7 T@Ref) (f_4@@7 T@Field_4188_10855) ) (! (= (HasDirectPerm_4188_15696 Mask@@14 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| Mask@@14) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4188_15696 Mask@@14 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4149) (o_2@@8 T@Ref) (f_4@@8 T@Field_4188_10722) ) (! (= (HasDirectPerm_4188_10786 Mask@@15 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| Mask@@15) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4188_10786 Mask@@15 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4149) (o_2@@9 T@Ref) (f_4@@9 T@Field_4201_4202) ) (! (= (HasDirectPerm_4188_4202 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4188_4202 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4149) (o_2@@10 T@Ref) (f_4@@10 T@Field_4188_53) ) (! (= (HasDirectPerm_4188_53 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4188_53 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4128) (ExhaleHeap@@5 T@PolymorphicMapType_4128) (Mask@@18 T@PolymorphicMapType_4149) (o_3@@0 T@Ref) (f_8@@7 T@Field_4188_10855) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_4188_15696 Mask@@18 o_3@@0 f_8@@7) (= (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@13) o_3@@0 f_8@@7) (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| ExhaleHeap@@5) o_3@@0 f_8@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| ExhaleHeap@@5) o_3@@0 f_8@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4128) (ExhaleHeap@@6 T@PolymorphicMapType_4128) (Mask@@19 T@PolymorphicMapType_4149) (o_3@@1 T@Ref) (f_8@@8 T@Field_4188_10722) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_4188_10786 Mask@@19 o_3@@1 f_8@@8) (= (select (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| Heap@@14) o_3@@1 f_8@@8) (select (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| ExhaleHeap@@6) o_3@@1 f_8@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| ExhaleHeap@@6) o_3@@1 f_8@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4128) (ExhaleHeap@@7 T@PolymorphicMapType_4128) (Mask@@20 T@PolymorphicMapType_4149) (o_3@@2 T@Ref) (f_8@@9 T@Field_4201_4202) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_4188_4202 Mask@@20 o_3@@2 f_8@@9) (= (select (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@15) o_3@@2 f_8@@9) (select (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| ExhaleHeap@@7) o_3@@2 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| ExhaleHeap@@7) o_3@@2 f_8@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4128) (ExhaleHeap@@8 T@PolymorphicMapType_4128) (Mask@@21 T@PolymorphicMapType_4149) (o_3@@3 T@Ref) (f_8@@10 T@Field_4188_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_4188_53 Mask@@21 o_3@@3 f_8@@10) (= (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@16) o_3@@3 f_8@@10) (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| ExhaleHeap@@8) o_3@@3 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| ExhaleHeap@@8) o_3@@3 f_8@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4188_10855) ) (! (= (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4188_10722) ) (! (= (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_4201_4202) ) (! (= (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4188_53) ) (! (= (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4149) (SummandMask1 T@PolymorphicMapType_4149) (SummandMask2 T@PolymorphicMapType_4149) (o_2@@15 T@Ref) (f_4@@15 T@Field_4188_10855) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4149_4188_14416#PolymorphicMapType_4149| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4149) (SummandMask1@@0 T@PolymorphicMapType_4149) (SummandMask2@@0 T@PolymorphicMapType_4149) (o_2@@16 T@Ref) (f_4@@16 T@Field_4188_10722) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4149_4188_10722#PolymorphicMapType_4149| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4149) (SummandMask1@@1 T@PolymorphicMapType_4149) (SummandMask2@@1 T@PolymorphicMapType_4149) (o_2@@17 T@Ref) (f_4@@17 T@Field_4201_4202) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4149_4188_4202#PolymorphicMapType_4149| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4149) (SummandMask1@@2 T@PolymorphicMapType_4149) (SummandMask2@@2 T@PolymorphicMapType_4149) (o_2@@18 T@Ref) (f_4@@18 T@Field_4188_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4149_4188_53#PolymorphicMapType_4149| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4128) (Mask@@22 T@PolymorphicMapType_4149) (vari1@@4 Bool) ) (!  (=> (state Heap@@17 Mask@@22) (= (|NonDet1'| Heap@@17 vari1@@4) (|NonDet1#frame| EmptyFrame vari1@@4)))
 :qid |stdinbpl.205:15|
 :skolemid |25|
 :pattern ( (state Heap@@17 Mask@@22) (|NonDet1'| Heap@@17 vari1@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4128) (Mask@@23 T@PolymorphicMapType_4149) (b_24@@1 Bool) ) (!  (=> (state Heap@@18 Mask@@23) (= (|func'| Heap@@18 b_24@@1) (|func#frame| EmptyFrame b_24@@1)))
 :qid |stdinbpl.305:15|
 :skolemid |33|
 :pattern ( (state Heap@@18 Mask@@23) (|func'| Heap@@18 b_24@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4128) (vari1@@5 Bool) ) (!  (and (= (NonDet1 Heap@@19 vari1@@5) (|NonDet1'| Heap@@19 vari1@@5)) (dummyFunction_1353 (|NonDet1#triggerStateless| vari1@@5)))
 :qid |stdinbpl.188:15|
 :skolemid |22|
 :pattern ( (NonDet1 Heap@@19 vari1@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4128) (b_24@@2 Bool) ) (!  (and (= (func Heap@@20 b_24@@2) (|func'| Heap@@20 b_24@@2)) (dummyFunction_1353 (|func#triggerStateless| b_24@@2)))
 :qid |stdinbpl.288:15|
 :skolemid |30|
 :pattern ( (func Heap@@20 b_24@@2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4128) (o_1 T@Ref) (f_9 T@Field_4188_10722) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_4128 (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@21) (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@21) (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@21) (store (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| Heap@@21) o_1 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4128 (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@21) (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@21) (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@21) (store (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| Heap@@21) o_1 f_9 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4128) (o_1@@0 T@Ref) (f_9@@0 T@Field_4188_10855) (v@@0 T@PolymorphicMapType_4677) ) (! (succHeap Heap@@22 (PolymorphicMapType_4128 (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@22) (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@22) (store (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@22) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4128 (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@22) (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@22) (store (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@22) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4128) (o_1@@1 T@Ref) (f_9@@1 T@Field_4201_4202) (v@@1 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_4128 (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@23) (store (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@23) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@23) (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4128 (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@23) (store (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@23) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@23) (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4128) (o_1@@2 T@Ref) (f_9@@2 T@Field_4188_53) (v@@2 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_4128 (store (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@24) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@24) (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@24) (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4128 (store (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@24) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@24) (|PolymorphicMapType_4128_4188_10899#PolymorphicMapType_4128| Heap@@24) (|PolymorphicMapType_4128_4188_10722#PolymorphicMapType_4128| Heap@@24)))
)))
(assert (forall ((o_1@@3 T@Ref) (f_2 T@Field_4201_4202) (Heap@@25 T@PolymorphicMapType_4128) ) (!  (=> (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@25) o_1@@3 $allocated) (select (|PolymorphicMapType_4128_2242_53#PolymorphicMapType_4128| Heap@@25) (select (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@25) o_1@@3 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4128_2245_2246#PolymorphicMapType_4128| Heap@@25) o_1@@3 f_2))
)))
(assert (forall ((p@@1 T@Field_4188_10722) (v_1@@0 T@FrameType) (q T@Field_4188_10722) (w@@0 T@FrameType) (r T@Field_4188_10722) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4188_4188 p@@1 v_1@@0 q w@@0) (InsidePredicate_4188_4188 q w@@0 r u)) (InsidePredicate_4188_4188 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4188_4188 p@@1 v_1@@0 q w@@0) (InsidePredicate_4188_4188 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4128) (vari1@@6 Bool) (vari2@@2 Bool) ) (!  (and (= (NonDet2 Heap@@26 vari1@@6 vari2@@2) (|NonDet2'| Heap@@26 vari1@@6 vari2@@2)) (dummyFunction_1353 (|NonDet2#triggerStateless| vari1@@6 vari2@@2)))
 :qid |stdinbpl.238:15|
 :skolemid |26|
 :pattern ( (NonDet2 Heap@@26 vari1@@6 vari2@@2))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4128) (Mask@@24 T@PolymorphicMapType_4149) (b_24@@3 Bool) ) (!  (=> (and (state Heap@@27 Mask@@24) (or (< AssumeFunctionsAbove 0) (|func#trigger| EmptyFrame b_24@@3))) (exists ((k Bool) ) (!  (or (NonDet1 Heap@@27 k) (and b_24@@3 (ite (NonDet1 Heap@@27 k) k (exists ((m_17 Bool) ) (!  (or (NonDet2 Heap@@27 k m_17) m_17)
 :qid |stdinbpl.315:75|
 :skolemid |34|
 :pattern ( (|NonDet2#frame| EmptyFrame k m_17))
)))))
 :qid |stdinbpl.313:97|
 :skolemid |35|
 :pattern ( (|NonDet1#frame| EmptyFrame k))
)))
 :qid |stdinbpl.311:15|
 :skolemid |36|
 :pattern ( (state Heap@@27 Mask@@24) (|func'| Heap@@27 b_24@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |NonDet2#definedness|)
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
