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
(assert (forall ((Heap@@0 T@PolymorphicMapType_11267) (ExhaleHeap T@PolymorphicMapType_11267) (Mask@@0 T@PolymorphicMapType_11288) (pm_f_37 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5654_5655 Mask@@0 null pm_f_37) (IsPredicateField_5654_5655 pm_f_37)) (and (and (and (and (and (and (and (forall ((o2_37 T@Ref) (f_29 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37 f_29) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@0) o2_37 f_29) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap) o2_37 f_29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap) o2_37 f_29))
)) (forall ((o2_37@@0 T@Ref) (f_29@@0 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@0 f_29@@0) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@0) o2_37@@0 f_29@@0) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap) o2_37@@0 f_29@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap) o2_37@@0 f_29@@0))
))) (forall ((o2_37@@1 T@Ref) (f_29@@1 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@1 f_29@@1) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@0) o2_37@@1 f_29@@1) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap) o2_37@@1 f_29@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap) o2_37@@1 f_29@@1))
))) (forall ((o2_37@@2 T@Ref) (f_29@@2 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@2 f_29@@2) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@0) o2_37@@2 f_29@@2) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap) o2_37@@2 f_29@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap) o2_37@@2 f_29@@2))
))) (forall ((o2_37@@3 T@Ref) (f_29@@3 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@3 f_29@@3) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@0) o2_37@@3 f_29@@3) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap) o2_37@@3 f_29@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap) o2_37@@3 f_29@@3))
))) (forall ((o2_37@@4 T@Ref) (f_29@@4 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@4 f_29@@4) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@0) o2_37@@4 f_29@@4) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap) o2_37@@4 f_29@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap) o2_37@@4 f_29@@4))
))) (forall ((o2_37@@5 T@Ref) (f_29@@5 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@5 f_29@@5) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@0) o2_37@@5 f_29@@5) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap) o2_37@@5 f_29@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap) o2_37@@5 f_29@@5))
))) (forall ((o2_37@@6 T@Ref) (f_29@@6 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@6 f_29@@6) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) o2_37@@6 f_29@@6) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap) o2_37@@6 f_29@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap) o2_37@@6 f_29@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5654_5655 pm_f_37))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11267) (ExhaleHeap@@0 T@PolymorphicMapType_11267) (Mask@@1 T@PolymorphicMapType_11288) (pm_f_37@@0 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5615_5655 Mask@@1 null pm_f_37@@0) (IsPredicateField_5615_42141 pm_f_37@@0)) (and (and (and (and (and (and (and (forall ((o2_37@@7 T@Ref) (f_29@@7 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@7 f_29@@7) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@1) o2_37@@7 f_29@@7) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@7 f_29@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@7 f_29@@7))
)) (forall ((o2_37@@8 T@Ref) (f_29@@8 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@8 f_29@@8) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@1) o2_37@@8 f_29@@8) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@8 f_29@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@8 f_29@@8))
))) (forall ((o2_37@@9 T@Ref) (f_29@@9 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@9 f_29@@9) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@1) o2_37@@9 f_29@@9) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@9 f_29@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@9 f_29@@9))
))) (forall ((o2_37@@10 T@Ref) (f_29@@10 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@10 f_29@@10) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) o2_37@@10 f_29@@10) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@10 f_29@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@10 f_29@@10))
))) (forall ((o2_37@@11 T@Ref) (f_29@@11 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@11 f_29@@11) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@1) o2_37@@11 f_29@@11) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@11 f_29@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@11 f_29@@11))
))) (forall ((o2_37@@12 T@Ref) (f_29@@12 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@12 f_29@@12) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@1) o2_37@@12 f_29@@12) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@12 f_29@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@12 f_29@@12))
))) (forall ((o2_37@@13 T@Ref) (f_29@@13 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@13 f_29@@13) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@1) o2_37@@13 f_29@@13) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@13 f_29@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@13 f_29@@13))
))) (forall ((o2_37@@14 T@Ref) (f_29@@14 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@14 f_29@@14) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@1) o2_37@@14 f_29@@14) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@14 f_29@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@14 f_29@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5615_42141 pm_f_37@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11267) (ExhaleHeap@@1 T@PolymorphicMapType_11267) (Mask@@2 T@PolymorphicMapType_11288) (pm_f_37@@1 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5654_5655 Mask@@2 null pm_f_37@@1) (IsWandField_5654_45427 pm_f_37@@1)) (and (and (and (and (and (and (and (forall ((o2_37@@15 T@Ref) (f_29@@15 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@15 f_29@@15) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@2) o2_37@@15 f_29@@15) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@15 f_29@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@15 f_29@@15))
)) (forall ((o2_37@@16 T@Ref) (f_29@@16 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@16 f_29@@16) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@2) o2_37@@16 f_29@@16) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@16 f_29@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@16 f_29@@16))
))) (forall ((o2_37@@17 T@Ref) (f_29@@17 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@17 f_29@@17) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@2) o2_37@@17 f_29@@17) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@17 f_29@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@17 f_29@@17))
))) (forall ((o2_37@@18 T@Ref) (f_29@@18 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@18 f_29@@18) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@2) o2_37@@18 f_29@@18) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@18 f_29@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@18 f_29@@18))
))) (forall ((o2_37@@19 T@Ref) (f_29@@19 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@19 f_29@@19) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@2) o2_37@@19 f_29@@19) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@19 f_29@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@19 f_29@@19))
))) (forall ((o2_37@@20 T@Ref) (f_29@@20 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@20 f_29@@20) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@2) o2_37@@20 f_29@@20) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@20 f_29@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@20 f_29@@20))
))) (forall ((o2_37@@21 T@Ref) (f_29@@21 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@21 f_29@@21) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@2) o2_37@@21 f_29@@21) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@21 f_29@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@21 f_29@@21))
))) (forall ((o2_37@@22 T@Ref) (f_29@@22 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@22 f_29@@22) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) o2_37@@22 f_29@@22) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@22 f_29@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@22 f_29@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_5654_45427 pm_f_37@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11267) (ExhaleHeap@@2 T@PolymorphicMapType_11267) (Mask@@3 T@PolymorphicMapType_11288) (pm_f_37@@2 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5615_5655 Mask@@3 null pm_f_37@@2) (IsWandField_5615_45070 pm_f_37@@2)) (and (and (and (and (and (and (and (forall ((o2_37@@23 T@Ref) (f_29@@23 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@23 f_29@@23) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@3) o2_37@@23 f_29@@23) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@23 f_29@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@23 f_29@@23))
)) (forall ((o2_37@@24 T@Ref) (f_29@@24 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@24 f_29@@24) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@3) o2_37@@24 f_29@@24) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@24 f_29@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@24 f_29@@24))
))) (forall ((o2_37@@25 T@Ref) (f_29@@25 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@25 f_29@@25) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@3) o2_37@@25 f_29@@25) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@25 f_29@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@25 f_29@@25))
))) (forall ((o2_37@@26 T@Ref) (f_29@@26 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@26 f_29@@26) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) o2_37@@26 f_29@@26) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@26 f_29@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@26 f_29@@26))
))) (forall ((o2_37@@27 T@Ref) (f_29@@27 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@27 f_29@@27) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@3) o2_37@@27 f_29@@27) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@27 f_29@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@27 f_29@@27))
))) (forall ((o2_37@@28 T@Ref) (f_29@@28 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@28 f_29@@28) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@3) o2_37@@28 f_29@@28) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@28 f_29@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@28 f_29@@28))
))) (forall ((o2_37@@29 T@Ref) (f_29@@29 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@29 f_29@@29) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@3) o2_37@@29 f_29@@29) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@29 f_29@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@29 f_29@@29))
))) (forall ((o2_37@@30 T@Ref) (f_29@@30 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@30 f_29@@30) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@3) o2_37@@30 f_29@@30) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@30 f_29@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@30 f_29@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5615_45070 pm_f_37@@2))
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
(assert (forall ((Heap@@7 T@PolymorphicMapType_11267) (ExhaleHeap@@3 T@PolymorphicMapType_11267) (Mask@@4 T@PolymorphicMapType_11288) (pm_f_37@@3 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5654_5655 Mask@@4 null pm_f_37@@3) (IsPredicateField_5654_5655 pm_f_37@@3)) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@7) null (PredicateMaskField_5654 pm_f_37@@3)) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@3) null (PredicateMaskField_5654 pm_f_37@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5654_5655 pm_f_37@@3) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@3) null (PredicateMaskField_5654 pm_f_37@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11267) (ExhaleHeap@@4 T@PolymorphicMapType_11267) (Mask@@5 T@PolymorphicMapType_11288) (pm_f_37@@4 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5615_5655 Mask@@5 null pm_f_37@@4) (IsPredicateField_5615_42141 pm_f_37@@4)) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@8) null (PredicateMaskField_5615 pm_f_37@@4)) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@4) null (PredicateMaskField_5615 pm_f_37@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5615_42141 pm_f_37@@4) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@4) null (PredicateMaskField_5615 pm_f_37@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11267) (ExhaleHeap@@5 T@PolymorphicMapType_11267) (Mask@@6 T@PolymorphicMapType_11288) (pm_f_37@@5 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5654_5655 Mask@@6 null pm_f_37@@5) (IsWandField_5654_45427 pm_f_37@@5)) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@9) null (WandMaskField_5654 pm_f_37@@5)) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@5) null (WandMaskField_5654 pm_f_37@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_5654_45427 pm_f_37@@5) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@5) null (WandMaskField_5654 pm_f_37@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11267) (ExhaleHeap@@6 T@PolymorphicMapType_11267) (Mask@@7 T@PolymorphicMapType_11288) (pm_f_37@@6 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5615_5655 Mask@@7 null pm_f_37@@6) (IsWandField_5615_45070 pm_f_37@@6)) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@10) null (WandMaskField_5615 pm_f_37@@6)) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@6) null (WandMaskField_5615 pm_f_37@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_5615_45070 pm_f_37@@6) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@6) null (WandMaskField_5615 pm_f_37@@6)))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_11267) (ExhaleHeap@@7 T@PolymorphicMapType_11267) (Mask@@8 T@PolymorphicMapType_11288) (o_20 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@11) o_20 $allocated) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@7) o_20 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@7) o_20 $allocated))
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
(assert (forall ((Heap@@13 T@PolymorphicMapType_11267) (ExhaleHeap@@9 T@PolymorphicMapType_11267) (Mask@@26 T@PolymorphicMapType_11288) (o_20@@0 T@Ref) (f_29@@31 T@Field_17672_17677) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_5654_41896 Mask@@26 o_20@@0 f_29@@31) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@13) o_20@@0 f_29@@31) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@9) o_20@@0 f_29@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@9) o_20@@0 f_29@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11267) (ExhaleHeap@@10 T@PolymorphicMapType_11267) (Mask@@27 T@PolymorphicMapType_11288) (o_20@@1 T@Ref) (f_29@@32 T@Field_5654_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_5654_53 Mask@@27 o_20@@1 f_29@@32) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@14) o_20@@1 f_29@@32) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@10) o_20@@1 f_29@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@10) o_20@@1 f_29@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11267) (ExhaleHeap@@11 T@PolymorphicMapType_11267) (Mask@@28 T@PolymorphicMapType_11288) (o_20@@2 T@Ref) (f_29@@33 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_5654_5655 Mask@@28 o_20@@2 f_29@@33) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@15) o_20@@2 f_29@@33) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@11) o_20@@2 f_29@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@11) o_20@@2 f_29@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11267) (ExhaleHeap@@12 T@PolymorphicMapType_11267) (Mask@@29 T@PolymorphicMapType_11288) (o_20@@3 T@Ref) (f_29@@34 T@Field_5654_5616) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_5654_5616 Mask@@29 o_20@@3 f_29@@34) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@16) o_20@@3 f_29@@34) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@12) o_20@@3 f_29@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@12) o_20@@3 f_29@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11267) (ExhaleHeap@@13 T@PolymorphicMapType_11267) (Mask@@30 T@PolymorphicMapType_11288) (o_20@@4 T@Ref) (f_29@@35 T@Field_5615_17677) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_5615_40976 Mask@@30 o_20@@4 f_29@@35) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@17) o_20@@4 f_29@@35) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@13) o_20@@4 f_29@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@13) o_20@@4 f_29@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11267) (ExhaleHeap@@14 T@PolymorphicMapType_11267) (Mask@@31 T@PolymorphicMapType_11288) (o_20@@5 T@Ref) (f_29@@36 T@Field_11327_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_5615_53 Mask@@31 o_20@@5 f_29@@36) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@18) o_20@@5 f_29@@36) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@14) o_20@@5 f_29@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@14) o_20@@5 f_29@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11267) (ExhaleHeap@@15 T@PolymorphicMapType_11267) (Mask@@32 T@PolymorphicMapType_11288) (o_20@@6 T@Ref) (f_29@@37 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_5615_5655 Mask@@32 o_20@@6 f_29@@37) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@19) o_20@@6 f_29@@37) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@15) o_20@@6 f_29@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@15) o_20@@6 f_29@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11267) (ExhaleHeap@@16 T@PolymorphicMapType_11267) (Mask@@33 T@PolymorphicMapType_11288) (o_20@@7 T@Ref) (f_29@@38 T@Field_11340_11341) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_5615_5616 Mask@@33 o_20@@7 f_29@@38) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@20) o_20@@7 f_29@@38) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@16) o_20@@7 f_29@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@16) o_20@@7 f_29@@38))
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
(assert (forall ((Heap@@24 T@PolymorphicMapType_11267) (o_13 T@Ref) (f_66 T@Field_17672_17677) (v T@PolymorphicMapType_11816) ) (! (succHeap Heap@@24 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@24) (store (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@24) o_13 f_66 v) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@24) (store (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@24) o_13 f_66 v) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11267) (o_13@@0 T@Ref) (f_66@@0 T@Field_15043_15044) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@25) (store (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@25) o_13@@0 f_66@@0 v@@0) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@25) (store (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@25) o_13@@0 f_66@@0 v@@0) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11267) (o_13@@1 T@Ref) (f_66@@1 T@Field_5654_5616) (v@@1 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@26) (store (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@26) o_13@@1 f_66@@1 v@@1) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@26) (store (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@26) o_13@@1 f_66@@1 v@@1) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11267) (o_13@@2 T@Ref) (f_66@@2 T@Field_5654_53) (v@@2 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@27) (store (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@27) o_13@@2 f_66@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@27) (store (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@27) o_13@@2 f_66@@2 v@@2)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11267) (o_13@@3 T@Ref) (f_66@@3 T@Field_5615_17677) (v@@3 T@PolymorphicMapType_11816) ) (! (succHeap Heap@@28 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@28) (store (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@28) o_13@@3 f_66@@3 v@@3) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@28) (store (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@28) o_13@@3 f_66@@3 v@@3) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11267) (o_13@@4 T@Ref) (f_66@@4 T@Field_5615_5655) (v@@4 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@29) (store (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@29) o_13@@4 f_66@@4 v@@4) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@29) (store (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@29) o_13@@4 f_66@@4 v@@4) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11267) (o_13@@5 T@Ref) (f_66@@5 T@Field_11340_11341) (v@@5 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@30) (store (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@30) o_13@@5 f_66@@5 v@@5) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@30) (store (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@30) o_13@@5 f_66@@5 v@@5) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11267) (o_13@@6 T@Ref) (f_66@@6 T@Field_11327_53) (v@@6 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_11267 (store (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@31) o_13@@6 f_66@@6 v@@6) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (store (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@31) o_13@@6 f_66@@6 v@@6) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@31)))
)))
(assert (forall ((x@@9 T@Ref) ) (! (= (PredicateMaskField_5654 (SL x@@9)) (|SL#sm| x@@9))
 :qid |stdinbpl.344:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_5654 (SL x@@9)))
)))
(assert (forall ((o_13@@7 T@Ref) (f_20 T@Field_11340_11341) (Heap@@32 T@PolymorphicMapType_11267) ) (!  (=> (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@32) o_13@@7 $allocated) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@32) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@32) o_13@@7 f_20) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@32) o_13@@7 f_20))
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
(declare-fun Heap@3 () T@PolymorphicMapType_11267)
(declare-fun Mask@8 () T@PolymorphicMapType_11288)
(declare-fun x@@10 () T@Ref)
(declare-fun Mask@6 () T@PolymorphicMapType_11288)
(declare-fun Mask@7 () T@PolymorphicMapType_11288)
(declare-fun Mask@5 () T@PolymorphicMapType_11288)
(declare-fun Heap@1 () T@PolymorphicMapType_11267)
(declare-fun Heap@2 () T@PolymorphicMapType_11267)
(declare-fun newVersion@1 () T@FrameType)
(declare-fun Mask@4 () T@PolymorphicMapType_11288)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_5616 (T@Ref) T@FrameType)
(declare-fun FrameFragment_5655 (T@FrameType) T@FrameType)
(declare-fun Mask@2 () T@PolymorphicMapType_11288)
(declare-fun Mask@3 () T@PolymorphicMapType_11288)
(declare-fun Mask@1 () T@PolymorphicMapType_11288)
(declare-fun Heap@@33 () T@PolymorphicMapType_11267)
(declare-fun Heap@0 () T@PolymorphicMapType_11267)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_11288)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 29) (let ((anon14_correct  (=> (and (state Heap@3 Mask@8) (state Heap@3 Mask@8)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (HasDirectPerm_5615_5616 Mask@8 x@@10 next)) (=> (HasDirectPerm_5615_5616 Mask@8 x@@10 next) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_5615_5616 Mask@8 (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) next)) (=> (HasDirectPerm_5615_5616 Mask@8 (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) next) (=> (= (ControlFlow 0 4) (- 0 3)) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) next) null)))))))))
(let ((anon21_Else_correct  (=> (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) next) null) (=> (and (= Mask@8 Mask@6) (= (ControlFlow 0 8) 4)) anon14_correct))))
(let ((anon21_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) next) null)) (= Mask@7 (PolymorphicMapType_11288 (store (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@6) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) next)) (+ (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@6) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) next))) FullPerm)) (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@6) (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| Mask@6) (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| Mask@6) (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| Mask@6) (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| Mask@6) (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| Mask@6) (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| Mask@6)))) (=> (and (and (InsidePredicate_5654_5654 (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next)) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@3) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next))) (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) next)) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@3) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) next)))) (state Heap@3 Mask@7)) (and (= Mask@8 Mask@7) (= (ControlFlow 0 7) 4))) anon14_correct))))
(let ((anon12_correct  (=> (not (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) null)) (=> (and (= Mask@6 (PolymorphicMapType_11288 (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@5) (store (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@5) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) next (+ (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@5) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@3) x@@10 next) next) FullPerm)) (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| Mask@5) (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| Mask@5) (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| Mask@5) (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| Mask@5) (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| Mask@5) (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| Mask@5))) (state Heap@3 Mask@6)) (and (=> (= (ControlFlow 0 9) 7) anon21_Then_correct) (=> (= (ControlFlow 0 9) 8) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (HasDirectPerm_5654_5655 Mask@5 null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next))) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 11) 9)) anon12_correct))))
(let ((anon20_Then_correct  (=> (and (and (not (HasDirectPerm_5654_5655 Mask@5 null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next)))) (= Heap@2 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@1) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) (store (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@1) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next)) newVersion@1) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@1) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@1) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@1) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@1) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 10) 9))) anon12_correct)))
(let ((anon10_correct  (=> (= Mask@5 (PolymorphicMapType_11288 (store (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@4) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next)) (- (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@4) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next))) FullPerm)) (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@4) (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| Mask@4) (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| Mask@4) (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| Mask@4) (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| Mask@4) (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| Mask@4) (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| Mask@4))) (and (=> (= (ControlFlow 0 12) 10) anon20_Then_correct) (=> (= (ControlFlow 0 12) 11) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 15) 12)) anon10_correct)))
(let ((anon19_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= FullPerm (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@4) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next))))) (=> (<= FullPerm (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@4) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next)))) (=> (= (ControlFlow 0 13) 12) anon10_correct))))))
(let ((anon8_correct  (=> (and (state Heap@1 Mask@4) (state Heap@1 Mask@4)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_5615_5616 Mask@4 x@@10 next)) (=> (HasDirectPerm_5615_5616 Mask@4 x@@10 next) (=> (and (|SL#trigger_5654| Heap@1 (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next))) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@1) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next))) (CombineFrames (FrameFragment_5616 (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next) next)) (FrameFragment_5655 (ite (not (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next) next) null)) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@1) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next) next))) EmptyFrame))))) (and (=> (= (ControlFlow 0 16) 13) anon19_Then_correct) (=> (= (ControlFlow 0 16) 15) anon19_Else_correct))))))))
(let ((anon18_Else_correct  (=> (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next) null) (=> (and (= Mask@4 Mask@2) (= (ControlFlow 0 19) 16)) anon8_correct))))
(let ((anon18_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next) null)) (= Mask@3 (PolymorphicMapType_11288 (store (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@2) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next)) (+ (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@2) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next))) FullPerm)) (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@2) (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| Mask@2) (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| Mask@2) (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| Mask@2) (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| Mask@2) (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| Mask@2) (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| Mask@2)))) (=> (and (and (InsidePredicate_5654_5654 (SL x@@10) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@1) null (SL x@@10)) (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next)) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@1) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@1) x@@10 next)))) (state Heap@1 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 18) 16))) anon8_correct))))
(let ((anon6_correct  (=> (not (= x@@10 null)) (=> (and (= Mask@2 (PolymorphicMapType_11288 (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@1) (store (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@1) x@@10 next (+ (select (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@1) x@@10 next) FullPerm)) (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| Mask@1) (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| Mask@1) (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| Mask@1) (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| Mask@1) (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| Mask@1) (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| Mask@1))) (state Heap@1 Mask@2)) (and (=> (= (ControlFlow 0 20) 18) anon18_Then_correct) (=> (= (ControlFlow 0 20) 19) anon18_Else_correct))))))
(let ((anon17_Else_correct  (=> (HasDirectPerm_5654_5655 Mask@1 null (SL x@@10)) (=> (and (= Heap@1 Heap@@33) (= (ControlFlow 0 22) 20)) anon6_correct))))
(let ((anon17_Then_correct  (=> (and (and (not (HasDirectPerm_5654_5655 Mask@1 null (SL x@@10))) (= Heap@0 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@33) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) (store (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@33) null (SL x@@10) newVersion@0) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@33) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@33) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@33) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@33) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@33)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 21) 20))) anon6_correct)))
(let ((anon4_correct  (=> (= Mask@1 (PolymorphicMapType_11288 (store (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@0) null (SL x@@10) (- (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@0) null (SL x@@10)) FullPerm)) (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| Mask@0) (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| Mask@0) (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| Mask@0) (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| Mask@0) (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| Mask@0) (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| Mask@0) (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| Mask@0))) (and (=> (= (ControlFlow 0 23) 21) anon17_Then_correct) (=> (= (ControlFlow 0 23) 22) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 26) 23)) anon4_correct)))
(let ((anon16_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= FullPerm (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@0) null (SL x@@10)))) (=> (<= FullPerm (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@0) null (SL x@@10))) (=> (= (ControlFlow 0 24) 23) anon4_correct))))))
(let ((anon15_Else_correct  (=> (and (and (= (SL_length Heap@@33 x@@10) 2) (state Heap@@33 Mask@0)) (and (|SL#trigger_5654| Heap@@33 (SL x@@10)) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@33) null (SL x@@10)) (CombineFrames (FrameFragment_5616 (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next)) (FrameFragment_5655 (ite (not (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next) null)) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@33) null (SL (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@33) x@@10 next))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 27) 24) anon16_Then_correct) (=> (= (ControlFlow 0 27) 26) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| Mask@0) null (SL x@@10)))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@33 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@33) x@@10 $allocated))) (and (and (= Mask@0 (PolymorphicMapType_11288 (store (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| ZeroMask) null (SL x@@10) (+ (select (|PolymorphicMapType_11288_5654_5655#PolymorphicMapType_11288| ZeroMask) null (SL x@@10)) FullPerm)) (|PolymorphicMapType_11288_5615_5616#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5654_5616#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5654_53#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5654_48983#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5615_5655#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5615_53#PolymorphicMapType_11288| ZeroMask) (|PolymorphicMapType_11288_5615_49314#PolymorphicMapType_11288| ZeroMask))) (state Heap@@33 Mask@0)) (and (state Heap@@33 Mask@0) (state Heap@@33 Mask@0)))) (and (=> (= (ControlFlow 0 28) 2) anon15_Then_correct) (=> (= (ControlFlow 0 28) 27) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 29) 28) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_11267) (ExhaleHeap T@PolymorphicMapType_11267) (Mask@@0 T@PolymorphicMapType_11288) (pm_f_37 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5654_5655 Mask@@0 null pm_f_37) (IsPredicateField_5654_5655 pm_f_37)) (and (and (and (and (and (and (and (forall ((o2_37 T@Ref) (f_29 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37 f_29) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@0) o2_37 f_29) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap) o2_37 f_29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap) o2_37 f_29))
)) (forall ((o2_37@@0 T@Ref) (f_29@@0 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@0 f_29@@0) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@0) o2_37@@0 f_29@@0) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap) o2_37@@0 f_29@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap) o2_37@@0 f_29@@0))
))) (forall ((o2_37@@1 T@Ref) (f_29@@1 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@1 f_29@@1) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@0) o2_37@@1 f_29@@1) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap) o2_37@@1 f_29@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap) o2_37@@1 f_29@@1))
))) (forall ((o2_37@@2 T@Ref) (f_29@@2 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@2 f_29@@2) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@0) o2_37@@2 f_29@@2) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap) o2_37@@2 f_29@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap) o2_37@@2 f_29@@2))
))) (forall ((o2_37@@3 T@Ref) (f_29@@3 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@3 f_29@@3) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@0) o2_37@@3 f_29@@3) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap) o2_37@@3 f_29@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap) o2_37@@3 f_29@@3))
))) (forall ((o2_37@@4 T@Ref) (f_29@@4 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@4 f_29@@4) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@0) o2_37@@4 f_29@@4) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap) o2_37@@4 f_29@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap) o2_37@@4 f_29@@4))
))) (forall ((o2_37@@5 T@Ref) (f_29@@5 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@5 f_29@@5) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@0) o2_37@@5 f_29@@5) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap) o2_37@@5 f_29@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap) o2_37@@5 f_29@@5))
))) (forall ((o2_37@@6 T@Ref) (f_29@@6 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) null (PredicateMaskField_5654 pm_f_37))) o2_37@@6 f_29@@6) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@0) o2_37@@6 f_29@@6) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap) o2_37@@6 f_29@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap) o2_37@@6 f_29@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5654_5655 pm_f_37))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11267) (ExhaleHeap@@0 T@PolymorphicMapType_11267) (Mask@@1 T@PolymorphicMapType_11288) (pm_f_37@@0 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5615_5655 Mask@@1 null pm_f_37@@0) (IsPredicateField_5615_42141 pm_f_37@@0)) (and (and (and (and (and (and (and (forall ((o2_37@@7 T@Ref) (f_29@@7 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@7 f_29@@7) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@1) o2_37@@7 f_29@@7) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@7 f_29@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@7 f_29@@7))
)) (forall ((o2_37@@8 T@Ref) (f_29@@8 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@8 f_29@@8) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@1) o2_37@@8 f_29@@8) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@8 f_29@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@8 f_29@@8))
))) (forall ((o2_37@@9 T@Ref) (f_29@@9 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@9 f_29@@9) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@1) o2_37@@9 f_29@@9) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@9 f_29@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@9 f_29@@9))
))) (forall ((o2_37@@10 T@Ref) (f_29@@10 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@10 f_29@@10) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) o2_37@@10 f_29@@10) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@10 f_29@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@10 f_29@@10))
))) (forall ((o2_37@@11 T@Ref) (f_29@@11 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@11 f_29@@11) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@1) o2_37@@11 f_29@@11) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@11 f_29@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@11 f_29@@11))
))) (forall ((o2_37@@12 T@Ref) (f_29@@12 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@12 f_29@@12) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@1) o2_37@@12 f_29@@12) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@12 f_29@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@12 f_29@@12))
))) (forall ((o2_37@@13 T@Ref) (f_29@@13 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@13 f_29@@13) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@1) o2_37@@13 f_29@@13) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@13 f_29@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@13 f_29@@13))
))) (forall ((o2_37@@14 T@Ref) (f_29@@14 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@1) null (PredicateMaskField_5615 pm_f_37@@0))) o2_37@@14 f_29@@14) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@1) o2_37@@14 f_29@@14) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@14 f_29@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@0) o2_37@@14 f_29@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5615_42141 pm_f_37@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11267) (ExhaleHeap@@1 T@PolymorphicMapType_11267) (Mask@@2 T@PolymorphicMapType_11288) (pm_f_37@@1 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5654_5655 Mask@@2 null pm_f_37@@1) (IsWandField_5654_45427 pm_f_37@@1)) (and (and (and (and (and (and (and (forall ((o2_37@@15 T@Ref) (f_29@@15 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@15 f_29@@15) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@2) o2_37@@15 f_29@@15) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@15 f_29@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@15 f_29@@15))
)) (forall ((o2_37@@16 T@Ref) (f_29@@16 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@16 f_29@@16) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@2) o2_37@@16 f_29@@16) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@16 f_29@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@16 f_29@@16))
))) (forall ((o2_37@@17 T@Ref) (f_29@@17 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@17 f_29@@17) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@2) o2_37@@17 f_29@@17) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@17 f_29@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@17 f_29@@17))
))) (forall ((o2_37@@18 T@Ref) (f_29@@18 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@18 f_29@@18) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@2) o2_37@@18 f_29@@18) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@18 f_29@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@18 f_29@@18))
))) (forall ((o2_37@@19 T@Ref) (f_29@@19 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@19 f_29@@19) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@2) o2_37@@19 f_29@@19) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@19 f_29@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@19 f_29@@19))
))) (forall ((o2_37@@20 T@Ref) (f_29@@20 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@20 f_29@@20) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@2) o2_37@@20 f_29@@20) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@20 f_29@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@20 f_29@@20))
))) (forall ((o2_37@@21 T@Ref) (f_29@@21 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@21 f_29@@21) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@2) o2_37@@21 f_29@@21) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@21 f_29@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@21 f_29@@21))
))) (forall ((o2_37@@22 T@Ref) (f_29@@22 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) null (WandMaskField_5654 pm_f_37@@1))) o2_37@@22 f_29@@22) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@2) o2_37@@22 f_29@@22) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@22 f_29@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@1) o2_37@@22 f_29@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_5654_45427 pm_f_37@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11267) (ExhaleHeap@@2 T@PolymorphicMapType_11267) (Mask@@3 T@PolymorphicMapType_11288) (pm_f_37@@2 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5615_5655 Mask@@3 null pm_f_37@@2) (IsWandField_5615_45070 pm_f_37@@2)) (and (and (and (and (and (and (and (forall ((o2_37@@23 T@Ref) (f_29@@23 T@Field_11340_11341) ) (!  (=> (select (|PolymorphicMapType_11816_5615_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@23 f_29@@23) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@3) o2_37@@23 f_29@@23) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@23 f_29@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@23 f_29@@23))
)) (forall ((o2_37@@24 T@Ref) (f_29@@24 T@Field_11327_53) ) (!  (=> (select (|PolymorphicMapType_11816_5615_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@24 f_29@@24) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@3) o2_37@@24 f_29@@24) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@24 f_29@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@24 f_29@@24))
))) (forall ((o2_37@@25 T@Ref) (f_29@@25 T@Field_5615_5655) ) (!  (=> (select (|PolymorphicMapType_11816_5615_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@25 f_29@@25) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@3) o2_37@@25 f_29@@25) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@25 f_29@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@25 f_29@@25))
))) (forall ((o2_37@@26 T@Ref) (f_29@@26 T@Field_5615_17677) ) (!  (=> (select (|PolymorphicMapType_11816_5615_43412#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@26 f_29@@26) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) o2_37@@26 f_29@@26) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@26 f_29@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@26 f_29@@26))
))) (forall ((o2_37@@27 T@Ref) (f_29@@27 T@Field_5654_5616) ) (!  (=> (select (|PolymorphicMapType_11816_15043_5616#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@27 f_29@@27) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@3) o2_37@@27 f_29@@27) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@27 f_29@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@27 f_29@@27))
))) (forall ((o2_37@@28 T@Ref) (f_29@@28 T@Field_5654_53) ) (!  (=> (select (|PolymorphicMapType_11816_15043_53#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@28 f_29@@28) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@3) o2_37@@28 f_29@@28) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@28 f_29@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@28 f_29@@28))
))) (forall ((o2_37@@29 T@Ref) (f_29@@29 T@Field_15043_15044) ) (!  (=> (select (|PolymorphicMapType_11816_15043_15044#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@29 f_29@@29) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@3) o2_37@@29 f_29@@29) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@29 f_29@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@29 f_29@@29))
))) (forall ((o2_37@@30 T@Ref) (f_29@@30 T@Field_17672_17677) ) (!  (=> (select (|PolymorphicMapType_11816_15043_44262#PolymorphicMapType_11816| (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@3) null (WandMaskField_5615 pm_f_37@@2))) o2_37@@30 f_29@@30) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@3) o2_37@@30 f_29@@30) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@30 f_29@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@2) o2_37@@30 f_29@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5615_45070 pm_f_37@@2))
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
(assert (forall ((Heap@@7 T@PolymorphicMapType_11267) (ExhaleHeap@@3 T@PolymorphicMapType_11267) (Mask@@4 T@PolymorphicMapType_11288) (pm_f_37@@3 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5654_5655 Mask@@4 null pm_f_37@@3) (IsPredicateField_5654_5655 pm_f_37@@3)) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@7) null (PredicateMaskField_5654 pm_f_37@@3)) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@3) null (PredicateMaskField_5654 pm_f_37@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5654_5655 pm_f_37@@3) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@3) null (PredicateMaskField_5654 pm_f_37@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11267) (ExhaleHeap@@4 T@PolymorphicMapType_11267) (Mask@@5 T@PolymorphicMapType_11288) (pm_f_37@@4 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5615_5655 Mask@@5 null pm_f_37@@4) (IsPredicateField_5615_42141 pm_f_37@@4)) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@8) null (PredicateMaskField_5615 pm_f_37@@4)) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@4) null (PredicateMaskField_5615 pm_f_37@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5615_42141 pm_f_37@@4) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@4) null (PredicateMaskField_5615 pm_f_37@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11267) (ExhaleHeap@@5 T@PolymorphicMapType_11267) (Mask@@6 T@PolymorphicMapType_11288) (pm_f_37@@5 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5654_5655 Mask@@6 null pm_f_37@@5) (IsWandField_5654_45427 pm_f_37@@5)) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@9) null (WandMaskField_5654 pm_f_37@@5)) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@5) null (WandMaskField_5654 pm_f_37@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_5654_45427 pm_f_37@@5) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@5) null (WandMaskField_5654 pm_f_37@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11267) (ExhaleHeap@@6 T@PolymorphicMapType_11267) (Mask@@7 T@PolymorphicMapType_11288) (pm_f_37@@6 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5615_5655 Mask@@7 null pm_f_37@@6) (IsWandField_5615_45070 pm_f_37@@6)) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@10) null (WandMaskField_5615 pm_f_37@@6)) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@6) null (WandMaskField_5615 pm_f_37@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_5615_45070 pm_f_37@@6) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@6) null (WandMaskField_5615 pm_f_37@@6)))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_11267) (ExhaleHeap@@7 T@PolymorphicMapType_11267) (Mask@@8 T@PolymorphicMapType_11288) (o_20 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@11) o_20 $allocated) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@7) o_20 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@7) o_20 $allocated))
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
(assert (forall ((Heap@@13 T@PolymorphicMapType_11267) (ExhaleHeap@@9 T@PolymorphicMapType_11267) (Mask@@26 T@PolymorphicMapType_11288) (o_20@@0 T@Ref) (f_29@@31 T@Field_17672_17677) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_5654_41896 Mask@@26 o_20@@0 f_29@@31) (= (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@13) o_20@@0 f_29@@31) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@9) o_20@@0 f_29@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| ExhaleHeap@@9) o_20@@0 f_29@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11267) (ExhaleHeap@@10 T@PolymorphicMapType_11267) (Mask@@27 T@PolymorphicMapType_11288) (o_20@@1 T@Ref) (f_29@@32 T@Field_5654_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_5654_53 Mask@@27 o_20@@1 f_29@@32) (= (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@14) o_20@@1 f_29@@32) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@10) o_20@@1 f_29@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| ExhaleHeap@@10) o_20@@1 f_29@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11267) (ExhaleHeap@@11 T@PolymorphicMapType_11267) (Mask@@28 T@PolymorphicMapType_11288) (o_20@@2 T@Ref) (f_29@@33 T@Field_15043_15044) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_5654_5655 Mask@@28 o_20@@2 f_29@@33) (= (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@15) o_20@@2 f_29@@33) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@11) o_20@@2 f_29@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| ExhaleHeap@@11) o_20@@2 f_29@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11267) (ExhaleHeap@@12 T@PolymorphicMapType_11267) (Mask@@29 T@PolymorphicMapType_11288) (o_20@@3 T@Ref) (f_29@@34 T@Field_5654_5616) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_5654_5616 Mask@@29 o_20@@3 f_29@@34) (= (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@16) o_20@@3 f_29@@34) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@12) o_20@@3 f_29@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| ExhaleHeap@@12) o_20@@3 f_29@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11267) (ExhaleHeap@@13 T@PolymorphicMapType_11267) (Mask@@30 T@PolymorphicMapType_11288) (o_20@@4 T@Ref) (f_29@@35 T@Field_5615_17677) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_5615_40976 Mask@@30 o_20@@4 f_29@@35) (= (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@17) o_20@@4 f_29@@35) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@13) o_20@@4 f_29@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| ExhaleHeap@@13) o_20@@4 f_29@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11267) (ExhaleHeap@@14 T@PolymorphicMapType_11267) (Mask@@31 T@PolymorphicMapType_11288) (o_20@@5 T@Ref) (f_29@@36 T@Field_11327_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_5615_53 Mask@@31 o_20@@5 f_29@@36) (= (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@18) o_20@@5 f_29@@36) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@14) o_20@@5 f_29@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| ExhaleHeap@@14) o_20@@5 f_29@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11267) (ExhaleHeap@@15 T@PolymorphicMapType_11267) (Mask@@32 T@PolymorphicMapType_11288) (o_20@@6 T@Ref) (f_29@@37 T@Field_5615_5655) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_5615_5655 Mask@@32 o_20@@6 f_29@@37) (= (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@19) o_20@@6 f_29@@37) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@15) o_20@@6 f_29@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| ExhaleHeap@@15) o_20@@6 f_29@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11267) (ExhaleHeap@@16 T@PolymorphicMapType_11267) (Mask@@33 T@PolymorphicMapType_11288) (o_20@@7 T@Ref) (f_29@@38 T@Field_11340_11341) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_5615_5616 Mask@@33 o_20@@7 f_29@@38) (= (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@20) o_20@@7 f_29@@38) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@16) o_20@@7 f_29@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| ExhaleHeap@@16) o_20@@7 f_29@@38))
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
(assert (forall ((Heap@@24 T@PolymorphicMapType_11267) (o_13 T@Ref) (f_66 T@Field_17672_17677) (v T@PolymorphicMapType_11816) ) (! (succHeap Heap@@24 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@24) (store (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@24) o_13 f_66 v) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@24) (store (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@24) o_13 f_66 v) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@24) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11267) (o_13@@0 T@Ref) (f_66@@0 T@Field_15043_15044) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@25) (store (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@25) o_13@@0 f_66@@0 v@@0) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@25) (store (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@25) o_13@@0 f_66@@0 v@@0) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@25) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11267) (o_13@@1 T@Ref) (f_66@@1 T@Field_5654_5616) (v@@1 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@26) (store (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@26) o_13@@1 f_66@@1 v@@1) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@26) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@26) (store (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@26) o_13@@1 f_66@@1 v@@1) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11267) (o_13@@2 T@Ref) (f_66@@2 T@Field_5654_53) (v@@2 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@27) (store (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@27) o_13@@2 f_66@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@27) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@27) (store (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@27) o_13@@2 f_66@@2 v@@2)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11267) (o_13@@3 T@Ref) (f_66@@3 T@Field_5615_17677) (v@@3 T@PolymorphicMapType_11816) ) (! (succHeap Heap@@28 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@28) (store (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@28) o_13@@3 f_66@@3 v@@3) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@28) (store (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@28) o_13@@3 f_66@@3 v@@3) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@28) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11267) (o_13@@4 T@Ref) (f_66@@4 T@Field_5615_5655) (v@@4 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@29) (store (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@29) o_13@@4 f_66@@4 v@@4) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@29) (store (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@29) o_13@@4 f_66@@4 v@@4) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@29) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11267) (o_13@@5 T@Ref) (f_66@@5 T@Field_11340_11341) (v@@5 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@30) (store (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@30) o_13@@5 f_66@@5 v@@5) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@30) (store (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@30) o_13@@5 f_66@@5 v@@5) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@30) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11267) (o_13@@6 T@Ref) (f_66@@6 T@Field_11327_53) (v@@6 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_11267 (store (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@31) o_13@@6 f_66@@6 v@@6) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11267 (store (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@31) o_13@@6 f_66@@6 v@@6) (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5658_17764#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_5655#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5615_41018#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_5616#PolymorphicMapType_11267| Heap@@31) (|PolymorphicMapType_11267_5654_53#PolymorphicMapType_11267| Heap@@31)))
)))
(assert (forall ((x@@9 T@Ref) ) (! (= (PredicateMaskField_5654 (SL x@@9)) (|SL#sm| x@@9))
 :qid |stdinbpl.344:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_5654 (SL x@@9)))
)))
(assert (forall ((o_13@@7 T@Ref) (f_20 T@Field_11340_11341) (Heap@@32 T@PolymorphicMapType_11267) ) (!  (=> (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@32) o_13@@7 $allocated) (select (|PolymorphicMapType_11267_5487_53#PolymorphicMapType_11267| Heap@@32) (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@32) o_13@@7 f_20) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11267_5490_5491#PolymorphicMapType_11267| Heap@@32) o_13@@7 f_20))
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
; Valid

