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
(declare-sort T@Field_8823_53 0)
(declare-sort T@Field_8836_8837 0)
(declare-sort T@Field_12270_1425 0)
(declare-sort T@Field_12317_12318 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12330_12335 0)
(declare-sort T@Field_5410_5414 0)
(declare-sort T@Field_5410_12335 0)
(declare-sort T@Field_5413_1425 0)
(declare-sort T@Field_5413_53 0)
(declare-sort T@Field_5413_8837 0)
(declare-datatypes ((T@PolymorphicMapType_8784 0)) (((PolymorphicMapType_8784 (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| (Array T@Ref T@Field_12270_1425 Real)) (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| (Array T@Ref T@Field_12317_12318 Real)) (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| (Array T@Ref T@Field_5410_5414 Real)) (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| (Array T@Ref T@Field_8823_53 Real)) (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| (Array T@Ref T@Field_8836_8837 Real)) (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| (Array T@Ref T@Field_5410_12335 Real)) (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| (Array T@Ref T@Field_5413_1425 Real)) (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| (Array T@Ref T@Field_5413_53 Real)) (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| (Array T@Ref T@Field_5413_8837 Real)) (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| (Array T@Ref T@Field_12330_12335 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9312 0)) (((PolymorphicMapType_9312 (|PolymorphicMapType_9312_5410_1425#PolymorphicMapType_9312| (Array T@Ref T@Field_12270_1425 Bool)) (|PolymorphicMapType_9312_5410_53#PolymorphicMapType_9312| (Array T@Ref T@Field_8823_53 Bool)) (|PolymorphicMapType_9312_5410_8837#PolymorphicMapType_9312| (Array T@Ref T@Field_8836_8837 Bool)) (|PolymorphicMapType_9312_5410_12318#PolymorphicMapType_9312| (Array T@Ref T@Field_5410_5414 Bool)) (|PolymorphicMapType_9312_5410_30309#PolymorphicMapType_9312| (Array T@Ref T@Field_5410_12335 Bool)) (|PolymorphicMapType_9312_12317_1425#PolymorphicMapType_9312| (Array T@Ref T@Field_5413_1425 Bool)) (|PolymorphicMapType_9312_12317_53#PolymorphicMapType_9312| (Array T@Ref T@Field_5413_53 Bool)) (|PolymorphicMapType_9312_12317_8837#PolymorphicMapType_9312| (Array T@Ref T@Field_5413_8837 Bool)) (|PolymorphicMapType_9312_12317_12318#PolymorphicMapType_9312| (Array T@Ref T@Field_12317_12318 Bool)) (|PolymorphicMapType_9312_12317_31357#PolymorphicMapType_9312| (Array T@Ref T@Field_12330_12335 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8763 0)) (((PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| (Array T@Ref T@Field_8823_53 Bool)) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| (Array T@Ref T@Field_8836_8837 T@Ref)) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| (Array T@Ref T@Field_12270_1425 Int)) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| (Array T@Ref T@Field_12317_12318 T@FrameType)) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| (Array T@Ref T@Field_12330_12335 T@PolymorphicMapType_9312)) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| (Array T@Ref T@Field_5410_5414 T@FrameType)) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| (Array T@Ref T@Field_5410_12335 T@PolymorphicMapType_9312)) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| (Array T@Ref T@Field_5413_1425 Int)) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| (Array T@Ref T@Field_5413_53 Bool)) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| (Array T@Ref T@Field_5413_8837 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_8823_53)
(declare-fun val () T@Field_12270_1425)
(declare-fun succHeap (T@PolymorphicMapType_8763 T@PolymorphicMapType_8763) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8763 T@PolymorphicMapType_8763) Bool)
(declare-fun state (T@PolymorphicMapType_8763 T@PolymorphicMapType_8784) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8784) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9312)
(declare-sort T@ArrayDomainType 0)
(declare-fun array (T@ArrayDomainType) T@Field_12317_12318)
(declare-fun IsPredicateField_5413_5414 (T@Field_12317_12318) Bool)
(declare-fun |array#trigger_5413| (T@PolymorphicMapType_8763 T@Field_12317_12318) Bool)
(declare-fun |array#everUsed_5413| (T@Field_12317_12318) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8763 T@PolymorphicMapType_8763 T@PolymorphicMapType_8784) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5413 (T@Field_12317_12318) T@Field_12330_12335)
(declare-fun HasDirectPerm_5413_5414 (T@PolymorphicMapType_8784 T@Ref T@Field_12317_12318) Bool)
(declare-fun IsPredicateField_5410_28837 (T@Field_5410_5414) Bool)
(declare-fun PredicateMaskField_5410 (T@Field_5410_5414) T@Field_5410_12335)
(declare-fun HasDirectPerm_5410_5414 (T@PolymorphicMapType_8784 T@Ref T@Field_5410_5414) Bool)
(declare-fun IsWandField_5413_32522 (T@Field_12317_12318) Bool)
(declare-fun WandMaskField_5413 (T@Field_12317_12318) T@Field_12330_12335)
(declare-fun IsWandField_5410_32165 (T@Field_5410_5414) Bool)
(declare-fun WandMaskField_5410 (T@Field_5410_5414) T@Field_5410_12335)
(declare-fun |array#sm| (T@ArrayDomainType) T@Field_12330_12335)
(declare-fun dummyHeap () T@PolymorphicMapType_8763)
(declare-fun ZeroMask () T@PolymorphicMapType_8784)
(declare-fun InsidePredicate_12317_12317 (T@Field_12317_12318 T@FrameType T@Field_12317_12318 T@FrameType) Bool)
(declare-fun InsidePredicate_8823_8823 (T@Field_5410_5414 T@FrameType T@Field_5410_5414 T@FrameType) Bool)
(declare-fun IsPredicateField_5410_1425 (T@Field_12270_1425) Bool)
(declare-fun IsWandField_5410_1425 (T@Field_12270_1425) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5413_39454 (T@Field_12330_12335) Bool)
(declare-fun IsWandField_5413_39470 (T@Field_12330_12335) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5413_8837 (T@Field_5413_8837) Bool)
(declare-fun IsWandField_5413_8837 (T@Field_5413_8837) Bool)
(declare-fun IsPredicateField_5413_53 (T@Field_5413_53) Bool)
(declare-fun IsWandField_5413_53 (T@Field_5413_53) Bool)
(declare-fun IsPredicateField_5413_1425 (T@Field_5413_1425) Bool)
(declare-fun IsWandField_5413_1425 (T@Field_5413_1425) Bool)
(declare-fun IsPredicateField_5410_38623 (T@Field_5410_12335) Bool)
(declare-fun IsWandField_5410_38639 (T@Field_5410_12335) Bool)
(declare-fun IsPredicateField_5410_8837 (T@Field_8836_8837) Bool)
(declare-fun IsWandField_5410_8837 (T@Field_8836_8837) Bool)
(declare-fun IsPredicateField_5410_53 (T@Field_8823_53) Bool)
(declare-fun IsWandField_5410_53 (T@Field_8823_53) Bool)
(declare-fun HasDirectPerm_5413_28592 (T@PolymorphicMapType_8784 T@Ref T@Field_12330_12335) Bool)
(declare-fun HasDirectPerm_5413_8837 (T@PolymorphicMapType_8784 T@Ref T@Field_5413_8837) Bool)
(declare-fun HasDirectPerm_5413_53 (T@PolymorphicMapType_8784 T@Ref T@Field_5413_53) Bool)
(declare-fun HasDirectPerm_5413_1425 (T@PolymorphicMapType_8784 T@Ref T@Field_5413_1425) Bool)
(declare-fun HasDirectPerm_5410_27451 (T@PolymorphicMapType_8784 T@Ref T@Field_5410_12335) Bool)
(declare-fun HasDirectPerm_5410_8837 (T@PolymorphicMapType_8784 T@Ref T@Field_8836_8837) Bool)
(declare-fun HasDirectPerm_5410_53 (T@PolymorphicMapType_8784 T@Ref T@Field_8823_53) Bool)
(declare-fun HasDirectPerm_5410_1425 (T@PolymorphicMapType_8784 T@Ref T@Field_12270_1425) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8784 T@PolymorphicMapType_8784 T@PolymorphicMapType_8784) Bool)
(declare-fun len_1 (T@ArrayDomainType) Int)
(declare-fun getPredWandId_5413_5414 (T@Field_12317_12318) Int)
(declare-fun |array#condqp1| (T@PolymorphicMapType_8763 T@ArrayDomainType) Int)
(declare-fun |sk_array#condqp1| (Int Int) Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun first (T@Ref) T@ArrayDomainType)
(declare-fun second (T@Ref) Int)
(declare-fun InsidePredicate_12317_8823 (T@Field_12317_12318 T@FrameType T@Field_5410_5414 T@FrameType) Bool)
(declare-fun InsidePredicate_8823_12317 (T@Field_5410_5414 T@FrameType T@Field_12317_12318 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8763) (Heap1 T@PolymorphicMapType_8763) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8763) (Mask T@PolymorphicMapType_8784) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8763) (Heap1@@0 T@PolymorphicMapType_8763) (Heap2 T@PolymorphicMapType_8763) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12330_12335) ) (!  (not (select (|PolymorphicMapType_9312_12317_31357#PolymorphicMapType_9312| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9312_12317_31357#PolymorphicMapType_9312| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12317_12318) ) (!  (not (select (|PolymorphicMapType_9312_12317_12318#PolymorphicMapType_9312| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9312_12317_12318#PolymorphicMapType_9312| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5413_8837) ) (!  (not (select (|PolymorphicMapType_9312_12317_8837#PolymorphicMapType_9312| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9312_12317_8837#PolymorphicMapType_9312| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5413_53) ) (!  (not (select (|PolymorphicMapType_9312_12317_53#PolymorphicMapType_9312| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9312_12317_53#PolymorphicMapType_9312| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5413_1425) ) (!  (not (select (|PolymorphicMapType_9312_12317_1425#PolymorphicMapType_9312| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9312_12317_1425#PolymorphicMapType_9312| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5410_12335) ) (!  (not (select (|PolymorphicMapType_9312_5410_30309#PolymorphicMapType_9312| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9312_5410_30309#PolymorphicMapType_9312| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5410_5414) ) (!  (not (select (|PolymorphicMapType_9312_5410_12318#PolymorphicMapType_9312| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9312_5410_12318#PolymorphicMapType_9312| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8836_8837) ) (!  (not (select (|PolymorphicMapType_9312_5410_8837#PolymorphicMapType_9312| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9312_5410_8837#PolymorphicMapType_9312| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8823_53) ) (!  (not (select (|PolymorphicMapType_9312_5410_53#PolymorphicMapType_9312| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9312_5410_53#PolymorphicMapType_9312| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12270_1425) ) (!  (not (select (|PolymorphicMapType_9312_5410_1425#PolymorphicMapType_9312| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9312_5410_1425#PolymorphicMapType_9312| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a_2 T@ArrayDomainType) ) (! (IsPredicateField_5413_5414 (array a_2))
 :qid |stdinbpl.256:15|
 :skolemid |25|
 :pattern ( (array a_2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8763) (a_2@@0 T@ArrayDomainType) ) (! (|array#everUsed_5413| (array a_2@@0))
 :qid |stdinbpl.275:15|
 :skolemid |29|
 :pattern ( (|array#trigger_5413| Heap@@0 (array a_2@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8763) (ExhaleHeap T@PolymorphicMapType_8763) (Mask@@0 T@PolymorphicMapType_8784) (pm_f_22 T@Field_12317_12318) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5413_5414 Mask@@0 null pm_f_22) (IsPredicateField_5413_5414 pm_f_22)) (= (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@1) null (PredicateMaskField_5413 pm_f_22)) (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap) null (PredicateMaskField_5413 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_5413_5414 pm_f_22) (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap) null (PredicateMaskField_5413 pm_f_22)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8763) (ExhaleHeap@@0 T@PolymorphicMapType_8763) (Mask@@1 T@PolymorphicMapType_8784) (pm_f_22@@0 T@Field_5410_5414) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5410_5414 Mask@@1 null pm_f_22@@0) (IsPredicateField_5410_28837 pm_f_22@@0)) (= (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@2) null (PredicateMaskField_5410 pm_f_22@@0)) (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@0) null (PredicateMaskField_5410 pm_f_22@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5410_28837 pm_f_22@@0) (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@0) null (PredicateMaskField_5410 pm_f_22@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8763) (ExhaleHeap@@1 T@PolymorphicMapType_8763) (Mask@@2 T@PolymorphicMapType_8784) (pm_f_22@@1 T@Field_12317_12318) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5413_5414 Mask@@2 null pm_f_22@@1) (IsWandField_5413_32522 pm_f_22@@1)) (= (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@3) null (WandMaskField_5413 pm_f_22@@1)) (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@1) null (WandMaskField_5413 pm_f_22@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_5413_32522 pm_f_22@@1) (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@1) null (WandMaskField_5413 pm_f_22@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8763) (ExhaleHeap@@2 T@PolymorphicMapType_8763) (Mask@@3 T@PolymorphicMapType_8784) (pm_f_22@@2 T@Field_5410_5414) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5410_5414 Mask@@3 null pm_f_22@@2) (IsWandField_5410_32165 pm_f_22@@2)) (= (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@4) null (WandMaskField_5410 pm_f_22@@2)) (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@2) null (WandMaskField_5410 pm_f_22@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_5410_32165 pm_f_22@@2) (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@2) null (WandMaskField_5410 pm_f_22@@2)))
)))
(assert (forall ((a_2@@1 T@ArrayDomainType) (a2 T@ArrayDomainType) ) (!  (=> (= (array a_2@@1) (array a2)) (= a_2@@1 a2))
 :qid |stdinbpl.266:15|
 :skolemid |27|
 :pattern ( (array a_2@@1) (array a2))
)))
(assert (forall ((a_2@@2 T@ArrayDomainType) (a2@@0 T@ArrayDomainType) ) (!  (=> (= (|array#sm| a_2@@2) (|array#sm| a2@@0)) (= a_2@@2 a2@@0))
 :qid |stdinbpl.270:15|
 :skolemid |28|
 :pattern ( (|array#sm| a_2@@2) (|array#sm| a2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8763) (ExhaleHeap@@3 T@PolymorphicMapType_8763) (Mask@@4 T@PolymorphicMapType_8784) (pm_f_22@@3 T@Field_12317_12318) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5413_5414 Mask@@4 null pm_f_22@@3) (IsPredicateField_5413_5414 pm_f_22@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_12270_1425) ) (!  (=> (select (|PolymorphicMapType_9312_5410_1425#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@5) null (PredicateMaskField_5413 pm_f_22@@3))) o2_22 f_37) (= (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@5) o2_22 f_37) (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_8823_53) ) (!  (=> (select (|PolymorphicMapType_9312_5410_53#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@5) null (PredicateMaskField_5413 pm_f_22@@3))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@5) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_8836_8837) ) (!  (=> (select (|PolymorphicMapType_9312_5410_8837#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@5) null (PredicateMaskField_5413 pm_f_22@@3))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@5) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_5410_5414) ) (!  (=> (select (|PolymorphicMapType_9312_5410_12318#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@5) null (PredicateMaskField_5413 pm_f_22@@3))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@5) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_5410_12335) ) (!  (=> (select (|PolymorphicMapType_9312_5410_30309#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@5) null (PredicateMaskField_5413 pm_f_22@@3))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@5) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@3 f_37@@3))
))) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_5413_1425) ) (!  (=> (select (|PolymorphicMapType_9312_12317_1425#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@5) null (PredicateMaskField_5413 pm_f_22@@3))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@5) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_5413_53) ) (!  (=> (select (|PolymorphicMapType_9312_12317_53#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@5) null (PredicateMaskField_5413 pm_f_22@@3))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@5) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_5413_8837) ) (!  (=> (select (|PolymorphicMapType_9312_12317_8837#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@5) null (PredicateMaskField_5413 pm_f_22@@3))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@5) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_12317_12318) ) (!  (=> (select (|PolymorphicMapType_9312_12317_12318#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@5) null (PredicateMaskField_5413 pm_f_22@@3))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@5) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_12330_12335) ) (!  (=> (select (|PolymorphicMapType_9312_12317_31357#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@5) null (PredicateMaskField_5413 pm_f_22@@3))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@5) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@3) o2_22@@8 f_37@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5413_5414 pm_f_22@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8763) (ExhaleHeap@@4 T@PolymorphicMapType_8763) (Mask@@5 T@PolymorphicMapType_8784) (pm_f_22@@4 T@Field_5410_5414) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5410_5414 Mask@@5 null pm_f_22@@4) (IsPredicateField_5410_28837 pm_f_22@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_12270_1425) ) (!  (=> (select (|PolymorphicMapType_9312_5410_1425#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@6) null (PredicateMaskField_5410 pm_f_22@@4))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@6) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@9 f_37@@9))
)) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_8823_53) ) (!  (=> (select (|PolymorphicMapType_9312_5410_53#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@6) null (PredicateMaskField_5410 pm_f_22@@4))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@6) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@10 f_37@@10))
))) (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_8836_8837) ) (!  (=> (select (|PolymorphicMapType_9312_5410_8837#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@6) null (PredicateMaskField_5410 pm_f_22@@4))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@6) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@11 f_37@@11))
))) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_5410_5414) ) (!  (=> (select (|PolymorphicMapType_9312_5410_12318#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@6) null (PredicateMaskField_5410 pm_f_22@@4))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@6) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_5410_12335) ) (!  (=> (select (|PolymorphicMapType_9312_5410_30309#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@6) null (PredicateMaskField_5410 pm_f_22@@4))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@6) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_5413_1425) ) (!  (=> (select (|PolymorphicMapType_9312_12317_1425#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@6) null (PredicateMaskField_5410 pm_f_22@@4))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@6) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@14 f_37@@14))
))) (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_5413_53) ) (!  (=> (select (|PolymorphicMapType_9312_12317_53#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@6) null (PredicateMaskField_5410 pm_f_22@@4))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@6) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@15 f_37@@15))
))) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_5413_8837) ) (!  (=> (select (|PolymorphicMapType_9312_12317_8837#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@6) null (PredicateMaskField_5410 pm_f_22@@4))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@6) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_12317_12318) ) (!  (=> (select (|PolymorphicMapType_9312_12317_12318#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@6) null (PredicateMaskField_5410 pm_f_22@@4))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@6) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_12330_12335) ) (!  (=> (select (|PolymorphicMapType_9312_12317_31357#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@6) null (PredicateMaskField_5410 pm_f_22@@4))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@6) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@4) o2_22@@18 f_37@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5410_28837 pm_f_22@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8763) (ExhaleHeap@@5 T@PolymorphicMapType_8763) (Mask@@6 T@PolymorphicMapType_8784) (pm_f_22@@5 T@Field_12317_12318) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5413_5414 Mask@@6 null pm_f_22@@5) (IsWandField_5413_32522 pm_f_22@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@19 T@Ref) (f_37@@19 T@Field_12270_1425) ) (!  (=> (select (|PolymorphicMapType_9312_5410_1425#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@7) null (WandMaskField_5413 pm_f_22@@5))) o2_22@@19 f_37@@19) (= (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@7) o2_22@@19 f_37@@19) (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@19 f_37@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@19 f_37@@19))
)) (forall ((o2_22@@20 T@Ref) (f_37@@20 T@Field_8823_53) ) (!  (=> (select (|PolymorphicMapType_9312_5410_53#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@7) null (WandMaskField_5413 pm_f_22@@5))) o2_22@@20 f_37@@20) (= (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@7) o2_22@@20 f_37@@20) (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@20 f_37@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@20 f_37@@20))
))) (forall ((o2_22@@21 T@Ref) (f_37@@21 T@Field_8836_8837) ) (!  (=> (select (|PolymorphicMapType_9312_5410_8837#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@7) null (WandMaskField_5413 pm_f_22@@5))) o2_22@@21 f_37@@21) (= (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@7) o2_22@@21 f_37@@21) (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@21 f_37@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@21 f_37@@21))
))) (forall ((o2_22@@22 T@Ref) (f_37@@22 T@Field_5410_5414) ) (!  (=> (select (|PolymorphicMapType_9312_5410_12318#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@7) null (WandMaskField_5413 pm_f_22@@5))) o2_22@@22 f_37@@22) (= (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@7) o2_22@@22 f_37@@22) (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@22 f_37@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@22 f_37@@22))
))) (forall ((o2_22@@23 T@Ref) (f_37@@23 T@Field_5410_12335) ) (!  (=> (select (|PolymorphicMapType_9312_5410_30309#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@7) null (WandMaskField_5413 pm_f_22@@5))) o2_22@@23 f_37@@23) (= (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@7) o2_22@@23 f_37@@23) (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@23 f_37@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@23 f_37@@23))
))) (forall ((o2_22@@24 T@Ref) (f_37@@24 T@Field_5413_1425) ) (!  (=> (select (|PolymorphicMapType_9312_12317_1425#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@7) null (WandMaskField_5413 pm_f_22@@5))) o2_22@@24 f_37@@24) (= (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@7) o2_22@@24 f_37@@24) (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@24 f_37@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@24 f_37@@24))
))) (forall ((o2_22@@25 T@Ref) (f_37@@25 T@Field_5413_53) ) (!  (=> (select (|PolymorphicMapType_9312_12317_53#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@7) null (WandMaskField_5413 pm_f_22@@5))) o2_22@@25 f_37@@25) (= (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@7) o2_22@@25 f_37@@25) (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@25 f_37@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@25 f_37@@25))
))) (forall ((o2_22@@26 T@Ref) (f_37@@26 T@Field_5413_8837) ) (!  (=> (select (|PolymorphicMapType_9312_12317_8837#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@7) null (WandMaskField_5413 pm_f_22@@5))) o2_22@@26 f_37@@26) (= (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@7) o2_22@@26 f_37@@26) (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@26 f_37@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@26 f_37@@26))
))) (forall ((o2_22@@27 T@Ref) (f_37@@27 T@Field_12317_12318) ) (!  (=> (select (|PolymorphicMapType_9312_12317_12318#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@7) null (WandMaskField_5413 pm_f_22@@5))) o2_22@@27 f_37@@27) (= (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@7) o2_22@@27 f_37@@27) (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@27 f_37@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@27 f_37@@27))
))) (forall ((o2_22@@28 T@Ref) (f_37@@28 T@Field_12330_12335) ) (!  (=> (select (|PolymorphicMapType_9312_12317_31357#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@7) null (WandMaskField_5413 pm_f_22@@5))) o2_22@@28 f_37@@28) (= (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@7) o2_22@@28 f_37@@28) (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@28 f_37@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@5) o2_22@@28 f_37@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_5413_32522 pm_f_22@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8763) (ExhaleHeap@@6 T@PolymorphicMapType_8763) (Mask@@7 T@PolymorphicMapType_8784) (pm_f_22@@6 T@Field_5410_5414) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5410_5414 Mask@@7 null pm_f_22@@6) (IsWandField_5410_32165 pm_f_22@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@29 T@Ref) (f_37@@29 T@Field_12270_1425) ) (!  (=> (select (|PolymorphicMapType_9312_5410_1425#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@8) null (WandMaskField_5410 pm_f_22@@6))) o2_22@@29 f_37@@29) (= (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@8) o2_22@@29 f_37@@29) (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@29 f_37@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@29 f_37@@29))
)) (forall ((o2_22@@30 T@Ref) (f_37@@30 T@Field_8823_53) ) (!  (=> (select (|PolymorphicMapType_9312_5410_53#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@8) null (WandMaskField_5410 pm_f_22@@6))) o2_22@@30 f_37@@30) (= (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@8) o2_22@@30 f_37@@30) (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@30 f_37@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@30 f_37@@30))
))) (forall ((o2_22@@31 T@Ref) (f_37@@31 T@Field_8836_8837) ) (!  (=> (select (|PolymorphicMapType_9312_5410_8837#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@8) null (WandMaskField_5410 pm_f_22@@6))) o2_22@@31 f_37@@31) (= (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@8) o2_22@@31 f_37@@31) (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@31 f_37@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@31 f_37@@31))
))) (forall ((o2_22@@32 T@Ref) (f_37@@32 T@Field_5410_5414) ) (!  (=> (select (|PolymorphicMapType_9312_5410_12318#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@8) null (WandMaskField_5410 pm_f_22@@6))) o2_22@@32 f_37@@32) (= (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@8) o2_22@@32 f_37@@32) (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@32 f_37@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@32 f_37@@32))
))) (forall ((o2_22@@33 T@Ref) (f_37@@33 T@Field_5410_12335) ) (!  (=> (select (|PolymorphicMapType_9312_5410_30309#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@8) null (WandMaskField_5410 pm_f_22@@6))) o2_22@@33 f_37@@33) (= (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@8) o2_22@@33 f_37@@33) (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@33 f_37@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@33 f_37@@33))
))) (forall ((o2_22@@34 T@Ref) (f_37@@34 T@Field_5413_1425) ) (!  (=> (select (|PolymorphicMapType_9312_12317_1425#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@8) null (WandMaskField_5410 pm_f_22@@6))) o2_22@@34 f_37@@34) (= (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@8) o2_22@@34 f_37@@34) (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@34 f_37@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@34 f_37@@34))
))) (forall ((o2_22@@35 T@Ref) (f_37@@35 T@Field_5413_53) ) (!  (=> (select (|PolymorphicMapType_9312_12317_53#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@8) null (WandMaskField_5410 pm_f_22@@6))) o2_22@@35 f_37@@35) (= (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@8) o2_22@@35 f_37@@35) (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@35 f_37@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@35 f_37@@35))
))) (forall ((o2_22@@36 T@Ref) (f_37@@36 T@Field_5413_8837) ) (!  (=> (select (|PolymorphicMapType_9312_12317_8837#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@8) null (WandMaskField_5410 pm_f_22@@6))) o2_22@@36 f_37@@36) (= (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@8) o2_22@@36 f_37@@36) (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@36 f_37@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@36 f_37@@36))
))) (forall ((o2_22@@37 T@Ref) (f_37@@37 T@Field_12317_12318) ) (!  (=> (select (|PolymorphicMapType_9312_12317_12318#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@8) null (WandMaskField_5410 pm_f_22@@6))) o2_22@@37 f_37@@37) (= (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@8) o2_22@@37 f_37@@37) (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@37 f_37@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@37 f_37@@37))
))) (forall ((o2_22@@38 T@Ref) (f_37@@38 T@Field_12330_12335) ) (!  (=> (select (|PolymorphicMapType_9312_12317_31357#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@8) null (WandMaskField_5410 pm_f_22@@6))) o2_22@@38 f_37@@38) (= (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@8) o2_22@@38 f_37@@38) (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@38 f_37@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@6) o2_22@@38 f_37@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_5410_32165 pm_f_22@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8763) (ExhaleHeap@@7 T@PolymorphicMapType_8763) (Mask@@8 T@PolymorphicMapType_8784) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@9) o_46 $allocated) (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@7) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@7) o_46 $allocated))
)))
(assert (forall ((p T@Field_12317_12318) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12317_12317 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12317_12317 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5410_5414) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8823_8823 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8823_8823 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5410_1425 val)))
(assert  (not (IsWandField_5410_1425 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8763) (ExhaleHeap@@8 T@PolymorphicMapType_8763) (Mask@@9 T@PolymorphicMapType_8784) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8784) (o_2@@9 T@Ref) (f_4@@9 T@Field_12330_12335) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5413_39454 f_4@@9))) (not (IsWandField_5413_39470 f_4@@9))) (<= (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8784) (o_2@@10 T@Ref) (f_4@@10 T@Field_5413_8837) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5413_8837 f_4@@10))) (not (IsWandField_5413_8837 f_4@@10))) (<= (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8784) (o_2@@11 T@Ref) (f_4@@11 T@Field_5413_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5413_53 f_4@@11))) (not (IsWandField_5413_53 f_4@@11))) (<= (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8784) (o_2@@12 T@Ref) (f_4@@12 T@Field_12317_12318) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5413_5414 f_4@@12))) (not (IsWandField_5413_32522 f_4@@12))) (<= (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8784) (o_2@@13 T@Ref) (f_4@@13 T@Field_5413_1425) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5413_1425 f_4@@13))) (not (IsWandField_5413_1425 f_4@@13))) (<= (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8784) (o_2@@14 T@Ref) (f_4@@14 T@Field_5410_12335) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5410_38623 f_4@@14))) (not (IsWandField_5410_38639 f_4@@14))) (<= (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8784) (o_2@@15 T@Ref) (f_4@@15 T@Field_8836_8837) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5410_8837 f_4@@15))) (not (IsWandField_5410_8837 f_4@@15))) (<= (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8784) (o_2@@16 T@Ref) (f_4@@16 T@Field_8823_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5410_53 f_4@@16))) (not (IsWandField_5410_53 f_4@@16))) (<= (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8784) (o_2@@17 T@Ref) (f_4@@17 T@Field_5410_5414) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5410_28837 f_4@@17))) (not (IsWandField_5410_32165 f_4@@17))) (<= (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8784) (o_2@@18 T@Ref) (f_4@@18 T@Field_12270_1425) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5410_1425 f_4@@18))) (not (IsWandField_5410_1425 f_4@@18))) (<= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8784) (o_2@@19 T@Ref) (f_4@@19 T@Field_12330_12335) ) (! (= (HasDirectPerm_5413_28592 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5413_28592 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8784) (o_2@@20 T@Ref) (f_4@@20 T@Field_5413_8837) ) (! (= (HasDirectPerm_5413_8837 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5413_8837 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8784) (o_2@@21 T@Ref) (f_4@@21 T@Field_5413_53) ) (! (= (HasDirectPerm_5413_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5413_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8784) (o_2@@22 T@Ref) (f_4@@22 T@Field_12317_12318) ) (! (= (HasDirectPerm_5413_5414 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5413_5414 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8784) (o_2@@23 T@Ref) (f_4@@23 T@Field_5413_1425) ) (! (= (HasDirectPerm_5413_1425 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5413_1425 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8784) (o_2@@24 T@Ref) (f_4@@24 T@Field_5410_12335) ) (! (= (HasDirectPerm_5410_27451 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5410_27451 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8784) (o_2@@25 T@Ref) (f_4@@25 T@Field_8836_8837) ) (! (= (HasDirectPerm_5410_8837 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5410_8837 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8784) (o_2@@26 T@Ref) (f_4@@26 T@Field_8823_53) ) (! (= (HasDirectPerm_5410_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5410_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8784) (o_2@@27 T@Ref) (f_4@@27 T@Field_5410_5414) ) (! (= (HasDirectPerm_5410_5414 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5410_5414 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8784) (o_2@@28 T@Ref) (f_4@@28 T@Field_12270_1425) ) (! (= (HasDirectPerm_5410_1425 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5410_1425 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.189:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8763) (ExhaleHeap@@9 T@PolymorphicMapType_8763) (Mask@@30 T@PolymorphicMapType_8784) (o_46@@0 T@Ref) (f_37@@39 T@Field_12330_12335) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_5413_28592 Mask@@30 o_46@@0 f_37@@39) (= (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@11) o_46@@0 f_37@@39) (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@9) o_46@@0 f_37@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@@9) o_46@@0 f_37@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8763) (ExhaleHeap@@10 T@PolymorphicMapType_8763) (Mask@@31 T@PolymorphicMapType_8784) (o_46@@1 T@Ref) (f_37@@40 T@Field_5413_8837) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_5413_8837 Mask@@31 o_46@@1 f_37@@40) (= (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@12) o_46@@1 f_37@@40) (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| ExhaleHeap@@10) o_46@@1 f_37@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| ExhaleHeap@@10) o_46@@1 f_37@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8763) (ExhaleHeap@@11 T@PolymorphicMapType_8763) (Mask@@32 T@PolymorphicMapType_8784) (o_46@@2 T@Ref) (f_37@@41 T@Field_5413_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_5413_53 Mask@@32 o_46@@2 f_37@@41) (= (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@13) o_46@@2 f_37@@41) (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| ExhaleHeap@@11) o_46@@2 f_37@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| ExhaleHeap@@11) o_46@@2 f_37@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8763) (ExhaleHeap@@12 T@PolymorphicMapType_8763) (Mask@@33 T@PolymorphicMapType_8784) (o_46@@3 T@Ref) (f_37@@42 T@Field_12317_12318) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_5413_5414 Mask@@33 o_46@@3 f_37@@42) (= (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@14) o_46@@3 f_37@@42) (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@@12) o_46@@3 f_37@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@@12) o_46@@3 f_37@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8763) (ExhaleHeap@@13 T@PolymorphicMapType_8763) (Mask@@34 T@PolymorphicMapType_8784) (o_46@@4 T@Ref) (f_37@@43 T@Field_5413_1425) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_5413_1425 Mask@@34 o_46@@4 f_37@@43) (= (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@15) o_46@@4 f_37@@43) (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| ExhaleHeap@@13) o_46@@4 f_37@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| ExhaleHeap@@13) o_46@@4 f_37@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8763) (ExhaleHeap@@14 T@PolymorphicMapType_8763) (Mask@@35 T@PolymorphicMapType_8784) (o_46@@5 T@Ref) (f_37@@44 T@Field_5410_12335) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_5410_27451 Mask@@35 o_46@@5 f_37@@44) (= (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@16) o_46@@5 f_37@@44) (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@14) o_46@@5 f_37@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@@14) o_46@@5 f_37@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8763) (ExhaleHeap@@15 T@PolymorphicMapType_8763) (Mask@@36 T@PolymorphicMapType_8784) (o_46@@6 T@Ref) (f_37@@45 T@Field_8836_8837) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_5410_8837 Mask@@36 o_46@@6 f_37@@45) (= (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@17) o_46@@6 f_37@@45) (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| ExhaleHeap@@15) o_46@@6 f_37@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| ExhaleHeap@@15) o_46@@6 f_37@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8763) (ExhaleHeap@@16 T@PolymorphicMapType_8763) (Mask@@37 T@PolymorphicMapType_8784) (o_46@@7 T@Ref) (f_37@@46 T@Field_8823_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_5410_53 Mask@@37 o_46@@7 f_37@@46) (= (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@18) o_46@@7 f_37@@46) (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@16) o_46@@7 f_37@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@@16) o_46@@7 f_37@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8763) (ExhaleHeap@@17 T@PolymorphicMapType_8763) (Mask@@38 T@PolymorphicMapType_8784) (o_46@@8 T@Ref) (f_37@@47 T@Field_5410_5414) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_5410_5414 Mask@@38 o_46@@8 f_37@@47) (= (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@19) o_46@@8 f_37@@47) (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| ExhaleHeap@@17) o_46@@8 f_37@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| ExhaleHeap@@17) o_46@@8 f_37@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8763) (ExhaleHeap@@18 T@PolymorphicMapType_8763) (Mask@@39 T@PolymorphicMapType_8784) (o_46@@9 T@Ref) (f_37@@48 T@Field_12270_1425) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_5410_1425 Mask@@39 o_46@@9 f_37@@48) (= (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@20) o_46@@9 f_37@@48) (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@@18) o_46@@9 f_37@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@@18) o_46@@9 f_37@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_12330_12335) ) (! (= (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_5413_8837) ) (! (= (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_5413_53) ) (! (= (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_12317_12318) ) (! (= (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5413_1425) ) (! (= (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_5410_12335) ) (! (= (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8836_8837) ) (! (= (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8823_53) ) (! (= (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5410_5414) ) (! (= (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_12270_1425) ) (! (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8784) (SummandMask1 T@PolymorphicMapType_8784) (SummandMask2 T@PolymorphicMapType_8784) (o_2@@39 T@Ref) (f_4@@39 T@Field_12330_12335) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8784) (SummandMask1@@0 T@PolymorphicMapType_8784) (SummandMask2@@0 T@PolymorphicMapType_8784) (o_2@@40 T@Ref) (f_4@@40 T@Field_5413_8837) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8784) (SummandMask1@@1 T@PolymorphicMapType_8784) (SummandMask2@@1 T@PolymorphicMapType_8784) (o_2@@41 T@Ref) (f_4@@41 T@Field_5413_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8784) (SummandMask1@@2 T@PolymorphicMapType_8784) (SummandMask2@@2 T@PolymorphicMapType_8784) (o_2@@42 T@Ref) (f_4@@42 T@Field_12317_12318) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8784) (SummandMask1@@3 T@PolymorphicMapType_8784) (SummandMask2@@3 T@PolymorphicMapType_8784) (o_2@@43 T@Ref) (f_4@@43 T@Field_5413_1425) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8784) (SummandMask1@@4 T@PolymorphicMapType_8784) (SummandMask2@@4 T@PolymorphicMapType_8784) (o_2@@44 T@Ref) (f_4@@44 T@Field_5410_12335) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8784) (SummandMask1@@5 T@PolymorphicMapType_8784) (SummandMask2@@5 T@PolymorphicMapType_8784) (o_2@@45 T@Ref) (f_4@@45 T@Field_8836_8837) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8784) (SummandMask1@@6 T@PolymorphicMapType_8784) (SummandMask2@@6 T@PolymorphicMapType_8784) (o_2@@46 T@Ref) (f_4@@46 T@Field_8823_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8784) (SummandMask1@@7 T@PolymorphicMapType_8784) (SummandMask2@@7 T@PolymorphicMapType_8784) (o_2@@47 T@Ref) (f_4@@47 T@Field_5410_5414) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8784) (SummandMask1@@8 T@PolymorphicMapType_8784) (SummandMask2@@8 T@PolymorphicMapType_8784) (o_2@@48 T@Ref) (f_4@@48 T@Field_12270_1425) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a_2@@3 T@ArrayDomainType) ) (! (>= (len_1 a_2@@3) 0)
 :qid |stdinbpl.232:15|
 :skolemid |23|
 :pattern ( (len_1 a_2@@3))
)))
(assert (forall ((a_2@@4 T@ArrayDomainType) ) (! (= (getPredWandId_5413_5414 (array a_2@@4)) 0)
 :qid |stdinbpl.260:15|
 :skolemid |26|
 :pattern ( (array a_2@@4))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_8763) (Heap1Heap T@PolymorphicMapType_8763) (a_2@@5 T@ArrayDomainType) ) (!  (=> (and (=  (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@5) (|array#condqp1| Heap1Heap a_2@@5))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@5) (|array#condqp1| Heap1Heap a_2@@5)) (len_1 a_2@@5))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@5) (|array#condqp1| Heap1Heap a_2@@5))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@5) (|array#condqp1| Heap1Heap a_2@@5)) (len_1 a_2@@5))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@5) (|array#condqp1| Heap1Heap a_2@@5))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@5) (|array#condqp1| Heap1Heap a_2@@5)) (len_1 a_2@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap2Heap) (loc a_2@@5 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@5) (|array#condqp1| Heap1Heap a_2@@5))) val) (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap1Heap) (loc a_2@@5 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@5) (|array#condqp1| Heap1Heap a_2@@5))) val)))) (= (|array#condqp1| Heap2Heap a_2@@5) (|array#condqp1| Heap1Heap a_2@@5)))
 :qid |stdinbpl.286:15|
 :skolemid |30|
 :pattern ( (|array#condqp1| Heap2Heap a_2@@5) (|array#condqp1| Heap1Heap a_2@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a_2@@6 T@ArrayDomainType) (i Int) ) (!  (and (= (first (loc a_2@@6 i)) a_2@@6) (= (second (loc a_2@@6 i)) i))
 :qid |stdinbpl.226:15|
 :skolemid |22|
 :pattern ( (loc a_2@@6 i))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8763) (o_12 T@Ref) (f_24 T@Field_12330_12335) (v T@PolymorphicMapType_9312) ) (! (succHeap Heap@@21 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@21) (store (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@21) o_12 f_24 v) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@21) (store (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@21) o_12 f_24 v) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@21) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8763) (o_12@@0 T@Ref) (f_24@@0 T@Field_12317_12318) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@22) (store (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@22) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@22) (store (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@22) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@22) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8763) (o_12@@1 T@Ref) (f_24@@1 T@Field_5413_1425) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@23) (store (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@23) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@23) (store (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@23) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@23) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8763) (o_12@@2 T@Ref) (f_24@@2 T@Field_5413_8837) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@24) (store (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@24) o_12@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@24) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@24) (store (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@24) o_12@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8763) (o_12@@3 T@Ref) (f_24@@3 T@Field_5413_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@25) (store (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@25) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@25) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@25) (store (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@25) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8763) (o_12@@4 T@Ref) (f_24@@4 T@Field_5410_12335) (v@@4 T@PolymorphicMapType_9312) ) (! (succHeap Heap@@26 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@26) (store (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@26) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@26) (store (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@26) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@26) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8763) (o_12@@5 T@Ref) (f_24@@5 T@Field_5410_5414) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@27) (store (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@27) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@27) (store (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@27) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@27) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8763) (o_12@@6 T@Ref) (f_24@@6 T@Field_12270_1425) (v@@6 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@28) (store (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@28) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@28) (store (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@28) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@28) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8763) (o_12@@7 T@Ref) (f_24@@7 T@Field_8836_8837) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@29) (store (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@29) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@29) (store (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@29) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@29) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8763) (o_12@@8 T@Ref) (f_24@@8 T@Field_8823_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_8763 (store (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@30) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8763 (store (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@30) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@@30) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@@30)))
)))
(assert (forall ((a_2@@7 T@ArrayDomainType) ) (! (= (PredicateMaskField_5413 (array a_2@@7)) (|array#sm| a_2@@7))
 :qid |stdinbpl.252:15|
 :skolemid |24|
 :pattern ( (PredicateMaskField_5413 (array a_2@@7)))
)))
(assert (forall ((o_12@@9 T@Ref) (f_16 T@Field_8836_8837) (Heap@@31 T@PolymorphicMapType_8763) ) (!  (=> (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@31) o_12@@9 $allocated) (select (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@@31) (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@31) o_12@@9 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@@31) o_12@@9 f_16))
)))
(assert (forall ((p@@2 T@Field_12317_12318) (v_1@@1 T@FrameType) (q T@Field_12317_12318) (w@@1 T@FrameType) (r T@Field_12317_12318) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12317_12317 p@@2 v_1@@1 q w@@1) (InsidePredicate_12317_12317 q w@@1 r u)) (InsidePredicate_12317_12317 p@@2 v_1@@1 r u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12317_12317 p@@2 v_1@@1 q w@@1) (InsidePredicate_12317_12317 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_12317_12318) (v_1@@2 T@FrameType) (q@@0 T@Field_12317_12318) (w@@2 T@FrameType) (r@@0 T@Field_5410_5414) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12317_12317 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12317_8823 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_12317_8823 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12317_12317 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12317_8823 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_12317_12318) (v_1@@3 T@FrameType) (q@@1 T@Field_5410_5414) (w@@3 T@FrameType) (r@@1 T@Field_12317_12318) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12317_8823 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8823_12317 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_12317_12317 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12317_8823 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8823_12317 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_12317_12318) (v_1@@4 T@FrameType) (q@@2 T@Field_5410_5414) (w@@4 T@FrameType) (r@@2 T@Field_5410_5414) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12317_8823 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8823_8823 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_12317_8823 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12317_8823 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8823_8823 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5410_5414) (v_1@@5 T@FrameType) (q@@3 T@Field_12317_12318) (w@@5 T@FrameType) (r@@3 T@Field_12317_12318) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8823_12317 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12317_12317 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8823_12317 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8823_12317 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12317_12317 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5410_5414) (v_1@@6 T@FrameType) (q@@4 T@Field_12317_12318) (w@@6 T@FrameType) (r@@4 T@Field_5410_5414) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8823_12317 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12317_8823 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8823_8823 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8823_12317 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12317_8823 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5410_5414) (v_1@@7 T@FrameType) (q@@5 T@Field_5410_5414) (w@@7 T@FrameType) (r@@5 T@Field_12317_12318) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8823_8823 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8823_12317 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8823_12317 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8823_8823 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8823_12317 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5410_5414) (v_1@@8 T@FrameType) (q@@6 T@Field_5410_5414) (w@@8 T@FrameType) (r@@6 T@Field_5410_5414) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8823_8823 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8823_8823 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8823_8823 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8823_8823 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8823_8823 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_2 () Int)
(declare-fun a_2@@8 () T@ArrayDomainType)
(declare-fun QPMask@3 () T@PolymorphicMapType_8784)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_8784)
(declare-fun PostMask@0 () T@PolymorphicMapType_8784)
(declare-fun PostHeap@0 () T@PolymorphicMapType_8763)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun FrameFragment_1616 (Int) T@FrameType)
(declare-fun Mask@7 () T@PolymorphicMapType_8784)
(declare-fun newPMask@1 () T@PolymorphicMapType_9312)
(declare-fun Heap@6 () T@PolymorphicMapType_8763)
(declare-fun Heap@7 () T@PolymorphicMapType_8763)
(declare-fun Heap@3 () T@PolymorphicMapType_8763)
(declare-fun Heap@4 () T@PolymorphicMapType_8763)
(declare-fun Heap@5 () T@PolymorphicMapType_8763)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Heap@2 () T@PolymorphicMapType_8763)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_8784)
(declare-fun Mask@6 () T@PolymorphicMapType_8784)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_8784)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_8763)
(declare-fun Heap@1 () T@PolymorphicMapType_8763)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@3 () T@PolymorphicMapType_8784)
(declare-fun i_6_1 () Int)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_8784)
(declare-fun Mask@4 () T@PolymorphicMapType_8784)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_8784)
(declare-fun Mask@5 () T@PolymorphicMapType_8784)
(declare-fun Mask@1 () T@PolymorphicMapType_8784)
(declare-fun Mask@0 () T@PolymorphicMapType_8784)
(declare-fun Heap@@32 () T@PolymorphicMapType_8763)
(set-info :boogie-vc-id test)
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
 (=> (= (ControlFlow 0 0) 53) (let ((anon6_correct true))
(let ((anon34_Else_correct  (=> (and (not (and (<= 0 i_2) (< i_2 (len_1 a_2@@8)))) (= (ControlFlow 0 45) 42)) anon6_correct)))
(let ((anon34_Then_correct  (=> (and (<= 0 i_2) (< i_2 (len_1 a_2@@8))) (and (=> (= (ControlFlow 0 43) (- 0 44)) (HasDirectPerm_5410_1425 QPMask@3 (loc a_2@@8 i_2) val)) (=> (HasDirectPerm_5410_1425 QPMask@3 (loc a_2@@8 i_2) val) (=> (= (ControlFlow 0 43) 42) anon6_correct))))))
(let ((anon33_Else_correct true))
(let ((anon3_correct  (=> (= UnfoldingMask@1 (PolymorphicMapType_8784 (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| PostMask@0) (store (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| PostMask@0) null (array a_2@@8) (- (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| PostMask@0) null (array a_2@@8)) FullPerm)) (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| PostMask@0) (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| PostMask@0) (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| PostMask@0) (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| PostMask@0) (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| PostMask@0) (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| PostMask@0) (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| PostMask@0) (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| PostMask@0))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (forall ((i@@0 Int) (i_77 Int) ) (!  (=> (and (and (and (and (not (= i@@0 i_77)) (and (<= 0 i@@0) (< i@@0 (len_1 a_2@@8)))) (and (<= 0 i_77) (< i_77 (len_1 a_2@@8)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i@@0) (loc a_2@@8 i_77))))
 :qid |stdinbpl.414:17|
 :skolemid |37|
))) (=> (forall ((i@@1 Int) (i_77@@0 Int) ) (!  (=> (and (and (and (and (not (= i@@1 i_77@@0)) (and (<= 0 i@@1) (< i@@1 (len_1 a_2@@8)))) (and (<= 0 i_77@@0) (< i_77@@0 (len_1 a_2@@8)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i@@1) (loc a_2@@8 i_77@@0))))
 :qid |stdinbpl.414:17|
 :skolemid |37|
)) (=> (and (and (forall ((i@@2 Int) ) (!  (=> (and (and (<= 0 i@@2) (< i@@2 (len_1 a_2@@8))) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@8 i@@2)) (= (invRecv2 (loc a_2@@8 i@@2)) i@@2)))
 :qid |stdinbpl.420:24|
 :skolemid |38|
 :pattern ( (loc a_2@@8 i@@2))
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| PostHeap@0) (loc a_2@@8 i@@2) val))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4)) (< (invRecv2 o_4) (len_1 a_2@@8))) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (loc a_2@@8 (invRecv2 o_4)) o_4))
 :qid |stdinbpl.424:24|
 :skolemid |39|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (len_1 a_2@@8))) (not (= (loc a_2@@8 i@@3) null)))
 :qid |stdinbpl.430:24|
 :skolemid |40|
 :pattern ( (loc a_2@@8 i@@3))
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| PostHeap@0) (loc a_2@@8 i@@3) val))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (len_1 a_2@@8))) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@8 (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@3) o_4@@0 val) (+ (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (len_1 a_2@@8))) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@3) o_4@@0 val) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@0 val))))
 :qid |stdinbpl.436:24|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@3) o_4@@0 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_8823_53) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@1 f_5) (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| QPMask@3) o_4@@1 f_5)))
 :qid |stdinbpl.440:31|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| QPMask@3) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_8836_8837) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| QPMask@3) o_4@@2 f_5@@0)))
 :qid |stdinbpl.440:31|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| QPMask@3) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_12270_1425) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@3) o_4@@3 f_5@@1)))
 :qid |stdinbpl.440:31|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@3) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_5410_5414) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| QPMask@3) o_4@@4 f_5@@2)))
 :qid |stdinbpl.440:31|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| QPMask@3) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_5410_12335) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@5 f_5@@3) (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| QPMask@3) o_4@@5 f_5@@3)))
 :qid |stdinbpl.440:31|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| QPMask@3) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_5413_53) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@6 f_5@@4) (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| QPMask@3) o_4@@6 f_5@@4)))
 :qid |stdinbpl.440:31|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| QPMask@3) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_5413_8837) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@7 f_5@@5) (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| QPMask@3) o_4@@7 f_5@@5)))
 :qid |stdinbpl.440:31|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| QPMask@3) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_5413_1425) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@8 f_5@@6) (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| QPMask@3) o_4@@8 f_5@@6)))
 :qid |stdinbpl.440:31|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| QPMask@3) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_12317_12318) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@9 f_5@@7) (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| QPMask@3) o_4@@9 f_5@@7)))
 :qid |stdinbpl.440:31|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| QPMask@3) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_12330_12335) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@10 f_5@@8) (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| QPMask@3) o_4@@10 f_5@@8)))
 :qid |stdinbpl.440:31|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| UnfoldingMask@1) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| QPMask@3) o_4@@10 f_5@@8))
))) (and (state PostHeap@0 QPMask@3) (state PostHeap@0 QPMask@3))) (and (and (=> (= (ControlFlow 0 46) 41) anon33_Else_correct) (=> (= (ControlFlow 0 46) 43) anon34_Then_correct)) (=> (= (ControlFlow 0 46) 45) anon34_Else_correct)))))))))
(let ((anon32_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 50) 46)) anon3_correct)))
(let ((anon32_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| PostMask@0) null (array a_2@@8)))) (=> (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| PostMask@0) null (array a_2@@8))) (=> (= (ControlFlow 0 48) 46) anon3_correct))))))
(let ((anon31_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (= PostMask@0 (PolymorphicMapType_8784 (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| ZeroMask) (store (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| ZeroMask) null (array a_2@@8) (+ (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| ZeroMask) null (array a_2@@8)) FullPerm)) (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| ZeroMask)))) (=> (and (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (|array#trigger_5413| PostHeap@0 (array a_2@@8)) (= (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| PostHeap@0) null (array a_2@@8)) (FrameFragment_1616 (|array#condqp1| PostHeap@0 a_2@@8))))) (and (=> (= (ControlFlow 0 51) 48) anon32_Then_correct) (=> (= (ControlFlow 0 51) 50) anon32_Else_correct))))))
(let ((anon21_correct true))
(let ((anon41_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 20) 17)) anon21_correct)))
(let ((anon41_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@7) null (array a_2@@8)))) (=> (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@7) null (array a_2@@8))) (=> (= (ControlFlow 0 18) 17) anon21_correct))))))
(let ((anon19_correct  (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_53 T@Ref) (f_56 T@Field_12270_1425) ) (!  (=> (select (|PolymorphicMapType_9312_5410_1425#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@6) null (|array#sm| a_2@@8))) o_53 f_56) (select (|PolymorphicMapType_9312_5410_1425#PolymorphicMapType_9312| newPMask@1) o_53 f_56))
 :qid |stdinbpl.683:35|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9312_5410_1425#PolymorphicMapType_9312| newPMask@1) o_53 f_56))
)) (forall ((o_53@@0 T@Ref) (f_56@@0 T@Field_8823_53) ) (!  (=> (select (|PolymorphicMapType_9312_5410_53#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@6) null (|array#sm| a_2@@8))) o_53@@0 f_56@@0) (select (|PolymorphicMapType_9312_5410_53#PolymorphicMapType_9312| newPMask@1) o_53@@0 f_56@@0))
 :qid |stdinbpl.683:35|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9312_5410_53#PolymorphicMapType_9312| newPMask@1) o_53@@0 f_56@@0))
))) (forall ((o_53@@1 T@Ref) (f_56@@1 T@Field_8836_8837) ) (!  (=> (select (|PolymorphicMapType_9312_5410_8837#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@6) null (|array#sm| a_2@@8))) o_53@@1 f_56@@1) (select (|PolymorphicMapType_9312_5410_8837#PolymorphicMapType_9312| newPMask@1) o_53@@1 f_56@@1))
 :qid |stdinbpl.683:35|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9312_5410_8837#PolymorphicMapType_9312| newPMask@1) o_53@@1 f_56@@1))
))) (forall ((o_53@@2 T@Ref) (f_56@@2 T@Field_5410_5414) ) (!  (=> (select (|PolymorphicMapType_9312_5410_12318#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@6) null (|array#sm| a_2@@8))) o_53@@2 f_56@@2) (select (|PolymorphicMapType_9312_5410_12318#PolymorphicMapType_9312| newPMask@1) o_53@@2 f_56@@2))
 :qid |stdinbpl.683:35|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9312_5410_12318#PolymorphicMapType_9312| newPMask@1) o_53@@2 f_56@@2))
))) (forall ((o_53@@3 T@Ref) (f_56@@3 T@Field_5410_12335) ) (!  (=> (select (|PolymorphicMapType_9312_5410_30309#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@6) null (|array#sm| a_2@@8))) o_53@@3 f_56@@3) (select (|PolymorphicMapType_9312_5410_30309#PolymorphicMapType_9312| newPMask@1) o_53@@3 f_56@@3))
 :qid |stdinbpl.683:35|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9312_5410_30309#PolymorphicMapType_9312| newPMask@1) o_53@@3 f_56@@3))
))) (forall ((o_53@@4 T@Ref) (f_56@@4 T@Field_5413_1425) ) (!  (=> (select (|PolymorphicMapType_9312_12317_1425#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@6) null (|array#sm| a_2@@8))) o_53@@4 f_56@@4) (select (|PolymorphicMapType_9312_12317_1425#PolymorphicMapType_9312| newPMask@1) o_53@@4 f_56@@4))
 :qid |stdinbpl.683:35|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9312_12317_1425#PolymorphicMapType_9312| newPMask@1) o_53@@4 f_56@@4))
))) (forall ((o_53@@5 T@Ref) (f_56@@5 T@Field_5413_53) ) (!  (=> (select (|PolymorphicMapType_9312_12317_53#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@6) null (|array#sm| a_2@@8))) o_53@@5 f_56@@5) (select (|PolymorphicMapType_9312_12317_53#PolymorphicMapType_9312| newPMask@1) o_53@@5 f_56@@5))
 :qid |stdinbpl.683:35|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9312_12317_53#PolymorphicMapType_9312| newPMask@1) o_53@@5 f_56@@5))
))) (forall ((o_53@@6 T@Ref) (f_56@@6 T@Field_5413_8837) ) (!  (=> (select (|PolymorphicMapType_9312_12317_8837#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@6) null (|array#sm| a_2@@8))) o_53@@6 f_56@@6) (select (|PolymorphicMapType_9312_12317_8837#PolymorphicMapType_9312| newPMask@1) o_53@@6 f_56@@6))
 :qid |stdinbpl.683:35|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9312_12317_8837#PolymorphicMapType_9312| newPMask@1) o_53@@6 f_56@@6))
))) (forall ((o_53@@7 T@Ref) (f_56@@7 T@Field_12317_12318) ) (!  (=> (select (|PolymorphicMapType_9312_12317_12318#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@6) null (|array#sm| a_2@@8))) o_53@@7 f_56@@7) (select (|PolymorphicMapType_9312_12317_12318#PolymorphicMapType_9312| newPMask@1) o_53@@7 f_56@@7))
 :qid |stdinbpl.683:35|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9312_12317_12318#PolymorphicMapType_9312| newPMask@1) o_53@@7 f_56@@7))
))) (forall ((o_53@@8 T@Ref) (f_56@@8 T@Field_12330_12335) ) (!  (=> (select (|PolymorphicMapType_9312_12317_31357#PolymorphicMapType_9312| (select (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@6) null (|array#sm| a_2@@8))) o_53@@8 f_56@@8) (select (|PolymorphicMapType_9312_12317_31357#PolymorphicMapType_9312| newPMask@1) o_53@@8 f_56@@8))
 :qid |stdinbpl.683:35|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9312_12317_31357#PolymorphicMapType_9312| newPMask@1) o_53@@8 f_56@@8))
))) (and (and (forall ((i$0_2 Int) ) (!  (=> (and (<= 0 i$0_2) (< i$0_2 (len_1 a_2@@8))) (select (|PolymorphicMapType_9312_5410_1425#PolymorphicMapType_9312| newPMask@1) (loc a_2@@8 i$0_2) val))
 :qid |stdinbpl.687:28|
 :skolemid |64|
)) (= Heap@7 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@6) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@6) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@6) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@6) (store (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@6) null (|array#sm| a_2@@8) newPMask@1) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@6) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@6) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@6) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@6) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@6)))) (and (state Heap@7 Mask@7) (state Heap@7 Mask@7)))) (and (=> (= (ControlFlow 0 21) 18) anon41_Then_correct) (=> (= (ControlFlow 0 21) 20) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (HasDirectPerm_5413_5414 Mask@7 null (array a_2@@8)) (=> (and (= Heap@6 Heap@3) (= (ControlFlow 0 23) 21)) anon19_correct))))
(let ((anon40_Then_correct  (=> (not (HasDirectPerm_5413_5414 Mask@7 null (array a_2@@8))) (=> (and (and (= Heap@4 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@3) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@3) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@3) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@3) (store (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@3) null (|array#sm| a_2@@8) ZeroPMask) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@3) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@3) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@3) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@3) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@3))) (= Heap@5 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@4) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@4) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@4) (store (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@4) null (array a_2@@8) freshVersion@0) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@4) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@4) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@4) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@4) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@4) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@4)))) (and (= Heap@6 Heap@5) (= (ControlFlow 0 22) 21))) anon19_correct))))
(let ((anon17_correct  (and (=> (= (ControlFlow 0 24) (- 0 28)) (forall ((i$0 Int) (i$0_3 Int) ) (!  (=> (and (and (and (and (not (= i$0 i$0_3)) (and (<= 0 i$0) (< i$0 (len_1 a_2@@8)))) (and (<= 0 i$0_3) (< i$0_3 (len_1 a_2@@8)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i$0) (loc a_2@@8 i$0_3))))
 :qid |stdinbpl.585:23|
 :skolemid |51|
))) (=> (forall ((i$0@@0 Int) (i$0_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i$0@@0 i$0_3@@0)) (and (<= 0 i$0@@0) (< i$0@@0 (len_1 a_2@@8)))) (and (<= 0 i$0_3@@0) (< i$0_3@@0 (len_1 a_2@@8)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i$0@@0) (loc a_2@@8 i$0_3@@0))))
 :qid |stdinbpl.585:23|
 :skolemid |51|
)) (=> (and (and (forall ((i$0@@1 Int) ) (!  (=> (and (and (<= 0 i$0@@1) (< i$0@@1 (len_1 a_2@@8))) (< NoPerm FullPerm)) (and (qpRange5 (loc a_2@@8 i$0@@1)) (= (invRecv5 (loc a_2@@8 i$0@@1)) i$0@@1)))
 :qid |stdinbpl.591:30|
 :skolemid |52|
 :pattern ( (loc a_2@@8 i$0@@1))
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@2) (loc a_2@@8 i$0@@1) val))
)) (forall ((o_4@@11 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_4@@11)) (< (invRecv5 o_4@@11) (len_1 a_2@@8))) (< NoPerm FullPerm)) (qpRange5 o_4@@11)) (= (loc a_2@@8 (invRecv5 o_4@@11)) o_4@@11))
 :qid |stdinbpl.595:30|
 :skolemid |53|
 :pattern ( (invRecv5 o_4@@11))
))) (and (forall ((i$0@@2 Int) ) (!  (=> (and (<= 0 i$0@@2) (< i$0@@2 (len_1 a_2@@8))) (not (= (loc a_2@@8 i$0@@2) null)))
 :qid |stdinbpl.601:30|
 :skolemid |54|
 :pattern ( (loc a_2@@8 i$0@@2))
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@2) (loc a_2@@8 i$0@@2) val))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_4@@12)) (< (invRecv5 o_4@@12) (len_1 a_2@@8))) (< NoPerm FullPerm)) (qpRange5 o_4@@12)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@8 (invRecv5 o_4@@12)) o_4@@12)) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) o_4@@12 val) (+ (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@6) o_4@@12 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv5 o_4@@12)) (< (invRecv5 o_4@@12) (len_1 a_2@@8))) (< NoPerm FullPerm)) (qpRange5 o_4@@12))) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) o_4@@12 val) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@6) o_4@@12 val))))
 :qid |stdinbpl.607:30|
 :skolemid |55|
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) o_4@@12 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_8823_53) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| Mask@6) o_4@@13 f_5@@9) (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| QPMask@1) o_4@@13 f_5@@9)))
 :qid |stdinbpl.611:37|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| Mask@6) o_4@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| QPMask@1) o_4@@13 f_5@@9))
)) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_8836_8837) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| Mask@6) o_4@@14 f_5@@10) (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| QPMask@1) o_4@@14 f_5@@10)))
 :qid |stdinbpl.611:37|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| Mask@6) o_4@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| QPMask@1) o_4@@14 f_5@@10))
))) (forall ((o_4@@15 T@Ref) (f_5@@11 T@Field_12270_1425) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@6) o_4@@15 f_5@@11) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) o_4@@15 f_5@@11)))
 :qid |stdinbpl.611:37|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@6) o_4@@15 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) o_4@@15 f_5@@11))
))) (forall ((o_4@@16 T@Ref) (f_5@@12 T@Field_5410_5414) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| Mask@6) o_4@@16 f_5@@12) (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| QPMask@1) o_4@@16 f_5@@12)))
 :qid |stdinbpl.611:37|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| Mask@6) o_4@@16 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| QPMask@1) o_4@@16 f_5@@12))
))) (forall ((o_4@@17 T@Ref) (f_5@@13 T@Field_5410_12335) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| Mask@6) o_4@@17 f_5@@13) (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| QPMask@1) o_4@@17 f_5@@13)))
 :qid |stdinbpl.611:37|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| Mask@6) o_4@@17 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| QPMask@1) o_4@@17 f_5@@13))
))) (forall ((o_4@@18 T@Ref) (f_5@@14 T@Field_5413_53) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| Mask@6) o_4@@18 f_5@@14) (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| QPMask@1) o_4@@18 f_5@@14)))
 :qid |stdinbpl.611:37|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| Mask@6) o_4@@18 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| QPMask@1) o_4@@18 f_5@@14))
))) (forall ((o_4@@19 T@Ref) (f_5@@15 T@Field_5413_8837) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| Mask@6) o_4@@19 f_5@@15) (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| QPMask@1) o_4@@19 f_5@@15)))
 :qid |stdinbpl.611:37|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| Mask@6) o_4@@19 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| QPMask@1) o_4@@19 f_5@@15))
))) (forall ((o_4@@20 T@Ref) (f_5@@16 T@Field_5413_1425) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| Mask@6) o_4@@20 f_5@@16) (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| QPMask@1) o_4@@20 f_5@@16)))
 :qid |stdinbpl.611:37|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| Mask@6) o_4@@20 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| QPMask@1) o_4@@20 f_5@@16))
))) (forall ((o_4@@21 T@Ref) (f_5@@17 T@Field_12317_12318) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@6) o_4@@21 f_5@@17) (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| QPMask@1) o_4@@21 f_5@@17)))
 :qid |stdinbpl.611:37|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@6) o_4@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| QPMask@1) o_4@@21 f_5@@17))
))) (forall ((o_4@@22 T@Ref) (f_5@@18 T@Field_12330_12335) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| Mask@6) o_4@@22 f_5@@18) (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| QPMask@1) o_4@@22 f_5@@18)))
 :qid |stdinbpl.611:37|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| Mask@6) o_4@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| QPMask@1) o_4@@22 f_5@@18))
))) (state Heap@2 QPMask@1)) (and (state Heap@2 QPMask@1) (state Heap@2 QPMask@1))) (and (=> (= (ControlFlow 0 24) (- 0 27)) (= FullPerm (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) (loc a_2@@8 0) val))) (=> (= FullPerm (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) (loc a_2@@8 0) val)) (=> (and (= Heap@3 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| Heap@2) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| Heap@2) (store (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@2) (loc a_2@@8 0) val 0) (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@2) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| Heap@2) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| Heap@2) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| Heap@2) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| Heap@2) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| Heap@2) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| Heap@2))) (state Heap@3 QPMask@1)) (and (=> (= (ControlFlow 0 24) (- 0 26)) (forall ((i$0_1 Int) (i$0_1_1 Int) ) (!  (=> (and (and (and (and (not (= i$0_1 i$0_1_1)) (and (<= 0 i$0_1) (< i$0_1 (len_1 a_2@@8)))) (and (<= 0 i$0_1_1) (< i$0_1_1 (len_1 a_2@@8)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i$0_1) (loc a_2@@8 i$0_1_1))))
 :qid |stdinbpl.636:25|
 :skolemid |57|
 :pattern ( (neverTriggered6 i$0_1) (neverTriggered6 i$0_1_1))
))) (=> (forall ((i$0_1@@0 Int) (i$0_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$0_1@@0 i$0_1_1@@0)) (and (<= 0 i$0_1@@0) (< i$0_1@@0 (len_1 a_2@@8)))) (and (<= 0 i$0_1_1@@0) (< i$0_1_1@@0 (len_1 a_2@@8)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i$0_1@@0) (loc a_2@@8 i$0_1_1@@0))))
 :qid |stdinbpl.636:25|
 :skolemid |57|
 :pattern ( (neverTriggered6 i$0_1@@0) (neverTriggered6 i$0_1_1@@0))
)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((i$0_1@@1 Int) ) (!  (=> (and (<= 0 i$0_1@@1) (< i$0_1@@1 (len_1 a_2@@8))) (>= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) (loc a_2@@8 i$0_1@@1) val) FullPerm))
 :qid |stdinbpl.643:25|
 :skolemid |58|
 :pattern ( (loc a_2@@8 i$0_1@@1))
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@3) (loc a_2@@8 i$0_1@@1) val))
))) (=> (forall ((i$0_1@@2 Int) ) (!  (=> (and (<= 0 i$0_1@@2) (< i$0_1@@2 (len_1 a_2@@8))) (>= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) (loc a_2@@8 i$0_1@@2) val) FullPerm))
 :qid |stdinbpl.643:25|
 :skolemid |58|
 :pattern ( (loc a_2@@8 i$0_1@@2))
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@3) (loc a_2@@8 i$0_1@@2) val))
)) (=> (forall ((i$0_1@@3 Int) ) (!  (=> (and (and (<= 0 i$0_1@@3) (< i$0_1@@3 (len_1 a_2@@8))) (< NoPerm FullPerm)) (and (qpRange6 (loc a_2@@8 i$0_1@@3)) (= (invRecv6 (loc a_2@@8 i$0_1@@3)) i$0_1@@3)))
 :qid |stdinbpl.649:30|
 :skolemid |59|
 :pattern ( (loc a_2@@8 i$0_1@@3))
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| Heap@3) (loc a_2@@8 i$0_1@@3) val))
)) (=> (and (forall ((o_4@@23 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv6 o_4@@23)) (< (invRecv6 o_4@@23) (len_1 a_2@@8))) (and (< NoPerm FullPerm) (qpRange6 o_4@@23))) (= (loc a_2@@8 (invRecv6 o_4@@23)) o_4@@23))
 :qid |stdinbpl.653:30|
 :skolemid |60|
 :pattern ( (invRecv6 o_4@@23))
)) (forall ((o_4@@24 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv6 o_4@@24)) (< (invRecv6 o_4@@24) (len_1 a_2@@8))) (and (< NoPerm FullPerm) (qpRange6 o_4@@24))) (and (= (loc a_2@@8 (invRecv6 o_4@@24)) o_4@@24) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@2) o_4@@24 val) (- (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) o_4@@24 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv6 o_4@@24)) (< (invRecv6 o_4@@24) (len_1 a_2@@8))) (and (< NoPerm FullPerm) (qpRange6 o_4@@24)))) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@2) o_4@@24 val) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) o_4@@24 val))))
 :qid |stdinbpl.659:30|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@2) o_4@@24 val))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@25 T@Ref) (f_5@@19 T@Field_8823_53) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| QPMask@1) o_4@@25 f_5@@19) (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| QPMask@2) o_4@@25 f_5@@19)))
 :qid |stdinbpl.665:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| QPMask@2) o_4@@25 f_5@@19))
)) (forall ((o_4@@26 T@Ref) (f_5@@20 T@Field_8836_8837) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| QPMask@1) o_4@@26 f_5@@20) (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| QPMask@2) o_4@@26 f_5@@20)))
 :qid |stdinbpl.665:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| QPMask@2) o_4@@26 f_5@@20))
))) (forall ((o_4@@27 T@Ref) (f_5@@21 T@Field_12270_1425) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@1) o_4@@27 f_5@@21) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@2) o_4@@27 f_5@@21)))
 :qid |stdinbpl.665:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@2) o_4@@27 f_5@@21))
))) (forall ((o_4@@28 T@Ref) (f_5@@22 T@Field_5410_5414) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| QPMask@1) o_4@@28 f_5@@22) (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| QPMask@2) o_4@@28 f_5@@22)))
 :qid |stdinbpl.665:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| QPMask@2) o_4@@28 f_5@@22))
))) (forall ((o_4@@29 T@Ref) (f_5@@23 T@Field_5410_12335) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| QPMask@1) o_4@@29 f_5@@23) (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| QPMask@2) o_4@@29 f_5@@23)))
 :qid |stdinbpl.665:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| QPMask@2) o_4@@29 f_5@@23))
))) (forall ((o_4@@30 T@Ref) (f_5@@24 T@Field_5413_53) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| QPMask@1) o_4@@30 f_5@@24) (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| QPMask@2) o_4@@30 f_5@@24)))
 :qid |stdinbpl.665:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| QPMask@2) o_4@@30 f_5@@24))
))) (forall ((o_4@@31 T@Ref) (f_5@@25 T@Field_5413_8837) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| QPMask@1) o_4@@31 f_5@@25) (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| QPMask@2) o_4@@31 f_5@@25)))
 :qid |stdinbpl.665:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| QPMask@2) o_4@@31 f_5@@25))
))) (forall ((o_4@@32 T@Ref) (f_5@@26 T@Field_5413_1425) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| QPMask@1) o_4@@32 f_5@@26) (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| QPMask@2) o_4@@32 f_5@@26)))
 :qid |stdinbpl.665:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| QPMask@2) o_4@@32 f_5@@26))
))) (forall ((o_4@@33 T@Ref) (f_5@@27 T@Field_12317_12318) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| QPMask@1) o_4@@33 f_5@@27) (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| QPMask@2) o_4@@33 f_5@@27)))
 :qid |stdinbpl.665:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| QPMask@2) o_4@@33 f_5@@27))
))) (forall ((o_4@@34 T@Ref) (f_5@@28 T@Field_12330_12335) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| QPMask@1) o_4@@34 f_5@@28) (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| QPMask@2) o_4@@34 f_5@@28)))
 :qid |stdinbpl.665:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| QPMask@2) o_4@@34 f_5@@28))
))) (= Mask@7 (PolymorphicMapType_8784 (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@2) (store (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| QPMask@2) null (array a_2@@8) (+ (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| QPMask@2) null (array a_2@@8)) FullPerm)) (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| QPMask@2) (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| QPMask@2) (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| QPMask@2) (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| QPMask@2) (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| QPMask@2) (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| QPMask@2) (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| QPMask@2) (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| QPMask@2)))) (and (and (state Heap@3 Mask@7) (state Heap@3 Mask@7)) (and (|array#trigger_5413| Heap@3 (array a_2@@8)) (= (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| Heap@3) null (array a_2@@8)) (FrameFragment_1616 (|array#condqp1| Heap@3 a_2@@8)))))) (and (=> (= (ControlFlow 0 24) 22) anon40_Then_correct) (=> (= (ControlFlow 0 24) 23) anon40_Else_correct))))))))))))))))))
(let ((anon39_Else_correct  (=> (HasDirectPerm_5413_5414 Mask@6 null (array a_2@@8)) (=> (and (= Heap@2 ExhaleHeap@0) (= (ControlFlow 0 30) 24)) anon17_correct))))
(let ((anon39_Then_correct  (=> (and (and (not (HasDirectPerm_5413_5414 Mask@6 null (array a_2@@8))) (= Heap@1 (PolymorphicMapType_8763 (|PolymorphicMapType_8763_5258_53#PolymorphicMapType_8763| ExhaleHeap@0) (|PolymorphicMapType_8763_5261_5262#PolymorphicMapType_8763| ExhaleHeap@0) (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@0) (store (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@0) null (array a_2@@8) newVersion@0) (|PolymorphicMapType_8763_5417_16954#PolymorphicMapType_8763| ExhaleHeap@0) (|PolymorphicMapType_8763_5410_5414#PolymorphicMapType_8763| ExhaleHeap@0) (|PolymorphicMapType_8763_5410_27493#PolymorphicMapType_8763| ExhaleHeap@0) (|PolymorphicMapType_8763_5413_1425#PolymorphicMapType_8763| ExhaleHeap@0) (|PolymorphicMapType_8763_5413_53#PolymorphicMapType_8763| ExhaleHeap@0) (|PolymorphicMapType_8763_5413_8837#PolymorphicMapType_8763| ExhaleHeap@0)))) (and (= Heap@2 Heap@1) (= (ControlFlow 0 29) 24))) anon17_correct)))
(let ((anon15_correct  (=> (= Mask@6 (PolymorphicMapType_8784 (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@3) (store (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@3) null (array a_2@@8) (- (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@3) null (array a_2@@8)) FullPerm)) (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| Mask@3) (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| Mask@3) (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| Mask@3) (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| Mask@3) (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| Mask@3) (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| Mask@3) (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| Mask@3) (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| Mask@3))) (and (=> (= (ControlFlow 0 31) 29) anon39_Then_correct) (=> (= (ControlFlow 0 31) 30) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 34) 31)) anon15_correct)))
(let ((anon38_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@3) null (array a_2@@8)))) (=> (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@3) null (array a_2@@8))) (=> (= (ControlFlow 0 32) 31) anon15_correct))))))
(let ((anon37_Then_correct  (=> (and (and (and (state ExhaleHeap@0 ZeroMask) (= Mask@3 (PolymorphicMapType_8784 (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| ZeroMask) (store (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| ZeroMask) null (array a_2@@8) (+ (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| ZeroMask) null (array a_2@@8)) FullPerm)) (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| ZeroMask)))) (and (state ExhaleHeap@0 Mask@3) (state ExhaleHeap@0 Mask@3))) (and (and (< 0 (len_1 a_2@@8)) (state ExhaleHeap@0 Mask@3)) (and (|array#trigger_5413| ExhaleHeap@0 (array a_2@@8)) (= (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@0) null (array a_2@@8)) (FrameFragment_1616 (|array#condqp1| ExhaleHeap@0 a_2@@8)))))) (and (=> (= (ControlFlow 0 35) 32) anon38_Then_correct) (=> (= (ControlFlow 0 35) 34) anon38_Else_correct)))))
(let ((anon29_correct true))
(let ((anon45_Else_correct  (=> (and (not (and (<= 0 i_6_1) (< i_6_1 (len_1 a_2@@8)))) (= (ControlFlow 0 6) 3)) anon29_correct)))
(let ((anon45_Then_correct  (=> (and (<= 0 i_6_1) (< i_6_1 (len_1 a_2@@8))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@0) (loc a_2@@8 i_6_1) val) i_6_1)) (=> (= (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@0) (loc a_2@@8 i_6_1) val) i_6_1) (=> (= (ControlFlow 0 4) 3) anon29_correct))))))
(let ((anon44_Else_correct true))
(let ((anon26_correct  (=> (= UnfoldingMask@0 (PolymorphicMapType_8784 (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@4) (store (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@4) null (array a_2@@8) (- (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@4) null (array a_2@@8)) FullPerm)) (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| Mask@4))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (forall ((i_5 Int) (i_5_1 Int) ) (!  (=> (and (and (and (and (not (= i_5 i_5_1)) (and (<= 0 i_5) (< i_5 (len_1 a_2@@8)))) (and (<= 0 i_5_1) (< i_5_1 (len_1 a_2@@8)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i_5) (loc a_2@@8 i_5_1))))
 :qid |stdinbpl.745:17|
 :skolemid |65|
))) (=> (forall ((i_5@@0 Int) (i_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5@@0 i_5_1@@0)) (and (<= 0 i_5@@0) (< i_5@@0 (len_1 a_2@@8)))) (and (<= 0 i_5_1@@0) (< i_5_1@@0 (len_1 a_2@@8)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i_5@@0) (loc a_2@@8 i_5_1@@0))))
 :qid |stdinbpl.745:17|
 :skolemid |65|
)) (=> (and (and (forall ((i_5@@1 Int) ) (!  (=> (and (and (<= 0 i_5@@1) (< i_5@@1 (len_1 a_2@@8))) (< NoPerm FullPerm)) (and (qpRange4 (loc a_2@@8 i_5@@1)) (= (invRecv4 (loc a_2@@8 i_5@@1)) i_5@@1)))
 :qid |stdinbpl.751:24|
 :skolemid |66|
 :pattern ( (loc a_2@@8 i_5@@1))
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@0) (loc a_2@@8 i_5@@1) val))
)) (forall ((o_4@@35 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv4 o_4@@35)) (< (invRecv4 o_4@@35) (len_1 a_2@@8))) (< NoPerm FullPerm)) (qpRange4 o_4@@35)) (= (loc a_2@@8 (invRecv4 o_4@@35)) o_4@@35))
 :qid |stdinbpl.755:24|
 :skolemid |67|
 :pattern ( (invRecv4 o_4@@35))
))) (and (forall ((i_5@@2 Int) ) (!  (=> (and (<= 0 i_5@@2) (< i_5@@2 (len_1 a_2@@8))) (not (= (loc a_2@@8 i_5@@2) null)))
 :qid |stdinbpl.761:24|
 :skolemid |68|
 :pattern ( (loc a_2@@8 i_5@@2))
 :pattern ( (select (|PolymorphicMapType_8763_5410_1425#PolymorphicMapType_8763| ExhaleHeap@0) (loc a_2@@8 i_5@@2) val))
)) (forall ((o_4@@36 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv4 o_4@@36)) (< (invRecv4 o_4@@36) (len_1 a_2@@8))) (< NoPerm FullPerm)) (qpRange4 o_4@@36)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@8 (invRecv4 o_4@@36)) o_4@@36)) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@0) o_4@@36 val) (+ (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@36 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv4 o_4@@36)) (< (invRecv4 o_4@@36) (len_1 a_2@@8))) (< NoPerm FullPerm)) (qpRange4 o_4@@36))) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@0) o_4@@36 val) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@36 val))))
 :qid |stdinbpl.767:24|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@0) o_4@@36 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@37 T@Ref) (f_5@@29 T@Field_8823_53) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@37 f_5@@29) (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| QPMask@0) o_4@@37 f_5@@29)))
 :qid |stdinbpl.771:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@37 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| QPMask@0) o_4@@37 f_5@@29))
)) (forall ((o_4@@38 T@Ref) (f_5@@30 T@Field_8836_8837) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@38 f_5@@30) (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| QPMask@0) o_4@@38 f_5@@30)))
 :qid |stdinbpl.771:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@38 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| QPMask@0) o_4@@38 f_5@@30))
))) (forall ((o_4@@39 T@Ref) (f_5@@31 T@Field_12270_1425) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@39 f_5@@31) (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@0) o_4@@39 f_5@@31)))
 :qid |stdinbpl.771:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@39 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| QPMask@0) o_4@@39 f_5@@31))
))) (forall ((o_4@@40 T@Ref) (f_5@@32 T@Field_5410_5414) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@40 f_5@@32) (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| QPMask@0) o_4@@40 f_5@@32)))
 :qid |stdinbpl.771:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@40 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| QPMask@0) o_4@@40 f_5@@32))
))) (forall ((o_4@@41 T@Ref) (f_5@@33 T@Field_5410_12335) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@41 f_5@@33) (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| QPMask@0) o_4@@41 f_5@@33)))
 :qid |stdinbpl.771:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@41 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| QPMask@0) o_4@@41 f_5@@33))
))) (forall ((o_4@@42 T@Ref) (f_5@@34 T@Field_5413_53) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@42 f_5@@34) (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| QPMask@0) o_4@@42 f_5@@34)))
 :qid |stdinbpl.771:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@42 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| QPMask@0) o_4@@42 f_5@@34))
))) (forall ((o_4@@43 T@Ref) (f_5@@35 T@Field_5413_8837) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@43 f_5@@35) (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| QPMask@0) o_4@@43 f_5@@35)))
 :qid |stdinbpl.771:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@43 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| QPMask@0) o_4@@43 f_5@@35))
))) (forall ((o_4@@44 T@Ref) (f_5@@36 T@Field_5413_1425) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@44 f_5@@36) (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| QPMask@0) o_4@@44 f_5@@36)))
 :qid |stdinbpl.771:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@44 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| QPMask@0) o_4@@44 f_5@@36))
))) (forall ((o_4@@45 T@Ref) (f_5@@37 T@Field_12317_12318) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@45 f_5@@37) (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| QPMask@0) o_4@@45 f_5@@37)))
 :qid |stdinbpl.771:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@45 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| QPMask@0) o_4@@45 f_5@@37))
))) (forall ((o_4@@46 T@Ref) (f_5@@38 T@Field_12330_12335) ) (!  (=> true (= (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@46 f_5@@38) (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| QPMask@0) o_4@@46 f_5@@38)))
 :qid |stdinbpl.771:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| UnfoldingMask@0) o_4@@46 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| QPMask@0) o_4@@46 f_5@@38))
))) (and (state ExhaleHeap@0 QPMask@0) (state ExhaleHeap@0 QPMask@0))) (and (and (=> (= (ControlFlow 0 7) 2) anon44_Else_correct) (=> (= (ControlFlow 0 7) 4) anon45_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon45_Else_correct)))))))))
(let ((anon43_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 11) 7)) anon26_correct)))
(let ((anon43_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@4) null (array a_2@@8)))) (=> (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@4) null (array a_2@@8))) (=> (= (ControlFlow 0 9) 7) anon26_correct))))))
(let ((anon24_correct  (=> (= Mask@5 (PolymorphicMapType_8784 (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@4) (store (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@4) null (array a_2@@8) (- (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@4) null (array a_2@@8)) FullPerm)) (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| Mask@4) (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| Mask@4))) (=> (and (|array#trigger_5413| ExhaleHeap@0 (array a_2@@8)) (= (select (|PolymorphicMapType_8763_5413_5414#PolymorphicMapType_8763| ExhaleHeap@0) null (array a_2@@8)) (FrameFragment_1616 (|array#condqp1| ExhaleHeap@0 a_2@@8)))) (and (=> (= (ControlFlow 0 12) 9) anon43_Then_correct) (=> (= (ControlFlow 0 12) 11) anon43_Else_correct))))))
(let ((anon42_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 15) 12)) anon24_correct)))
(let ((anon42_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@4) null (array a_2@@8)))) (=> (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@4) null (array a_2@@8))) (=> (= (ControlFlow 0 13) 12) anon24_correct))))))
(let ((anon37_Else_correct  (=> (and (not (< 0 (len_1 a_2@@8))) (state ExhaleHeap@0 Mask@1)) (=> (and (and (= Mask@4 (PolymorphicMapType_8784 (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@1) (store (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@1) null (array a_2@@8) (+ (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@1) null (array a_2@@8)) FullPerm)) (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| Mask@1) (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| Mask@1) (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| Mask@1) (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| Mask@1) (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| Mask@1) (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| Mask@1) (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| Mask@1) (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| Mask@1))) (state ExhaleHeap@0 Mask@4)) (and (state ExhaleHeap@0 Mask@4) (state ExhaleHeap@0 Mask@4))) (and (=> (= (ControlFlow 0 16) 13) anon42_Then_correct) (=> (= (ControlFlow 0 16) 15) anon42_Else_correct))))))
(let ((anon36_Then_correct true))
(let ((anon10_correct  (=> (and (= Mask@1 (PolymorphicMapType_8784 (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| Mask@0) (store (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@0) null (array a_2@@8) (- (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@0) null (array a_2@@8)) FullPerm)) (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| Mask@0) (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| Mask@0) (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| Mask@0) (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| Mask@0) (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| Mask@0) (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| Mask@0) (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| Mask@0) (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| Mask@0))) (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@0 Mask@1)) (and (and (=> (= (ControlFlow 0 36) 1) anon36_Then_correct) (=> (= (ControlFlow 0 36) 35) anon37_Then_correct)) (=> (= (ControlFlow 0 36) 16) anon37_Else_correct)))))
(let ((anon35_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 39) 36)) anon10_correct)))
(let ((anon35_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@0) null (array a_2@@8)))) (=> (<= FullPerm (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| Mask@0) null (array a_2@@8))) (=> (= (ControlFlow 0 37) 36) anon10_correct))))))
(let ((anon31_Else_correct  (=> (state Heap@@32 Mask@0) (and (=> (= (ControlFlow 0 40) 37) anon35_Then_correct) (=> (= (ControlFlow 0 40) 39) anon35_Else_correct)))))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (and AssumePermUpperBound (= Mask@0 (PolymorphicMapType_8784 (|PolymorphicMapType_8784_5410_1425#PolymorphicMapType_8784| ZeroMask) (store (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| ZeroMask) null (array a_2@@8) (+ (select (|PolymorphicMapType_8784_5413_5414#PolymorphicMapType_8784| ZeroMask) null (array a_2@@8)) FullPerm)) (|PolymorphicMapType_8784_5410_5414#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5410_53#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5410_8837#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5410_36751#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_1425#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_53#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_8837#PolymorphicMapType_8784| ZeroMask) (|PolymorphicMapType_8784_5413_37162#PolymorphicMapType_8784| ZeroMask)))) (and (state Heap@@32 Mask@0) (state Heap@@32 Mask@0))) (and (=> (= (ControlFlow 0 52) 51) anon31_Then_correct) (=> (= (ControlFlow 0 52) 40) anon31_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 53) 52) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid