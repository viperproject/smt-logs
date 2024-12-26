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
(declare-sort T@Field_3201_53 0)
(declare-sort T@Field_3214_3215 0)
(declare-sort T@Field_3201_8270 0)
(declare-sort T@Field_3201_8137 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3162 0)) (((PolymorphicMapType_3162 (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| (Array T@Ref T@Field_3201_53 Real)) (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| (Array T@Ref T@Field_3214_3215 Real)) (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| (Array T@Ref T@Field_3201_8137 Real)) (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| (Array T@Ref T@Field_3201_8270 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3690 0)) (((PolymorphicMapType_3690 (|PolymorphicMapType_3690_3201_53#PolymorphicMapType_3690| (Array T@Ref T@Field_3201_53 Bool)) (|PolymorphicMapType_3690_3201_3215#PolymorphicMapType_3690| (Array T@Ref T@Field_3214_3215 Bool)) (|PolymorphicMapType_3690_3201_8137#PolymorphicMapType_3690| (Array T@Ref T@Field_3201_8137 Bool)) (|PolymorphicMapType_3690_3201_9250#PolymorphicMapType_3690| (Array T@Ref T@Field_3201_8270 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3141 0)) (((PolymorphicMapType_3141 (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| (Array T@Ref T@Field_3201_53 Bool)) (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| (Array T@Ref T@Field_3214_3215 T@Ref)) (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| (Array T@Ref T@Field_3201_8270 T@PolymorphicMapType_3690)) (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| (Array T@Ref T@Field_3201_8137 T@FrameType)) ) ) ))
(declare-fun state (T@PolymorphicMapType_3141 T@PolymorphicMapType_3162) Bool)
(declare-fun |range___contains__'| (T@PolymorphicMapType_3141 T@Ref Int) Bool)
(declare-fun |range___contains__#frame| (T@FrameType T@Ref Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_3141 T@PolymorphicMapType_3141) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3141 T@PolymorphicMapType_3141) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3162) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3690)
(declare-fun dummyFunction_1574 (Bool) Bool)
(declare-fun |range___contains__#triggerStateless| (T@Ref Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3141 T@PolymorphicMapType_3141 T@PolymorphicMapType_3162) Bool)
(declare-fun IsPredicateField_3201_8228 (T@Field_3201_8137) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3201 (T@Field_3201_8137) T@Field_3201_8270)
(declare-fun HasDirectPerm_3201_8201 (T@PolymorphicMapType_3162 T@Ref T@Field_3201_8137) Bool)
(declare-fun IsWandField_3201_9777 (T@Field_3201_8137) Bool)
(declare-fun WandMaskField_3201 (T@Field_3201_8137) T@Field_3201_8270)
(declare-fun |range___create__'| (T@PolymorphicMapType_3141) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |range___create__#trigger| (T@FrameType) Bool)
(declare-fun range___contains__ (T@PolymorphicMapType_3141 T@Ref Int) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_3141)
(declare-fun ZeroMask () T@PolymorphicMapType_3162)
(declare-fun $allocated () T@Field_3201_53)
(declare-fun InsidePredicate_3201_3201 (T@Field_3201_8137 T@FrameType T@Field_3201_8137 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3201_12740 (T@Field_3201_8270) Bool)
(declare-fun IsWandField_3201_12756 (T@Field_3201_8270) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3201_3215 (T@Field_3214_3215) Bool)
(declare-fun IsWandField_3201_3215 (T@Field_3214_3215) Bool)
(declare-fun IsPredicateField_3201_53 (T@Field_3201_53) Bool)
(declare-fun IsWandField_3201_53 (T@Field_3201_53) Bool)
(declare-fun HasDirectPerm_3201_13111 (T@PolymorphicMapType_3162 T@Ref T@Field_3201_8270) Bool)
(declare-fun HasDirectPerm_3201_3215 (T@PolymorphicMapType_3162 T@Ref T@Field_3214_3215) Bool)
(declare-fun HasDirectPerm_3201_53 (T@PolymorphicMapType_3162 T@Ref T@Field_3201_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun range___create__ (T@PolymorphicMapType_3141) T@Ref)
(declare-fun dummyFunction_1777 (T@Ref) Bool)
(declare-fun |range___create__#triggerStateless| () T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_3162 T@PolymorphicMapType_3162 T@PolymorphicMapType_3162) Bool)
(declare-fun |range___create__#frame| (T@FrameType) T@Ref)
(assert (forall ((Heap T@PolymorphicMapType_3141) (Mask T@PolymorphicMapType_3162) (self T@Ref) (item Int) ) (!  (=> (state Heap Mask) (= (|range___contains__'| Heap self item) (|range___contains__#frame| EmptyFrame self item)))
 :qid |stdinbpl.265:15|
 :skolemid |30|
 :pattern ( (state Heap Mask) (|range___contains__'| Heap self item))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_3141) (Heap1 T@PolymorphicMapType_3141) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3141) (Mask@@0 T@PolymorphicMapType_3162) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3141) (Heap1@@0 T@PolymorphicMapType_3141) (Heap2 T@PolymorphicMapType_3141) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3201_8270) ) (!  (not (select (|PolymorphicMapType_3690_3201_9250#PolymorphicMapType_3690| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3690_3201_9250#PolymorphicMapType_3690| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3201_8137) ) (!  (not (select (|PolymorphicMapType_3690_3201_8137#PolymorphicMapType_3690| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3690_3201_8137#PolymorphicMapType_3690| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3214_3215) ) (!  (not (select (|PolymorphicMapType_3690_3201_3215#PolymorphicMapType_3690| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3690_3201_3215#PolymorphicMapType_3690| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3201_53) ) (!  (not (select (|PolymorphicMapType_3690_3201_53#PolymorphicMapType_3690| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3690_3201_53#PolymorphicMapType_3690| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3141) (self@@0 T@Ref) (item@@0 Int) ) (! (dummyFunction_1574 (|range___contains__#triggerStateless| self@@0 item@@0))
 :qid |stdinbpl.258:15|
 :skolemid |29|
 :pattern ( (|range___contains__'| Heap@@1 self@@0 item@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3141) (ExhaleHeap T@PolymorphicMapType_3141) (Mask@@1 T@PolymorphicMapType_3162) (pm_f_2 T@Field_3201_8137) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_3201_8201 Mask@@1 null pm_f_2) (IsPredicateField_3201_8228 pm_f_2)) (= (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@2) null (PredicateMaskField_3201 pm_f_2)) (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| ExhaleHeap) null (PredicateMaskField_3201 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_3201_8228 pm_f_2) (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| ExhaleHeap) null (PredicateMaskField_3201 pm_f_2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3141) (ExhaleHeap@@0 T@PolymorphicMapType_3141) (Mask@@2 T@PolymorphicMapType_3162) (pm_f_2@@0 T@Field_3201_8137) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3201_8201 Mask@@2 null pm_f_2@@0) (IsWandField_3201_9777 pm_f_2@@0)) (= (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@3) null (WandMaskField_3201 pm_f_2@@0)) (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| ExhaleHeap@@0) null (WandMaskField_3201 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_3201_9777 pm_f_2@@0) (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| ExhaleHeap@@0) null (WandMaskField_3201 pm_f_2@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3141) (Mask@@3 T@PolymorphicMapType_3162) ) (!  (=> (and (state Heap@@4 Mask@@3) (or (< AssumeFunctionsAbove 0) (|range___create__#trigger| EmptyFrame))) (forall ((i Int) ) (! (range___contains__ Heap@@4 (|range___create__'| Heap@@4) i)
 :qid |stdinbpl.206:103|
 :skolemid |25|
 :pattern ( (|range___contains__#frame| EmptyFrame (|range___create__'| Heap@@4) i))
)))
 :qid |stdinbpl.204:15|
 :skolemid |26|
 :pattern ( (state Heap@@4 Mask@@3) (|range___create__'| Heap@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3141) (ExhaleHeap@@1 T@PolymorphicMapType_3141) (Mask@@4 T@PolymorphicMapType_3162) (pm_f_2@@1 T@Field_3201_8137) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_3201_8201 Mask@@4 null pm_f_2@@1) (IsPredicateField_3201_8228 pm_f_2@@1)) (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_3201_53) ) (!  (=> (select (|PolymorphicMapType_3690_3201_53#PolymorphicMapType_3690| (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@5) null (PredicateMaskField_3201 pm_f_2@@1))) o2_2 f_9) (= (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@5) o2_2 f_9) (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| ExhaleHeap@@1) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| ExhaleHeap@@1) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_3214_3215) ) (!  (=> (select (|PolymorphicMapType_3690_3201_3215#PolymorphicMapType_3690| (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@5) null (PredicateMaskField_3201 pm_f_2@@1))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@5) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| ExhaleHeap@@1) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| ExhaleHeap@@1) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_3201_8137) ) (!  (=> (select (|PolymorphicMapType_3690_3201_8137#PolymorphicMapType_3690| (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@5) null (PredicateMaskField_3201 pm_f_2@@1))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| Heap@@5) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| ExhaleHeap@@1) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| ExhaleHeap@@1) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_3201_8270) ) (!  (=> (select (|PolymorphicMapType_3690_3201_9250#PolymorphicMapType_3690| (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@5) null (PredicateMaskField_3201 pm_f_2@@1))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@5) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| ExhaleHeap@@1) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| ExhaleHeap@@1) o2_2@@2 f_9@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@4) (IsPredicateField_3201_8228 pm_f_2@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3141) (ExhaleHeap@@2 T@PolymorphicMapType_3141) (Mask@@5 T@PolymorphicMapType_3162) (pm_f_2@@2 T@Field_3201_8137) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_3201_8201 Mask@@5 null pm_f_2@@2) (IsWandField_3201_9777 pm_f_2@@2)) (and (and (and (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_3201_53) ) (!  (=> (select (|PolymorphicMapType_3690_3201_53#PolymorphicMapType_3690| (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@6) null (WandMaskField_3201 pm_f_2@@2))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@6) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| ExhaleHeap@@2) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| ExhaleHeap@@2) o2_2@@3 f_9@@3))
)) (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_3214_3215) ) (!  (=> (select (|PolymorphicMapType_3690_3201_3215#PolymorphicMapType_3690| (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@6) null (WandMaskField_3201 pm_f_2@@2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@6) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| ExhaleHeap@@2) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| ExhaleHeap@@2) o2_2@@4 f_9@@4))
))) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_3201_8137) ) (!  (=> (select (|PolymorphicMapType_3690_3201_8137#PolymorphicMapType_3690| (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@6) null (WandMaskField_3201 pm_f_2@@2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| Heap@@6) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| ExhaleHeap@@2) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| ExhaleHeap@@2) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_3201_8270) ) (!  (=> (select (|PolymorphicMapType_3690_3201_9250#PolymorphicMapType_3690| (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@6) null (WandMaskField_3201 pm_f_2@@2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@6) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| ExhaleHeap@@2) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| ExhaleHeap@@2) o2_2@@6 f_9@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@5) (IsWandField_3201_9777 pm_f_2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3141) (ExhaleHeap@@3 T@PolymorphicMapType_3141) (Mask@@6 T@PolymorphicMapType_3162) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@7) o_6 $allocated) (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| ExhaleHeap@@3) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| ExhaleHeap@@3) o_6 $allocated))
)))
(assert (forall ((p T@Field_3201_8137) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3201_3201 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3201_3201 p v_1 p w))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3141) (ExhaleHeap@@4 T@PolymorphicMapType_3141) (Mask@@7 T@PolymorphicMapType_3162) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@8 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3162) (o_2@@3 T@Ref) (f_4@@3 T@Field_3201_8270) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3201_12740 f_4@@3))) (not (IsWandField_3201_12756 f_4@@3))) (<= (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3162) (o_2@@4 T@Ref) (f_4@@4 T@Field_3201_8137) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3201_8228 f_4@@4))) (not (IsWandField_3201_9777 f_4@@4))) (<= (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3162) (o_2@@5 T@Ref) (f_4@@5 T@Field_3214_3215) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3201_3215 f_4@@5))) (not (IsWandField_3201_3215 f_4@@5))) (<= (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3162) (o_2@@6 T@Ref) (f_4@@6 T@Field_3201_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3201_53 f_4@@6))) (not (IsWandField_3201_53 f_4@@6))) (<= (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3162) (o_2@@7 T@Ref) (f_4@@7 T@Field_3201_8270) ) (! (= (HasDirectPerm_3201_13111 Mask@@12 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| Mask@@12) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3201_13111 Mask@@12 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3162) (o_2@@8 T@Ref) (f_4@@8 T@Field_3201_8137) ) (! (= (HasDirectPerm_3201_8201 Mask@@13 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| Mask@@13) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3201_8201 Mask@@13 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3162) (o_2@@9 T@Ref) (f_4@@9 T@Field_3214_3215) ) (! (= (HasDirectPerm_3201_3215 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3201_3215 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3162) (o_2@@10 T@Ref) (f_4@@10 T@Field_3201_53) ) (! (= (HasDirectPerm_3201_53 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3201_53 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3141) (ExhaleHeap@@5 T@PolymorphicMapType_3141) (Mask@@16 T@PolymorphicMapType_3162) (o_6@@0 T@Ref) (f_9@@7 T@Field_3201_8270) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3201_13111 Mask@@16 o_6@@0 f_9@@7) (= (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@9) o_6@@0 f_9@@7) (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| ExhaleHeap@@5) o_6@@0 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| ExhaleHeap@@5) o_6@@0 f_9@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3141) (ExhaleHeap@@6 T@PolymorphicMapType_3141) (Mask@@17 T@PolymorphicMapType_3162) (o_6@@1 T@Ref) (f_9@@8 T@Field_3201_8137) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3201_8201 Mask@@17 o_6@@1 f_9@@8) (= (select (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| Heap@@10) o_6@@1 f_9@@8) (select (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| ExhaleHeap@@6) o_6@@1 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| ExhaleHeap@@6) o_6@@1 f_9@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3141) (ExhaleHeap@@7 T@PolymorphicMapType_3141) (Mask@@18 T@PolymorphicMapType_3162) (o_6@@2 T@Ref) (f_9@@9 T@Field_3214_3215) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3201_3215 Mask@@18 o_6@@2 f_9@@9) (= (select (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@11) o_6@@2 f_9@@9) (select (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| ExhaleHeap@@7) o_6@@2 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| ExhaleHeap@@7) o_6@@2 f_9@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3141) (ExhaleHeap@@8 T@PolymorphicMapType_3141) (Mask@@19 T@PolymorphicMapType_3162) (o_6@@3 T@Ref) (f_9@@10 T@Field_3201_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3201_53 Mask@@19 o_6@@3 f_9@@10) (= (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@12) o_6@@3 f_9@@10) (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| ExhaleHeap@@8) o_6@@3 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| ExhaleHeap@@8) o_6@@3 f_9@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3141) ) (!  (and (= (range___create__ Heap@@13) (|range___create__'| Heap@@13)) (dummyFunction_1777 |range___create__#triggerStateless|))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (range___create__ Heap@@13))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3201_8270) ) (! (= (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3201_8137) ) (! (= (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3214_3215) ) (! (= (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3201_53) ) (! (= (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3162) (SummandMask1 T@PolymorphicMapType_3162) (SummandMask2 T@PolymorphicMapType_3162) (o_2@@15 T@Ref) (f_4@@15 T@Field_3201_8270) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3162_3201_11831#PolymorphicMapType_3162| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3162) (SummandMask1@@0 T@PolymorphicMapType_3162) (SummandMask2@@0 T@PolymorphicMapType_3162) (o_2@@16 T@Ref) (f_4@@16 T@Field_3201_8137) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3162_3201_8137#PolymorphicMapType_3162| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3162) (SummandMask1@@1 T@PolymorphicMapType_3162) (SummandMask2@@1 T@PolymorphicMapType_3162) (o_2@@17 T@Ref) (f_4@@17 T@Field_3214_3215) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3162_3201_3215#PolymorphicMapType_3162| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3162) (SummandMask1@@2 T@PolymorphicMapType_3162) (SummandMask2@@2 T@PolymorphicMapType_3162) (o_2@@18 T@Ref) (f_4@@18 T@Field_3201_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3162_3201_53#PolymorphicMapType_3162| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3141) ) (! (dummyFunction_1777 |range___create__#triggerStateless|)
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|range___create__'| Heap@@14))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3141) (Mask@@20 T@PolymorphicMapType_3162) ) (!  (=> (state Heap@@15 Mask@@20) (= (|range___create__'| Heap@@15) (|range___create__#frame| EmptyFrame)))
 :qid |stdinbpl.198:15|
 :skolemid |24|
 :pattern ( (state Heap@@15 Mask@@20) (|range___create__'| Heap@@15))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3141) (o_5 T@Ref) (f_10 T@Field_3201_8137) (v T@FrameType) ) (! (succHeap Heap@@16 (PolymorphicMapType_3141 (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@16) (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@16) (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@16) (store (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| Heap@@16) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3141 (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@16) (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@16) (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@16) (store (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| Heap@@16) o_5 f_10 v)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3141) (o_5@@0 T@Ref) (f_10@@0 T@Field_3201_8270) (v@@0 T@PolymorphicMapType_3690) ) (! (succHeap Heap@@17 (PolymorphicMapType_3141 (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@17) (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@17) (store (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@17) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3141 (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@17) (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@17) (store (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@17) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3141) (o_5@@1 T@Ref) (f_10@@1 T@Field_3214_3215) (v@@1 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_3141 (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@18) (store (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@18) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@18) (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3141 (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@18) (store (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@18) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@18) (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3141) (o_5@@2 T@Ref) (f_10@@2 T@Field_3201_53) (v@@2 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_3141 (store (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@19) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@19) (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@19) (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3141 (store (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@19) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@19) (|PolymorphicMapType_3141_3201_8314#PolymorphicMapType_3141| Heap@@19) (|PolymorphicMapType_3141_3201_8137#PolymorphicMapType_3141| Heap@@19)))
)))
(assert (forall ((o_5@@3 T@Ref) (f_3 T@Field_3214_3215) (Heap@@20 T@PolymorphicMapType_3141) ) (!  (=> (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@20) o_5@@3 $allocated) (select (|PolymorphicMapType_3141_1636_53#PolymorphicMapType_3141| Heap@@20) (select (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@20) o_5@@3 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3141_1639_1640#PolymorphicMapType_3141| Heap@@20) o_5@@3 f_3))
)))
(assert (forall ((p@@1 T@Field_3201_8137) (v_1@@0 T@FrameType) (q T@Field_3201_8137) (w@@0 T@FrameType) (r T@Field_3201_8137) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3201_3201 p@@1 v_1@@0 q w@@0) (InsidePredicate_3201_3201 q w@@0 r u)) (InsidePredicate_3201_3201 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3201_3201 p@@1 v_1@@0 q w@@0) (InsidePredicate_3201_3201 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3141) (self@@1 T@Ref) (item@@1 Int) ) (!  (and (= (range___contains__ Heap@@21 self@@1 item@@1) (|range___contains__'| Heap@@21 self@@1 item@@1)) (dummyFunction_1574 (|range___contains__#triggerStateless| self@@1 item@@1)))
 :qid |stdinbpl.254:15|
 :skolemid |28|
 :pattern ( (range___contains__ Heap@@21 self@@1 item@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |range___create__#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
