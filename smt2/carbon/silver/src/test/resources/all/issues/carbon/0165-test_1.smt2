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
(declare-sort T@Field_3426_53 0)
(declare-sort T@Field_3439_3440 0)
(declare-sort T@Field_6758_6759 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3426_6759 0)
(declare-sort T@Field_3426_6776 0)
(declare-sort T@Field_6758_53 0)
(declare-sort T@Field_6758_3440 0)
(declare-sort T@Field_6771_6776 0)
(declare-datatypes ((T@PolymorphicMapType_3387 0)) (((PolymorphicMapType_3387 (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| (Array T@Ref T@Field_6758_6759 Real)) (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| (Array T@Ref T@Field_6758_53 Real)) (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| (Array T@Ref T@Field_6758_3440 Real)) (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| (Array T@Ref T@Field_6771_6776 Real)) (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| (Array T@Ref T@Field_3426_6759 Real)) (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| (Array T@Ref T@Field_3426_53 Real)) (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| (Array T@Ref T@Field_3439_3440 Real)) (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| (Array T@Ref T@Field_3426_6776 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3915 0)) (((PolymorphicMapType_3915 (|PolymorphicMapType_3915_3426_53#PolymorphicMapType_3915| (Array T@Ref T@Field_3426_53 Bool)) (|PolymorphicMapType_3915_3426_3440#PolymorphicMapType_3915| (Array T@Ref T@Field_3439_3440 Bool)) (|PolymorphicMapType_3915_3426_6759#PolymorphicMapType_3915| (Array T@Ref T@Field_3426_6759 Bool)) (|PolymorphicMapType_3915_3426_12239#PolymorphicMapType_3915| (Array T@Ref T@Field_3426_6776 Bool)) (|PolymorphicMapType_3915_6758_53#PolymorphicMapType_3915| (Array T@Ref T@Field_6758_53 Bool)) (|PolymorphicMapType_3915_6758_3440#PolymorphicMapType_3915| (Array T@Ref T@Field_6758_3440 Bool)) (|PolymorphicMapType_3915_6758_6759#PolymorphicMapType_3915| (Array T@Ref T@Field_6758_6759 Bool)) (|PolymorphicMapType_3915_6758_13089#PolymorphicMapType_3915| (Array T@Ref T@Field_6771_6776 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3366 0)) (((PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| (Array T@Ref T@Field_3426_53 Bool)) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| (Array T@Ref T@Field_3439_3440 T@Ref)) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| (Array T@Ref T@Field_6758_6759 T@FrameType)) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| (Array T@Ref T@Field_3426_6759 T@FrameType)) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| (Array T@Ref T@Field_3426_6776 T@PolymorphicMapType_3915)) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| (Array T@Ref T@Field_6758_53 Bool)) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| (Array T@Ref T@Field_6758_3440 T@Ref)) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| (Array T@Ref T@Field_6771_6776 T@PolymorphicMapType_3915)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3366 T@PolymorphicMapType_3366) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3366 T@PolymorphicMapType_3366) Bool)
(declare-fun state (T@PolymorphicMapType_3366 T@PolymorphicMapType_3387) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3387) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3366 T@PolymorphicMapType_3366 T@PolymorphicMapType_3387) Bool)
(declare-fun IsPredicateField_1991_1992 (T@Field_6758_6759) Bool)
(declare-fun HasDirectPerm_6758_6759 (T@PolymorphicMapType_3387 T@Ref T@Field_6758_6759) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_1991 (T@Field_6758_6759) T@Field_6771_6776)
(declare-fun IsPredicateField_3426_10953 (T@Field_3426_6759) Bool)
(declare-fun HasDirectPerm_3426_6759 (T@PolymorphicMapType_3387 T@Ref T@Field_3426_6759) Bool)
(declare-fun PredicateMaskField_3426 (T@Field_3426_6759) T@Field_3426_6776)
(declare-fun IsWandField_6758_14254 (T@Field_6758_6759) Bool)
(declare-fun WandMaskField_6758 (T@Field_6758_6759) T@Field_6771_6776)
(declare-fun IsWandField_3426_13897 (T@Field_3426_6759) Bool)
(declare-fun WandMaskField_3426 (T@Field_3426_6759) T@Field_3426_6776)
(declare-fun ZeroPMask () T@PolymorphicMapType_3915)
(declare-fun p_2 (T@Ref Int) T@Field_6758_6759)
(declare-fun |p#trigger_1991| (T@PolymorphicMapType_3366 T@Field_6758_6759) Bool)
(declare-fun |p#everUsed_1991| (T@Field_6758_6759) Bool)
(declare-fun |p#sm| (T@Ref Int) T@Field_6771_6776)
(declare-fun dummyHeap () T@PolymorphicMapType_3366)
(declare-fun ZeroMask () T@PolymorphicMapType_3387)
(declare-fun $allocated () T@Field_3426_53)
(declare-fun InsidePredicate_6758_6758 (T@Field_6758_6759 T@FrameType T@Field_6758_6759 T@FrameType) Bool)
(declare-fun InsidePredicate_3426_3426 (T@Field_3426_6759 T@FrameType T@Field_3426_6759 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3426_19994 (T@Field_3426_6776) Bool)
(declare-fun IsWandField_3426_20010 (T@Field_3426_6776) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3426_3440 (T@Field_3439_3440) Bool)
(declare-fun IsWandField_3426_3440 (T@Field_3439_3440) Bool)
(declare-fun IsPredicateField_3426_53 (T@Field_3426_53) Bool)
(declare-fun IsWandField_3426_53 (T@Field_3426_53) Bool)
(declare-fun IsPredicateField_1991_19331 (T@Field_6771_6776) Bool)
(declare-fun IsWandField_1991_19347 (T@Field_6771_6776) Bool)
(declare-fun IsPredicateField_1991_3440 (T@Field_6758_3440) Bool)
(declare-fun IsWandField_1991_3440 (T@Field_6758_3440) Bool)
(declare-fun IsPredicateField_1991_53 (T@Field_6758_53) Bool)
(declare-fun IsWandField_1991_53 (T@Field_6758_53) Bool)
(declare-fun HasDirectPerm_6758_10665 (T@PolymorphicMapType_3387 T@Ref T@Field_6771_6776) Bool)
(declare-fun HasDirectPerm_6758_3440 (T@PolymorphicMapType_3387 T@Ref T@Field_6758_3440) Bool)
(declare-fun HasDirectPerm_6758_53 (T@PolymorphicMapType_3387 T@Ref T@Field_6758_53) Bool)
(declare-fun HasDirectPerm_3426_9725 (T@PolymorphicMapType_3387 T@Ref T@Field_3426_6776) Bool)
(declare-fun HasDirectPerm_3426_3440 (T@PolymorphicMapType_3387 T@Ref T@Field_3439_3440) Bool)
(declare-fun HasDirectPerm_3426_53 (T@PolymorphicMapType_3387 T@Ref T@Field_3426_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3387 T@PolymorphicMapType_3387 T@PolymorphicMapType_3387) Bool)
(declare-fun getPredWandId_1991_1992 (T@Field_6758_6759) Int)
(declare-fun InsidePredicate_6758_3426 (T@Field_6758_6759 T@FrameType T@Field_3426_6759 T@FrameType) Bool)
(declare-fun InsidePredicate_3426_6758 (T@Field_3426_6759 T@FrameType T@Field_6758_6759 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3366) (Heap1 T@PolymorphicMapType_3366) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3366) (Mask T@PolymorphicMapType_3387) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3366) (ExhaleHeap T@PolymorphicMapType_3366) (Mask@@0 T@PolymorphicMapType_3387) (pm_f_26 T@Field_6758_6759) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6758_6759 Mask@@0 null pm_f_26) (IsPredicateField_1991_1992 pm_f_26)) (and (and (and (and (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_3426_53) ) (!  (=> (select (|PolymorphicMapType_3915_3426_53#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@0) null (PredicateMaskField_1991 pm_f_26))) o2_26 f_51) (= (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@0) o2_26 f_51) (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_3439_3440) ) (!  (=> (select (|PolymorphicMapType_3915_3426_3440#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@0) null (PredicateMaskField_1991 pm_f_26))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@0) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| ExhaleHeap) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| ExhaleHeap) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_3426_6759) ) (!  (=> (select (|PolymorphicMapType_3915_3426_6759#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@0) null (PredicateMaskField_1991 pm_f_26))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@0) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| ExhaleHeap) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| ExhaleHeap) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_3426_6776) ) (!  (=> (select (|PolymorphicMapType_3915_3426_12239#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@0) null (PredicateMaskField_1991 pm_f_26))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@0) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap) o2_26@@2 f_51@@2))
))) (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_6758_53) ) (!  (=> (select (|PolymorphicMapType_3915_6758_53#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@0) null (PredicateMaskField_1991 pm_f_26))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@0) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| ExhaleHeap) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| ExhaleHeap) o2_26@@3 f_51@@3))
))) (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_6758_3440) ) (!  (=> (select (|PolymorphicMapType_3915_6758_3440#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@0) null (PredicateMaskField_1991 pm_f_26))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@0) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| ExhaleHeap) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| ExhaleHeap) o2_26@@4 f_51@@4))
))) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_6758_6759) ) (!  (=> (select (|PolymorphicMapType_3915_6758_6759#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@0) null (PredicateMaskField_1991 pm_f_26))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@0) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| ExhaleHeap) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| ExhaleHeap) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_6771_6776) ) (!  (=> (select (|PolymorphicMapType_3915_6758_13089#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@0) null (PredicateMaskField_1991 pm_f_26))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@0) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap) o2_26@@6 f_51@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_1991_1992 pm_f_26))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3366) (ExhaleHeap@@0 T@PolymorphicMapType_3366) (Mask@@1 T@PolymorphicMapType_3387) (pm_f_26@@0 T@Field_3426_6759) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3426_6759 Mask@@1 null pm_f_26@@0) (IsPredicateField_3426_10953 pm_f_26@@0)) (and (and (and (and (and (and (and (forall ((o2_26@@7 T@Ref) (f_51@@7 T@Field_3426_53) ) (!  (=> (select (|PolymorphicMapType_3915_3426_53#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@1) null (PredicateMaskField_3426 pm_f_26@@0))) o2_26@@7 f_51@@7) (= (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@1) o2_26@@7 f_51@@7) (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@7 f_51@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@7 f_51@@7))
)) (forall ((o2_26@@8 T@Ref) (f_51@@8 T@Field_3439_3440) ) (!  (=> (select (|PolymorphicMapType_3915_3426_3440#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@1) null (PredicateMaskField_3426 pm_f_26@@0))) o2_26@@8 f_51@@8) (= (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@1) o2_26@@8 f_51@@8) (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@8 f_51@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@8 f_51@@8))
))) (forall ((o2_26@@9 T@Ref) (f_51@@9 T@Field_3426_6759) ) (!  (=> (select (|PolymorphicMapType_3915_3426_6759#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@1) null (PredicateMaskField_3426 pm_f_26@@0))) o2_26@@9 f_51@@9) (= (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@1) o2_26@@9 f_51@@9) (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@9 f_51@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@9 f_51@@9))
))) (forall ((o2_26@@10 T@Ref) (f_51@@10 T@Field_3426_6776) ) (!  (=> (select (|PolymorphicMapType_3915_3426_12239#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@1) null (PredicateMaskField_3426 pm_f_26@@0))) o2_26@@10 f_51@@10) (= (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@1) o2_26@@10 f_51@@10) (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@10 f_51@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@10 f_51@@10))
))) (forall ((o2_26@@11 T@Ref) (f_51@@11 T@Field_6758_53) ) (!  (=> (select (|PolymorphicMapType_3915_6758_53#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@1) null (PredicateMaskField_3426 pm_f_26@@0))) o2_26@@11 f_51@@11) (= (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@1) o2_26@@11 f_51@@11) (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@11 f_51@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@11 f_51@@11))
))) (forall ((o2_26@@12 T@Ref) (f_51@@12 T@Field_6758_3440) ) (!  (=> (select (|PolymorphicMapType_3915_6758_3440#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@1) null (PredicateMaskField_3426 pm_f_26@@0))) o2_26@@12 f_51@@12) (= (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@1) o2_26@@12 f_51@@12) (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@12 f_51@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@12 f_51@@12))
))) (forall ((o2_26@@13 T@Ref) (f_51@@13 T@Field_6758_6759) ) (!  (=> (select (|PolymorphicMapType_3915_6758_6759#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@1) null (PredicateMaskField_3426 pm_f_26@@0))) o2_26@@13 f_51@@13) (= (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@1) o2_26@@13 f_51@@13) (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@13 f_51@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@13 f_51@@13))
))) (forall ((o2_26@@14 T@Ref) (f_51@@14 T@Field_6771_6776) ) (!  (=> (select (|PolymorphicMapType_3915_6758_13089#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@1) null (PredicateMaskField_3426 pm_f_26@@0))) o2_26@@14 f_51@@14) (= (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@1) o2_26@@14 f_51@@14) (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@14 f_51@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@0) o2_26@@14 f_51@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3426_10953 pm_f_26@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3366) (ExhaleHeap@@1 T@PolymorphicMapType_3366) (Mask@@2 T@PolymorphicMapType_3387) (pm_f_26@@1 T@Field_6758_6759) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6758_6759 Mask@@2 null pm_f_26@@1) (IsWandField_6758_14254 pm_f_26@@1)) (and (and (and (and (and (and (and (forall ((o2_26@@15 T@Ref) (f_51@@15 T@Field_3426_53) ) (!  (=> (select (|PolymorphicMapType_3915_3426_53#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@2) null (WandMaskField_6758 pm_f_26@@1))) o2_26@@15 f_51@@15) (= (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@2) o2_26@@15 f_51@@15) (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@15 f_51@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@15 f_51@@15))
)) (forall ((o2_26@@16 T@Ref) (f_51@@16 T@Field_3439_3440) ) (!  (=> (select (|PolymorphicMapType_3915_3426_3440#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@2) null (WandMaskField_6758 pm_f_26@@1))) o2_26@@16 f_51@@16) (= (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@2) o2_26@@16 f_51@@16) (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@16 f_51@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@16 f_51@@16))
))) (forall ((o2_26@@17 T@Ref) (f_51@@17 T@Field_3426_6759) ) (!  (=> (select (|PolymorphicMapType_3915_3426_6759#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@2) null (WandMaskField_6758 pm_f_26@@1))) o2_26@@17 f_51@@17) (= (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@2) o2_26@@17 f_51@@17) (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@17 f_51@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@17 f_51@@17))
))) (forall ((o2_26@@18 T@Ref) (f_51@@18 T@Field_3426_6776) ) (!  (=> (select (|PolymorphicMapType_3915_3426_12239#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@2) null (WandMaskField_6758 pm_f_26@@1))) o2_26@@18 f_51@@18) (= (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@2) o2_26@@18 f_51@@18) (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@18 f_51@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@18 f_51@@18))
))) (forall ((o2_26@@19 T@Ref) (f_51@@19 T@Field_6758_53) ) (!  (=> (select (|PolymorphicMapType_3915_6758_53#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@2) null (WandMaskField_6758 pm_f_26@@1))) o2_26@@19 f_51@@19) (= (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@2) o2_26@@19 f_51@@19) (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@19 f_51@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@19 f_51@@19))
))) (forall ((o2_26@@20 T@Ref) (f_51@@20 T@Field_6758_3440) ) (!  (=> (select (|PolymorphicMapType_3915_6758_3440#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@2) null (WandMaskField_6758 pm_f_26@@1))) o2_26@@20 f_51@@20) (= (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@2) o2_26@@20 f_51@@20) (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@20 f_51@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@20 f_51@@20))
))) (forall ((o2_26@@21 T@Ref) (f_51@@21 T@Field_6758_6759) ) (!  (=> (select (|PolymorphicMapType_3915_6758_6759#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@2) null (WandMaskField_6758 pm_f_26@@1))) o2_26@@21 f_51@@21) (= (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@2) o2_26@@21 f_51@@21) (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@21 f_51@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@21 f_51@@21))
))) (forall ((o2_26@@22 T@Ref) (f_51@@22 T@Field_6771_6776) ) (!  (=> (select (|PolymorphicMapType_3915_6758_13089#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@2) null (WandMaskField_6758 pm_f_26@@1))) o2_26@@22 f_51@@22) (= (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@2) o2_26@@22 f_51@@22) (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@22 f_51@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@1) o2_26@@22 f_51@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_6758_14254 pm_f_26@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3366) (ExhaleHeap@@2 T@PolymorphicMapType_3366) (Mask@@3 T@PolymorphicMapType_3387) (pm_f_26@@2 T@Field_3426_6759) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3426_6759 Mask@@3 null pm_f_26@@2) (IsWandField_3426_13897 pm_f_26@@2)) (and (and (and (and (and (and (and (forall ((o2_26@@23 T@Ref) (f_51@@23 T@Field_3426_53) ) (!  (=> (select (|PolymorphicMapType_3915_3426_53#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@3) null (WandMaskField_3426 pm_f_26@@2))) o2_26@@23 f_51@@23) (= (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@3) o2_26@@23 f_51@@23) (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@23 f_51@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@23 f_51@@23))
)) (forall ((o2_26@@24 T@Ref) (f_51@@24 T@Field_3439_3440) ) (!  (=> (select (|PolymorphicMapType_3915_3426_3440#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@3) null (WandMaskField_3426 pm_f_26@@2))) o2_26@@24 f_51@@24) (= (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@3) o2_26@@24 f_51@@24) (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@24 f_51@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@24 f_51@@24))
))) (forall ((o2_26@@25 T@Ref) (f_51@@25 T@Field_3426_6759) ) (!  (=> (select (|PolymorphicMapType_3915_3426_6759#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@3) null (WandMaskField_3426 pm_f_26@@2))) o2_26@@25 f_51@@25) (= (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@3) o2_26@@25 f_51@@25) (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@25 f_51@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@25 f_51@@25))
))) (forall ((o2_26@@26 T@Ref) (f_51@@26 T@Field_3426_6776) ) (!  (=> (select (|PolymorphicMapType_3915_3426_12239#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@3) null (WandMaskField_3426 pm_f_26@@2))) o2_26@@26 f_51@@26) (= (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@3) o2_26@@26 f_51@@26) (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@26 f_51@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@26 f_51@@26))
))) (forall ((o2_26@@27 T@Ref) (f_51@@27 T@Field_6758_53) ) (!  (=> (select (|PolymorphicMapType_3915_6758_53#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@3) null (WandMaskField_3426 pm_f_26@@2))) o2_26@@27 f_51@@27) (= (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@3) o2_26@@27 f_51@@27) (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@27 f_51@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@27 f_51@@27))
))) (forall ((o2_26@@28 T@Ref) (f_51@@28 T@Field_6758_3440) ) (!  (=> (select (|PolymorphicMapType_3915_6758_3440#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@3) null (WandMaskField_3426 pm_f_26@@2))) o2_26@@28 f_51@@28) (= (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@3) o2_26@@28 f_51@@28) (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@28 f_51@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@28 f_51@@28))
))) (forall ((o2_26@@29 T@Ref) (f_51@@29 T@Field_6758_6759) ) (!  (=> (select (|PolymorphicMapType_3915_6758_6759#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@3) null (WandMaskField_3426 pm_f_26@@2))) o2_26@@29 f_51@@29) (= (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@3) o2_26@@29 f_51@@29) (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@29 f_51@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@29 f_51@@29))
))) (forall ((o2_26@@30 T@Ref) (f_51@@30 T@Field_6771_6776) ) (!  (=> (select (|PolymorphicMapType_3915_6758_13089#PolymorphicMapType_3915| (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@3) null (WandMaskField_3426 pm_f_26@@2))) o2_26@@30 f_51@@30) (= (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@3) o2_26@@30 f_51@@30) (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@30 f_51@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@2) o2_26@@30 f_51@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3426_13897 pm_f_26@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3366) (Heap1@@0 T@PolymorphicMapType_3366) (Heap2 T@PolymorphicMapType_3366) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6771_6776) ) (!  (not (select (|PolymorphicMapType_3915_6758_13089#PolymorphicMapType_3915| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3915_6758_13089#PolymorphicMapType_3915| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6758_6759) ) (!  (not (select (|PolymorphicMapType_3915_6758_6759#PolymorphicMapType_3915| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3915_6758_6759#PolymorphicMapType_3915| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6758_3440) ) (!  (not (select (|PolymorphicMapType_3915_6758_3440#PolymorphicMapType_3915| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3915_6758_3440#PolymorphicMapType_3915| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6758_53) ) (!  (not (select (|PolymorphicMapType_3915_6758_53#PolymorphicMapType_3915| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3915_6758_53#PolymorphicMapType_3915| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3426_6776) ) (!  (not (select (|PolymorphicMapType_3915_3426_12239#PolymorphicMapType_3915| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3915_3426_12239#PolymorphicMapType_3915| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3426_6759) ) (!  (not (select (|PolymorphicMapType_3915_3426_6759#PolymorphicMapType_3915| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3915_3426_6759#PolymorphicMapType_3915| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3439_3440) ) (!  (not (select (|PolymorphicMapType_3915_3426_3440#PolymorphicMapType_3915| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3915_3426_3440#PolymorphicMapType_3915| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_3426_53) ) (!  (not (select (|PolymorphicMapType_3915_3426_53#PolymorphicMapType_3915| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3915_3426_53#PolymorphicMapType_3915| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((x T@Ref) (idx Int) ) (! (IsPredicateField_1991_1992 (p_2 x idx))
 :qid |stdinbpl.202:15|
 :skolemid |23|
 :pattern ( (p_2 x idx))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3366) (x@@0 T@Ref) (idx@@0 Int) ) (! (|p#everUsed_1991| (p_2 x@@0 idx@@0))
 :qid |stdinbpl.221:15|
 :skolemid |27|
 :pattern ( (|p#trigger_1991| Heap@@4 (p_2 x@@0 idx@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3366) (ExhaleHeap@@3 T@PolymorphicMapType_3366) (Mask@@4 T@PolymorphicMapType_3387) (pm_f_26@@3 T@Field_6758_6759) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6758_6759 Mask@@4 null pm_f_26@@3) (IsPredicateField_1991_1992 pm_f_26@@3)) (= (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@5) null (PredicateMaskField_1991 pm_f_26@@3)) (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@3) null (PredicateMaskField_1991 pm_f_26@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_1991_1992 pm_f_26@@3) (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@3) null (PredicateMaskField_1991 pm_f_26@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3366) (ExhaleHeap@@4 T@PolymorphicMapType_3366) (Mask@@5 T@PolymorphicMapType_3387) (pm_f_26@@4 T@Field_3426_6759) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3426_6759 Mask@@5 null pm_f_26@@4) (IsPredicateField_3426_10953 pm_f_26@@4)) (= (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@6) null (PredicateMaskField_3426 pm_f_26@@4)) (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@4) null (PredicateMaskField_3426 pm_f_26@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3426_10953 pm_f_26@@4) (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@4) null (PredicateMaskField_3426 pm_f_26@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3366) (ExhaleHeap@@5 T@PolymorphicMapType_3366) (Mask@@6 T@PolymorphicMapType_3387) (pm_f_26@@5 T@Field_6758_6759) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6758_6759 Mask@@6 null pm_f_26@@5) (IsWandField_6758_14254 pm_f_26@@5)) (= (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@7) null (WandMaskField_6758 pm_f_26@@5)) (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@5) null (WandMaskField_6758 pm_f_26@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_6758_14254 pm_f_26@@5) (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@5) null (WandMaskField_6758 pm_f_26@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3366) (ExhaleHeap@@6 T@PolymorphicMapType_3366) (Mask@@7 T@PolymorphicMapType_3387) (pm_f_26@@6 T@Field_3426_6759) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3426_6759 Mask@@7 null pm_f_26@@6) (IsWandField_3426_13897 pm_f_26@@6)) (= (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@8) null (WandMaskField_3426 pm_f_26@@6)) (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@6) null (WandMaskField_3426 pm_f_26@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_3426_13897 pm_f_26@@6) (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@6) null (WandMaskField_3426 pm_f_26@@6)))
)))
(assert (forall ((x@@1 T@Ref) (idx@@1 Int) (x2 T@Ref) (idx2 Int) ) (!  (=> (= (p_2 x@@1 idx@@1) (p_2 x2 idx2)) (and (= x@@1 x2) (= idx@@1 idx2)))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (p_2 x@@1 idx@@1) (p_2 x2 idx2))
)))
(assert (forall ((x@@2 T@Ref) (idx@@2 Int) (x2@@0 T@Ref) (idx2@@0 Int) ) (!  (=> (= (|p#sm| x@@2 idx@@2) (|p#sm| x2@@0 idx2@@0)) (and (= x@@2 x2@@0) (= idx@@2 idx2@@0)))
 :qid |stdinbpl.216:15|
 :skolemid |26|
 :pattern ( (|p#sm| x@@2 idx@@2) (|p#sm| x2@@0 idx2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3366) (ExhaleHeap@@7 T@PolymorphicMapType_3366) (Mask@@8 T@PolymorphicMapType_3387) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@9) o_38 $allocated) (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap@@7) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap@@7) o_38 $allocated))
)))
(assert (forall ((p T@Field_6758_6759) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6758_6758 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6758_6758 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3426_6759) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3426_3426 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3426_3426 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3366) (ExhaleHeap@@8 T@PolymorphicMapType_3366) (Mask@@9 T@PolymorphicMapType_3387) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3387) (o_2@@7 T@Ref) (f_4@@7 T@Field_3426_6776) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3426_19994 f_4@@7))) (not (IsWandField_3426_20010 f_4@@7))) (<= (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3387) (o_2@@8 T@Ref) (f_4@@8 T@Field_3439_3440) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3426_3440 f_4@@8))) (not (IsWandField_3426_3440 f_4@@8))) (<= (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3387) (o_2@@9 T@Ref) (f_4@@9 T@Field_3426_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3426_53 f_4@@9))) (not (IsWandField_3426_53 f_4@@9))) (<= (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3387) (o_2@@10 T@Ref) (f_4@@10 T@Field_3426_6759) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3426_10953 f_4@@10))) (not (IsWandField_3426_13897 f_4@@10))) (<= (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3387) (o_2@@11 T@Ref) (f_4@@11 T@Field_6771_6776) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_1991_19331 f_4@@11))) (not (IsWandField_1991_19347 f_4@@11))) (<= (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3387) (o_2@@12 T@Ref) (f_4@@12 T@Field_6758_3440) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_1991_3440 f_4@@12))) (not (IsWandField_1991_3440 f_4@@12))) (<= (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3387) (o_2@@13 T@Ref) (f_4@@13 T@Field_6758_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_1991_53 f_4@@13))) (not (IsWandField_1991_53 f_4@@13))) (<= (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3387) (o_2@@14 T@Ref) (f_4@@14 T@Field_6758_6759) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_1991_1992 f_4@@14))) (not (IsWandField_6758_14254 f_4@@14))) (<= (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_3387) (o_2@@15 T@Ref) (f_4@@15 T@Field_6771_6776) ) (! (= (HasDirectPerm_6758_10665 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6758_10665 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_3387) (o_2@@16 T@Ref) (f_4@@16 T@Field_6758_6759) ) (! (= (HasDirectPerm_6758_6759 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6758_6759 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_3387) (o_2@@17 T@Ref) (f_4@@17 T@Field_6758_3440) ) (! (= (HasDirectPerm_6758_3440 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6758_3440 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_3387) (o_2@@18 T@Ref) (f_4@@18 T@Field_6758_53) ) (! (= (HasDirectPerm_6758_53 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6758_53 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_3387) (o_2@@19 T@Ref) (f_4@@19 T@Field_3426_6776) ) (! (= (HasDirectPerm_3426_9725 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3426_9725 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_3387) (o_2@@20 T@Ref) (f_4@@20 T@Field_3426_6759) ) (! (= (HasDirectPerm_3426_6759 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3426_6759 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_3387) (o_2@@21 T@Ref) (f_4@@21 T@Field_3439_3440) ) (! (= (HasDirectPerm_3426_3440 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3426_3440 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_3387) (o_2@@22 T@Ref) (f_4@@22 T@Field_3426_53) ) (! (= (HasDirectPerm_3426_53 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3426_53 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3366) (ExhaleHeap@@9 T@PolymorphicMapType_3366) (Mask@@26 T@PolymorphicMapType_3387) (o_38@@0 T@Ref) (f_51@@31 T@Field_6771_6776) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_6758_10665 Mask@@26 o_38@@0 f_51@@31) (= (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@11) o_38@@0 f_51@@31) (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@9) o_38@@0 f_51@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| ExhaleHeap@@9) o_38@@0 f_51@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3366) (ExhaleHeap@@10 T@PolymorphicMapType_3366) (Mask@@27 T@PolymorphicMapType_3387) (o_38@@1 T@Ref) (f_51@@32 T@Field_6758_6759) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_6758_6759 Mask@@27 o_38@@1 f_51@@32) (= (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@12) o_38@@1 f_51@@32) (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| ExhaleHeap@@10) o_38@@1 f_51@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| ExhaleHeap@@10) o_38@@1 f_51@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3366) (ExhaleHeap@@11 T@PolymorphicMapType_3366) (Mask@@28 T@PolymorphicMapType_3387) (o_38@@2 T@Ref) (f_51@@33 T@Field_6758_3440) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_6758_3440 Mask@@28 o_38@@2 f_51@@33) (= (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@13) o_38@@2 f_51@@33) (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| ExhaleHeap@@11) o_38@@2 f_51@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| ExhaleHeap@@11) o_38@@2 f_51@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3366) (ExhaleHeap@@12 T@PolymorphicMapType_3366) (Mask@@29 T@PolymorphicMapType_3387) (o_38@@3 T@Ref) (f_51@@34 T@Field_6758_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_6758_53 Mask@@29 o_38@@3 f_51@@34) (= (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@14) o_38@@3 f_51@@34) (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| ExhaleHeap@@12) o_38@@3 f_51@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| ExhaleHeap@@12) o_38@@3 f_51@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3366) (ExhaleHeap@@13 T@PolymorphicMapType_3366) (Mask@@30 T@PolymorphicMapType_3387) (o_38@@4 T@Ref) (f_51@@35 T@Field_3426_6776) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_3426_9725 Mask@@30 o_38@@4 f_51@@35) (= (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@15) o_38@@4 f_51@@35) (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@13) o_38@@4 f_51@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| ExhaleHeap@@13) o_38@@4 f_51@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3366) (ExhaleHeap@@14 T@PolymorphicMapType_3366) (Mask@@31 T@PolymorphicMapType_3387) (o_38@@5 T@Ref) (f_51@@36 T@Field_3426_6759) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_3426_6759 Mask@@31 o_38@@5 f_51@@36) (= (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@16) o_38@@5 f_51@@36) (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| ExhaleHeap@@14) o_38@@5 f_51@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| ExhaleHeap@@14) o_38@@5 f_51@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3366) (ExhaleHeap@@15 T@PolymorphicMapType_3366) (Mask@@32 T@PolymorphicMapType_3387) (o_38@@6 T@Ref) (f_51@@37 T@Field_3439_3440) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_3426_3440 Mask@@32 o_38@@6 f_51@@37) (= (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@17) o_38@@6 f_51@@37) (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| ExhaleHeap@@15) o_38@@6 f_51@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| ExhaleHeap@@15) o_38@@6 f_51@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3366) (ExhaleHeap@@16 T@PolymorphicMapType_3366) (Mask@@33 T@PolymorphicMapType_3387) (o_38@@7 T@Ref) (f_51@@38 T@Field_3426_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_3426_53 Mask@@33 o_38@@7 f_51@@38) (= (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@18) o_38@@7 f_51@@38) (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap@@16) o_38@@7 f_51@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| ExhaleHeap@@16) o_38@@7 f_51@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_3426_6776) ) (! (= (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_3439_3440) ) (! (= (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_3426_53) ) (! (= (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_3426_6759) ) (! (= (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_6771_6776) ) (! (= (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_6758_3440) ) (! (= (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_6758_53) ) (! (= (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6758_6759) ) (! (= (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3387) (SummandMask1 T@PolymorphicMapType_3387) (SummandMask2 T@PolymorphicMapType_3387) (o_2@@31 T@Ref) (f_4@@31 T@Field_3426_6776) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3387_3426_18156#PolymorphicMapType_3387| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3387) (SummandMask1@@0 T@PolymorphicMapType_3387) (SummandMask2@@0 T@PolymorphicMapType_3387) (o_2@@32 T@Ref) (f_4@@32 T@Field_3439_3440) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3387_3426_3440#PolymorphicMapType_3387| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3387) (SummandMask1@@1 T@PolymorphicMapType_3387) (SummandMask2@@1 T@PolymorphicMapType_3387) (o_2@@33 T@Ref) (f_4@@33 T@Field_3426_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3387_3426_53#PolymorphicMapType_3387| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3387) (SummandMask1@@2 T@PolymorphicMapType_3387) (SummandMask2@@2 T@PolymorphicMapType_3387) (o_2@@34 T@Ref) (f_4@@34 T@Field_3426_6759) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3387_3426_1992#PolymorphicMapType_3387| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3387) (SummandMask1@@3 T@PolymorphicMapType_3387) (SummandMask2@@3 T@PolymorphicMapType_3387) (o_2@@35 T@Ref) (f_4@@35 T@Field_6771_6776) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3387_1991_17810#PolymorphicMapType_3387| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_3387) (SummandMask1@@4 T@PolymorphicMapType_3387) (SummandMask2@@4 T@PolymorphicMapType_3387) (o_2@@36 T@Ref) (f_4@@36 T@Field_6758_3440) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3387_1991_3440#PolymorphicMapType_3387| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_3387) (SummandMask1@@5 T@PolymorphicMapType_3387) (SummandMask2@@5 T@PolymorphicMapType_3387) (o_2@@37 T@Ref) (f_4@@37 T@Field_6758_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3387_1991_53#PolymorphicMapType_3387| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_3387) (SummandMask1@@6 T@PolymorphicMapType_3387) (SummandMask2@@6 T@PolymorphicMapType_3387) (o_2@@38 T@Ref) (f_4@@38 T@Field_6758_6759) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((x@@3 T@Ref) (idx@@3 Int) ) (! (= (getPredWandId_1991_1992 (p_2 x@@3 idx@@3)) 0)
 :qid |stdinbpl.206:15|
 :skolemid |24|
 :pattern ( (p_2 x@@3 idx@@3))
)))
(assert (forall ((x@@4 T@Ref) (idx@@4 Int) ) (! (= (PredicateMaskField_1991 (p_2 x@@4 idx@@4)) (|p#sm| x@@4 idx@@4))
 :qid |stdinbpl.198:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_1991 (p_2 x@@4 idx@@4)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3366) (o_56 T@Ref) (f_22 T@Field_6771_6776) (v T@PolymorphicMapType_3915) ) (! (succHeap Heap@@19 (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@19) (store (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@19) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@19) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@19) (store (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@19) o_56 f_22 v)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3366) (o_56@@0 T@Ref) (f_22@@0 T@Field_6758_6759) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@20) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@20) (store (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@20) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@20) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@20) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@20) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@20) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@20) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@20) (store (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@20) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@20) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@20) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@20) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@20) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3366) (o_56@@1 T@Ref) (f_22@@1 T@Field_6758_3440) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@21) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@21) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@21) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@21) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@21) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@21) (store (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@21) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@21) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@21) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@21) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@21) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@21) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@21) (store (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@21) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3366) (o_56@@2 T@Ref) (f_22@@2 T@Field_6758_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@22) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@22) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@22) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@22) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@22) (store (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@22) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@22) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@22) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@22) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@22) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@22) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@22) (store (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@22) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@22) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3366) (o_56@@3 T@Ref) (f_22@@3 T@Field_3426_6776) (v@@3 T@PolymorphicMapType_3915) ) (! (succHeap Heap@@23 (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@23) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@23) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@23) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@23) (store (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@23) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@23) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@23) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@23) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@23) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@23) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@23) (store (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@23) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@23) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@23) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3366) (o_56@@4 T@Ref) (f_22@@4 T@Field_3426_6759) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@24) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@24) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@24) (store (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@24) o_56@@4 f_22@@4 v@@4) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@24) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@24) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@24) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@24) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@24) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@24) (store (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@24) o_56@@4 f_22@@4 v@@4) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@24) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@24) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@24) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3366) (o_56@@5 T@Ref) (f_22@@5 T@Field_3439_3440) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@25) (store (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@25) o_56@@5 f_22@@5 v@@5) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@25) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@25) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@25) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@25) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@25) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3366 (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@25) (store (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@25) o_56@@5 f_22@@5 v@@5) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@25) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@25) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@25) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@25) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@25) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3366) (o_56@@6 T@Ref) (f_22@@6 T@Field_3426_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_3366 (store (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@26) o_56@@6 f_22@@6 v@@6) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3366 (store (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@26) o_56@@6 f_22@@6 v@@6) (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_3426_6759#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_3426_9767#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_6758_53#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_6758_3440#PolymorphicMapType_3366| Heap@@26) (|PolymorphicMapType_3366_6758_10707#PolymorphicMapType_3366| Heap@@26)))
)))
(assert (forall ((o_56@@7 T@Ref) (f_3 T@Field_3439_3440) (Heap@@27 T@PolymorphicMapType_3366) ) (!  (=> (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@27) o_56@@7 $allocated) (select (|PolymorphicMapType_3366_1858_53#PolymorphicMapType_3366| Heap@@27) (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@27) o_56@@7 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3366_1861_1862#PolymorphicMapType_3366| Heap@@27) o_56@@7 f_3))
)))
(assert (forall ((p@@2 T@Field_6758_6759) (v_1@@1 T@FrameType) (q T@Field_6758_6759) (w@@1 T@FrameType) (r T@Field_6758_6759) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6758_6758 p@@2 v_1@@1 q w@@1) (InsidePredicate_6758_6758 q w@@1 r u)) (InsidePredicate_6758_6758 p@@2 v_1@@1 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6758_6758 p@@2 v_1@@1 q w@@1) (InsidePredicate_6758_6758 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_6758_6759) (v_1@@2 T@FrameType) (q@@0 T@Field_6758_6759) (w@@2 T@FrameType) (r@@0 T@Field_3426_6759) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_6758_6758 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6758_3426 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_6758_3426 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6758_6758 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6758_3426 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_6758_6759) (v_1@@3 T@FrameType) (q@@1 T@Field_3426_6759) (w@@3 T@FrameType) (r@@1 T@Field_6758_6759) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_6758_3426 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3426_6758 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_6758_6758 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6758_3426 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3426_6758 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_6758_6759) (v_1@@4 T@FrameType) (q@@2 T@Field_3426_6759) (w@@4 T@FrameType) (r@@2 T@Field_3426_6759) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_6758_3426 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3426_3426 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_6758_3426 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6758_3426 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3426_3426 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3426_6759) (v_1@@5 T@FrameType) (q@@3 T@Field_6758_6759) (w@@5 T@FrameType) (r@@3 T@Field_6758_6759) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3426_6758 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6758_6758 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3426_6758 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3426_6758 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6758_6758 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3426_6759) (v_1@@6 T@FrameType) (q@@4 T@Field_6758_6759) (w@@6 T@FrameType) (r@@4 T@Field_3426_6759) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3426_6758 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6758_3426 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3426_3426 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3426_6758 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6758_3426 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3426_6759) (v_1@@7 T@FrameType) (q@@5 T@Field_3426_6759) (w@@7 T@FrameType) (r@@5 T@Field_6758_6759) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3426_3426 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3426_6758 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3426_6758 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3426_3426 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3426_6758 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3426_6759) (v_1@@8 T@FrameType) (q@@6 T@Field_3426_6759) (w@@8 T@FrameType) (r@@6 T@Field_3426_6759) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3426_3426 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3426_3426 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3426_3426 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3426_3426 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3426_3426 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered1 (T@Ref) Bool)
(declare-fun Heap@@28 () T@PolymorphicMapType_3366)
(declare-fun invRecv1 (T@Ref Int) T@Ref)
(declare-fun qpRange1 (T@Ref Int) Bool)
(set-info :boogie-vc-id test_1)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((r_1_1 T@Ref) (r_1_2 T@Ref) ) (!  (=> (and (and (not (= r_1_1 r_1_2)) (< NoPerm (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ZeroMask) null (p_2 r_1_1 0)))) (< NoPerm (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ZeroMask) null (p_2 r_1_2 0)))) (not (= r_1_1 r_1_2)))
 :qid |stdinbpl.258:17|
 :skolemid |28|
 :pattern ( (neverTriggered1 r_1_1) (neverTriggered1 r_1_2))
))) (=> (forall ((r_1_1@@0 T@Ref) (r_1_2@@0 T@Ref) ) (!  (=> (and (and (not (= r_1_1@@0 r_1_2@@0)) (< NoPerm (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ZeroMask) null (p_2 r_1_1@@0 0)))) (< NoPerm (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ZeroMask) null (p_2 r_1_2@@0 0)))) (not (= r_1_1@@0 r_1_2@@0)))
 :qid |stdinbpl.258:17|
 :skolemid |28|
 :pattern ( (neverTriggered1 r_1_1@@0) (neverTriggered1 r_1_2@@0))
)) (=> (forall ((r_1_1@@1 T@Ref) ) (!  (=> (< NoPerm (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ZeroMask) null (p_2 r_1_1@@1 0))) (and (= (invRecv1 r_1_1@@1 0) r_1_1@@1) (qpRange1 r_1_1@@1 0)))
 :qid |stdinbpl.264:22|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@28) null (p_2 r_1_1@@1 0)))
 :pattern ( (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ZeroMask) null (p_2 r_1_1@@1 0)))
)) (=> (and (forall ((x@@5 T@Ref) (idx@@5 Int) ) (!  (=> (and (< NoPerm (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ZeroMask) null (p_2 (invRecv1 x@@5 idx@@5) 0))) (qpRange1 x@@5 idx@@5)) (and (= (invRecv1 x@@5 idx@@5) x@@5) (= 0 idx@@5)))
 :qid |stdinbpl.268:22|
 :skolemid |30|
 :pattern ( (invRecv1 x@@5 idx@@5))
)) (= (ControlFlow 0 3) (- 0 2))) (forall ((r_1_1@@2 T@Ref) ) (! (>= (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ZeroMask) null (p_2 r_1_1@@2 0)) NoPerm)
 :qid |stdinbpl.274:15|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_3366_1991_1992#PolymorphicMapType_3366| Heap@@28) null (p_2 r_1_1@@2 0)))
 :pattern ( (select (|PolymorphicMapType_3387_1991_1992#PolymorphicMapType_3387| ZeroMask) null (p_2 r_1_1@@2 0)))
))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@28 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
