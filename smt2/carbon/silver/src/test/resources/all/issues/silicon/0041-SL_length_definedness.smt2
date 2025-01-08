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
(declare-sort T@Field_11327_53 0)
(declare-sort T@Field_11340_11341 0)
(declare-sort T@Field_15043_15044 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17672_17677 0)
(declare-sort T@Field_5615_5655 0)
(declare-sort T@Field_5615_17677 0)
(declare-sort T@Field_5654_5616 0)
(declare-sort T@Field_5654_53 0)
(declare-datatypes ((T@PolymorphicMapType_11288 0)) (((PolymorphicMapType_11288 (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| (Array T@Ref T@Field_15043_15044 Real)) (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| (Array T@Ref T@Field_11340_11341 Real)) (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| (Array T@Ref T@Field_5654_5616 Real)) (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| (Array T@Ref T@Field_5654_53 Real)) (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| (Array T@Ref T@Field_17672_17677 Real)) (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| (Array T@Ref T@Field_5615_5655 Real)) (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| (Array T@Ref T@Field_11327_53 Real)) (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| (Array T@Ref T@Field_5615_17677 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11816 0)) (((PolymorphicMapType_11816 (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (Array T@Ref T@Field_11340_11341 Bool)) (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (Array T@Ref T@Field_11327_53 Bool)) (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (Array T@Ref T@Field_5615_5655 Bool)) (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (Array T@Ref T@Field_5615_17677 Bool)) (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (Array T@Ref T@Field_5654_5616 Bool)) (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (Array T@Ref T@Field_5654_53 Bool)) (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (Array T@Ref T@Field_15043_15044 Bool)) (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (Array T@Ref T@Field_17672_17677 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11267 0)) (((PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| (Array T@Ref T@Field_11327_53 Bool)) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| (Array T@Ref T@Field_11340_11341 T@Ref)) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| (Array T@Ref T@Field_15043_15044 T@FrameType)) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| (Array T@Ref T@Field_17672_17677 T@PolymorphicMapType_11816)) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| (Array T@Ref T@Field_5615_5655 T@FrameType)) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| (Array T@Ref T@Field_5615_17677 T@PolymorphicMapType_11816)) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| (Array T@Ref T@Field_5654_5616 T@Ref)) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| (Array T@Ref T@Field_5654_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_11327_53)
(declare-fun next () T@Field_11340_11341)
(declare-fun succHeap (T@PolymorphicMapType_11267 T@PolymorphicMapType_11267) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11267 T@PolymorphicMapType_11267) Bool)
(declare-fun state (T@PolymorphicMapType_11267 T@PolymorphicMapType_11288) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11288) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11267 T@PolymorphicMapType_11267 T@PolymorphicMapType_11288) Bool)
(declare-fun IsPredicateField_5654_5655 (T@Field_15043_15044) Bool)
(declare-fun HasDirectPerm_5654_5655 (T@PolymorphicMapType_11288 T@Ref T@Field_15043_15044) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5654 (T@Field_15043_15044) T@Field_17672_17677)
(declare-fun IsPredicateField_5615_42141 (T@Field_5615_5655) Bool)
(declare-fun HasDirectPerm_5615_5655 (T@PolymorphicMapType_11288 T@Ref T@Field_5615_5655) Bool)
(declare-fun PredicateMaskField_5615 (T@Field_5615_5655) T@Field_5615_17677)
(declare-fun IsWandField_5654_45427 (T@Field_15043_15044) Bool)
(declare-fun WandMaskField_5654 (T@Field_15043_15044) T@Field_17672_17677)
(declare-fun IsWandField_5615_45070 (T@Field_5615_5655) Bool)
(declare-fun WandMaskField_5615 (T@Field_5615_5655) T@Field_5615_17677)
(declare-fun ZeroPMask () T@PolymorphicMapType_11816)
(declare-fun SL (T@Ref) T@Field_15043_15044)
(declare-fun |SL_length'| (T@PolymorphicMapType_11267 T@Ref) Int)
(declare-fun dummyFunction_1464 (Int) Bool)
(declare-fun |SL_length#triggerStateless| (T@Ref) Int)
(declare-fun |SL#trigger_5654| (T@PolymorphicMapType_11267 T@Field_15043_15044) Bool)
(declare-fun |SL#everUsed_5654| (T@Field_15043_15044) Bool)
(declare-fun SL_length (T@PolymorphicMapType_11267 T@Ref) Int)
(declare-fun |SL#sm| (T@Ref) T@Field_17672_17677)
(declare-fun dummyHeap () T@PolymorphicMapType_11267)
(declare-fun ZeroMask () T@PolymorphicMapType_11288)
(declare-fun InsidePredicate_11327_11327 (T@Field_5615_5655 T@FrameType T@Field_5615_5655 T@FrameType) Bool)
(declare-fun InsidePredicate_5654_5654 (T@Field_15043_15044 T@FrameType T@Field_15043_15044 T@FrameType) Bool)
(declare-fun IsPredicateField_5615_5616 (T@Field_11340_11341) Bool)
(declare-fun IsWandField_5615_5616 (T@Field_11340_11341) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5615_51138 (T@Field_5615_17677) Bool)
(declare-fun IsWandField_5615_51154 (T@Field_5615_17677) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5615_53 (T@Field_11327_53) Bool)
(declare-fun IsWandField_5615_53 (T@Field_11327_53) Bool)
(declare-fun IsPredicateField_5654_50489 (T@Field_17672_17677) Bool)
(declare-fun IsWandField_5654_50505 (T@Field_17672_17677) Bool)
(declare-fun IsPredicateField_5654_53 (T@Field_5654_53) Bool)
(declare-fun IsWandField_5654_53 (T@Field_5654_53) Bool)
(declare-fun IsPredicateField_5654_5616 (T@Field_5654_5616) Bool)
(declare-fun IsWandField_5654_5616 (T@Field_5654_5616) Bool)
(declare-fun HasDirectPerm_5654_41896 (T@PolymorphicMapType_11288 T@Ref T@Field_17672_17677) Bool)
(declare-fun HasDirectPerm_5654_53 (T@PolymorphicMapType_11288 T@Ref T@Field_5654_53) Bool)
(declare-fun HasDirectPerm_5654_5616 (T@PolymorphicMapType_11288 T@Ref T@Field_5654_5616) Bool)
(declare-fun HasDirectPerm_5615_40976 (T@PolymorphicMapType_11288 T@Ref T@Field_5615_17677) Bool)
(declare-fun HasDirectPerm_5615_53 (T@PolymorphicMapType_11288 T@Ref T@Field_11327_53) Bool)
(declare-fun HasDirectPerm_5615_5616 (T@PolymorphicMapType_11288 T@Ref T@Field_11340_11341) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11288 T@PolymorphicMapType_11288 T@PolymorphicMapType_11288) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |SL_length#frame| (T@FrameType T@Ref) Int)
(declare-fun |SL_length#trigger| (T@FrameType T@Ref) Bool)
(declare-fun getPredWandId_5654_5655 (T@Field_15043_15044) Int)
(declare-fun InsidePredicate_11327_5654 (T@Field_5615_5655 T@FrameType T@Field_15043_15044 T@FrameType) Bool)
(declare-fun InsidePredicate_5654_11327 (T@Field_15043_15044 T@FrameType T@Field_5615_5655 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_11267) (Heap1 T@PolymorphicMapType_11267) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11267) (Mask T@PolymorphicMapType_11288) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11267) (ExhaleHeap T@PolymorphicMapType_11267) (Mask@@0 T@PolymorphicMapType_11288) (pm_f_12 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5654_5655 Mask@@0 null pm_f_12) (IsPredicateField_5654_5655 pm_f_12)) (and (and (and (and (and (and (and (forall ((o2_12 T@Ref) (f_18 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_12))) o2_12 f_18) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@0) o2_12 f_18) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap) o2_12 f_18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap) o2_12 f_18))
)) (forall ((o2_12@@0 T@Ref) (f_18@@0 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_12))) o2_12@@0 f_18@@0) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@0) o2_12@@0 f_18@@0) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap) o2_12@@0 f_18@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap) o2_12@@0 f_18@@0))
))) (forall ((o2_12@@1 T@Ref) (f_18@@1 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_12))) o2_12@@1 f_18@@1) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@0) o2_12@@1 f_18@@1) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap) o2_12@@1 f_18@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap) o2_12@@1 f_18@@1))
))) (forall ((o2_12@@2 T@Ref) (f_18@@2 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_12))) o2_12@@2 f_18@@2) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@0) o2_12@@2 f_18@@2) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap) o2_12@@2 f_18@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap) o2_12@@2 f_18@@2))
))) (forall ((o2_12@@3 T@Ref) (f_18@@3 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_12))) o2_12@@3 f_18@@3) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@0) o2_12@@3 f_18@@3) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap) o2_12@@3 f_18@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap) o2_12@@3 f_18@@3))
))) (forall ((o2_12@@4 T@Ref) (f_18@@4 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_12))) o2_12@@4 f_18@@4) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@0) o2_12@@4 f_18@@4) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap) o2_12@@4 f_18@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap) o2_12@@4 f_18@@4))
))) (forall ((o2_12@@5 T@Ref) (f_18@@5 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_12))) o2_12@@5 f_18@@5) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@0) o2_12@@5 f_18@@5) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap) o2_12@@5 f_18@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap) o2_12@@5 f_18@@5))
))) (forall ((o2_12@@6 T@Ref) (f_18@@6 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_12))) o2_12@@6 f_18@@6) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) o2_12@@6 f_18@@6) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap) o2_12@@6 f_18@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap) o2_12@@6 f_18@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5654_5655 pm_f_12))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11267) (ExhaleHeap@@0 T@PolymorphicMapType_11267) (Mask@@1 T@PolymorphicMapType_11288) (pm_f_12@@0 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5615_5655 Mask@@1 null pm_f_12@@0) (IsPredicateField_5615_42141 pm_f_12@@0)) (and (and (and (and (and (and (and (forall ((o2_12@@7 T@Ref) (f_18@@7 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_12@@0))) o2_12@@7 f_18@@7) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@1) o2_12@@7 f_18@@7) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@7 f_18@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@7 f_18@@7))
)) (forall ((o2_12@@8 T@Ref) (f_18@@8 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_12@@0))) o2_12@@8 f_18@@8) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@1) o2_12@@8 f_18@@8) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@8 f_18@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@8 f_18@@8))
))) (forall ((o2_12@@9 T@Ref) (f_18@@9 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_12@@0))) o2_12@@9 f_18@@9) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@1) o2_12@@9 f_18@@9) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@9 f_18@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@9 f_18@@9))
))) (forall ((o2_12@@10 T@Ref) (f_18@@10 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_12@@0))) o2_12@@10 f_18@@10) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) o2_12@@10 f_18@@10) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@10 f_18@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@10 f_18@@10))
))) (forall ((o2_12@@11 T@Ref) (f_18@@11 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_12@@0))) o2_12@@11 f_18@@11) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@1) o2_12@@11 f_18@@11) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@11 f_18@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@11 f_18@@11))
))) (forall ((o2_12@@12 T@Ref) (f_18@@12 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_12@@0))) o2_12@@12 f_18@@12) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@1) o2_12@@12 f_18@@12) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@12 f_18@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@12 f_18@@12))
))) (forall ((o2_12@@13 T@Ref) (f_18@@13 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_12@@0))) o2_12@@13 f_18@@13) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@1) o2_12@@13 f_18@@13) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@13 f_18@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@13 f_18@@13))
))) (forall ((o2_12@@14 T@Ref) (f_18@@14 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_12@@0))) o2_12@@14 f_18@@14) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@1) o2_12@@14 f_18@@14) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@14 f_18@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@0) o2_12@@14 f_18@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5615_42141 pm_f_12@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11267) (ExhaleHeap@@1 T@PolymorphicMapType_11267) (Mask@@2 T@PolymorphicMapType_11288) (pm_f_12@@1 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5654_5655 Mask@@2 null pm_f_12@@1) (IsWandField_5654_45427 pm_f_12@@1)) (and (and (and (and (and (and (and (forall ((o2_12@@15 T@Ref) (f_18@@15 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_12@@1))) o2_12@@15 f_18@@15) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@2) o2_12@@15 f_18@@15) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@15 f_18@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@15 f_18@@15))
)) (forall ((o2_12@@16 T@Ref) (f_18@@16 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_12@@1))) o2_12@@16 f_18@@16) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@2) o2_12@@16 f_18@@16) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@16 f_18@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@16 f_18@@16))
))) (forall ((o2_12@@17 T@Ref) (f_18@@17 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_12@@1))) o2_12@@17 f_18@@17) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@2) o2_12@@17 f_18@@17) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@17 f_18@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@17 f_18@@17))
))) (forall ((o2_12@@18 T@Ref) (f_18@@18 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_12@@1))) o2_12@@18 f_18@@18) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@2) o2_12@@18 f_18@@18) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@18 f_18@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@18 f_18@@18))
))) (forall ((o2_12@@19 T@Ref) (f_18@@19 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_12@@1))) o2_12@@19 f_18@@19) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@2) o2_12@@19 f_18@@19) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@19 f_18@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@19 f_18@@19))
))) (forall ((o2_12@@20 T@Ref) (f_18@@20 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_12@@1))) o2_12@@20 f_18@@20) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@2) o2_12@@20 f_18@@20) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@20 f_18@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@20 f_18@@20))
))) (forall ((o2_12@@21 T@Ref) (f_18@@21 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_12@@1))) o2_12@@21 f_18@@21) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@2) o2_12@@21 f_18@@21) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@21 f_18@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@21 f_18@@21))
))) (forall ((o2_12@@22 T@Ref) (f_18@@22 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_12@@1))) o2_12@@22 f_18@@22) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) o2_12@@22 f_18@@22) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@22 f_18@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@1) o2_12@@22 f_18@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_5654_45427 pm_f_12@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11267) (ExhaleHeap@@2 T@PolymorphicMapType_11267) (Mask@@3 T@PolymorphicMapType_11288) (pm_f_12@@2 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5615_5655 Mask@@3 null pm_f_12@@2) (IsWandField_5615_45070 pm_f_12@@2)) (and (and (and (and (and (and (and (forall ((o2_12@@23 T@Ref) (f_18@@23 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_12@@2))) o2_12@@23 f_18@@23) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@3) o2_12@@23 f_18@@23) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@23 f_18@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@23 f_18@@23))
)) (forall ((o2_12@@24 T@Ref) (f_18@@24 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_12@@2))) o2_12@@24 f_18@@24) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@3) o2_12@@24 f_18@@24) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@24 f_18@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@24 f_18@@24))
))) (forall ((o2_12@@25 T@Ref) (f_18@@25 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_12@@2))) o2_12@@25 f_18@@25) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@3) o2_12@@25 f_18@@25) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@25 f_18@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@25 f_18@@25))
))) (forall ((o2_12@@26 T@Ref) (f_18@@26 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_12@@2))) o2_12@@26 f_18@@26) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) o2_12@@26 f_18@@26) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@26 f_18@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@26 f_18@@26))
))) (forall ((o2_12@@27 T@Ref) (f_18@@27 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_12@@2))) o2_12@@27 f_18@@27) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@3) o2_12@@27 f_18@@27) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@27 f_18@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@27 f_18@@27))
))) (forall ((o2_12@@28 T@Ref) (f_18@@28 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_12@@2))) o2_12@@28 f_18@@28) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@3) o2_12@@28 f_18@@28) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@28 f_18@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@28 f_18@@28))
))) (forall ((o2_12@@29 T@Ref) (f_18@@29 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_12@@2))) o2_12@@29 f_18@@29) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@3) o2_12@@29 f_18@@29) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@29 f_18@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@29 f_18@@29))
))) (forall ((o2_12@@30 T@Ref) (f_18@@30 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_12@@2))) o2_12@@30 f_18@@30) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@3) o2_12@@30 f_18@@30) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@30 f_18@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@2) o2_12@@30 f_18@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5615_45070 pm_f_12@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11267) (Heap1@@0 T@PolymorphicMapType_11267) (Heap2 T@PolymorphicMapType_11267) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17672_17677) ) (!  (not (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_15043_15044) ) (!  (not (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5654_53) ) (!  (not (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5654_5616) ) (!  (not (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5615_17677) ) (!  (not (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5615_5655) ) (!  (not (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_11327_53) ) (!  (not (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11340_11341) ) (!  (not (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_5654_5655 (SL x))
 :qid |stdinbpl.348:15|
 :skolemid |30|
 :pattern ( (SL x))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11267) (x@@0 T@Ref) ) (! (dummyFunction_1464 (|SL_length#triggerStateless| x@@0))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|SL_length'| Heap@@4 x@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11267) (x@@1 T@Ref) ) (! (|SL#everUsed_5654| (SL x@@1))
 :qid |stdinbpl.367:15|
 :skolemid |34|
 :pattern ( (|SL#trigger_5654| Heap@@5 (SL x@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11267) (x@@2 T@Ref) ) (!  (and (= (SL_length Heap@@6 x@@2) (|SL_length'| Heap@@6 x@@2)) (dummyFunction_1464 (|SL_length#triggerStateless| x@@2)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (SL_length Heap@@6 x@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11267) (ExhaleHeap@@3 T@PolymorphicMapType_11267) (Mask@@4 T@PolymorphicMapType_11288) (pm_f_12@@3 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5654_5655 Mask@@4 null pm_f_12@@3) (IsPredicateField_5654_5655 pm_f_12@@3)) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@7) null (PredicateMaskField_5654 pm_f_12@@3)) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@3) null (PredicateMaskField_5654 pm_f_12@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5654_5655 pm_f_12@@3) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@3) null (PredicateMaskField_5654 pm_f_12@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11267) (ExhaleHeap@@4 T@PolymorphicMapType_11267) (Mask@@5 T@PolymorphicMapType_11288) (pm_f_12@@4 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5615_5655 Mask@@5 null pm_f_12@@4) (IsPredicateField_5615_42141 pm_f_12@@4)) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@8) null (PredicateMaskField_5615 pm_f_12@@4)) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@4) null (PredicateMaskField_5615 pm_f_12@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5615_42141 pm_f_12@@4) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@4) null (PredicateMaskField_5615 pm_f_12@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11267) (ExhaleHeap@@5 T@PolymorphicMapType_11267) (Mask@@6 T@PolymorphicMapType_11288) (pm_f_12@@5 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5654_5655 Mask@@6 null pm_f_12@@5) (IsWandField_5654_45427 pm_f_12@@5)) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@9) null (WandMaskField_5654 pm_f_12@@5)) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@5) null (WandMaskField_5654 pm_f_12@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_5654_45427 pm_f_12@@5) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@5) null (WandMaskField_5654 pm_f_12@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11267) (ExhaleHeap@@6 T@PolymorphicMapType_11267) (Mask@@7 T@PolymorphicMapType_11288) (pm_f_12@@6 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5615_5655 Mask@@7 null pm_f_12@@6) (IsWandField_5615_45070 pm_f_12@@6)) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@10) null (WandMaskField_5615 pm_f_12@@6)) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@6) null (WandMaskField_5615 pm_f_12@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_5615_45070 pm_f_12@@6) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@6) null (WandMaskField_5615 pm_f_12@@6)))
)))
(assert (forall ((x@@3 T@Ref) (x2 T@Ref) ) (!  (=> (= (SL x@@3) (SL x2)) (= x@@3 x2))
 :qid |stdinbpl.358:15|
 :skolemid |32|
 :pattern ( (SL x@@3) (SL x2))
)))
(assert (forall ((x@@4 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|SL#sm| x@@4) (|SL#sm| x2@@0)) (= x@@4 x2@@0))
 :qid |stdinbpl.362:15|
 :skolemid |33|
 :pattern ( (|SL#sm| x@@4) (|SL#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11267) (ExhaleHeap@@7 T@PolymorphicMapType_11267) (Mask@@8 T@PolymorphicMapType_11288) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@11) o_13 $allocated) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@7) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@7) o_13 $allocated))
)))
(assert (forall ((p T@Field_5615_5655) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11327_11327 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11327_11327 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_15043_15044) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_5654_5654 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5654_5654 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5615_5616 next)))
(assert  (not (IsWandField_5615_5616 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11267) (ExhaleHeap@@8 T@PolymorphicMapType_11267) (Mask@@9 T@PolymorphicMapType_11288) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11288) (o_2@@7 T@Ref) (f_4@@7 T@Field_5615_17677) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5615_51138 f_4@@7))) (not (IsWandField_5615_51154 f_4@@7))) (<= (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11288) (o_2@@8 T@Ref) (f_4@@8 T@Field_11327_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5615_53 f_4@@8))) (not (IsWandField_5615_53 f_4@@8))) (<= (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11288) (o_2@@9 T@Ref) (f_4@@9 T@Field_11340_11341) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5615_5616 f_4@@9))) (not (IsWandField_5615_5616 f_4@@9))) (<= (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11288) (o_2@@10 T@Ref) (f_4@@10 T@Field_5615_5655) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5615_42141 f_4@@10))) (not (IsWandField_5615_45070 f_4@@10))) (<= (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11288) (o_2@@11 T@Ref) (f_4@@11 T@Field_17672_17677) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5654_50489 f_4@@11))) (not (IsWandField_5654_50505 f_4@@11))) (<= (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11288) (o_2@@12 T@Ref) (f_4@@12 T@Field_5654_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5654_53 f_4@@12))) (not (IsWandField_5654_53 f_4@@12))) (<= (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_11288) (o_2@@13 T@Ref) (f_4@@13 T@Field_5654_5616) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5654_5616 f_4@@13))) (not (IsWandField_5654_5616 f_4@@13))) (<= (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11288) (o_2@@14 T@Ref) (f_4@@14 T@Field_15043_15044) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5654_5655 f_4@@14))) (not (IsWandField_5654_45427 f_4@@14))) (<= (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11288) (o_2@@15 T@Ref) (f_4@@15 T@Field_17672_17677) ) (! (= (HasDirectPerm_5654_41896 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5654_41896 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11288) (o_2@@16 T@Ref) (f_4@@16 T@Field_5654_53) ) (! (= (HasDirectPerm_5654_53 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5654_53 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11288) (o_2@@17 T@Ref) (f_4@@17 T@Field_15043_15044) ) (! (= (HasDirectPerm_5654_5655 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5654_5655 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11288) (o_2@@18 T@Ref) (f_4@@18 T@Field_5654_5616) ) (! (= (HasDirectPerm_5654_5616 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5654_5616 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_11288) (o_2@@19 T@Ref) (f_4@@19 T@Field_5615_17677) ) (! (= (HasDirectPerm_5615_40976 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5615_40976 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_11288) (o_2@@20 T@Ref) (f_4@@20 T@Field_11327_53) ) (! (= (HasDirectPerm_5615_53 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5615_53 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11288) (o_2@@21 T@Ref) (f_4@@21 T@Field_5615_5655) ) (! (= (HasDirectPerm_5615_5655 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5615_5655 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11288) (o_2@@22 T@Ref) (f_4@@22 T@Field_11340_11341) ) (! (= (HasDirectPerm_5615_5616 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5615_5616 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11267) (ExhaleHeap@@9 T@PolymorphicMapType_11267) (Mask@@26 T@PolymorphicMapType_11288) (o_13@@0 T@Ref) (f_18@@31 T@Field_17672_17677) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_5654_41896 Mask@@26 o_13@@0 f_18@@31) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@13) o_13@@0 f_18@@31) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@9) o_13@@0 f_18@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@9) o_13@@0 f_18@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11267) (ExhaleHeap@@10 T@PolymorphicMapType_11267) (Mask@@27 T@PolymorphicMapType_11288) (o_13@@1 T@Ref) (f_18@@32 T@Field_5654_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_5654_53 Mask@@27 o_13@@1 f_18@@32) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@14) o_13@@1 f_18@@32) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@10) o_13@@1 f_18@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@10) o_13@@1 f_18@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11267) (ExhaleHeap@@11 T@PolymorphicMapType_11267) (Mask@@28 T@PolymorphicMapType_11288) (o_13@@2 T@Ref) (f_18@@33 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_5654_5655 Mask@@28 o_13@@2 f_18@@33) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@15) o_13@@2 f_18@@33) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@11) o_13@@2 f_18@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@11) o_13@@2 f_18@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11267) (ExhaleHeap@@12 T@PolymorphicMapType_11267) (Mask@@29 T@PolymorphicMapType_11288) (o_13@@3 T@Ref) (f_18@@34 T@Field_5654_5616) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_5654_5616 Mask@@29 o_13@@3 f_18@@34) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@16) o_13@@3 f_18@@34) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@12) o_13@@3 f_18@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@12) o_13@@3 f_18@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11267) (ExhaleHeap@@13 T@PolymorphicMapType_11267) (Mask@@30 T@PolymorphicMapType_11288) (o_13@@4 T@Ref) (f_18@@35 T@Field_5615_17677) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_5615_40976 Mask@@30 o_13@@4 f_18@@35) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@17) o_13@@4 f_18@@35) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@13) o_13@@4 f_18@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@13) o_13@@4 f_18@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11267) (ExhaleHeap@@14 T@PolymorphicMapType_11267) (Mask@@31 T@PolymorphicMapType_11288) (o_13@@5 T@Ref) (f_18@@36 T@Field_11327_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_5615_53 Mask@@31 o_13@@5 f_18@@36) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@18) o_13@@5 f_18@@36) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@14) o_13@@5 f_18@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@14) o_13@@5 f_18@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11267) (ExhaleHeap@@15 T@PolymorphicMapType_11267) (Mask@@32 T@PolymorphicMapType_11288) (o_13@@6 T@Ref) (f_18@@37 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_5615_5655 Mask@@32 o_13@@6 f_18@@37) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@19) o_13@@6 f_18@@37) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@15) o_13@@6 f_18@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@15) o_13@@6 f_18@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11267) (ExhaleHeap@@16 T@PolymorphicMapType_11267) (Mask@@33 T@PolymorphicMapType_11288) (o_13@@7 T@Ref) (f_18@@38 T@Field_11340_11341) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_5615_5616 Mask@@33 o_13@@7 f_18@@38) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@20) o_13@@7 f_18@@38) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@16) o_13@@7 f_18@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@16) o_13@@7 f_18@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_5615_17677) ) (! (= (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_11327_53) ) (! (= (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_11340_11341) ) (! (= (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_5615_5655) ) (! (= (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_17672_17677) ) (! (= (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_5654_53) ) (! (= (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_5654_5616) ) (! (= (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_15043_15044) ) (! (= (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11288) (SummandMask1 T@PolymorphicMapType_11288) (SummandMask2 T@PolymorphicMapType_11288) (o_2@@31 T@Ref) (f_4@@31 T@Field_5615_17677) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11288) (SummandMask1@@0 T@PolymorphicMapType_11288) (SummandMask2@@0 T@PolymorphicMapType_11288) (o_2@@32 T@Ref) (f_4@@32 T@Field_11327_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11288) (SummandMask1@@1 T@PolymorphicMapType_11288) (SummandMask2@@1 T@PolymorphicMapType_11288) (o_2@@33 T@Ref) (f_4@@33 T@Field_11340_11341) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11288) (SummandMask1@@2 T@PolymorphicMapType_11288) (SummandMask2@@2 T@PolymorphicMapType_11288) (o_2@@34 T@Ref) (f_4@@34 T@Field_5615_5655) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11288) (SummandMask1@@3 T@PolymorphicMapType_11288) (SummandMask2@@3 T@PolymorphicMapType_11288) (o_2@@35 T@Ref) (f_4@@35 T@Field_17672_17677) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_11288) (SummandMask1@@4 T@PolymorphicMapType_11288) (SummandMask2@@4 T@PolymorphicMapType_11288) (o_2@@36 T@Ref) (f_4@@36 T@Field_5654_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_11288) (SummandMask1@@5 T@PolymorphicMapType_11288) (SummandMask2@@5 T@PolymorphicMapType_11288) (o_2@@37 T@Ref) (f_4@@37 T@Field_5654_5616) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_11288) (SummandMask1@@6 T@PolymorphicMapType_11288) (SummandMask2@@6 T@PolymorphicMapType_11288) (o_2@@38 T@Ref) (f_4@@38 T@Field_15043_15044) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11267) (Mask@@34 T@PolymorphicMapType_11288) (x@@5 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@34) (< AssumeFunctionsAbove 0)) (= (SL_length Heap@@21 x@@5) (+ 1 (ite (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@21) x@@5 next) null) 0 (|SL_length'| Heap@@21 (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@21) x@@5 next))))))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap@@21 Mask@@34) (SL_length Heap@@21 x@@5))
 :pattern ( (state Heap@@21 Mask@@34) (|SL_length#triggerStateless| x@@5) (|SL#trigger_5654| Heap@@21 (SL x@@5)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11267) (Mask@@35 T@PolymorphicMapType_11288) (x@@6 T@Ref) ) (!  (=> (state Heap@@22 Mask@@35) (= (|SL_length'| Heap@@22 x@@6) (|SL_length#frame| (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@22) null (SL x@@6)) x@@6)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@22 Mask@@35) (|SL_length'| Heap@@22 x@@6))
 :pattern ( (state Heap@@22 Mask@@35) (|SL_length#triggerStateless| x@@6) (|SL#trigger_5654| Heap@@22 (SL x@@6)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11267) (Mask@@36 T@PolymorphicMapType_11288) (x@@7 T@Ref) ) (!  (=> (and (state Heap@@23 Mask@@36) (or (< AssumeFunctionsAbove 0) (|SL_length#trigger| (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@23) null (SL x@@7)) x@@7))) (> (|SL_length'| Heap@@23 x@@7) 0))
 :qid |stdinbpl.217:15|
 :skolemid |26|
 :pattern ( (state Heap@@23 Mask@@36) (|SL_length'| Heap@@23 x@@7))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (getPredWandId_5654_5655 (SL x@@8)) 0)
 :qid |stdinbpl.352:15|
 :skolemid |31|
 :pattern ( (SL x@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11267) (o_34 T@Ref) (f_36 T@Field_17672_17677) (v T@PolymorphicMapType_11816) ) (! (succHeap Heap@@24 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@24) (store (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@24) o_34 f_36 v) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@24) (store (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@24) o_34 f_36 v) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11267) (o_34@@0 T@Ref) (f_36@@0 T@Field_15043_15044) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@25) (store (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@25) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@25) (store (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@25) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11267) (o_34@@1 T@Ref) (f_36@@1 T@Field_5654_5616) (v@@1 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@26) (store (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@26) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@26) (store (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@26) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11267) (o_34@@2 T@Ref) (f_36@@2 T@Field_5654_53) (v@@2 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@27) (store (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@27) o_34@@2 f_36@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@27) (store (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@27) o_34@@2 f_36@@2 v@@2)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11267) (o_34@@3 T@Ref) (f_36@@3 T@Field_5615_17677) (v@@3 T@PolymorphicMapType_11816) ) (! (succHeap Heap@@28 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@28) (store (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@28) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@28) (store (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@28) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11267) (o_34@@4 T@Ref) (f_36@@4 T@Field_5615_5655) (v@@4 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@29) (store (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@29) o_34@@4 f_36@@4 v@@4) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@29) (store (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@29) o_34@@4 f_36@@4 v@@4) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11267) (o_34@@5 T@Ref) (f_36@@5 T@Field_11340_11341) (v@@5 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@30) (store (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@30) o_34@@5 f_36@@5 v@@5) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@30) (store (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@30) o_34@@5 f_36@@5 v@@5) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11267) (o_34@@6 T@Ref) (f_36@@6 T@Field_11327_53) (v@@6 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_11267 (store (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@31) o_34@@6 f_36@@6 v@@6) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (store (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@31) o_34@@6 f_36@@6 v@@6) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@31)))
)))
(assert (forall ((x@@9 T@Ref) ) (! (= (PredicateMaskField_5654 (SL x@@9)) (|SL#sm| x@@9))
 :qid |stdinbpl.344:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_5654 (SL x@@9)))
)))
(assert (forall ((o_34@@7 T@Ref) (f_40 T@Field_11340_11341) (Heap@@32 T@PolymorphicMapType_11267) ) (!  (=> (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@32) o_34@@7 $allocated) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@32) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@32) o_34@@7 f_40) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@32) o_34@@7 f_40))
)))
(assert (forall ((p@@2 T@Field_5615_5655) (v_1@@1 T@FrameType) (q T@Field_5615_5655) (w@@1 T@FrameType) (r T@Field_5615_5655) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11327_11327 p@@2 v_1@@1 q w@@1) (InsidePredicate_11327_11327 q w@@1 r u)) (InsidePredicate_11327_11327 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11327_11327 p@@2 v_1@@1 q w@@1) (InsidePredicate_11327_11327 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_5615_5655) (v_1@@2 T@FrameType) (q@@0 T@Field_5615_5655) (w@@2 T@FrameType) (r@@0 T@Field_15043_15044) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11327_11327 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11327_5654 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_11327_5654 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11327_11327 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11327_5654 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_5615_5655) (v_1@@3 T@FrameType) (q@@1 T@Field_15043_15044) (w@@3 T@FrameType) (r@@1 T@Field_5615_5655) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11327_5654 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5654_11327 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_11327_11327 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11327_5654 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5654_11327 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_5615_5655) (v_1@@4 T@FrameType) (q@@2 T@Field_15043_15044) (w@@4 T@FrameType) (r@@2 T@Field_15043_15044) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11327_5654 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5654_5654 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_11327_5654 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11327_5654 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5654_5654 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_15043_15044) (v_1@@5 T@FrameType) (q@@3 T@Field_5615_5655) (w@@5 T@FrameType) (r@@3 T@Field_5615_5655) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_5654_11327 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11327_11327 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_5654_11327 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5654_11327 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11327_11327 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_15043_15044) (v_1@@6 T@FrameType) (q@@4 T@Field_5615_5655) (w@@6 T@FrameType) (r@@4 T@Field_15043_15044) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_5654_11327 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11327_5654 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_5654_5654 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5654_11327 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11327_5654 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_15043_15044) (v_1@@7 T@FrameType) (q@@5 T@Field_15043_15044) (w@@7 T@FrameType) (r@@5 T@Field_5615_5655) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_5654_5654 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5654_11327 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_5654_11327 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5654_5654 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5654_11327 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_15043_15044) (v_1@@8 T@FrameType) (q@@6 T@Field_15043_15044) (w@@8 T@FrameType) (r@@6 T@Field_15043_15044) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_5654_5654 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5654_5654 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_5654_5654 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5654_5654 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5654_5654 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@5 () T@PolymorphicMapType_11267)
(declare-fun Mask@0 () T@PolymorphicMapType_11288)
(declare-fun Result@0 () Int)
(declare-fun x@@10 () T@Ref)
(declare-fun Heap@3 () T@PolymorphicMapType_11267)
(declare-fun newPMask@1 () T@PolymorphicMapType_11816)
(declare-fun Heap@4 () T@PolymorphicMapType_11267)
(declare-fun Heap@2 () T@PolymorphicMapType_11267)
(declare-fun Heap@0 () T@PolymorphicMapType_11267)
(declare-fun newPMask@0 () T@PolymorphicMapType_11816)
(declare-fun Heap@1 () T@PolymorphicMapType_11267)
(declare-fun Heap@@33 () T@PolymorphicMapType_11267)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_11288)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_11288)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_11288)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_5616 (T@Ref) T@FrameType)
(declare-fun FrameFragment_5655 (T@FrameType) T@FrameType)
(set-info :boogie-vc-id |SL_length#definedness|)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon11_correct  (=> (state Heap@5 Mask@0) (=> (and (= Result@0 (+ 1 (ite (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@5) x@@10 next) null) 0 (SL_length Heap@5 (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@5) x@@10 next))))) (= (ControlFlow 0 4) (- 0 3))) (> Result@0 0)))))
(let ((anon16_Else_correct  (=> (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) null) (=> (and (= Heap@5 Heap@3) (= (ControlFlow 0 6) 4)) anon11_correct))))
(let ((anon16_Then_correct  (=> (not (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_11340_11341) ) (!  (=> (or (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| x@@10))) o_16 f_21) (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next)))) o_16 f_21)) (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| newPMask@1) o_16 f_21))
 :qid |stdinbpl.319:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| newPMask@1) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_11327_53) ) (!  (=> (or (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| x@@10))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next)))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| newPMask@1) o_16@@0 f_21@@0))
 :qid |stdinbpl.319:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| newPMask@1) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_5615_5655) ) (!  (=> (or (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| x@@10))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next)))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| newPMask@1) o_16@@1 f_21@@1))
 :qid |stdinbpl.319:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| newPMask@1) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_5615_17677) ) (!  (=> (or (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| x@@10))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next)))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| newPMask@1) o_16@@2 f_21@@2))
 :qid |stdinbpl.319:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| newPMask@1) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_5654_5616) ) (!  (=> (or (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| x@@10))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next)))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| newPMask@1) o_16@@3 f_21@@3))
 :qid |stdinbpl.319:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| newPMask@1) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_5654_53) ) (!  (=> (or (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| x@@10))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next)))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| newPMask@1) o_16@@4 f_21@@4))
 :qid |stdinbpl.319:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| newPMask@1) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_15043_15044) ) (!  (=> (or (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| x@@10))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next)))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| newPMask@1) o_16@@5 f_21@@5))
 :qid |stdinbpl.319:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| newPMask@1) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_17672_17677) ) (!  (=> (or (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| x@@10))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next)))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| newPMask@1) o_16@@6 f_21@@6))
 :qid |stdinbpl.319:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| newPMask@1) o_16@@6 f_21@@6))
))) (= Heap@4 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@3) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@3) (store (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@3) null (|SL#sm| x@@10) newPMask@1) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@3) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@3) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@3) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 5) 4))) anon11_correct))))
(let ((anon9_correct  (=> (and (state Heap@2 Mask@0) (= Heap@3 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@2) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@2) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@2) (store (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@2) null (|SL#sm| x@@10) (PolymorphicMapType_11816 (store (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@2) null (|SL#sm| x@@10))) x@@10 next true) (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@2) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@2) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@2) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@2) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@2) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@2) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@2) null (|SL#sm| x@@10))))) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@2) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@2) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@2) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@2)))) (and (=> (= (ControlFlow 0 7) 5) anon16_Then_correct) (=> (= (ControlFlow 0 7) 6) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@0) x@@10 next) null) (=> (and (= Heap@2 Heap@0) (= (ControlFlow 0 9) 7)) anon9_correct))))
(let ((anon15_Then_correct  (=> (not (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@0) x@@10 next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_11340_11341) ) (!  (=> (or (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| x@@10))) o_15 f_20) (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@0) x@@10 next)))) o_15 f_20)) (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| newPMask@0) o_15 f_20))
 :qid |stdinbpl.307:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_11327_53) ) (!  (=> (or (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| x@@10))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@0) x@@10 next)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.307:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_5615_5655) ) (!  (=> (or (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| x@@10))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@0) x@@10 next)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.307:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_5615_17677) ) (!  (=> (or (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| x@@10))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@0) x@@10 next)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.307:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_5654_5616) ) (!  (=> (or (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| x@@10))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@0) x@@10 next)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.307:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_5654_53) ) (!  (=> (or (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| x@@10))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@0) x@@10 next)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.307:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_15043_15044) ) (!  (=> (or (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| x@@10))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@0) x@@10 next)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.307:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_17672_17677) ) (!  (=> (or (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| x@@10))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@0) x@@10 next)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.307:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| newPMask@0) o_15@@6 f_20@@6))
))) (= Heap@1 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@0) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@0) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@0) (store (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@0) null (|SL#sm| x@@10) newPMask@0) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@0) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@0) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@0) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@0)))) (and (= Heap@2 Heap@1) (= (ControlFlow 0 8) 7))) anon9_correct))))
(let ((anon7_correct  (=> (= Heap@0 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@33) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@33) (store (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@33) null (|SL#sm| x@@10) (PolymorphicMapType_11816 (store (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@33) null (|SL#sm| x@@10))) x@@10 next true) (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@33) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@33) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@33) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@33) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@33) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@33) null (|SL#sm| x@@10))) (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@33) null (|SL#sm| x@@10))))) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@33) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@33) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@33) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@33))) (and (=> (= (ControlFlow 0 10) 8) anon15_Then_correct) (=> (= (ControlFlow 0 10) 9) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (|SL_length#trigger| (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@33) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next))) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next)) (= (ControlFlow 0 12) 10)) anon7_correct)))
(let ((anon13_Then_correct  (=> (and (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next) null) (= (ControlFlow 0 11) 10)) anon7_correct)))
(let ((anon14_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| UnfoldingMask@2) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next))))))))
(let ((anon13_Else_correct  (=> (not (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next) null)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_5615_5616 UnfoldingMask@2 x@@10 next)) (=> (HasDirectPerm_5615_5616 UnfoldingMask@2 x@@10 next) (and (=> (= (ControlFlow 0 13) 2) anon14_Then_correct) (=> (= (ControlFlow 0 13) 12) anon14_Else_correct)))))))
(let ((anon2_correct  (=> (state Heap@@33 UnfoldingMask@2) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_5615_5616 UnfoldingMask@2 x@@10 next)) (=> (HasDirectPerm_5615_5616 UnfoldingMask@2 x@@10 next) (and (=> (= (ControlFlow 0 15) 11) anon13_Then_correct) (=> (= (ControlFlow 0 15) 13) anon13_Else_correct)))))))
(let ((anon12_Else_correct  (=> (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next) null) (=> (and (= UnfoldingMask@2 UnfoldingMask@0) (= (ControlFlow 0 18) 15)) anon2_correct))))
(let ((anon12_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next) null)) (= UnfoldingMask@1 (PolymorphicMapType_11288 (store (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| UnfoldingMask@0) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next)) (+ (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| UnfoldingMask@0) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next))) FullPerm)) (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| UnfoldingMask@0) (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| UnfoldingMask@0) (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| UnfoldingMask@0) (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| UnfoldingMask@0) (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| UnfoldingMask@0) (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| UnfoldingMask@0) (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| UnfoldingMask@0)))) (=> (and (and (InsidePredicate_5654_5654 (SL x@@10) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@33) null (SL x@@10)) (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next)) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@33) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next)))) (state Heap@@33 UnfoldingMask@1)) (and (= UnfoldingMask@2 UnfoldingMask@1) (= (ControlFlow 0 17) 15))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@33 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@33) x@@10 $allocated)) (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_11288 (store (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| ZeroMask) null (SL x@@10) (+ (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| ZeroMask) null (SL x@@10)) FullPerm)) (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| ZeroMask))))) (and (and (state Heap@@33 Mask@0) (state Heap@@33 Mask@0)) (and (|SL#trigger_5654| Heap@@33 (SL x@@10)) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@33) null (SL x@@10)) (CombineFrames (FrameFragment_5616 (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next)) (FrameFragment_5655 (ite (not (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next) null)) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@33) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@0) null (SL x@@10))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@0) null (SL x@@10)))) (=> (not (= x@@10 null)) (=> (and (= UnfoldingMask@0 (PolymorphicMapType_11288 (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@0) (store (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@0) x@@10 next (+ (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@0) x@@10 next) FullPerm)) (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| Mask@0) (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| Mask@0) (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| Mask@0) (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| Mask@0) (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| Mask@0) (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| Mask@0))) (state Heap@@33 UnfoldingMask@0)) (and (=> (= (ControlFlow 0 19) 17) anon12_Then_correct) (=> (= (ControlFlow 0 19) 18) anon12_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21) 19) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
