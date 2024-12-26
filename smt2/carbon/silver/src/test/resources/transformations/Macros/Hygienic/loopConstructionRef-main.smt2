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
(declare-sort T@Field_5446_53 0)
(declare-sort T@Field_5459_5460 0)
(declare-sort T@Field_5446_15188 0)
(declare-sort T@Field_5446_15055 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5407 0)) (((PolymorphicMapType_5407 (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| (Array T@Ref T@Field_5446_53 Real)) (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| (Array T@Ref T@Field_5459_5460 Real)) (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| (Array T@Ref T@Field_5446_15055 Real)) (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| (Array T@Ref T@Field_5446_15188 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5951 0)) (((PolymorphicMapType_5951 (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| (Array T@Ref T@Field_5446_53 Bool)) (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| (Array T@Ref T@Field_5459_5460 Bool)) (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| (Array T@Ref T@Field_5446_15055 Bool)) (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| (Array T@Ref T@Field_5446_15188 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5386 0)) (((PolymorphicMapType_5386 (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| (Array T@Ref T@Field_5446_53 Bool)) (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| (Array T@Ref T@Field_5459_5460 T@Ref)) (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| (Array T@Ref T@Field_5446_15188 T@PolymorphicMapType_5951)) (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| (Array T@Ref T@Field_5446_15055 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_5386 T@PolymorphicMapType_5386) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5386 T@PolymorphicMapType_5386) Bool)
(declare-fun state (T@PolymorphicMapType_5386 T@PolymorphicMapType_5407) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5407) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5951)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5386 T@PolymorphicMapType_5386 T@PolymorphicMapType_5407) Bool)
(declare-fun IsPredicateField_5446_15146 (T@Field_5446_15055) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5446 (T@Field_5446_15055) T@Field_5446_15188)
(declare-fun HasDirectPerm_5446_15119 (T@PolymorphicMapType_5407 T@Ref T@Field_5446_15055) Bool)
(declare-fun IsWandField_5446_16695 (T@Field_5446_15055) Bool)
(declare-fun WandMaskField_5446 (T@Field_5446_15055) T@Field_5446_15188)
(declare-fun IdenticalOnKnownLocationsLiberal (T@PolymorphicMapType_5386 T@PolymorphicMapType_5386 T@PolymorphicMapType_5407) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_5386)
(declare-fun ZeroMask () T@PolymorphicMapType_5407)
(declare-fun $allocated () T@Field_5446_53)
(declare-fun InsidePredicate_5446_5446 (T@Field_5446_15055 T@FrameType T@Field_5446_15055 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5446_25704 (T@Field_5446_15188) Bool)
(declare-fun IsWandField_5446_25720 (T@Field_5446_15188) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5446_5460 (T@Field_5459_5460) Bool)
(declare-fun IsWandField_5446_5460 (T@Field_5459_5460) Bool)
(declare-fun IsPredicateField_5446_53 (T@Field_5446_53) Bool)
(declare-fun IsWandField_5446_53 (T@Field_5446_53) Bool)
(declare-fun HasDirectPerm_5446_19130 (T@PolymorphicMapType_5407 T@Ref T@Field_5446_15188) Bool)
(declare-fun HasDirectPerm_5446_5460 (T@PolymorphicMapType_5407 T@Ref T@Field_5459_5460) Bool)
(declare-fun HasDirectPerm_5446_53 (T@PolymorphicMapType_5407 T@Ref T@Field_5446_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5407 T@PolymorphicMapType_5407 T@PolymorphicMapType_5407) Bool)
(declare-fun SumHeap (T@PolymorphicMapType_5386 T@PolymorphicMapType_5386 T@PolymorphicMapType_5407 T@PolymorphicMapType_5386 T@PolymorphicMapType_5407) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5386) (Heap1 T@PolymorphicMapType_5386) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.95:15|
 :skolemid |12|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5386) (Mask T@PolymorphicMapType_5407) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.182:15|
 :skolemid |27|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5386) (Heap1@@0 T@PolymorphicMapType_5386) (Heap2 T@PolymorphicMapType_5386) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.100:15|
 :skolemid |13|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5446_15188) ) (!  (not (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5446_15055) ) (!  (not (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5459_5460) ) (!  (not (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5446_53) ) (!  (not (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5386) (ExhaleHeap T@PolymorphicMapType_5386) (Mask@@0 T@PolymorphicMapType_5407) (pm_f_13 T@Field_5446_15055) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5446_15119 Mask@@0 null pm_f_13) (IsPredicateField_5446_15146 pm_f_13)) (= (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@0) null (PredicateMaskField_5446 pm_f_13)) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap) null (PredicateMaskField_5446 pm_f_13)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5446_15146 pm_f_13) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap) null (PredicateMaskField_5446 pm_f_13)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5386) (ExhaleHeap@@0 T@PolymorphicMapType_5386) (Mask@@1 T@PolymorphicMapType_5407) (pm_f_13@@0 T@Field_5446_15055) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5446_15119 Mask@@1 null pm_f_13@@0) (IsWandField_5446_16695 pm_f_13@@0)) (= (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@1) null (WandMaskField_5446 pm_f_13@@0)) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@0) null (WandMaskField_5446 pm_f_13@@0)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5446_16695 pm_f_13@@0) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@0) null (WandMaskField_5446 pm_f_13@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5386) (ExhaleHeap@@1 T@PolymorphicMapType_5386) (Mask@@2 T@PolymorphicMapType_5407) (pm_f_13@@1 T@Field_5446_15055) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5446_15119 Mask@@2 null pm_f_13@@1) (IsPredicateField_5446_15146 pm_f_13@@1)) (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_5446_53) ) (!  (=> (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@2) null (PredicateMaskField_5446 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@2) o2_13 f_30) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@1) o2_13 f_30)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@1) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_5459_5460) ) (!  (=> (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@2) null (PredicateMaskField_5446 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@2) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@1) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@1) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_5446_15055) ) (!  (=> (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@2) null (PredicateMaskField_5446 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@2) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@1) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@1) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_5446_15188) ) (!  (=> (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@2) null (PredicateMaskField_5446 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@2) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@1) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@1) o2_13@@2 f_30@@2))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5446_15146 pm_f_13@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5386) (ExhaleHeap@@2 T@PolymorphicMapType_5386) (Mask@@3 T@PolymorphicMapType_5407) (pm_f_13@@2 T@Field_5446_15055) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5446_15119 Mask@@3 null pm_f_13@@2) (IsWandField_5446_16695 pm_f_13@@2)) (and (and (and (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_5446_53) ) (!  (=> (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@3) null (WandMaskField_5446 pm_f_13@@2))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@3) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@2) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@2) o2_13@@3 f_30@@3))
)) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_5459_5460) ) (!  (=> (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@3) null (WandMaskField_5446 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@3) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@2) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@2) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_5446_15055) ) (!  (=> (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@3) null (WandMaskField_5446 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@3) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@2) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@2) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_5446_15188) ) (!  (=> (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@3) null (WandMaskField_5446 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@3) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@2) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@2) o2_13@@6 f_30@@6))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5446_16695 pm_f_13@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5386) (ExhaleHeap@@3 T@PolymorphicMapType_5386) (Mask@@4 T@PolymorphicMapType_5407) (pm_f_22 T@Field_5446_15055) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5446_15119 Mask@@4 null pm_f_22) (IsPredicateField_5446_15146 pm_f_22)) (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_5446_53) ) (!  (=> (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@4) null (PredicateMaskField_5446 pm_f_22))) o2_22 f_37) (= (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@4) o2_22 f_37) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_5459_5460) ) (!  (=> (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@4) null (PredicateMaskField_5446 pm_f_22))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@4) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_5446_15055) ) (!  (=> (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@4) null (PredicateMaskField_5446 pm_f_22))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@4) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_5446_15188) ) (!  (=> (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@4) null (PredicateMaskField_5446 pm_f_22))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@4) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@3) o2_22@@2 f_37@@2))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5446_15146 pm_f_22))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5386) (ExhaleHeap@@4 T@PolymorphicMapType_5386) (Mask@@5 T@PolymorphicMapType_5407) (pm_f_22@@0 T@Field_5446_15055) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5446_15119 Mask@@5 null pm_f_22@@0) (IsWandField_5446_16695 pm_f_22@@0)) (and (and (and (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_5446_53) ) (!  (=> (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@5) null (WandMaskField_5446 pm_f_22@@0))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@5) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@4) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@4) o2_22@@3 f_37@@3))
)) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_5459_5460) ) (!  (=> (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@5) null (WandMaskField_5446 pm_f_22@@0))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@5) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@4) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@4) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_5446_15055) ) (!  (=> (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@5) null (WandMaskField_5446 pm_f_22@@0))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@5) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@4) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@4) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_5446_15188) ) (!  (=> (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@5) null (WandMaskField_5446 pm_f_22@@0))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@5) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@4) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@4) o2_22@@6 f_37@@6))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_5446_16695 pm_f_22@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5386) (ExhaleHeap@@5 T@PolymorphicMapType_5386) (Mask@@6 T@PolymorphicMapType_5407) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@6) o_22 $allocated) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@5) o_22 $allocated)))
 :qid |stdinbpl.75:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@5) o_22 $allocated))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5386) (ExhaleHeap@@6 T@PolymorphicMapType_5386) (Mask@@7 T@PolymorphicMapType_5407) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@7) o_46 $allocated) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@6) o_46 $allocated)))
 :qid |stdinbpl.142:15|
 :skolemid |23|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@6) o_46 $allocated))
)))
(assert (forall ((p T@Field_5446_15055) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5446_5446 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_5446_5446 p v_1 p w))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5386) (ExhaleHeap@@7 T@PolymorphicMapType_5386) (Mask@@8 T@PolymorphicMapType_5407) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (succHeap Heap@@8 ExhaleHeap@@7))
 :qid |stdinbpl.85:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5386) (ExhaleHeap@@8 T@PolymorphicMapType_5386) (Mask@@9 T@PolymorphicMapType_5407) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@9 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@9 ExhaleHeap@@8))
 :qid |stdinbpl.90:15|
 :skolemid |11|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@9 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5386) (ExhaleHeap@@9 T@PolymorphicMapType_5386) (Mask@@10 T@PolymorphicMapType_5407) (pm_f_22@@1 T@Field_5446_15055) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_5446_15119 Mask@@10 null pm_f_22@@1) (IsPredicateField_5446_15146 pm_f_22@@1)) (and (and (and (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_5446_53) ) (!  (=> (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@10) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@9) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@7 f_37@@7))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@9) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@7 f_37@@7))
)) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_5459_5460) ) (!  (=> (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@10) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@9) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@8 f_37@@8))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@9) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@8 f_37@@8))
))) (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_5446_15055) ) (!  (=> (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@10) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@9) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@9 f_37@@9))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@9) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@9 f_37@@9))
))) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_5446_15188) ) (!  (=> (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@10) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@9) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@10 f_37@@10))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@9) null (PredicateMaskField_5446 pm_f_22@@1))) o2_22@@10 f_37@@10))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@10) (IsPredicateField_5446_15146 pm_f_22@@1) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@9) null (PredicateMaskField_5446 pm_f_22@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5386) (ExhaleHeap@@10 T@PolymorphicMapType_5386) (Mask@@11 T@PolymorphicMapType_5407) (pm_f_22@@2 T@Field_5446_15055) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_5446_15119 Mask@@11 null pm_f_22@@2) (IsWandField_5446_16695 pm_f_22@@2)) (and (and (and (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_5446_53) ) (!  (=> (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@11) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@10) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@11 f_37@@11))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_5951_5446_53#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@10) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@11 f_37@@11))
)) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_5459_5460) ) (!  (=> (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@11) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@10) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@12 f_37@@12))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_5951_5446_5460#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@10) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_5446_15055) ) (!  (=> (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@11) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@10) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@13 f_37@@13))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_5951_5446_15055#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@10) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_5446_15188) ) (!  (=> (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@11) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@10) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@14 f_37@@14))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_5951_5446_16168#PolymorphicMapType_5951| (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@10) null (WandMaskField_5446 pm_f_22@@2))) o2_22@@14 f_37@@14))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@11) (IsWandField_5446_16695 pm_f_22@@2) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@10) null (WandMaskField_5446 pm_f_22@@2)))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5407) (o_2@@3 T@Ref) (f_4@@3 T@Field_5446_15188) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5446_25704 f_4@@3))) (not (IsWandField_5446_25720 f_4@@3))) (<= (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5407) (o_2@@4 T@Ref) (f_4@@4 T@Field_5446_15055) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5446_15146 f_4@@4))) (not (IsWandField_5446_16695 f_4@@4))) (<= (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5407) (o_2@@5 T@Ref) (f_4@@5 T@Field_5459_5460) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5446_5460 f_4@@5))) (not (IsWandField_5446_5460 f_4@@5))) (<= (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5407) (o_2@@6 T@Ref) (f_4@@6 T@Field_5446_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5446_53 f_4@@6))) (not (IsWandField_5446_53 f_4@@6))) (<= (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5407) (o_2@@7 T@Ref) (f_4@@7 T@Field_5446_15188) ) (! (= (HasDirectPerm_5446_19130 Mask@@16 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| Mask@@16) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5446_19130 Mask@@16 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5407) (o_2@@8 T@Ref) (f_4@@8 T@Field_5446_15055) ) (! (= (HasDirectPerm_5446_15119 Mask@@17 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| Mask@@17) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5446_15119 Mask@@17 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5407) (o_2@@9 T@Ref) (f_4@@9 T@Field_5459_5460) ) (! (= (HasDirectPerm_5446_5460 Mask@@18 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| Mask@@18) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5446_5460 Mask@@18 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5407) (o_2@@10 T@Ref) (f_4@@10 T@Field_5446_53) ) (! (= (HasDirectPerm_5446_53 Mask@@19 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| Mask@@19) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5446_53 Mask@@19 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |31|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5386) (ExhaleHeap@@11 T@PolymorphicMapType_5386) (Mask@@20 T@PolymorphicMapType_5407) (o_22@@0 T@Ref) (f_30@@7 T@Field_5446_15188) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@20) (=> (HasDirectPerm_5446_19130 Mask@@20 o_22@@0 f_30@@7) (= (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@12) o_22@@0 f_30@@7) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@11) o_22@@0 f_30@@7))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@20) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@11) o_22@@0 f_30@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5386) (ExhaleHeap@@12 T@PolymorphicMapType_5386) (Mask@@21 T@PolymorphicMapType_5407) (o_22@@1 T@Ref) (f_30@@8 T@Field_5446_15055) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@21) (=> (HasDirectPerm_5446_15119 Mask@@21 o_22@@1 f_30@@8) (= (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@13) o_22@@1 f_30@@8) (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@12) o_22@@1 f_30@@8))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@21) (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@12) o_22@@1 f_30@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5386) (ExhaleHeap@@13 T@PolymorphicMapType_5386) (Mask@@22 T@PolymorphicMapType_5407) (o_22@@2 T@Ref) (f_30@@9 T@Field_5459_5460) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@22) (=> (HasDirectPerm_5446_5460 Mask@@22 o_22@@2 f_30@@9) (= (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@14) o_22@@2 f_30@@9) (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@13) o_22@@2 f_30@@9))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@22) (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@13) o_22@@2 f_30@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5386) (ExhaleHeap@@14 T@PolymorphicMapType_5386) (Mask@@23 T@PolymorphicMapType_5407) (o_22@@3 T@Ref) (f_30@@10 T@Field_5446_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@23) (=> (HasDirectPerm_5446_53 Mask@@23 o_22@@3 f_30@@10) (= (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@15) o_22@@3 f_30@@10) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@14) o_22@@3 f_30@@10))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@23) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@14) o_22@@3 f_30@@10))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5386) (ExhaleHeap@@15 T@PolymorphicMapType_5386) (Mask@@24 T@PolymorphicMapType_5407) (o_46@@0 T@Ref) (f_37@@15 T@Field_5446_15188) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@15 Mask@@24) (=> (HasDirectPerm_5446_19130 Mask@@24 o_46@@0 f_37@@15) (= (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@16) o_46@@0 f_37@@15) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@15) o_46@@0 f_37@@15))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@15 Mask@@24) (select (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| ExhaleHeap@@15) o_46@@0 f_37@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5386) (ExhaleHeap@@16 T@PolymorphicMapType_5386) (Mask@@25 T@PolymorphicMapType_5407) (o_46@@1 T@Ref) (f_37@@16 T@Field_5446_15055) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@25) (=> (HasDirectPerm_5446_15119 Mask@@25 o_46@@1 f_37@@16) (= (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@17) o_46@@1 f_37@@16) (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@16) o_46@@1 f_37@@16))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@25) (select (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| ExhaleHeap@@16) o_46@@1 f_37@@16))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5386) (ExhaleHeap@@17 T@PolymorphicMapType_5386) (Mask@@26 T@PolymorphicMapType_5407) (o_46@@2 T@Ref) (f_37@@17 T@Field_5459_5460) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@26) (=> (HasDirectPerm_5446_5460 Mask@@26 o_46@@2 f_37@@17) (= (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@18) o_46@@2 f_37@@17) (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@17) o_46@@2 f_37@@17))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@26) (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| ExhaleHeap@@17) o_46@@2 f_37@@17))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5386) (ExhaleHeap@@18 T@PolymorphicMapType_5386) (Mask@@27 T@PolymorphicMapType_5407) (o_46@@3 T@Ref) (f_37@@18 T@Field_5446_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@27) (=> (HasDirectPerm_5446_53 Mask@@27 o_46@@3 f_37@@18) (= (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@19) o_46@@3 f_37@@18) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@18) o_46@@3 f_37@@18))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@27) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| ExhaleHeap@@18) o_46@@3 f_37@@18))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5446_15188) ) (! (= (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5446_15055) ) (! (= (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5459_5460) ) (! (= (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5446_53) ) (! (= (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5407) (SummandMask1 T@PolymorphicMapType_5407) (SummandMask2 T@PolymorphicMapType_5407) (o_2@@15 T@Ref) (f_4@@15 T@Field_5446_15188) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5407_5446_24795#PolymorphicMapType_5407| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5407) (SummandMask1@@0 T@PolymorphicMapType_5407) (SummandMask2@@0 T@PolymorphicMapType_5407) (o_2@@16 T@Ref) (f_4@@16 T@Field_5446_15055) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5407_5446_15055#PolymorphicMapType_5407| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5407) (SummandMask1@@1 T@PolymorphicMapType_5407) (SummandMask2@@1 T@PolymorphicMapType_5407) (o_2@@17 T@Ref) (f_4@@17 T@Field_5459_5460) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5407_5446_5460#PolymorphicMapType_5407| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5407) (SummandMask1@@2 T@PolymorphicMapType_5407) (SummandMask2@@2 T@PolymorphicMapType_5407) (o_2@@18 T@Ref) (f_4@@18 T@Field_5446_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5407_5446_53#PolymorphicMapType_5407| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5386) (Heap1@@1 T@PolymorphicMapType_5386) (Mask1 T@PolymorphicMapType_5407) (Heap2@@0 T@PolymorphicMapType_5386) (Mask2 T@PolymorphicMapType_5407) ) (! (= (SumHeap Heap@@20 Heap1@@1 Mask1 Heap2@@0 Mask2)  (and (IdenticalOnKnownLocationsLiberal Heap1@@1 Heap@@20 Mask1) (IdenticalOnKnownLocationsLiberal Heap2@@0 Heap@@20 Mask2)))
 :qid |stdinbpl.150:15|
 :skolemid |24|
 :pattern ( (SumHeap Heap@@20 Heap1@@1 Mask1 Heap2@@0 Mask2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5386) (o_35 T@Ref) (f_11 T@Field_5446_15055) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_5386 (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@21) (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@21) (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@21) (store (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@21) o_35 f_11 v)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5386 (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@21) (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@21) (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@21) (store (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@21) o_35 f_11 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5386) (o_35@@0 T@Ref) (f_11@@0 T@Field_5446_15188) (v@@0 T@PolymorphicMapType_5951) ) (! (succHeap Heap@@22 (PolymorphicMapType_5386 (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@22) (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@22) (store (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@22) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@22)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5386 (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@22) (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@22) (store (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@22) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5386) (o_35@@1 T@Ref) (f_11@@1 T@Field_5459_5460) (v@@1 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_5386 (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@23) (store (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@23) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@23) (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@23)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5386 (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@23) (store (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@23) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@23) (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5386) (o_35@@2 T@Ref) (f_11@@2 T@Field_5446_53) (v@@2 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_5386 (store (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@24) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@24) (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@24) (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@24)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5386 (store (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@24) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@24) (|PolymorphicMapType_5386_5446_15232#PolymorphicMapType_5386| Heap@@24) (|PolymorphicMapType_5386_5446_15055#PolymorphicMapType_5386| Heap@@24)))
)))
(assert (forall ((o_35@@3 T@Ref) (f_31 T@Field_5459_5460) (Heap@@25 T@PolymorphicMapType_5386) ) (!  (=> (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@25) o_35@@3 $allocated) (select (|PolymorphicMapType_5386_2452_53#PolymorphicMapType_5386| Heap@@25) (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@25) o_35@@3 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5386_2455_2456#PolymorphicMapType_5386| Heap@@25) o_35@@3 f_31))
)))
(assert (forall ((p@@1 T@Field_5446_15055) (v_1@@0 T@FrameType) (q T@Field_5446_15055) (w@@0 T@FrameType) (r T@Field_5446_15055) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5446_5446 p@@1 v_1@@0 q w@@0) (InsidePredicate_5446_5446 q w@@0 r u)) (InsidePredicate_5446_5446 p@@1 v_1@@0 r u))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_5446_5446 p@@1 v_1@@0 q w@@0) (InsidePredicate_5446_5446 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun ctr@1 () Int)
(declare-fun value_1@1 () Int)
(declare-fun ctr$0@1 () Int)
(declare-fun value_1@3 () Int)
(declare-fun LoopSumHeap@1 () T@PolymorphicMapType_5386)
(declare-fun LoopSumHeap@0 () T@PolymorphicMapType_5386)
(declare-fun LoopSumMask@0 () T@PolymorphicMapType_5407)
(declare-fun LoopSumMask@1 () T@PolymorphicMapType_5407)
(declare-fun ctr$0@0 () Int)
(declare-fun value_1@2 () Int)
(declare-fun Heap@@26 () T@PolymorphicMapType_5386)
(declare-fun ctr@0 () Int)
(declare-fun value_1@0 () Int)
(set-info :boogie-vc-id main)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (< ctr@1 5)) (=> (< ctr@1 5) (=> (= (ControlFlow 0 20) (- 0 19)) (= value_1@1 (+ 0 ctr@1)))))))
(let ((anon17_Then_correct true))
(let ((anon16_Then_correct  (=> (< ctr@1 5) (and (=> (= (ControlFlow 0 22) 18) anon17_Then_correct) (=> (= (ControlFlow 0 22) 20) anon17_Else_correct)))))
(let ((anon20_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (< ctr$0@1 5)) (=> (< ctr$0@1 5) (=> (= (ControlFlow 0 9) (- 0 8)) (= value_1@3 (+ value_1@1 ctr$0@1)))))))
(let ((anon20_Then_correct true))
(let ((anon19_Then_correct  (=> (< ctr$0@1 5) (and (=> (= (ControlFlow 0 11) 7) anon20_Then_correct) (=> (= (ControlFlow 0 11) 9) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (<= 5 ctr$0@1) (SumHeap LoopSumHeap@1 LoopSumHeap@0 ZeroMask LoopSumHeap@0 LoopSumMask@0)) (=> (and (and (sumMask LoopSumMask@1 ZeroMask LoopSumMask@0) (state LoopSumHeap@1 LoopSumMask@1)) (and (state LoopSumHeap@1 LoopSumMask@1) (state LoopSumHeap@1 LoopSumMask@1))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (= ctr$0@1 5)) (=> (= ctr$0@1 5) (=> (state LoopSumHeap@1 LoopSumMask@1) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (+ value_1@1 5) value_1@3)) (=> (= (+ value_1@1 5) value_1@3) (=> (and (state LoopSumHeap@1 LoopSumMask@1) (= (ControlFlow 0 4) (- 0 3))) (= value_1@3 10)))))))))))
(let ((anon18_Else_correct  (=> (state LoopSumHeap@0 ZeroMask) (=> (and (and (and (< ctr$0@0 5) (= value_1@2 (+ value_1@1 ctr$0@0))) (and (state LoopSumHeap@0 ZeroMask) (state LoopSumHeap@0 ZeroMask))) (and (and (= value_1@3 (+ value_1@2 1)) (state LoopSumHeap@0 ZeroMask)) (and (= ctr$0@1 (+ ctr$0@0 1)) (state LoopSumHeap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 12) 11) anon19_Then_correct) (=> (= (ControlFlow 0 12) 4) anon19_Else_correct))))))
(let ((anon18_Then_correct true))
(let ((anon16_Else_correct  (=> (and (<= 5 ctr@1) (SumHeap LoopSumHeap@0 Heap@@26 ZeroMask Heap@@26 ZeroMask)) (=> (and (and (sumMask LoopSumMask@0 ZeroMask ZeroMask) (state LoopSumHeap@0 LoopSumMask@0)) (and (state LoopSumHeap@0 LoopSumMask@0) (state LoopSumHeap@0 LoopSumMask@0))) (and (=> (= (ControlFlow 0 13) (- 0 17)) (= ctr@1 5)) (=> (= ctr@1 5) (=> (state LoopSumHeap@0 LoopSumMask@0) (and (=> (= (ControlFlow 0 13) (- 0 16)) (= (+ 0 5) value_1@1)) (=> (= (+ 0 5) value_1@1) (=> (and (state LoopSumHeap@0 LoopSumMask@0) (state LoopSumHeap@0 LoopSumMask@0)) (=> (and (and (state LoopSumHeap@0 LoopSumMask@0) (state LoopSumHeap@0 LoopSumMask@0)) (and (state LoopSumHeap@0 LoopSumMask@0) (state LoopSumHeap@0 LoopSumMask@0))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (< 0 5)) (=> (< 0 5) (and (=> (= (ControlFlow 0 13) (- 0 14)) (= value_1@1 (+ value_1@1 0))) (=> (= value_1@1 (+ value_1@1 0)) (and (=> (= (ControlFlow 0 13) 2) anon18_Then_correct) (=> (= (ControlFlow 0 13) 12) anon18_Else_correct)))))))))))))))))
(let ((anon15_Else_correct  (=> (state Heap@@26 ZeroMask) (=> (and (and (and (< ctr@0 5) (= value_1@0 (+ 0 ctr@0))) (and (state Heap@@26 ZeroMask) (state Heap@@26 ZeroMask))) (and (and (= value_1@1 (+ value_1@0 1)) (state Heap@@26 ZeroMask)) (and (= ctr@1 (+ ctr@0 1)) (state Heap@@26 ZeroMask)))) (and (=> (= (ControlFlow 0 23) 22) anon16_Then_correct) (=> (= (ControlFlow 0 23) 13) anon16_Else_correct))))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@26 ZeroMask) (=> (and (and (and AssumePermUpperBound (state Heap@@26 ZeroMask)) (and (state Heap@@26 ZeroMask) (state Heap@@26 ZeroMask))) (and (and (state Heap@@26 ZeroMask) (state Heap@@26 ZeroMask)) (and (state Heap@@26 ZeroMask) (state Heap@@26 ZeroMask)))) (and (=> (= (ControlFlow 0 24) (- 0 26)) (< 0 5)) (=> (< 0 5) (and (=> (= (ControlFlow 0 24) (- 0 25)) (= 0 (+ 0 0))) (=> (= 0 (+ 0 0)) (and (=> (= (ControlFlow 0 24) 1) anon15_Then_correct) (=> (= (ControlFlow 0 24) 23) anon15_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 27) 24) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
