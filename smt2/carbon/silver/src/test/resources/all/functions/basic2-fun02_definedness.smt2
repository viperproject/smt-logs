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
(declare-sort T@Field_3569_53 0)
(declare-sort T@Field_3582_3583 0)
(declare-sort T@Field_3569_9305 0)
(declare-sort T@Field_3569_9172 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3530 0)) (((PolymorphicMapType_3530 (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| (Array T@Ref T@Field_3569_53 Real)) (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| (Array T@Ref T@Field_3582_3583 Real)) (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| (Array T@Ref T@Field_3569_9172 Real)) (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| (Array T@Ref T@Field_3569_9305 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4058 0)) (((PolymorphicMapType_4058 (|PolymorphicMapType_4058_3569_53#PolymorphicMapType_4058| (Array T@Ref T@Field_3569_53 Bool)) (|PolymorphicMapType_4058_3569_3583#PolymorphicMapType_4058| (Array T@Ref T@Field_3582_3583 Bool)) (|PolymorphicMapType_4058_3569_9172#PolymorphicMapType_4058| (Array T@Ref T@Field_3569_9172 Bool)) (|PolymorphicMapType_4058_3569_10285#PolymorphicMapType_4058| (Array T@Ref T@Field_3569_9305 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3509 0)) (((PolymorphicMapType_3509 (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| (Array T@Ref T@Field_3569_53 Bool)) (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| (Array T@Ref T@Field_3582_3583 T@Ref)) (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| (Array T@Ref T@Field_3569_9305 T@PolymorphicMapType_4058)) (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| (Array T@Ref T@Field_3569_9172 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3509 T@PolymorphicMapType_3509) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3509 T@PolymorphicMapType_3509) Bool)
(declare-fun state (T@PolymorphicMapType_3509 T@PolymorphicMapType_3530) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3530) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4058)
(declare-fun |fun03'| (T@PolymorphicMapType_3509) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |fun03#trigger| (T@FrameType) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |fun02'| (T@PolymorphicMapType_3509) Int)
(declare-fun |fun02#trigger| (T@FrameType) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3509 T@PolymorphicMapType_3509 T@PolymorphicMapType_3530) Bool)
(declare-fun IsPredicateField_3569_9263 (T@Field_3569_9172) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3569 (T@Field_3569_9172) T@Field_3569_9305)
(declare-fun HasDirectPerm_3569_9236 (T@PolymorphicMapType_3530 T@Ref T@Field_3569_9172) Bool)
(declare-fun IsWandField_3569_10812 (T@Field_3569_9172) Bool)
(declare-fun WandMaskField_3569 (T@Field_3569_9172) T@Field_3569_9305)
(declare-fun dummyHeap () T@PolymorphicMapType_3509)
(declare-fun ZeroMask () T@PolymorphicMapType_3530)
(declare-fun $allocated () T@Field_3569_53)
(declare-fun InsidePredicate_3569_3569 (T@Field_3569_9172 T@FrameType T@Field_3569_9172 T@FrameType) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_3509) Int)
(declare-fun |fun01#trigger| (T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3569_13775 (T@Field_3569_9305) Bool)
(declare-fun IsWandField_3569_13791 (T@Field_3569_9305) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3569_3583 (T@Field_3582_3583) Bool)
(declare-fun IsWandField_3569_3583 (T@Field_3582_3583) Bool)
(declare-fun IsPredicateField_3569_53 (T@Field_3569_53) Bool)
(declare-fun IsWandField_3569_53 (T@Field_3569_53) Bool)
(declare-fun HasDirectPerm_3569_14146 (T@PolymorphicMapType_3530 T@Ref T@Field_3569_9305) Bool)
(declare-fun HasDirectPerm_3569_3583 (T@PolymorphicMapType_3530 T@Ref T@Field_3582_3583) Bool)
(declare-fun HasDirectPerm_3569_53 (T@PolymorphicMapType_3530 T@Ref T@Field_3569_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun fun01 (T@PolymorphicMapType_3509) Int)
(declare-fun dummyFunction_1318 (Int) Bool)
(declare-fun |fun01#triggerStateless| () Int)
(declare-fun fun02 (T@PolymorphicMapType_3509) Int)
(declare-fun |fun02#triggerStateless| () Int)
(declare-fun fun03 (T@PolymorphicMapType_3509) Int)
(declare-fun |fun03#triggerStateless| () Int)
(declare-fun sumMask (T@PolymorphicMapType_3530 T@PolymorphicMapType_3530 T@PolymorphicMapType_3530) Bool)
(declare-fun |fun01#frame| (T@FrameType) Int)
(declare-fun |fun02#frame| (T@FrameType) Int)
(declare-fun |fun03#frame| (T@FrameType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_3509) (Heap1 T@PolymorphicMapType_3509) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3509) (Mask T@PolymorphicMapType_3530) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3509) (Heap1@@0 T@PolymorphicMapType_3509) (Heap2 T@PolymorphicMapType_3509) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3569_9305) ) (!  (not (select (|PolymorphicMapType_4058_3569_10285#PolymorphicMapType_4058| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4058_3569_10285#PolymorphicMapType_4058| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3569_9172) ) (!  (not (select (|PolymorphicMapType_4058_3569_9172#PolymorphicMapType_4058| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4058_3569_9172#PolymorphicMapType_4058| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3582_3583) ) (!  (not (select (|PolymorphicMapType_4058_3569_3583#PolymorphicMapType_4058| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4058_3569_3583#PolymorphicMapType_4058| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3569_53) ) (!  (not (select (|PolymorphicMapType_4058_3569_53#PolymorphicMapType_4058| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4058_3569_53#PolymorphicMapType_4058| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3509) (Mask@@0 T@PolymorphicMapType_3530) ) (!  (=> (and (state Heap@@0 Mask@@0) (or (< AssumeFunctionsAbove 0) (|fun03#trigger| EmptyFrame))) (and (not (= (|fun03'| Heap@@0) 0)) (not (= (div 1 (|fun03'| Heap@@0)) 1))))
 :qid |stdinbpl.321:15|
 :skolemid |34|
 :pattern ( (state Heap@@0 Mask@@0) (|fun03'| Heap@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3509) (Mask@@1 T@PolymorphicMapType_3530) ) (!  (=> (and (state Heap@@1 Mask@@1) (or (< AssumeFunctionsAbove 2) (|fun02#trigger| EmptyFrame))) (not (= (|fun02'| Heap@@1) 0)))
 :qid |stdinbpl.260:15|
 :skolemid |29|
 :pattern ( (state Heap@@1 Mask@@1) (|fun02'| Heap@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3509) (ExhaleHeap T@PolymorphicMapType_3509) (Mask@@2 T@PolymorphicMapType_3530) (pm_f T@Field_3569_9172) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_3569_9236 Mask@@2 null pm_f) (IsPredicateField_3569_9263 pm_f)) (= (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@2) null (PredicateMaskField_3569 pm_f)) (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| ExhaleHeap) null (PredicateMaskField_3569 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@2) (IsPredicateField_3569_9263 pm_f) (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| ExhaleHeap) null (PredicateMaskField_3569 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3509) (ExhaleHeap@@0 T@PolymorphicMapType_3509) (Mask@@3 T@PolymorphicMapType_3530) (pm_f@@0 T@Field_3569_9172) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_3569_9236 Mask@@3 null pm_f@@0) (IsWandField_3569_10812 pm_f@@0)) (= (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@3) null (WandMaskField_3569 pm_f@@0)) (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| ExhaleHeap@@0) null (WandMaskField_3569 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@3) (IsWandField_3569_10812 pm_f@@0) (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| ExhaleHeap@@0) null (WandMaskField_3569 pm_f@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3509) (ExhaleHeap@@1 T@PolymorphicMapType_3509) (Mask@@4 T@PolymorphicMapType_3530) (pm_f@@1 T@Field_3569_9172) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_3569_9236 Mask@@4 null pm_f@@1) (IsPredicateField_3569_9263 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3569_53) ) (!  (=> (select (|PolymorphicMapType_4058_3569_53#PolymorphicMapType_4058| (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@4) null (PredicateMaskField_3569 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@4) o2 f_2) (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3582_3583) ) (!  (=> (select (|PolymorphicMapType_4058_3569_3583#PolymorphicMapType_4058| (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@4) null (PredicateMaskField_3569 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3569_9172) ) (!  (=> (select (|PolymorphicMapType_4058_3569_9172#PolymorphicMapType_4058| (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@4) null (PredicateMaskField_3569 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3569_9305) ) (!  (=> (select (|PolymorphicMapType_4058_3569_10285#PolymorphicMapType_4058| (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@4) null (PredicateMaskField_3569 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@4) (IsPredicateField_3569_9263 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3509) (ExhaleHeap@@2 T@PolymorphicMapType_3509) (Mask@@5 T@PolymorphicMapType_3530) (pm_f@@2 T@Field_3569_9172) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_3569_9236 Mask@@5 null pm_f@@2) (IsWandField_3569_10812 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3569_53) ) (!  (=> (select (|PolymorphicMapType_4058_3569_53#PolymorphicMapType_4058| (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@5) null (WandMaskField_3569 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3582_3583) ) (!  (=> (select (|PolymorphicMapType_4058_3569_3583#PolymorphicMapType_4058| (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@5) null (WandMaskField_3569 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3569_9172) ) (!  (=> (select (|PolymorphicMapType_4058_3569_9172#PolymorphicMapType_4058| (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@5) null (WandMaskField_3569 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3569_9305) ) (!  (=> (select (|PolymorphicMapType_4058_3569_10285#PolymorphicMapType_4058| (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@5) null (WandMaskField_3569 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@5) (IsWandField_3569_10812 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3509) (ExhaleHeap@@3 T@PolymorphicMapType_3509) (Mask@@6 T@PolymorphicMapType_3530) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3569_9172) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3569_3569 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3569_3569 p v_1 p w))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3509) (ExhaleHeap@@4 T@PolymorphicMapType_3509) (Mask@@7 T@PolymorphicMapType_3530) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3509) (Mask@@8 T@PolymorphicMapType_3530) ) (!  (=> (and (state Heap@@8 Mask@@8) (or (< AssumeFunctionsAbove 1) (|fun01#trigger| EmptyFrame))) (not (= (div 1 (|fun01'| Heap@@8)) 1)))
 :qid |stdinbpl.205:15|
 :skolemid |25|
 :pattern ( (state Heap@@8 Mask@@8) (|fun01'| Heap@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3509) (Mask@@9 T@PolymorphicMapType_3530) ) (!  (=> (and (state Heap@@9 Mask@@9) (or (< AssumeFunctionsAbove 2) (|fun02#trigger| EmptyFrame))) (not (= (div 1 (|fun02'| Heap@@9)) 1)))
 :qid |stdinbpl.264:15|
 :skolemid |30|
 :pattern ( (state Heap@@9 Mask@@9) (|fun02'| Heap@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3530) (o_2@@3 T@Ref) (f_4@@3 T@Field_3569_9305) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| Mask@@10) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3569_13775 f_4@@3))) (not (IsWandField_3569_13791 f_4@@3))) (<= (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| Mask@@10) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| Mask@@10) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3530) (o_2@@4 T@Ref) (f_4@@4 T@Field_3569_9172) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3569_9263 f_4@@4))) (not (IsWandField_3569_10812 f_4@@4))) (<= (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3530) (o_2@@5 T@Ref) (f_4@@5 T@Field_3582_3583) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3569_3583 f_4@@5))) (not (IsWandField_3569_3583 f_4@@5))) (<= (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3530) (o_2@@6 T@Ref) (f_4@@6 T@Field_3569_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3569_53 f_4@@6))) (not (IsWandField_3569_53 f_4@@6))) (<= (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3530) (o_2@@7 T@Ref) (f_4@@7 T@Field_3569_9305) ) (! (= (HasDirectPerm_3569_14146 Mask@@14 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| Mask@@14) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3569_14146 Mask@@14 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3530) (o_2@@8 T@Ref) (f_4@@8 T@Field_3569_9172) ) (! (= (HasDirectPerm_3569_9236 Mask@@15 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| Mask@@15) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3569_9236 Mask@@15 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3530) (o_2@@9 T@Ref) (f_4@@9 T@Field_3582_3583) ) (! (= (HasDirectPerm_3569_3583 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3569_3583 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3530) (o_2@@10 T@Ref) (f_4@@10 T@Field_3569_53) ) (! (= (HasDirectPerm_3569_53 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3569_53 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3509) (ExhaleHeap@@5 T@PolymorphicMapType_3509) (Mask@@18 T@PolymorphicMapType_3530) (o_1@@0 T@Ref) (f_2@@7 T@Field_3569_9305) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_3569_14146 Mask@@18 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@10) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3509) (ExhaleHeap@@6 T@PolymorphicMapType_3509) (Mask@@19 T@PolymorphicMapType_3530) (o_1@@1 T@Ref) (f_2@@8 T@Field_3569_9172) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_3569_9236 Mask@@19 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| Heap@@11) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3509) (ExhaleHeap@@7 T@PolymorphicMapType_3509) (Mask@@20 T@PolymorphicMapType_3530) (o_1@@2 T@Ref) (f_2@@9 T@Field_3582_3583) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_3569_3583 Mask@@20 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@12) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3509) (ExhaleHeap@@8 T@PolymorphicMapType_3509) (Mask@@21 T@PolymorphicMapType_3530) (o_1@@3 T@Ref) (f_2@@10 T@Field_3569_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_3569_53 Mask@@21 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@13) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3509) ) (!  (and (= (fun01 Heap@@14) (|fun01'| Heap@@14)) (dummyFunction_1318 |fun01#triggerStateless|))
 :qid |stdinbpl.188:15|
 :skolemid |22|
 :pattern ( (fun01 Heap@@14))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3509) ) (!  (and (= (fun02 Heap@@15) (|fun02'| Heap@@15)) (dummyFunction_1318 |fun02#triggerStateless|))
 :qid |stdinbpl.243:15|
 :skolemid |26|
 :pattern ( (fun02 Heap@@15))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3509) ) (!  (and (= (fun03 Heap@@16) (|fun03'| Heap@@16)) (dummyFunction_1318 |fun03#triggerStateless|))
 :qid |stdinbpl.304:15|
 :skolemid |31|
 :pattern ( (fun03 Heap@@16))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3569_9305) ) (! (= (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3569_9172) ) (! (= (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3582_3583) ) (! (= (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3569_53) ) (! (= (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3530) (SummandMask1 T@PolymorphicMapType_3530) (SummandMask2 T@PolymorphicMapType_3530) (o_2@@15 T@Ref) (f_4@@15 T@Field_3569_9305) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3530_3569_12866#PolymorphicMapType_3530| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3530) (SummandMask1@@0 T@PolymorphicMapType_3530) (SummandMask2@@0 T@PolymorphicMapType_3530) (o_2@@16 T@Ref) (f_4@@16 T@Field_3569_9172) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3530_3569_9172#PolymorphicMapType_3530| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3530) (SummandMask1@@1 T@PolymorphicMapType_3530) (SummandMask2@@1 T@PolymorphicMapType_3530) (o_2@@17 T@Ref) (f_4@@17 T@Field_3582_3583) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3530_3569_3583#PolymorphicMapType_3530| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3530) (SummandMask1@@2 T@PolymorphicMapType_3530) (SummandMask2@@2 T@PolymorphicMapType_3530) (o_2@@18 T@Ref) (f_4@@18 T@Field_3569_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3530_3569_53#PolymorphicMapType_3530| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3509) ) (! (dummyFunction_1318 |fun01#triggerStateless|)
 :qid |stdinbpl.192:15|
 :skolemid |23|
 :pattern ( (|fun01'| Heap@@17))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3509) ) (! (dummyFunction_1318 |fun02#triggerStateless|)
 :qid |stdinbpl.247:15|
 :skolemid |27|
 :pattern ( (|fun02'| Heap@@18))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3509) ) (! (dummyFunction_1318 |fun03#triggerStateless|)
 :qid |stdinbpl.308:15|
 :skolemid |32|
 :pattern ( (|fun03'| Heap@@19))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3509) (Mask@@22 T@PolymorphicMapType_3530) ) (!  (=> (state Heap@@20 Mask@@22) (= (|fun01'| Heap@@20) (|fun01#frame| EmptyFrame)))
 :qid |stdinbpl.199:15|
 :skolemid |24|
 :pattern ( (state Heap@@20 Mask@@22) (|fun01'| Heap@@20))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3509) (Mask@@23 T@PolymorphicMapType_3530) ) (!  (=> (state Heap@@21 Mask@@23) (= (|fun02'| Heap@@21) (|fun02#frame| EmptyFrame)))
 :qid |stdinbpl.254:15|
 :skolemid |28|
 :pattern ( (state Heap@@21 Mask@@23) (|fun02'| Heap@@21))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3509) (Mask@@24 T@PolymorphicMapType_3530) ) (!  (=> (state Heap@@22 Mask@@24) (= (|fun03'| Heap@@22) (|fun03#frame| EmptyFrame)))
 :qid |stdinbpl.315:15|
 :skolemid |33|
 :pattern ( (state Heap@@22 Mask@@24) (|fun03'| Heap@@22))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3509) (o T@Ref) (f_3 T@Field_3569_9172) (v T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_3509 (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@23) (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@23) (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@23) (store (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| Heap@@23) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3509 (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@23) (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@23) (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@23) (store (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| Heap@@23) o f_3 v)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3509) (o@@0 T@Ref) (f_3@@0 T@Field_3569_9305) (v@@0 T@PolymorphicMapType_4058) ) (! (succHeap Heap@@24 (PolymorphicMapType_3509 (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@24) (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@24) (store (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3509 (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@24) (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@24) (store (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3509) (o@@1 T@Ref) (f_3@@1 T@Field_3582_3583) (v@@1 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_3509 (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@25) (store (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@25) (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3509 (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@25) (store (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@25) (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3509) (o@@2 T@Ref) (f_3@@2 T@Field_3569_53) (v@@2 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_3509 (store (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@26) (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@26) (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3509 (store (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@26) (|PolymorphicMapType_3509_3569_9349#PolymorphicMapType_3509| Heap@@26) (|PolymorphicMapType_3509_3569_9172#PolymorphicMapType_3509| Heap@@26)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3582_3583) (Heap@@27 T@PolymorphicMapType_3509) ) (!  (=> (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@27) o@@3 $allocated) (select (|PolymorphicMapType_3509_1787_53#PolymorphicMapType_3509| Heap@@27) (select (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@27) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3509_1790_1791#PolymorphicMapType_3509| Heap@@27) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3569_9172) (v_1@@0 T@FrameType) (q T@Field_3569_9172) (w@@0 T@FrameType) (r T@Field_3569_9172) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3569_3569 p@@1 v_1@@0 q w@@0) (InsidePredicate_3569_3569 q w@@0 r u)) (InsidePredicate_3569_3569 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3569_3569 p@@1 v_1@@0 q w@@0) (InsidePredicate_3569_3569 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@28 () T@PolymorphicMapType_3509)
(declare-fun Result () Int)
(set-info :boogie-vc-id |fun02#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (state Heap@@28 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (= AssumeFunctionsAbove 2) (not (= Result 0))) (and (state Heap@@28 ZeroMask) (= (ControlFlow 0 2) (- 0 1)))) (not (= Result 0))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
