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
(declare-sort T@Field_9828_53 0)
(declare-sort T@Field_9841_9842 0)
(declare-sort T@Field_14220_14221 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14750_14751 0)
(declare-sort T@Field_17814_17815 0)
(declare-sort T@Field_17827_17832 0)
(declare-sort T@Field_5479_5529 0)
(declare-sort T@Field_5479_14238 0)
(declare-sort T@Field_5528_5480 0)
(declare-sort T@Field_5528_53 0)
(declare-sort T@Field_14763_14768 0)
(declare-sort T@Field_5562_5480 0)
(declare-sort T@Field_5562_53 0)
(declare-sort T@Field_14220_5480 0)
(declare-sort T@Field_14220_53 0)
(declare-sort T@Field_14233_14238 0)
(declare-datatypes ((T@PolymorphicMapType_9789 0)) (((PolymorphicMapType_9789 (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| (Array T@Ref T@Field_9841_9842 Real)) (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| (Array T@Ref T@Field_14220_14221 Real)) (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| (Array T@Ref T@Field_14750_14751 Real)) (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| (Array T@Ref T@Field_17814_17815 Real)) (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| (Array T@Ref T@Field_5479_5529 Real)) (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| (Array T@Ref T@Field_9828_53 Real)) (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| (Array T@Ref T@Field_5479_14238 Real)) (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| (Array T@Ref T@Field_14220_5480 Real)) (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| (Array T@Ref T@Field_14220_53 Real)) (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| (Array T@Ref T@Field_14233_14238 Real)) (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| (Array T@Ref T@Field_5528_5480 Real)) (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| (Array T@Ref T@Field_5528_53 Real)) (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| (Array T@Ref T@Field_14763_14768 Real)) (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| (Array T@Ref T@Field_5562_5480 Real)) (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| (Array T@Ref T@Field_5562_53 Real)) (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| (Array T@Ref T@Field_17827_17832 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10317 0)) (((PolymorphicMapType_10317 (|PolymorphicMapType_10317_9828_53#PolymorphicMapType_10317| (Array T@Ref T@Field_9828_53 Bool)) (|PolymorphicMapType_10317_9828_9842#PolymorphicMapType_10317| (Array T@Ref T@Field_9841_9842 Bool)) (|PolymorphicMapType_10317_9828_14221#PolymorphicMapType_10317| (Array T@Ref T@Field_5479_5529 Bool)) (|PolymorphicMapType_10317_9828_36610#PolymorphicMapType_10317| (Array T@Ref T@Field_5479_14238 Bool)) (|PolymorphicMapType_10317_14220_53#PolymorphicMapType_10317| (Array T@Ref T@Field_14220_53 Bool)) (|PolymorphicMapType_10317_14220_9842#PolymorphicMapType_10317| (Array T@Ref T@Field_14220_5480 Bool)) (|PolymorphicMapType_10317_14220_14221#PolymorphicMapType_10317| (Array T@Ref T@Field_14220_14221 Bool)) (|PolymorphicMapType_10317_14220_37460#PolymorphicMapType_10317| (Array T@Ref T@Field_14233_14238 Bool)) (|PolymorphicMapType_10317_14750_53#PolymorphicMapType_10317| (Array T@Ref T@Field_5528_53 Bool)) (|PolymorphicMapType_10317_14750_9842#PolymorphicMapType_10317| (Array T@Ref T@Field_5528_5480 Bool)) (|PolymorphicMapType_10317_14750_14221#PolymorphicMapType_10317| (Array T@Ref T@Field_14750_14751 Bool)) (|PolymorphicMapType_10317_14750_38310#PolymorphicMapType_10317| (Array T@Ref T@Field_14763_14768 Bool)) (|PolymorphicMapType_10317_17814_53#PolymorphicMapType_10317| (Array T@Ref T@Field_5562_53 Bool)) (|PolymorphicMapType_10317_17814_9842#PolymorphicMapType_10317| (Array T@Ref T@Field_5562_5480 Bool)) (|PolymorphicMapType_10317_17814_14221#PolymorphicMapType_10317| (Array T@Ref T@Field_17814_17815 Bool)) (|PolymorphicMapType_10317_17814_39160#PolymorphicMapType_10317| (Array T@Ref T@Field_17827_17832 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9768 0)) (((PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| (Array T@Ref T@Field_9828_53 Bool)) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| (Array T@Ref T@Field_9841_9842 T@Ref)) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| (Array T@Ref T@Field_14220_14221 T@FrameType)) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| (Array T@Ref T@Field_14750_14751 T@FrameType)) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| (Array T@Ref T@Field_17814_17815 T@FrameType)) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| (Array T@Ref T@Field_17827_17832 T@PolymorphicMapType_10317)) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| (Array T@Ref T@Field_5479_5529 T@FrameType)) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| (Array T@Ref T@Field_5479_14238 T@PolymorphicMapType_10317)) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| (Array T@Ref T@Field_5528_5480 T@Ref)) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| (Array T@Ref T@Field_5528_53 Bool)) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| (Array T@Ref T@Field_14763_14768 T@PolymorphicMapType_10317)) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| (Array T@Ref T@Field_5562_5480 T@Ref)) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| (Array T@Ref T@Field_5562_53 Bool)) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| (Array T@Ref T@Field_14220_5480 T@Ref)) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| (Array T@Ref T@Field_14220_53 Bool)) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| (Array T@Ref T@Field_14233_14238 T@PolymorphicMapType_10317)) ) ) ))
(declare-fun $allocated () T@Field_9828_53)
(declare-fun f_7 () T@Field_9841_9842)
(declare-fun g () T@Field_9841_9842)
(declare-fun succHeap (T@PolymorphicMapType_9768 T@PolymorphicMapType_9768) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9768 T@PolymorphicMapType_9768) Bool)
(declare-fun |P2#condqp2| (T@PolymorphicMapType_9768 T@Ref) Int)
(declare-fun one_1 (T@PolymorphicMapType_9768) Int)
(declare-fun two_1 (T@PolymorphicMapType_9768) Int)
(declare-fun null () T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun Q (T@Ref) T@Field_14220_14221)
(declare-fun state (T@PolymorphicMapType_9768 T@PolymorphicMapType_9789) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9789) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10317)
(declare-fun IsPredicateField_5506_5507 (T@Field_14220_14221) Bool)
(declare-fun P (T@Ref) T@Field_14750_14751)
(declare-fun IsPredicateField_5528_5529 (T@Field_14750_14751) Bool)
(declare-fun P2 (T@Ref) T@Field_17814_17815)
(declare-fun IsPredicateField_5562_5563 (T@Field_17814_17815) Bool)
(declare-fun |Q#trigger_5506| (T@PolymorphicMapType_9768 T@Field_14220_14221) Bool)
(declare-fun |Q#everUsed_5506| (T@Field_14220_14221) Bool)
(declare-fun |P#trigger_5528| (T@PolymorphicMapType_9768 T@Field_14750_14751) Bool)
(declare-fun |P#everUsed_5528| (T@Field_14750_14751) Bool)
(declare-fun |P2#trigger_5562| (T@PolymorphicMapType_9768 T@Field_17814_17815) Bool)
(declare-fun |P2#everUsed_5562| (T@Field_17814_17815) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9768 T@PolymorphicMapType_9768 T@PolymorphicMapType_9789) Bool)
(declare-fun PredicateMaskField_5506 (T@Field_14220_14221) T@Field_14233_14238)
(declare-fun HasDirectPerm_14220_5529 (T@PolymorphicMapType_9789 T@Ref T@Field_14220_14221) Bool)
(declare-fun PredicateMaskField_5562 (T@Field_17814_17815) T@Field_17827_17832)
(declare-fun HasDirectPerm_5562_5563 (T@PolymorphicMapType_9789 T@Ref T@Field_17814_17815) Bool)
(declare-fun PredicateMaskField_5528 (T@Field_14750_14751) T@Field_14763_14768)
(declare-fun HasDirectPerm_5528_5529 (T@PolymorphicMapType_9789 T@Ref T@Field_14750_14751) Bool)
(declare-fun IsPredicateField_5479_34674 (T@Field_5479_5529) Bool)
(declare-fun PredicateMaskField_5479 (T@Field_5479_5529) T@Field_5479_14238)
(declare-fun HasDirectPerm_5479_5529 (T@PolymorphicMapType_9789 T@Ref T@Field_5479_5529) Bool)
(declare-fun IsWandField_14220_41601 (T@Field_14220_14221) Bool)
(declare-fun WandMaskField_14220 (T@Field_14220_14221) T@Field_14233_14238)
(declare-fun IsWandField_5562_41244 (T@Field_17814_17815) Bool)
(declare-fun WandMaskField_5562 (T@Field_17814_17815) T@Field_17827_17832)
(declare-fun IsWandField_5528_40887 (T@Field_14750_14751) Bool)
(declare-fun WandMaskField_5528 (T@Field_14750_14751) T@Field_14763_14768)
(declare-fun IsWandField_5479_40530 (T@Field_5479_5529) Bool)
(declare-fun WandMaskField_5479 (T@Field_5479_5529) T@Field_5479_14238)
(declare-fun |Q#sm| (T@Ref) T@Field_14233_14238)
(declare-fun |P#sm| (T@Ref) T@Field_14763_14768)
(declare-fun |P2#sm| (T@Ref) T@Field_17827_17832)
(declare-fun dummyHeap () T@PolymorphicMapType_9768)
(declare-fun ZeroMask () T@PolymorphicMapType_9789)
(declare-fun InsidePredicate_17814_17814 (T@Field_17814_17815 T@FrameType T@Field_17814_17815 T@FrameType) Bool)
(declare-fun InsidePredicate_14750_14750 (T@Field_14750_14751 T@FrameType T@Field_14750_14751 T@FrameType) Bool)
(declare-fun InsidePredicate_14220_14220 (T@Field_14220_14221 T@FrameType T@Field_14220_14221 T@FrameType) Bool)
(declare-fun InsidePredicate_9828_9828 (T@Field_5479_5529 T@FrameType T@Field_5479_5529 T@FrameType) Bool)
(declare-fun IsPredicateField_5479_5480 (T@Field_9841_9842) Bool)
(declare-fun IsWandField_5479_5480 (T@Field_9841_9842) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5562_52866 (T@Field_17827_17832) Bool)
(declare-fun IsWandField_5562_52882 (T@Field_17827_17832) Bool)
(declare-fun IsPredicateField_5562_53 (T@Field_5562_53) Bool)
(declare-fun IsWandField_5562_53 (T@Field_5562_53) Bool)
(declare-fun IsPredicateField_5562_5480 (T@Field_5562_5480) Bool)
(declare-fun IsWandField_5562_5480 (T@Field_5562_5480) Bool)
(declare-fun IsPredicateField_5528_52203 (T@Field_14763_14768) Bool)
(declare-fun IsWandField_5528_52219 (T@Field_14763_14768) Bool)
(declare-fun IsPredicateField_5528_53 (T@Field_5528_53) Bool)
(declare-fun IsWandField_5528_53 (T@Field_5528_53) Bool)
(declare-fun IsPredicateField_5528_5480 (T@Field_5528_5480) Bool)
(declare-fun IsWandField_5528_5480 (T@Field_5528_5480) Bool)
(declare-fun IsPredicateField_5506_51540 (T@Field_14233_14238) Bool)
(declare-fun IsWandField_5506_51556 (T@Field_14233_14238) Bool)
(declare-fun IsPredicateField_5506_53 (T@Field_14220_53) Bool)
(declare-fun IsWandField_5506_53 (T@Field_14220_53) Bool)
(declare-fun IsPredicateField_5506_5480 (T@Field_14220_5480) Bool)
(declare-fun IsWandField_5506_5480 (T@Field_14220_5480) Bool)
(declare-fun IsPredicateField_5479_50877 (T@Field_5479_14238) Bool)
(declare-fun IsWandField_5479_50893 (T@Field_5479_14238) Bool)
(declare-fun IsPredicateField_5479_53 (T@Field_9828_53) Bool)
(declare-fun IsWandField_5479_53 (T@Field_9828_53) Bool)
(declare-fun HasDirectPerm_14220_34386 (T@PolymorphicMapType_9789 T@Ref T@Field_14233_14238) Bool)
(declare-fun HasDirectPerm_14220_53 (T@PolymorphicMapType_9789 T@Ref T@Field_14220_53) Bool)
(declare-fun HasDirectPerm_14220_5480 (T@PolymorphicMapType_9789 T@Ref T@Field_14220_5480) Bool)
(declare-fun HasDirectPerm_5562_33489 (T@PolymorphicMapType_9789 T@Ref T@Field_17827_17832) Bool)
(declare-fun HasDirectPerm_5562_53 (T@PolymorphicMapType_9789 T@Ref T@Field_5562_53) Bool)
(declare-fun HasDirectPerm_5562_5480 (T@PolymorphicMapType_9789 T@Ref T@Field_5562_5480) Bool)
(declare-fun HasDirectPerm_5528_32569 (T@PolymorphicMapType_9789 T@Ref T@Field_14763_14768) Bool)
(declare-fun HasDirectPerm_5528_53 (T@PolymorphicMapType_9789 T@Ref T@Field_5528_53) Bool)
(declare-fun HasDirectPerm_5528_5480 (T@PolymorphicMapType_9789 T@Ref T@Field_5528_5480) Bool)
(declare-fun HasDirectPerm_5479_31649 (T@PolymorphicMapType_9789 T@Ref T@Field_5479_14238) Bool)
(declare-fun HasDirectPerm_5479_53 (T@PolymorphicMapType_9789 T@Ref T@Field_9828_53) Bool)
(declare-fun HasDirectPerm_5479_5480 (T@PolymorphicMapType_9789 T@Ref T@Field_9841_9842) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |one'| (T@PolymorphicMapType_9768) Int)
(declare-fun dummyFunction_1486 (Int) Bool)
(declare-fun |one#triggerStateless| () Int)
(declare-fun |two'| (T@PolymorphicMapType_9768) Int)
(declare-fun |two#triggerStateless| () Int)
(declare-fun sumMask (T@PolymorphicMapType_9789 T@PolymorphicMapType_9789 T@PolymorphicMapType_9789) Bool)
(declare-fun getPredWandId_5506_5507 (T@Field_14220_14221) Int)
(declare-fun getPredWandId_5528_5529 (T@Field_14750_14751) Int)
(declare-fun getPredWandId_5562_5563 (T@Field_17814_17815) Int)
(declare-fun |one#frame| (T@FrameType) Int)
(declare-fun |two#frame| (T@FrameType) Int)
(declare-fun |P#condqp1| (T@PolymorphicMapType_9768 T@Ref) Int)
(declare-fun InsidePredicate_17814_14750 (T@Field_17814_17815 T@FrameType T@Field_14750_14751 T@FrameType) Bool)
(declare-fun InsidePredicate_17814_14220 (T@Field_17814_17815 T@FrameType T@Field_14220_14221 T@FrameType) Bool)
(declare-fun InsidePredicate_17814_9828 (T@Field_17814_17815 T@FrameType T@Field_5479_5529 T@FrameType) Bool)
(declare-fun InsidePredicate_14750_17814 (T@Field_14750_14751 T@FrameType T@Field_17814_17815 T@FrameType) Bool)
(declare-fun InsidePredicate_14750_14220 (T@Field_14750_14751 T@FrameType T@Field_14220_14221 T@FrameType) Bool)
(declare-fun InsidePredicate_14750_9828 (T@Field_14750_14751 T@FrameType T@Field_5479_5529 T@FrameType) Bool)
(declare-fun InsidePredicate_14220_17814 (T@Field_14220_14221 T@FrameType T@Field_17814_17815 T@FrameType) Bool)
(declare-fun InsidePredicate_14220_14750 (T@Field_14220_14221 T@FrameType T@Field_14750_14751 T@FrameType) Bool)
(declare-fun InsidePredicate_14220_9828 (T@Field_14220_14221 T@FrameType T@Field_5479_5529 T@FrameType) Bool)
(declare-fun InsidePredicate_9828_17814 (T@Field_5479_5529 T@FrameType T@Field_17814_17815 T@FrameType) Bool)
(declare-fun InsidePredicate_9828_14750 (T@Field_5479_5529 T@FrameType T@Field_14750_14751 T@FrameType) Bool)
(declare-fun InsidePredicate_9828_14220 (T@Field_5479_5529 T@FrameType T@Field_14220_14221 T@FrameType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_9768) (Heap1 T@PolymorphicMapType_9768) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_9768) (Heap1Heap T@PolymorphicMapType_9768) (x T@Ref) ) (!  (=> (and (=  (and (and (= (one_1 Heap2Heap) (two_1 Heap2Heap)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap2Heap) x f_7) null))) (< NoPerm FullPerm))  (and (and (= (one_1 Heap1Heap) (two_1 Heap1Heap)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap1Heap) x f_7) null))) (< NoPerm FullPerm))) (=> (and (and (= (one_1 Heap2Heap) (two_1 Heap2Heap)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap2Heap) x f_7) null))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap2Heap) null (Q (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap2Heap) x g))) (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap1Heap) null (Q (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap1Heap) x g)))))) (= (|P2#condqp2| Heap2Heap x) (|P2#condqp2| Heap1Heap x)))
 :qid |stdinbpl.515:15|
 :skolemid |55|
 :pattern ( (|P2#condqp2| Heap2Heap x) (|P2#condqp2| Heap1Heap x) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap T@PolymorphicMapType_9768) (Mask T@PolymorphicMapType_9789) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9768) (Heap1@@0 T@PolymorphicMapType_9768) (Heap2 T@PolymorphicMapType_9768) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17827_17832) ) (!  (not (select (|PolymorphicMapType_10317_17814_39160#PolymorphicMapType_10317| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_17814_39160#PolymorphicMapType_10317| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17814_17815) ) (!  (not (select (|PolymorphicMapType_10317_17814_14221#PolymorphicMapType_10317| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_17814_14221#PolymorphicMapType_10317| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5562_5480) ) (!  (not (select (|PolymorphicMapType_10317_17814_9842#PolymorphicMapType_10317| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_17814_9842#PolymorphicMapType_10317| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5562_53) ) (!  (not (select (|PolymorphicMapType_10317_17814_53#PolymorphicMapType_10317| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_17814_53#PolymorphicMapType_10317| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14763_14768) ) (!  (not (select (|PolymorphicMapType_10317_14750_38310#PolymorphicMapType_10317| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_14750_38310#PolymorphicMapType_10317| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_14750_14751) ) (!  (not (select (|PolymorphicMapType_10317_14750_14221#PolymorphicMapType_10317| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_14750_14221#PolymorphicMapType_10317| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5528_5480) ) (!  (not (select (|PolymorphicMapType_10317_14750_9842#PolymorphicMapType_10317| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_14750_9842#PolymorphicMapType_10317| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5528_53) ) (!  (not (select (|PolymorphicMapType_10317_14750_53#PolymorphicMapType_10317| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_14750_53#PolymorphicMapType_10317| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_14233_14238) ) (!  (not (select (|PolymorphicMapType_10317_14220_37460#PolymorphicMapType_10317| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_14220_37460#PolymorphicMapType_10317| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_14220_14221) ) (!  (not (select (|PolymorphicMapType_10317_14220_14221#PolymorphicMapType_10317| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_14220_14221#PolymorphicMapType_10317| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_14220_5480) ) (!  (not (select (|PolymorphicMapType_10317_14220_9842#PolymorphicMapType_10317| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_14220_9842#PolymorphicMapType_10317| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_14220_53) ) (!  (not (select (|PolymorphicMapType_10317_14220_53#PolymorphicMapType_10317| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_14220_53#PolymorphicMapType_10317| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5479_14238) ) (!  (not (select (|PolymorphicMapType_10317_9828_36610#PolymorphicMapType_10317| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_9828_36610#PolymorphicMapType_10317| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5479_5529) ) (!  (not (select (|PolymorphicMapType_10317_9828_14221#PolymorphicMapType_10317| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_9828_14221#PolymorphicMapType_10317| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9841_9842) ) (!  (not (select (|PolymorphicMapType_10317_9828_9842#PolymorphicMapType_10317| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_9828_9842#PolymorphicMapType_10317| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9828_53) ) (!  (not (select (|PolymorphicMapType_10317_9828_53#PolymorphicMapType_10317| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10317_9828_53#PolymorphicMapType_10317| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_5506_5507 (Q x@@0))
 :qid |stdinbpl.332:15|
 :skolemid |31|
 :pattern ( (Q x@@0))
)))
(assert (forall ((x@@1 T@Ref) ) (! (IsPredicateField_5528_5529 (P x@@1))
 :qid |stdinbpl.367:15|
 :skolemid |37|
 :pattern ( (P x@@1))
)))
(assert (forall ((x@@2 T@Ref) ) (! (IsPredicateField_5562_5563 (P2 x@@2))
 :qid |stdinbpl.485:15|
 :skolemid |50|
 :pattern ( (P2 x@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9768) (x@@3 T@Ref) ) (! (|Q#everUsed_5506| (Q x@@3))
 :qid |stdinbpl.351:15|
 :skolemid |35|
 :pattern ( (|Q#trigger_5506| Heap@@0 (Q x@@3)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9768) (x@@4 T@Ref) ) (! (|P#everUsed_5528| (P x@@4))
 :qid |stdinbpl.386:15|
 :skolemid |41|
 :pattern ( (|P#trigger_5528| Heap@@1 (P x@@4)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9768) (x@@5 T@Ref) ) (! (|P2#everUsed_5562| (P2 x@@5))
 :qid |stdinbpl.504:15|
 :skolemid |54|
 :pattern ( (|P2#trigger_5562| Heap@@2 (P2 x@@5)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9768) (ExhaleHeap T@PolymorphicMapType_9768) (Mask@@0 T@PolymorphicMapType_9789) (pm_f_1 T@Field_14220_14221) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_14220_5529 Mask@@0 null pm_f_1) (IsPredicateField_5506_5507 pm_f_1)) (= (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@3) null (PredicateMaskField_5506 pm_f_1)) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap) null (PredicateMaskField_5506 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_5506_5507 pm_f_1) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap) null (PredicateMaskField_5506 pm_f_1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9768) (ExhaleHeap@@0 T@PolymorphicMapType_9768) (Mask@@1 T@PolymorphicMapType_9789) (pm_f_1@@0 T@Field_17814_17815) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5562_5563 Mask@@1 null pm_f_1@@0) (IsPredicateField_5562_5563 pm_f_1@@0)) (= (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@4) null (PredicateMaskField_5562 pm_f_1@@0)) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@0) null (PredicateMaskField_5562 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5562_5563 pm_f_1@@0) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@0) null (PredicateMaskField_5562 pm_f_1@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9768) (ExhaleHeap@@1 T@PolymorphicMapType_9768) (Mask@@2 T@PolymorphicMapType_9789) (pm_f_1@@1 T@Field_14750_14751) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5528_5529 Mask@@2 null pm_f_1@@1) (IsPredicateField_5528_5529 pm_f_1@@1)) (= (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@5) null (PredicateMaskField_5528 pm_f_1@@1)) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@1) null (PredicateMaskField_5528 pm_f_1@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5528_5529 pm_f_1@@1) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@1) null (PredicateMaskField_5528 pm_f_1@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9768) (ExhaleHeap@@2 T@PolymorphicMapType_9768) (Mask@@3 T@PolymorphicMapType_9789) (pm_f_1@@2 T@Field_5479_5529) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5479_5529 Mask@@3 null pm_f_1@@2) (IsPredicateField_5479_34674 pm_f_1@@2)) (= (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@6) null (PredicateMaskField_5479 pm_f_1@@2)) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@2) null (PredicateMaskField_5479 pm_f_1@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsPredicateField_5479_34674 pm_f_1@@2) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@2) null (PredicateMaskField_5479 pm_f_1@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9768) (ExhaleHeap@@3 T@PolymorphicMapType_9768) (Mask@@4 T@PolymorphicMapType_9789) (pm_f_1@@3 T@Field_14220_14221) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_14220_5529 Mask@@4 null pm_f_1@@3) (IsWandField_14220_41601 pm_f_1@@3)) (= (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@7) null (WandMaskField_14220 pm_f_1@@3)) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@3) null (WandMaskField_14220 pm_f_1@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsWandField_14220_41601 pm_f_1@@3) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@3) null (WandMaskField_14220 pm_f_1@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9768) (ExhaleHeap@@4 T@PolymorphicMapType_9768) (Mask@@5 T@PolymorphicMapType_9789) (pm_f_1@@4 T@Field_17814_17815) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5562_5563 Mask@@5 null pm_f_1@@4) (IsWandField_5562_41244 pm_f_1@@4)) (= (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@8) null (WandMaskField_5562 pm_f_1@@4)) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@4) null (WandMaskField_5562 pm_f_1@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsWandField_5562_41244 pm_f_1@@4) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@4) null (WandMaskField_5562 pm_f_1@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9768) (ExhaleHeap@@5 T@PolymorphicMapType_9768) (Mask@@6 T@PolymorphicMapType_9789) (pm_f_1@@5 T@Field_14750_14751) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5528_5529 Mask@@6 null pm_f_1@@5) (IsWandField_5528_40887 pm_f_1@@5)) (= (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@9) null (WandMaskField_5528 pm_f_1@@5)) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@5) null (WandMaskField_5528 pm_f_1@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_5528_40887 pm_f_1@@5) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@5) null (WandMaskField_5528 pm_f_1@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9768) (ExhaleHeap@@6 T@PolymorphicMapType_9768) (Mask@@7 T@PolymorphicMapType_9789) (pm_f_1@@6 T@Field_5479_5529) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5479_5529 Mask@@7 null pm_f_1@@6) (IsWandField_5479_40530 pm_f_1@@6)) (= (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@10) null (WandMaskField_5479 pm_f_1@@6)) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@6) null (WandMaskField_5479 pm_f_1@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_5479_40530 pm_f_1@@6) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@6) null (WandMaskField_5479 pm_f_1@@6)))
)))
(assert (forall ((x@@6 T@Ref) (x2 T@Ref) ) (!  (=> (= (Q x@@6) (Q x2)) (= x@@6 x2))
 :qid |stdinbpl.342:15|
 :skolemid |33|
 :pattern ( (Q x@@6) (Q x2))
)))
(assert (forall ((x@@7 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|Q#sm| x@@7) (|Q#sm| x2@@0)) (= x@@7 x2@@0))
 :qid |stdinbpl.346:15|
 :skolemid |34|
 :pattern ( (|Q#sm| x@@7) (|Q#sm| x2@@0))
)))
(assert (forall ((x@@8 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (P x@@8) (P x2@@1)) (= x@@8 x2@@1))
 :qid |stdinbpl.377:15|
 :skolemid |39|
 :pattern ( (P x@@8) (P x2@@1))
)))
(assert (forall ((x@@9 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|P#sm| x@@9) (|P#sm| x2@@2)) (= x@@9 x2@@2))
 :qid |stdinbpl.381:15|
 :skolemid |40|
 :pattern ( (|P#sm| x@@9) (|P#sm| x2@@2))
)))
(assert (forall ((x@@10 T@Ref) (x2@@3 T@Ref) ) (!  (=> (= (P2 x@@10) (P2 x2@@3)) (= x@@10 x2@@3))
 :qid |stdinbpl.495:15|
 :skolemid |52|
 :pattern ( (P2 x@@10) (P2 x2@@3))
)))
(assert (forall ((x@@11 T@Ref) (x2@@4 T@Ref) ) (!  (=> (= (|P2#sm| x@@11) (|P2#sm| x2@@4)) (= x@@11 x2@@4))
 :qid |stdinbpl.499:15|
 :skolemid |53|
 :pattern ( (|P2#sm| x@@11) (|P2#sm| x2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9768) (ExhaleHeap@@7 T@PolymorphicMapType_9768) (Mask@@8 T@PolymorphicMapType_9789) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@11) o_4 $allocated) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@7) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@7) o_4 $allocated))
)))
(assert (forall ((p T@Field_17814_17815) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17814_17814 p v_1 p w))
 :qid |stdinbpl.205:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17814_17814 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14750_14751) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_14750_14750 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.205:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14750_14750 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_14220_14221) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_14220_14220 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.205:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14220_14220 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_5479_5529) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_9828_9828 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.205:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9828_9828 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_5479_5480 f_7)))
(assert  (not (IsWandField_5479_5480 f_7)))
(assert  (not (IsPredicateField_5479_5480 g)))
(assert  (not (IsWandField_5479_5480 g)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9768) (ExhaleHeap@@8 T@PolymorphicMapType_9768) (Mask@@9 T@PolymorphicMapType_9789) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9789) (o_2@@15 T@Ref) (f_4@@15 T@Field_17827_17832) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| Mask@@10) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5562_52866 f_4@@15))) (not (IsWandField_5562_52882 f_4@@15))) (<= (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| Mask@@10) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| Mask@@10) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9789) (o_2@@16 T@Ref) (f_4@@16 T@Field_5562_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| Mask@@11) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5562_53 f_4@@16))) (not (IsWandField_5562_53 f_4@@16))) (<= (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| Mask@@11) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| Mask@@11) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9789) (o_2@@17 T@Ref) (f_4@@17 T@Field_17814_17815) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| Mask@@12) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5562_5563 f_4@@17))) (not (IsWandField_5562_41244 f_4@@17))) (<= (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| Mask@@12) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| Mask@@12) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9789) (o_2@@18 T@Ref) (f_4@@18 T@Field_5562_5480) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| Mask@@13) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5562_5480 f_4@@18))) (not (IsWandField_5562_5480 f_4@@18))) (<= (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| Mask@@13) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| Mask@@13) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9789) (o_2@@19 T@Ref) (f_4@@19 T@Field_14763_14768) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| Mask@@14) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5528_52203 f_4@@19))) (not (IsWandField_5528_52219 f_4@@19))) (<= (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| Mask@@14) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| Mask@@14) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9789) (o_2@@20 T@Ref) (f_4@@20 T@Field_5528_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| Mask@@15) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5528_53 f_4@@20))) (not (IsWandField_5528_53 f_4@@20))) (<= (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| Mask@@15) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| Mask@@15) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9789) (o_2@@21 T@Ref) (f_4@@21 T@Field_14750_14751) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| Mask@@16) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5528_5529 f_4@@21))) (not (IsWandField_5528_40887 f_4@@21))) (<= (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| Mask@@16) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| Mask@@16) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9789) (o_2@@22 T@Ref) (f_4@@22 T@Field_5528_5480) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| Mask@@17) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5528_5480 f_4@@22))) (not (IsWandField_5528_5480 f_4@@22))) (<= (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| Mask@@17) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| Mask@@17) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9789) (o_2@@23 T@Ref) (f_4@@23 T@Field_14233_14238) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| Mask@@18) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5506_51540 f_4@@23))) (not (IsWandField_5506_51556 f_4@@23))) (<= (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| Mask@@18) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| Mask@@18) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9789) (o_2@@24 T@Ref) (f_4@@24 T@Field_14220_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| Mask@@19) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5506_53 f_4@@24))) (not (IsWandField_5506_53 f_4@@24))) (<= (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| Mask@@19) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| Mask@@19) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9789) (o_2@@25 T@Ref) (f_4@@25 T@Field_14220_14221) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| Mask@@20) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5506_5507 f_4@@25))) (not (IsWandField_14220_41601 f_4@@25))) (<= (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| Mask@@20) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| Mask@@20) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9789) (o_2@@26 T@Ref) (f_4@@26 T@Field_14220_5480) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| Mask@@21) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5506_5480 f_4@@26))) (not (IsWandField_5506_5480 f_4@@26))) (<= (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| Mask@@21) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| Mask@@21) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9789) (o_2@@27 T@Ref) (f_4@@27 T@Field_5479_14238) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| Mask@@22) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5479_50877 f_4@@27))) (not (IsWandField_5479_50893 f_4@@27))) (<= (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| Mask@@22) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| Mask@@22) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9789) (o_2@@28 T@Ref) (f_4@@28 T@Field_9828_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| Mask@@23) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5479_53 f_4@@28))) (not (IsWandField_5479_53 f_4@@28))) (<= (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| Mask@@23) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| Mask@@23) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9789) (o_2@@29 T@Ref) (f_4@@29 T@Field_5479_5529) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| Mask@@24) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5479_34674 f_4@@29))) (not (IsWandField_5479_40530 f_4@@29))) (<= (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| Mask@@24) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| Mask@@24) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9789) (o_2@@30 T@Ref) (f_4@@30 T@Field_9841_9842) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| Mask@@25) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5479_5480 f_4@@30))) (not (IsWandField_5479_5480 f_4@@30))) (<= (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| Mask@@25) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| Mask@@25) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9789) (o_2@@31 T@Ref) (f_4@@31 T@Field_14233_14238) ) (! (= (HasDirectPerm_14220_34386 Mask@@26 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| Mask@@26) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14220_34386 Mask@@26 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9789) (o_2@@32 T@Ref) (f_4@@32 T@Field_14220_53) ) (! (= (HasDirectPerm_14220_53 Mask@@27 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| Mask@@27) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14220_53 Mask@@27 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9789) (o_2@@33 T@Ref) (f_4@@33 T@Field_14220_14221) ) (! (= (HasDirectPerm_14220_5529 Mask@@28 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| Mask@@28) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14220_5529 Mask@@28 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9789) (o_2@@34 T@Ref) (f_4@@34 T@Field_14220_5480) ) (! (= (HasDirectPerm_14220_5480 Mask@@29 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| Mask@@29) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14220_5480 Mask@@29 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9789) (o_2@@35 T@Ref) (f_4@@35 T@Field_17827_17832) ) (! (= (HasDirectPerm_5562_33489 Mask@@30 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| Mask@@30) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5562_33489 Mask@@30 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9789) (o_2@@36 T@Ref) (f_4@@36 T@Field_5562_53) ) (! (= (HasDirectPerm_5562_53 Mask@@31 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| Mask@@31) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5562_53 Mask@@31 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9789) (o_2@@37 T@Ref) (f_4@@37 T@Field_17814_17815) ) (! (= (HasDirectPerm_5562_5563 Mask@@32 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| Mask@@32) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5562_5563 Mask@@32 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9789) (o_2@@38 T@Ref) (f_4@@38 T@Field_5562_5480) ) (! (= (HasDirectPerm_5562_5480 Mask@@33 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| Mask@@33) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5562_5480 Mask@@33 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9789) (o_2@@39 T@Ref) (f_4@@39 T@Field_14763_14768) ) (! (= (HasDirectPerm_5528_32569 Mask@@34 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| Mask@@34) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5528_32569 Mask@@34 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_9789) (o_2@@40 T@Ref) (f_4@@40 T@Field_5528_53) ) (! (= (HasDirectPerm_5528_53 Mask@@35 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| Mask@@35) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5528_53 Mask@@35 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_9789) (o_2@@41 T@Ref) (f_4@@41 T@Field_14750_14751) ) (! (= (HasDirectPerm_5528_5529 Mask@@36 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| Mask@@36) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5528_5529 Mask@@36 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_9789) (o_2@@42 T@Ref) (f_4@@42 T@Field_5528_5480) ) (! (= (HasDirectPerm_5528_5480 Mask@@37 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| Mask@@37) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5528_5480 Mask@@37 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_9789) (o_2@@43 T@Ref) (f_4@@43 T@Field_5479_14238) ) (! (= (HasDirectPerm_5479_31649 Mask@@38 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| Mask@@38) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5479_31649 Mask@@38 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_9789) (o_2@@44 T@Ref) (f_4@@44 T@Field_9828_53) ) (! (= (HasDirectPerm_5479_53 Mask@@39 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| Mask@@39) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5479_53 Mask@@39 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_9789) (o_2@@45 T@Ref) (f_4@@45 T@Field_5479_5529) ) (! (= (HasDirectPerm_5479_5529 Mask@@40 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| Mask@@40) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5479_5529 Mask@@40 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_9789) (o_2@@46 T@Ref) (f_4@@46 T@Field_9841_9842) ) (! (= (HasDirectPerm_5479_5480 Mask@@41 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| Mask@@41) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5479_5480 Mask@@41 o_2@@46 f_4@@46))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.193:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9768) (ExhaleHeap@@9 T@PolymorphicMapType_9768) (Mask@@42 T@PolymorphicMapType_9789) (o_4@@0 T@Ref) (f_9 T@Field_14233_14238) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@42) (=> (HasDirectPerm_14220_34386 Mask@@42 o_4@@0 f_9) (= (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@13) o_4@@0 f_9) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@9) o_4@@0 f_9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@42) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@9) o_4@@0 f_9))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9768) (ExhaleHeap@@10 T@PolymorphicMapType_9768) (Mask@@43 T@PolymorphicMapType_9789) (o_4@@1 T@Ref) (f_9@@0 T@Field_14220_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@43) (=> (HasDirectPerm_14220_53 Mask@@43 o_4@@1 f_9@@0) (= (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@14) o_4@@1 f_9@@0) (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@10) o_4@@1 f_9@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@43) (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@10) o_4@@1 f_9@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9768) (ExhaleHeap@@11 T@PolymorphicMapType_9768) (Mask@@44 T@PolymorphicMapType_9789) (o_4@@2 T@Ref) (f_9@@1 T@Field_14220_14221) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@44) (=> (HasDirectPerm_14220_5529 Mask@@44 o_4@@2 f_9@@1) (= (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@15) o_4@@2 f_9@@1) (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@11) o_4@@2 f_9@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@44) (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@11) o_4@@2 f_9@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9768) (ExhaleHeap@@12 T@PolymorphicMapType_9768) (Mask@@45 T@PolymorphicMapType_9789) (o_4@@3 T@Ref) (f_9@@2 T@Field_14220_5480) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@45) (=> (HasDirectPerm_14220_5480 Mask@@45 o_4@@3 f_9@@2) (= (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@16) o_4@@3 f_9@@2) (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@12) o_4@@3 f_9@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@45) (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@12) o_4@@3 f_9@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9768) (ExhaleHeap@@13 T@PolymorphicMapType_9768) (Mask@@46 T@PolymorphicMapType_9789) (o_4@@4 T@Ref) (f_9@@3 T@Field_17827_17832) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@46) (=> (HasDirectPerm_5562_33489 Mask@@46 o_4@@4 f_9@@3) (= (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@17) o_4@@4 f_9@@3) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@13) o_4@@4 f_9@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@46) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@13) o_4@@4 f_9@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9768) (ExhaleHeap@@14 T@PolymorphicMapType_9768) (Mask@@47 T@PolymorphicMapType_9789) (o_4@@5 T@Ref) (f_9@@4 T@Field_5562_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@47) (=> (HasDirectPerm_5562_53 Mask@@47 o_4@@5 f_9@@4) (= (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@18) o_4@@5 f_9@@4) (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@14) o_4@@5 f_9@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@47) (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@14) o_4@@5 f_9@@4))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9768) (ExhaleHeap@@15 T@PolymorphicMapType_9768) (Mask@@48 T@PolymorphicMapType_9789) (o_4@@6 T@Ref) (f_9@@5 T@Field_17814_17815) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@48) (=> (HasDirectPerm_5562_5563 Mask@@48 o_4@@6 f_9@@5) (= (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@19) o_4@@6 f_9@@5) (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@15) o_4@@6 f_9@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@48) (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@15) o_4@@6 f_9@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9768) (ExhaleHeap@@16 T@PolymorphicMapType_9768) (Mask@@49 T@PolymorphicMapType_9789) (o_4@@7 T@Ref) (f_9@@6 T@Field_5562_5480) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@49) (=> (HasDirectPerm_5562_5480 Mask@@49 o_4@@7 f_9@@6) (= (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@20) o_4@@7 f_9@@6) (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@16) o_4@@7 f_9@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@49) (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@16) o_4@@7 f_9@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9768) (ExhaleHeap@@17 T@PolymorphicMapType_9768) (Mask@@50 T@PolymorphicMapType_9789) (o_4@@8 T@Ref) (f_9@@7 T@Field_14763_14768) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@50) (=> (HasDirectPerm_5528_32569 Mask@@50 o_4@@8 f_9@@7) (= (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@21) o_4@@8 f_9@@7) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@17) o_4@@8 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@50) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@17) o_4@@8 f_9@@7))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9768) (ExhaleHeap@@18 T@PolymorphicMapType_9768) (Mask@@51 T@PolymorphicMapType_9789) (o_4@@9 T@Ref) (f_9@@8 T@Field_5528_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@51) (=> (HasDirectPerm_5528_53 Mask@@51 o_4@@9 f_9@@8) (= (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@22) o_4@@9 f_9@@8) (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@18) o_4@@9 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@51) (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@18) o_4@@9 f_9@@8))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9768) (ExhaleHeap@@19 T@PolymorphicMapType_9768) (Mask@@52 T@PolymorphicMapType_9789) (o_4@@10 T@Ref) (f_9@@9 T@Field_14750_14751) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@52) (=> (HasDirectPerm_5528_5529 Mask@@52 o_4@@10 f_9@@9) (= (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@23) o_4@@10 f_9@@9) (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@19) o_4@@10 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@52) (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@19) o_4@@10 f_9@@9))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9768) (ExhaleHeap@@20 T@PolymorphicMapType_9768) (Mask@@53 T@PolymorphicMapType_9789) (o_4@@11 T@Ref) (f_9@@10 T@Field_5528_5480) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@53) (=> (HasDirectPerm_5528_5480 Mask@@53 o_4@@11 f_9@@10) (= (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@24) o_4@@11 f_9@@10) (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@20) o_4@@11 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@53) (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@20) o_4@@11 f_9@@10))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9768) (ExhaleHeap@@21 T@PolymorphicMapType_9768) (Mask@@54 T@PolymorphicMapType_9789) (o_4@@12 T@Ref) (f_9@@11 T@Field_5479_14238) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@54) (=> (HasDirectPerm_5479_31649 Mask@@54 o_4@@12 f_9@@11) (= (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@25) o_4@@12 f_9@@11) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@21) o_4@@12 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@54) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@21) o_4@@12 f_9@@11))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9768) (ExhaleHeap@@22 T@PolymorphicMapType_9768) (Mask@@55 T@PolymorphicMapType_9789) (o_4@@13 T@Ref) (f_9@@12 T@Field_9828_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@55) (=> (HasDirectPerm_5479_53 Mask@@55 o_4@@13 f_9@@12) (= (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@26) o_4@@13 f_9@@12) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@22) o_4@@13 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@55) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@22) o_4@@13 f_9@@12))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9768) (ExhaleHeap@@23 T@PolymorphicMapType_9768) (Mask@@56 T@PolymorphicMapType_9789) (o_4@@14 T@Ref) (f_9@@13 T@Field_5479_5529) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@56) (=> (HasDirectPerm_5479_5529 Mask@@56 o_4@@14 f_9@@13) (= (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@27) o_4@@14 f_9@@13) (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@23) o_4@@14 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@56) (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@23) o_4@@14 f_9@@13))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9768) (ExhaleHeap@@24 T@PolymorphicMapType_9768) (Mask@@57 T@PolymorphicMapType_9789) (o_4@@15 T@Ref) (f_9@@14 T@Field_9841_9842) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@57) (=> (HasDirectPerm_5479_5480 Mask@@57 o_4@@15 f_9@@14) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@28) o_4@@15 f_9@@14) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@24) o_4@@15 f_9@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@57) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@24) o_4@@15 f_9@@14))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9768) ) (!  (and (= (one_1 Heap@@29) (|one'| Heap@@29)) (dummyFunction_1486 |one#triggerStateless|))
 :qid |stdinbpl.228:15|
 :skolemid |22|
 :pattern ( (one_1 Heap@@29))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9768) ) (!  (and (= (two_1 Heap@@30) (|two'| Heap@@30)) (dummyFunction_1486 |two#triggerStateless|))
 :qid |stdinbpl.278:15|
 :skolemid |26|
 :pattern ( (two_1 Heap@@30))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_17827_17832) ) (! (= (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_5562_53) ) (! (= (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_17814_17815) ) (! (= (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_5562_5480) ) (! (= (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_14763_14768) ) (! (= (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_5528_53) ) (! (= (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_14750_14751) ) (! (= (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_5528_5480) ) (! (= (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_14233_14238) ) (! (= (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_14220_53) ) (! (= (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_14220_14221) ) (! (= (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_14220_5480) ) (! (= (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_5479_14238) ) (! (= (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_9828_53) ) (! (= (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_5479_5529) ) (! (= (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_9841_9842) ) (! (= (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9789) (SummandMask1 T@PolymorphicMapType_9789) (SummandMask2 T@PolymorphicMapType_9789) (o_2@@63 T@Ref) (f_4@@63 T@Field_17827_17832) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| ResultMask) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| SummandMask1) o_2@@63 f_4@@63) (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| SummandMask2) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| ResultMask) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| SummandMask1) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| SummandMask2) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9789) (SummandMask1@@0 T@PolymorphicMapType_9789) (SummandMask2@@0 T@PolymorphicMapType_9789) (o_2@@64 T@Ref) (f_4@@64 T@Field_5562_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| ResultMask@@0) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| SummandMask1@@0) o_2@@64 f_4@@64) (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| SummandMask2@@0) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| ResultMask@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| SummandMask1@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| SummandMask2@@0) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9789) (SummandMask1@@1 T@PolymorphicMapType_9789) (SummandMask2@@1 T@PolymorphicMapType_9789) (o_2@@65 T@Ref) (f_4@@65 T@Field_17814_17815) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| ResultMask@@1) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| SummandMask1@@1) o_2@@65 f_4@@65) (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| SummandMask2@@1) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| ResultMask@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| SummandMask1@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| SummandMask2@@1) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9789) (SummandMask1@@2 T@PolymorphicMapType_9789) (SummandMask2@@2 T@PolymorphicMapType_9789) (o_2@@66 T@Ref) (f_4@@66 T@Field_5562_5480) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| ResultMask@@2) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| SummandMask1@@2) o_2@@66 f_4@@66) (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| SummandMask2@@2) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| ResultMask@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| SummandMask1@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| SummandMask2@@2) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9789) (SummandMask1@@3 T@PolymorphicMapType_9789) (SummandMask2@@3 T@PolymorphicMapType_9789) (o_2@@67 T@Ref) (f_4@@67 T@Field_14763_14768) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| ResultMask@@3) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| SummandMask1@@3) o_2@@67 f_4@@67) (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| SummandMask2@@3) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| ResultMask@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| SummandMask1@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| SummandMask2@@3) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9789) (SummandMask1@@4 T@PolymorphicMapType_9789) (SummandMask2@@4 T@PolymorphicMapType_9789) (o_2@@68 T@Ref) (f_4@@68 T@Field_5528_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| ResultMask@@4) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| SummandMask1@@4) o_2@@68 f_4@@68) (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| SummandMask2@@4) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| ResultMask@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| SummandMask1@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| SummandMask2@@4) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9789) (SummandMask1@@5 T@PolymorphicMapType_9789) (SummandMask2@@5 T@PolymorphicMapType_9789) (o_2@@69 T@Ref) (f_4@@69 T@Field_14750_14751) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| ResultMask@@5) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| SummandMask1@@5) o_2@@69 f_4@@69) (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| SummandMask2@@5) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| ResultMask@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| SummandMask1@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| SummandMask2@@5) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9789) (SummandMask1@@6 T@PolymorphicMapType_9789) (SummandMask2@@6 T@PolymorphicMapType_9789) (o_2@@70 T@Ref) (f_4@@70 T@Field_5528_5480) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| ResultMask@@6) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| SummandMask1@@6) o_2@@70 f_4@@70) (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| SummandMask2@@6) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| ResultMask@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| SummandMask1@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| SummandMask2@@6) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9789) (SummandMask1@@7 T@PolymorphicMapType_9789) (SummandMask2@@7 T@PolymorphicMapType_9789) (o_2@@71 T@Ref) (f_4@@71 T@Field_14233_14238) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| ResultMask@@7) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| SummandMask1@@7) o_2@@71 f_4@@71) (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| SummandMask2@@7) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| ResultMask@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| SummandMask1@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| SummandMask2@@7) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9789) (SummandMask1@@8 T@PolymorphicMapType_9789) (SummandMask2@@8 T@PolymorphicMapType_9789) (o_2@@72 T@Ref) (f_4@@72 T@Field_14220_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| ResultMask@@8) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| SummandMask1@@8) o_2@@72 f_4@@72) (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| SummandMask2@@8) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| ResultMask@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| SummandMask1@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| SummandMask2@@8) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9789) (SummandMask1@@9 T@PolymorphicMapType_9789) (SummandMask2@@9 T@PolymorphicMapType_9789) (o_2@@73 T@Ref) (f_4@@73 T@Field_14220_14221) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| ResultMask@@9) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| SummandMask1@@9) o_2@@73 f_4@@73) (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| SummandMask2@@9) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| ResultMask@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| SummandMask1@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| SummandMask2@@9) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9789) (SummandMask1@@10 T@PolymorphicMapType_9789) (SummandMask2@@10 T@PolymorphicMapType_9789) (o_2@@74 T@Ref) (f_4@@74 T@Field_14220_5480) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| ResultMask@@10) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| SummandMask1@@10) o_2@@74 f_4@@74) (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| SummandMask2@@10) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| ResultMask@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| SummandMask1@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| SummandMask2@@10) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_9789) (SummandMask1@@11 T@PolymorphicMapType_9789) (SummandMask2@@11 T@PolymorphicMapType_9789) (o_2@@75 T@Ref) (f_4@@75 T@Field_5479_14238) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| ResultMask@@11) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| SummandMask1@@11) o_2@@75 f_4@@75) (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| SummandMask2@@11) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| ResultMask@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| SummandMask1@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| SummandMask2@@11) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_9789) (SummandMask1@@12 T@PolymorphicMapType_9789) (SummandMask2@@12 T@PolymorphicMapType_9789) (o_2@@76 T@Ref) (f_4@@76 T@Field_9828_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| ResultMask@@12) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| SummandMask1@@12) o_2@@76 f_4@@76) (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| SummandMask2@@12) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| ResultMask@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| SummandMask1@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| SummandMask2@@12) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_9789) (SummandMask1@@13 T@PolymorphicMapType_9789) (SummandMask2@@13 T@PolymorphicMapType_9789) (o_2@@77 T@Ref) (f_4@@77 T@Field_5479_5529) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| ResultMask@@13) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| SummandMask1@@13) o_2@@77 f_4@@77) (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| SummandMask2@@13) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| ResultMask@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| SummandMask1@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| SummandMask2@@13) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_9789) (SummandMask1@@14 T@PolymorphicMapType_9789) (SummandMask2@@14 T@PolymorphicMapType_9789) (o_2@@78 T@Ref) (f_4@@78 T@Field_9841_9842) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| ResultMask@@14) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| SummandMask1@@14) o_2@@78 f_4@@78) (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| SummandMask2@@14) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| ResultMask@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| SummandMask1@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| SummandMask2@@14) o_2@@78 f_4@@78))
)))
(assert (forall ((x@@12 T@Ref) ) (! (= (getPredWandId_5506_5507 (Q x@@12)) 0)
 :qid |stdinbpl.336:15|
 :skolemid |32|
 :pattern ( (Q x@@12))
)))
(assert (forall ((x@@13 T@Ref) ) (! (= (getPredWandId_5528_5529 (P x@@13)) 1)
 :qid |stdinbpl.371:15|
 :skolemid |38|
 :pattern ( (P x@@13))
)))
(assert (forall ((x@@14 T@Ref) ) (! (= (getPredWandId_5562_5563 (P2 x@@14)) 2)
 :qid |stdinbpl.489:15|
 :skolemid |51|
 :pattern ( (P2 x@@14))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9768) ) (! (dummyFunction_1486 |one#triggerStateless|)
 :qid |stdinbpl.232:15|
 :skolemid |23|
 :pattern ( (|one'| Heap@@31))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9768) ) (! (dummyFunction_1486 |two#triggerStateless|)
 :qid |stdinbpl.282:15|
 :skolemid |27|
 :pattern ( (|two'| Heap@@32))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9768) (Mask@@58 T@PolymorphicMapType_9789) ) (!  (=> (state Heap@@33 Mask@@58) (= (|one'| Heap@@33) (|one#frame| EmptyFrame)))
 :qid |stdinbpl.245:15|
 :skolemid |25|
 :pattern ( (state Heap@@33 Mask@@58) (|one'| Heap@@33))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9768) (Mask@@59 T@PolymorphicMapType_9789) ) (!  (=> (state Heap@@34 Mask@@59) (= (|two'| Heap@@34) (|two#frame| EmptyFrame)))
 :qid |stdinbpl.295:15|
 :skolemid |29|
 :pattern ( (state Heap@@34 Mask@@59) (|two'| Heap@@34))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9768) (o_3 T@Ref) (f_10 T@Field_17827_17832) (v T@PolymorphicMapType_10317) ) (! (succHeap Heap@@35 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@35) (store (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@35) o_3 f_10 v) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@35) (store (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@35) o_3 f_10 v) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@35) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9768) (o_3@@0 T@Ref) (f_10@@0 T@Field_17814_17815) (v@@0 T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@36) (store (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@36) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@36) (store (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@36) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@36) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9768) (o_3@@1 T@Ref) (f_10@@1 T@Field_5562_5480) (v@@1 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@37) (store (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@37) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@37) (store (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@37) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@37) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9768) (o_3@@2 T@Ref) (f_10@@2 T@Field_5562_53) (v@@2 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@38) (store (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@38) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@38) (store (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@38) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@38) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9768) (o_3@@3 T@Ref) (f_10@@3 T@Field_14763_14768) (v@@3 T@PolymorphicMapType_10317) ) (! (succHeap Heap@@39 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@39) (store (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@39) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@39) (store (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@39) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@39) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9768) (o_3@@4 T@Ref) (f_10@@4 T@Field_14750_14751) (v@@4 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@40) (store (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@40) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@40) (store (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@40) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@40) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9768) (o_3@@5 T@Ref) (f_10@@5 T@Field_5528_5480) (v@@5 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@41) (store (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@41) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@41) (store (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@41) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@41) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9768) (o_3@@6 T@Ref) (f_10@@6 T@Field_5528_53) (v@@6 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@42) (store (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@42) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@42) (store (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@42) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@42) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9768) (o_3@@7 T@Ref) (f_10@@7 T@Field_14233_14238) (v@@7 T@PolymorphicMapType_10317) ) (! (succHeap Heap@@43 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@43) (store (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@43) o_3@@7 f_10@@7 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@43) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@43) (store (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@43) o_3@@7 f_10@@7 v@@7)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9768) (o_3@@8 T@Ref) (f_10@@8 T@Field_14220_14221) (v@@8 T@FrameType) ) (! (succHeap Heap@@44 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@44) (store (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@44) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@44) (store (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@44) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@44) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_9768) (o_3@@9 T@Ref) (f_10@@9 T@Field_14220_5480) (v@@9 T@Ref) ) (! (succHeap Heap@@45 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@45) (store (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@45) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@45) (store (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@45) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@45) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_9768) (o_3@@10 T@Ref) (f_10@@10 T@Field_14220_53) (v@@10 Bool) ) (! (succHeap Heap@@46 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@46) (store (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@46) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@46) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@46) (store (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@46) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_9768) (o_3@@11 T@Ref) (f_10@@11 T@Field_5479_14238) (v@@11 T@PolymorphicMapType_10317) ) (! (succHeap Heap@@47 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@47) (store (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@47) o_3@@11 f_10@@11 v@@11) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@47) (store (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@47) o_3@@11 f_10@@11 v@@11) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@47) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_9768) (o_3@@12 T@Ref) (f_10@@12 T@Field_5479_5529) (v@@12 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@48) (store (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@48) o_3@@12 f_10@@12 v@@12) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@48) (store (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@48) o_3@@12 f_10@@12 v@@12) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@48) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_9768) (o_3@@13 T@Ref) (f_10@@13 T@Field_9841_9842) (v@@13 T@Ref) ) (! (succHeap Heap@@49 (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@49) (store (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@49) o_3@@13 f_10@@13 v@@13) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@49) (store (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@49) o_3@@13 f_10@@13 v@@13) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@49) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_9768) (o_3@@14 T@Ref) (f_10@@14 T@Field_9828_53) (v@@14 Bool) ) (! (succHeap Heap@@50 (PolymorphicMapType_9768 (store (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@50) o_3@@14 f_10@@14 v@@14) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9768 (store (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@50) o_3@@14 f_10@@14 v@@14) (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@50) (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@50)))
)))
(assert (forall ((x@@15 T@Ref) ) (! (= (PredicateMaskField_5506 (Q x@@15)) (|Q#sm| x@@15))
 :qid |stdinbpl.328:15|
 :skolemid |30|
 :pattern ( (PredicateMaskField_5506 (Q x@@15)))
)))
(assert (forall ((x@@16 T@Ref) ) (! (= (PredicateMaskField_5528 (P x@@16)) (|P#sm| x@@16))
 :qid |stdinbpl.363:15|
 :skolemid |36|
 :pattern ( (PredicateMaskField_5528 (P x@@16)))
)))
(assert (forall ((x@@17 T@Ref) ) (! (= (PredicateMaskField_5562 (P2 x@@17)) (|P2#sm| x@@17))
 :qid |stdinbpl.481:15|
 :skolemid |49|
 :pattern ( (PredicateMaskField_5562 (P2 x@@17)))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_9768) (Heap1Heap@@0 T@PolymorphicMapType_9768) (x@@18 T@Ref) ) (!  (=> (and (=  (and (and (= (one_1 Heap2Heap@@0) (two_1 Heap2Heap@@0)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap2Heap@@0) x@@18 f_7) null))) (< NoPerm FullPerm))  (and (and (= (one_1 Heap1Heap@@0) (two_1 Heap1Heap@@0)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap1Heap@@0) x@@18 f_7) null))) (< NoPerm FullPerm))) (=> (and (and (= (one_1 Heap2Heap@@0) (two_1 Heap2Heap@@0)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap2Heap@@0) x@@18 f_7) null))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap2Heap@@0) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap2Heap@@0) x@@18 g) f_7) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap1Heap@@0) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap1Heap@@0) x@@18 g) f_7)))) (= (|P#condqp1| Heap2Heap@@0 x@@18) (|P#condqp1| Heap1Heap@@0 x@@18)))
 :qid |stdinbpl.397:15|
 :skolemid |42|
 :pattern ( (|P#condqp1| Heap2Heap@@0 x@@18) (|P#condqp1| Heap1Heap@@0 x@@18) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((o_3@@15 T@Ref) (f_8 T@Field_9841_9842) (Heap@@51 T@PolymorphicMapType_9768) ) (!  (=> (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@51) o_3@@15 $allocated) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@51) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@51) o_3@@15 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@51) o_3@@15 f_8))
)))
(assert (forall ((p@@4 T@Field_17814_17815) (v_1@@3 T@FrameType) (q T@Field_17814_17815) (w@@3 T@FrameType) (r T@Field_17814_17815) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17814_17814 p@@4 v_1@@3 q w@@3) (InsidePredicate_17814_17814 q w@@3 r u)) (InsidePredicate_17814_17814 p@@4 v_1@@3 r u))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_17814 p@@4 v_1@@3 q w@@3) (InsidePredicate_17814_17814 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_17814_17815) (v_1@@4 T@FrameType) (q@@0 T@Field_17814_17815) (w@@4 T@FrameType) (r@@0 T@Field_14750_14751) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_17814 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_17814_14750 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_17814_14750 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_17814 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_17814_14750 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_17814_17815) (v_1@@5 T@FrameType) (q@@1 T@Field_17814_17815) (w@@5 T@FrameType) (r@@1 T@Field_14220_14221) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_17814 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_17814_14220 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_17814_14220 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_17814 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_17814_14220 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_17814_17815) (v_1@@6 T@FrameType) (q@@2 T@Field_17814_17815) (w@@6 T@FrameType) (r@@2 T@Field_5479_5529) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_17814 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_17814_9828 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_17814_9828 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_17814 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_17814_9828 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_17814_17815) (v_1@@7 T@FrameType) (q@@3 T@Field_14750_14751) (w@@7 T@FrameType) (r@@3 T@Field_17814_17815) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_14750 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_14750_17814 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_17814_17814 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_14750 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_14750_17814 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_17814_17815) (v_1@@8 T@FrameType) (q@@4 T@Field_14750_14751) (w@@8 T@FrameType) (r@@4 T@Field_14750_14751) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_14750 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_14750_14750 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_17814_14750 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_14750 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_14750_14750 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_17814_17815) (v_1@@9 T@FrameType) (q@@5 T@Field_14750_14751) (w@@9 T@FrameType) (r@@5 T@Field_14220_14221) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_14750 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_14750_14220 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_17814_14220 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_14750 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_14750_14220 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_17814_17815) (v_1@@10 T@FrameType) (q@@6 T@Field_14750_14751) (w@@10 T@FrameType) (r@@6 T@Field_5479_5529) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_14750 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_14750_9828 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_17814_9828 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_14750 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_14750_9828 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_17814_17815) (v_1@@11 T@FrameType) (q@@7 T@Field_14220_14221) (w@@11 T@FrameType) (r@@7 T@Field_17814_17815) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_14220 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_14220_17814 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_17814_17814 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_14220 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_14220_17814 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_17814_17815) (v_1@@12 T@FrameType) (q@@8 T@Field_14220_14221) (w@@12 T@FrameType) (r@@8 T@Field_14750_14751) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_14220 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_14220_14750 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_17814_14750 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_14220 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_14220_14750 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_17814_17815) (v_1@@13 T@FrameType) (q@@9 T@Field_14220_14221) (w@@13 T@FrameType) (r@@9 T@Field_14220_14221) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_14220 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_14220_14220 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_17814_14220 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_14220 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_14220_14220 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_17814_17815) (v_1@@14 T@FrameType) (q@@10 T@Field_14220_14221) (w@@14 T@FrameType) (r@@10 T@Field_5479_5529) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_14220 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_14220_9828 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_17814_9828 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_14220 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_14220_9828 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_17814_17815) (v_1@@15 T@FrameType) (q@@11 T@Field_5479_5529) (w@@15 T@FrameType) (r@@11 T@Field_17814_17815) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_9828 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_9828_17814 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_17814_17814 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_9828 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_9828_17814 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_17814_17815) (v_1@@16 T@FrameType) (q@@12 T@Field_5479_5529) (w@@16 T@FrameType) (r@@12 T@Field_14750_14751) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_9828 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_9828_14750 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_17814_14750 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_9828 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_9828_14750 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_17814_17815) (v_1@@17 T@FrameType) (q@@13 T@Field_5479_5529) (w@@17 T@FrameType) (r@@13 T@Field_14220_14221) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_9828 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_9828_14220 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_17814_14220 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_9828 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_9828_14220 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_17814_17815) (v_1@@18 T@FrameType) (q@@14 T@Field_5479_5529) (w@@18 T@FrameType) (r@@14 T@Field_5479_5529) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_17814_9828 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_9828_9828 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_17814_9828 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17814_9828 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_9828_9828 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_14750_14751) (v_1@@19 T@FrameType) (q@@15 T@Field_17814_17815) (w@@19 T@FrameType) (r@@15 T@Field_17814_17815) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_17814 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_17814_17814 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_14750_17814 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_17814 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_17814_17814 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_14750_14751) (v_1@@20 T@FrameType) (q@@16 T@Field_17814_17815) (w@@20 T@FrameType) (r@@16 T@Field_14750_14751) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_17814 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_17814_14750 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_14750_14750 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_17814 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_17814_14750 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_14750_14751) (v_1@@21 T@FrameType) (q@@17 T@Field_17814_17815) (w@@21 T@FrameType) (r@@17 T@Field_14220_14221) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_17814 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_17814_14220 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_14750_14220 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_17814 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_17814_14220 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_14750_14751) (v_1@@22 T@FrameType) (q@@18 T@Field_17814_17815) (w@@22 T@FrameType) (r@@18 T@Field_5479_5529) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_17814 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_17814_9828 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_14750_9828 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_17814 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_17814_9828 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_14750_14751) (v_1@@23 T@FrameType) (q@@19 T@Field_14750_14751) (w@@23 T@FrameType) (r@@19 T@Field_17814_17815) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_14750 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_14750_17814 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_14750_17814 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_14750 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_14750_17814 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_14750_14751) (v_1@@24 T@FrameType) (q@@20 T@Field_14750_14751) (w@@24 T@FrameType) (r@@20 T@Field_14750_14751) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_14750 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_14750_14750 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_14750_14750 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_14750 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_14750_14750 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_14750_14751) (v_1@@25 T@FrameType) (q@@21 T@Field_14750_14751) (w@@25 T@FrameType) (r@@21 T@Field_14220_14221) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_14750 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_14750_14220 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_14750_14220 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_14750 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_14750_14220 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_14750_14751) (v_1@@26 T@FrameType) (q@@22 T@Field_14750_14751) (w@@26 T@FrameType) (r@@22 T@Field_5479_5529) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_14750 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_14750_9828 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_14750_9828 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_14750 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_14750_9828 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_14750_14751) (v_1@@27 T@FrameType) (q@@23 T@Field_14220_14221) (w@@27 T@FrameType) (r@@23 T@Field_17814_17815) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_14220 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_14220_17814 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_14750_17814 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_14220 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_14220_17814 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_14750_14751) (v_1@@28 T@FrameType) (q@@24 T@Field_14220_14221) (w@@28 T@FrameType) (r@@24 T@Field_14750_14751) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_14220 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_14220_14750 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_14750_14750 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_14220 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_14220_14750 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_14750_14751) (v_1@@29 T@FrameType) (q@@25 T@Field_14220_14221) (w@@29 T@FrameType) (r@@25 T@Field_14220_14221) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_14220 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_14220_14220 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_14750_14220 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_14220 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_14220_14220 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_14750_14751) (v_1@@30 T@FrameType) (q@@26 T@Field_14220_14221) (w@@30 T@FrameType) (r@@26 T@Field_5479_5529) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_14220 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_14220_9828 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_14750_9828 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_14220 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_14220_9828 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_14750_14751) (v_1@@31 T@FrameType) (q@@27 T@Field_5479_5529) (w@@31 T@FrameType) (r@@27 T@Field_17814_17815) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_9828 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_9828_17814 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_14750_17814 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_9828 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_9828_17814 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_14750_14751) (v_1@@32 T@FrameType) (q@@28 T@Field_5479_5529) (w@@32 T@FrameType) (r@@28 T@Field_14750_14751) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_9828 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_9828_14750 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_14750_14750 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_9828 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_9828_14750 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_14750_14751) (v_1@@33 T@FrameType) (q@@29 T@Field_5479_5529) (w@@33 T@FrameType) (r@@29 T@Field_14220_14221) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_9828 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_9828_14220 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_14750_14220 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_9828 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_9828_14220 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_14750_14751) (v_1@@34 T@FrameType) (q@@30 T@Field_5479_5529) (w@@34 T@FrameType) (r@@30 T@Field_5479_5529) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_14750_9828 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_9828_9828 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_14750_9828 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14750_9828 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_9828_9828 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_14220_14221) (v_1@@35 T@FrameType) (q@@31 T@Field_17814_17815) (w@@35 T@FrameType) (r@@31 T@Field_17814_17815) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_17814 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_17814_17814 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_14220_17814 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_17814 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_17814_17814 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_14220_14221) (v_1@@36 T@FrameType) (q@@32 T@Field_17814_17815) (w@@36 T@FrameType) (r@@32 T@Field_14750_14751) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_17814 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_17814_14750 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_14220_14750 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_17814 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_17814_14750 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_14220_14221) (v_1@@37 T@FrameType) (q@@33 T@Field_17814_17815) (w@@37 T@FrameType) (r@@33 T@Field_14220_14221) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_17814 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_17814_14220 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_14220_14220 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_17814 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_17814_14220 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_14220_14221) (v_1@@38 T@FrameType) (q@@34 T@Field_17814_17815) (w@@38 T@FrameType) (r@@34 T@Field_5479_5529) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_17814 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_17814_9828 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_14220_9828 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_17814 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_17814_9828 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_14220_14221) (v_1@@39 T@FrameType) (q@@35 T@Field_14750_14751) (w@@39 T@FrameType) (r@@35 T@Field_17814_17815) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_14750 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_14750_17814 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_14220_17814 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_14750 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_14750_17814 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_14220_14221) (v_1@@40 T@FrameType) (q@@36 T@Field_14750_14751) (w@@40 T@FrameType) (r@@36 T@Field_14750_14751) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_14750 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_14750_14750 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_14220_14750 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_14750 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_14750_14750 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_14220_14221) (v_1@@41 T@FrameType) (q@@37 T@Field_14750_14751) (w@@41 T@FrameType) (r@@37 T@Field_14220_14221) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_14750 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_14750_14220 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_14220_14220 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_14750 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_14750_14220 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_14220_14221) (v_1@@42 T@FrameType) (q@@38 T@Field_14750_14751) (w@@42 T@FrameType) (r@@38 T@Field_5479_5529) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_14750 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_14750_9828 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_14220_9828 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_14750 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_14750_9828 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_14220_14221) (v_1@@43 T@FrameType) (q@@39 T@Field_14220_14221) (w@@43 T@FrameType) (r@@39 T@Field_17814_17815) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_14220 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_14220_17814 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_14220_17814 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_14220 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_14220_17814 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_14220_14221) (v_1@@44 T@FrameType) (q@@40 T@Field_14220_14221) (w@@44 T@FrameType) (r@@40 T@Field_14750_14751) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_14220 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_14220_14750 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_14220_14750 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_14220 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_14220_14750 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_14220_14221) (v_1@@45 T@FrameType) (q@@41 T@Field_14220_14221) (w@@45 T@FrameType) (r@@41 T@Field_14220_14221) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_14220 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_14220_14220 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_14220_14220 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_14220 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_14220_14220 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_14220_14221) (v_1@@46 T@FrameType) (q@@42 T@Field_14220_14221) (w@@46 T@FrameType) (r@@42 T@Field_5479_5529) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_14220 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_14220_9828 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_14220_9828 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_14220 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_14220_9828 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_14220_14221) (v_1@@47 T@FrameType) (q@@43 T@Field_5479_5529) (w@@47 T@FrameType) (r@@43 T@Field_17814_17815) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_9828 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_9828_17814 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_14220_17814 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_9828 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_9828_17814 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_14220_14221) (v_1@@48 T@FrameType) (q@@44 T@Field_5479_5529) (w@@48 T@FrameType) (r@@44 T@Field_14750_14751) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_9828 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_9828_14750 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_14220_14750 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_9828 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_9828_14750 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_14220_14221) (v_1@@49 T@FrameType) (q@@45 T@Field_5479_5529) (w@@49 T@FrameType) (r@@45 T@Field_14220_14221) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_9828 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_9828_14220 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_14220_14220 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_9828 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_9828_14220 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_14220_14221) (v_1@@50 T@FrameType) (q@@46 T@Field_5479_5529) (w@@50 T@FrameType) (r@@46 T@Field_5479_5529) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_14220_9828 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_9828_9828 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_14220_9828 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14220_9828 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_9828_9828 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_5479_5529) (v_1@@51 T@FrameType) (q@@47 T@Field_17814_17815) (w@@51 T@FrameType) (r@@47 T@Field_17814_17815) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_17814 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_17814_17814 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_9828_17814 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_17814 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_17814_17814 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_5479_5529) (v_1@@52 T@FrameType) (q@@48 T@Field_17814_17815) (w@@52 T@FrameType) (r@@48 T@Field_14750_14751) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_17814 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_17814_14750 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_9828_14750 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_17814 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_17814_14750 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_5479_5529) (v_1@@53 T@FrameType) (q@@49 T@Field_17814_17815) (w@@53 T@FrameType) (r@@49 T@Field_14220_14221) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_17814 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_17814_14220 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_9828_14220 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_17814 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_17814_14220 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_5479_5529) (v_1@@54 T@FrameType) (q@@50 T@Field_17814_17815) (w@@54 T@FrameType) (r@@50 T@Field_5479_5529) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_17814 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_17814_9828 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_9828_9828 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_17814 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_17814_9828 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_5479_5529) (v_1@@55 T@FrameType) (q@@51 T@Field_14750_14751) (w@@55 T@FrameType) (r@@51 T@Field_17814_17815) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_14750 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_14750_17814 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_9828_17814 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_14750 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_14750_17814 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_5479_5529) (v_1@@56 T@FrameType) (q@@52 T@Field_14750_14751) (w@@56 T@FrameType) (r@@52 T@Field_14750_14751) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_14750 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_14750_14750 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_9828_14750 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_14750 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_14750_14750 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_5479_5529) (v_1@@57 T@FrameType) (q@@53 T@Field_14750_14751) (w@@57 T@FrameType) (r@@53 T@Field_14220_14221) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_14750 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_14750_14220 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_9828_14220 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_14750 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_14750_14220 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_5479_5529) (v_1@@58 T@FrameType) (q@@54 T@Field_14750_14751) (w@@58 T@FrameType) (r@@54 T@Field_5479_5529) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_14750 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_14750_9828 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_9828_9828 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_14750 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_14750_9828 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_5479_5529) (v_1@@59 T@FrameType) (q@@55 T@Field_14220_14221) (w@@59 T@FrameType) (r@@55 T@Field_17814_17815) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_14220 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_14220_17814 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_9828_17814 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_14220 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_14220_17814 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_5479_5529) (v_1@@60 T@FrameType) (q@@56 T@Field_14220_14221) (w@@60 T@FrameType) (r@@56 T@Field_14750_14751) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_14220 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_14220_14750 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_9828_14750 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_14220 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_14220_14750 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_5479_5529) (v_1@@61 T@FrameType) (q@@57 T@Field_14220_14221) (w@@61 T@FrameType) (r@@57 T@Field_14220_14221) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_14220 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_14220_14220 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_9828_14220 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_14220 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_14220_14220 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_5479_5529) (v_1@@62 T@FrameType) (q@@58 T@Field_14220_14221) (w@@62 T@FrameType) (r@@58 T@Field_5479_5529) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_14220 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_14220_9828 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_9828_9828 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_14220 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_14220_9828 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_5479_5529) (v_1@@63 T@FrameType) (q@@59 T@Field_5479_5529) (w@@63 T@FrameType) (r@@59 T@Field_17814_17815) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_9828 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_9828_17814 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_9828_17814 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_9828 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_9828_17814 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_5479_5529) (v_1@@64 T@FrameType) (q@@60 T@Field_5479_5529) (w@@64 T@FrameType) (r@@60 T@Field_14750_14751) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_9828 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_9828_14750 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_9828_14750 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_9828 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_9828_14750 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_5479_5529) (v_1@@65 T@FrameType) (q@@61 T@Field_5479_5529) (w@@65 T@FrameType) (r@@61 T@Field_14220_14221) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_9828 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_9828_14220 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_9828_14220 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_9828 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_9828_14220 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_5479_5529) (v_1@@66 T@FrameType) (q@@62 T@Field_5479_5529) (w@@66 T@FrameType) (r@@62 T@Field_5479_5529) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_9828_9828 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_9828_9828 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_9828_9828 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9828_9828 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_9828_9828 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_9768) (ExhaleHeap@@25 T@PolymorphicMapType_9768) (Mask@@60 T@PolymorphicMapType_9789) (pm_f_1@@7 T@Field_14220_14221) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@25 Mask@@60) (=> (and (HasDirectPerm_14220_5529 Mask@@60 null pm_f_1@@7) (IsPredicateField_5506_5507 pm_f_1@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_9@@15 T@Field_9828_53) ) (!  (=> (select (|PolymorphicMapType_10317_9828_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1 f_9@@15) (= (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@52) o2_1 f_9@@15) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1 f_9@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1 f_9@@15))
)) (forall ((o2_1@@0 T@Ref) (f_9@@16 T@Field_9841_9842) ) (!  (=> (select (|PolymorphicMapType_10317_9828_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@0 f_9@@16) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@52) o2_1@@0 f_9@@16) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@0 f_9@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@0 f_9@@16))
))) (forall ((o2_1@@1 T@Ref) (f_9@@17 T@Field_5479_5529) ) (!  (=> (select (|PolymorphicMapType_10317_9828_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@1 f_9@@17) (= (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@52) o2_1@@1 f_9@@17) (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@1 f_9@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@1 f_9@@17))
))) (forall ((o2_1@@2 T@Ref) (f_9@@18 T@Field_5479_14238) ) (!  (=> (select (|PolymorphicMapType_10317_9828_36610#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@2 f_9@@18) (= (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@52) o2_1@@2 f_9@@18) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@2 f_9@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@2 f_9@@18))
))) (forall ((o2_1@@3 T@Ref) (f_9@@19 T@Field_14220_53) ) (!  (=> (select (|PolymorphicMapType_10317_14220_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@3 f_9@@19) (= (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@52) o2_1@@3 f_9@@19) (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@3 f_9@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@3 f_9@@19))
))) (forall ((o2_1@@4 T@Ref) (f_9@@20 T@Field_14220_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14220_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@4 f_9@@20) (= (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@52) o2_1@@4 f_9@@20) (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@4 f_9@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@4 f_9@@20))
))) (forall ((o2_1@@5 T@Ref) (f_9@@21 T@Field_14220_14221) ) (!  (=> (select (|PolymorphicMapType_10317_14220_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@5 f_9@@21) (= (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@52) o2_1@@5 f_9@@21) (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@5 f_9@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@5 f_9@@21))
))) (forall ((o2_1@@6 T@Ref) (f_9@@22 T@Field_14233_14238) ) (!  (=> (select (|PolymorphicMapType_10317_14220_37460#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@6 f_9@@22) (= (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) o2_1@@6 f_9@@22) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@6 f_9@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@6 f_9@@22))
))) (forall ((o2_1@@7 T@Ref) (f_9@@23 T@Field_5528_53) ) (!  (=> (select (|PolymorphicMapType_10317_14750_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@7 f_9@@23) (= (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@52) o2_1@@7 f_9@@23) (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@7 f_9@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@7 f_9@@23))
))) (forall ((o2_1@@8 T@Ref) (f_9@@24 T@Field_5528_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14750_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@8 f_9@@24) (= (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@52) o2_1@@8 f_9@@24) (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@8 f_9@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@8 f_9@@24))
))) (forall ((o2_1@@9 T@Ref) (f_9@@25 T@Field_14750_14751) ) (!  (=> (select (|PolymorphicMapType_10317_14750_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@9 f_9@@25) (= (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@52) o2_1@@9 f_9@@25) (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@9 f_9@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@9 f_9@@25))
))) (forall ((o2_1@@10 T@Ref) (f_9@@26 T@Field_14763_14768) ) (!  (=> (select (|PolymorphicMapType_10317_14750_38310#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@10 f_9@@26) (= (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@52) o2_1@@10 f_9@@26) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@10 f_9@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@10 f_9@@26))
))) (forall ((o2_1@@11 T@Ref) (f_9@@27 T@Field_5562_53) ) (!  (=> (select (|PolymorphicMapType_10317_17814_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@11 f_9@@27) (= (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@52) o2_1@@11 f_9@@27) (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@11 f_9@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@11 f_9@@27))
))) (forall ((o2_1@@12 T@Ref) (f_9@@28 T@Field_5562_5480) ) (!  (=> (select (|PolymorphicMapType_10317_17814_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@12 f_9@@28) (= (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@52) o2_1@@12 f_9@@28) (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@12 f_9@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@12 f_9@@28))
))) (forall ((o2_1@@13 T@Ref) (f_9@@29 T@Field_17814_17815) ) (!  (=> (select (|PolymorphicMapType_10317_17814_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@13 f_9@@29) (= (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@52) o2_1@@13 f_9@@29) (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@13 f_9@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@13 f_9@@29))
))) (forall ((o2_1@@14 T@Ref) (f_9@@30 T@Field_17827_17832) ) (!  (=> (select (|PolymorphicMapType_10317_17814_39160#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@52) null (PredicateMaskField_5506 pm_f_1@@7))) o2_1@@14 f_9@@30) (= (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@52) o2_1@@14 f_9@@30) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@14 f_9@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@25) o2_1@@14 f_9@@30))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@25 Mask@@60) (IsPredicateField_5506_5507 pm_f_1@@7))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_9768) (ExhaleHeap@@26 T@PolymorphicMapType_9768) (Mask@@61 T@PolymorphicMapType_9789) (pm_f_1@@8 T@Field_17814_17815) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@26 Mask@@61) (=> (and (HasDirectPerm_5562_5563 Mask@@61 null pm_f_1@@8) (IsPredicateField_5562_5563 pm_f_1@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@15 T@Ref) (f_9@@31 T@Field_9828_53) ) (!  (=> (select (|PolymorphicMapType_10317_9828_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@15 f_9@@31) (= (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@53) o2_1@@15 f_9@@31) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@15 f_9@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@15 f_9@@31))
)) (forall ((o2_1@@16 T@Ref) (f_9@@32 T@Field_9841_9842) ) (!  (=> (select (|PolymorphicMapType_10317_9828_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@16 f_9@@32) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@53) o2_1@@16 f_9@@32) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@16 f_9@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@16 f_9@@32))
))) (forall ((o2_1@@17 T@Ref) (f_9@@33 T@Field_5479_5529) ) (!  (=> (select (|PolymorphicMapType_10317_9828_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@17 f_9@@33) (= (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@53) o2_1@@17 f_9@@33) (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@17 f_9@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@17 f_9@@33))
))) (forall ((o2_1@@18 T@Ref) (f_9@@34 T@Field_5479_14238) ) (!  (=> (select (|PolymorphicMapType_10317_9828_36610#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@18 f_9@@34) (= (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@53) o2_1@@18 f_9@@34) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@18 f_9@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@18 f_9@@34))
))) (forall ((o2_1@@19 T@Ref) (f_9@@35 T@Field_14220_53) ) (!  (=> (select (|PolymorphicMapType_10317_14220_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@19 f_9@@35) (= (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@53) o2_1@@19 f_9@@35) (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@19 f_9@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@19 f_9@@35))
))) (forall ((o2_1@@20 T@Ref) (f_9@@36 T@Field_14220_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14220_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@20 f_9@@36) (= (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@53) o2_1@@20 f_9@@36) (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@20 f_9@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@20 f_9@@36))
))) (forall ((o2_1@@21 T@Ref) (f_9@@37 T@Field_14220_14221) ) (!  (=> (select (|PolymorphicMapType_10317_14220_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@21 f_9@@37) (= (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@53) o2_1@@21 f_9@@37) (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@21 f_9@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@21 f_9@@37))
))) (forall ((o2_1@@22 T@Ref) (f_9@@38 T@Field_14233_14238) ) (!  (=> (select (|PolymorphicMapType_10317_14220_37460#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@22 f_9@@38) (= (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@53) o2_1@@22 f_9@@38) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@22 f_9@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@22 f_9@@38))
))) (forall ((o2_1@@23 T@Ref) (f_9@@39 T@Field_5528_53) ) (!  (=> (select (|PolymorphicMapType_10317_14750_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@23 f_9@@39) (= (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@53) o2_1@@23 f_9@@39) (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@23 f_9@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@23 f_9@@39))
))) (forall ((o2_1@@24 T@Ref) (f_9@@40 T@Field_5528_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14750_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@24 f_9@@40) (= (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@53) o2_1@@24 f_9@@40) (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@24 f_9@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@24 f_9@@40))
))) (forall ((o2_1@@25 T@Ref) (f_9@@41 T@Field_14750_14751) ) (!  (=> (select (|PolymorphicMapType_10317_14750_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@25 f_9@@41) (= (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@53) o2_1@@25 f_9@@41) (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@25 f_9@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@25 f_9@@41))
))) (forall ((o2_1@@26 T@Ref) (f_9@@42 T@Field_14763_14768) ) (!  (=> (select (|PolymorphicMapType_10317_14750_38310#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@26 f_9@@42) (= (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@53) o2_1@@26 f_9@@42) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@26 f_9@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@26 f_9@@42))
))) (forall ((o2_1@@27 T@Ref) (f_9@@43 T@Field_5562_53) ) (!  (=> (select (|PolymorphicMapType_10317_17814_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@27 f_9@@43) (= (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@53) o2_1@@27 f_9@@43) (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@27 f_9@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@27 f_9@@43))
))) (forall ((o2_1@@28 T@Ref) (f_9@@44 T@Field_5562_5480) ) (!  (=> (select (|PolymorphicMapType_10317_17814_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@28 f_9@@44) (= (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@53) o2_1@@28 f_9@@44) (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@28 f_9@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@28 f_9@@44))
))) (forall ((o2_1@@29 T@Ref) (f_9@@45 T@Field_17814_17815) ) (!  (=> (select (|PolymorphicMapType_10317_17814_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@29 f_9@@45) (= (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@53) o2_1@@29 f_9@@45) (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@29 f_9@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@29 f_9@@45))
))) (forall ((o2_1@@30 T@Ref) (f_9@@46 T@Field_17827_17832) ) (!  (=> (select (|PolymorphicMapType_10317_17814_39160#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) null (PredicateMaskField_5562 pm_f_1@@8))) o2_1@@30 f_9@@46) (= (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@53) o2_1@@30 f_9@@46) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@30 f_9@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@26) o2_1@@30 f_9@@46))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@26 Mask@@61) (IsPredicateField_5562_5563 pm_f_1@@8))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_9768) (ExhaleHeap@@27 T@PolymorphicMapType_9768) (Mask@@62 T@PolymorphicMapType_9789) (pm_f_1@@9 T@Field_14750_14751) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@27 Mask@@62) (=> (and (HasDirectPerm_5528_5529 Mask@@62 null pm_f_1@@9) (IsPredicateField_5528_5529 pm_f_1@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@31 T@Ref) (f_9@@47 T@Field_9828_53) ) (!  (=> (select (|PolymorphicMapType_10317_9828_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@31 f_9@@47) (= (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@54) o2_1@@31 f_9@@47) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@31 f_9@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@31 f_9@@47))
)) (forall ((o2_1@@32 T@Ref) (f_9@@48 T@Field_9841_9842) ) (!  (=> (select (|PolymorphicMapType_10317_9828_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@32 f_9@@48) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@54) o2_1@@32 f_9@@48) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@32 f_9@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@32 f_9@@48))
))) (forall ((o2_1@@33 T@Ref) (f_9@@49 T@Field_5479_5529) ) (!  (=> (select (|PolymorphicMapType_10317_9828_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@33 f_9@@49) (= (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@54) o2_1@@33 f_9@@49) (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@33 f_9@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@33 f_9@@49))
))) (forall ((o2_1@@34 T@Ref) (f_9@@50 T@Field_5479_14238) ) (!  (=> (select (|PolymorphicMapType_10317_9828_36610#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@34 f_9@@50) (= (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@54) o2_1@@34 f_9@@50) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@34 f_9@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@34 f_9@@50))
))) (forall ((o2_1@@35 T@Ref) (f_9@@51 T@Field_14220_53) ) (!  (=> (select (|PolymorphicMapType_10317_14220_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@35 f_9@@51) (= (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@54) o2_1@@35 f_9@@51) (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@35 f_9@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@35 f_9@@51))
))) (forall ((o2_1@@36 T@Ref) (f_9@@52 T@Field_14220_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14220_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@36 f_9@@52) (= (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@54) o2_1@@36 f_9@@52) (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@36 f_9@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@36 f_9@@52))
))) (forall ((o2_1@@37 T@Ref) (f_9@@53 T@Field_14220_14221) ) (!  (=> (select (|PolymorphicMapType_10317_14220_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@37 f_9@@53) (= (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@54) o2_1@@37 f_9@@53) (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@37 f_9@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@37 f_9@@53))
))) (forall ((o2_1@@38 T@Ref) (f_9@@54 T@Field_14233_14238) ) (!  (=> (select (|PolymorphicMapType_10317_14220_37460#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@38 f_9@@54) (= (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@54) o2_1@@38 f_9@@54) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@38 f_9@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@38 f_9@@54))
))) (forall ((o2_1@@39 T@Ref) (f_9@@55 T@Field_5528_53) ) (!  (=> (select (|PolymorphicMapType_10317_14750_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@39 f_9@@55) (= (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@54) o2_1@@39 f_9@@55) (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@39 f_9@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@39 f_9@@55))
))) (forall ((o2_1@@40 T@Ref) (f_9@@56 T@Field_5528_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14750_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@40 f_9@@56) (= (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@54) o2_1@@40 f_9@@56) (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@40 f_9@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@40 f_9@@56))
))) (forall ((o2_1@@41 T@Ref) (f_9@@57 T@Field_14750_14751) ) (!  (=> (select (|PolymorphicMapType_10317_14750_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@41 f_9@@57) (= (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@54) o2_1@@41 f_9@@57) (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@41 f_9@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@41 f_9@@57))
))) (forall ((o2_1@@42 T@Ref) (f_9@@58 T@Field_14763_14768) ) (!  (=> (select (|PolymorphicMapType_10317_14750_38310#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@42 f_9@@58) (= (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) o2_1@@42 f_9@@58) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@42 f_9@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@42 f_9@@58))
))) (forall ((o2_1@@43 T@Ref) (f_9@@59 T@Field_5562_53) ) (!  (=> (select (|PolymorphicMapType_10317_17814_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@43 f_9@@59) (= (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@54) o2_1@@43 f_9@@59) (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@43 f_9@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@43 f_9@@59))
))) (forall ((o2_1@@44 T@Ref) (f_9@@60 T@Field_5562_5480) ) (!  (=> (select (|PolymorphicMapType_10317_17814_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@44 f_9@@60) (= (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@54) o2_1@@44 f_9@@60) (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@44 f_9@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@44 f_9@@60))
))) (forall ((o2_1@@45 T@Ref) (f_9@@61 T@Field_17814_17815) ) (!  (=> (select (|PolymorphicMapType_10317_17814_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@45 f_9@@61) (= (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@54) o2_1@@45 f_9@@61) (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@45 f_9@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@45 f_9@@61))
))) (forall ((o2_1@@46 T@Ref) (f_9@@62 T@Field_17827_17832) ) (!  (=> (select (|PolymorphicMapType_10317_17814_39160#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@54) null (PredicateMaskField_5528 pm_f_1@@9))) o2_1@@46 f_9@@62) (= (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@54) o2_1@@46 f_9@@62) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@46 f_9@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@27) o2_1@@46 f_9@@62))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@27 Mask@@62) (IsPredicateField_5528_5529 pm_f_1@@9))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_9768) (ExhaleHeap@@28 T@PolymorphicMapType_9768) (Mask@@63 T@PolymorphicMapType_9789) (pm_f_1@@10 T@Field_5479_5529) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@28 Mask@@63) (=> (and (HasDirectPerm_5479_5529 Mask@@63 null pm_f_1@@10) (IsPredicateField_5479_34674 pm_f_1@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@47 T@Ref) (f_9@@63 T@Field_9828_53) ) (!  (=> (select (|PolymorphicMapType_10317_9828_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@47 f_9@@63) (= (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@55) o2_1@@47 f_9@@63) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@47 f_9@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@47 f_9@@63))
)) (forall ((o2_1@@48 T@Ref) (f_9@@64 T@Field_9841_9842) ) (!  (=> (select (|PolymorphicMapType_10317_9828_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@48 f_9@@64) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@55) o2_1@@48 f_9@@64) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@48 f_9@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@48 f_9@@64))
))) (forall ((o2_1@@49 T@Ref) (f_9@@65 T@Field_5479_5529) ) (!  (=> (select (|PolymorphicMapType_10317_9828_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@49 f_9@@65) (= (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@55) o2_1@@49 f_9@@65) (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@49 f_9@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@49 f_9@@65))
))) (forall ((o2_1@@50 T@Ref) (f_9@@66 T@Field_5479_14238) ) (!  (=> (select (|PolymorphicMapType_10317_9828_36610#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@50 f_9@@66) (= (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) o2_1@@50 f_9@@66) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@50 f_9@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@50 f_9@@66))
))) (forall ((o2_1@@51 T@Ref) (f_9@@67 T@Field_14220_53) ) (!  (=> (select (|PolymorphicMapType_10317_14220_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@51 f_9@@67) (= (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@55) o2_1@@51 f_9@@67) (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@51 f_9@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@51 f_9@@67))
))) (forall ((o2_1@@52 T@Ref) (f_9@@68 T@Field_14220_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14220_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@52 f_9@@68) (= (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@55) o2_1@@52 f_9@@68) (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@52 f_9@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@52 f_9@@68))
))) (forall ((o2_1@@53 T@Ref) (f_9@@69 T@Field_14220_14221) ) (!  (=> (select (|PolymorphicMapType_10317_14220_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@53 f_9@@69) (= (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@55) o2_1@@53 f_9@@69) (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@53 f_9@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@53 f_9@@69))
))) (forall ((o2_1@@54 T@Ref) (f_9@@70 T@Field_14233_14238) ) (!  (=> (select (|PolymorphicMapType_10317_14220_37460#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@54 f_9@@70) (= (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@55) o2_1@@54 f_9@@70) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@54 f_9@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@54 f_9@@70))
))) (forall ((o2_1@@55 T@Ref) (f_9@@71 T@Field_5528_53) ) (!  (=> (select (|PolymorphicMapType_10317_14750_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@55 f_9@@71) (= (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@55) o2_1@@55 f_9@@71) (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@55 f_9@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@55 f_9@@71))
))) (forall ((o2_1@@56 T@Ref) (f_9@@72 T@Field_5528_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14750_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@56 f_9@@72) (= (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@55) o2_1@@56 f_9@@72) (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@56 f_9@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@56 f_9@@72))
))) (forall ((o2_1@@57 T@Ref) (f_9@@73 T@Field_14750_14751) ) (!  (=> (select (|PolymorphicMapType_10317_14750_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@57 f_9@@73) (= (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@55) o2_1@@57 f_9@@73) (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@57 f_9@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@57 f_9@@73))
))) (forall ((o2_1@@58 T@Ref) (f_9@@74 T@Field_14763_14768) ) (!  (=> (select (|PolymorphicMapType_10317_14750_38310#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@58 f_9@@74) (= (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@55) o2_1@@58 f_9@@74) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@58 f_9@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@58 f_9@@74))
))) (forall ((o2_1@@59 T@Ref) (f_9@@75 T@Field_5562_53) ) (!  (=> (select (|PolymorphicMapType_10317_17814_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@59 f_9@@75) (= (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@55) o2_1@@59 f_9@@75) (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@59 f_9@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@59 f_9@@75))
))) (forall ((o2_1@@60 T@Ref) (f_9@@76 T@Field_5562_5480) ) (!  (=> (select (|PolymorphicMapType_10317_17814_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@60 f_9@@76) (= (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@55) o2_1@@60 f_9@@76) (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@60 f_9@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@60 f_9@@76))
))) (forall ((o2_1@@61 T@Ref) (f_9@@77 T@Field_17814_17815) ) (!  (=> (select (|PolymorphicMapType_10317_17814_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@61 f_9@@77) (= (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@55) o2_1@@61 f_9@@77) (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@61 f_9@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@61 f_9@@77))
))) (forall ((o2_1@@62 T@Ref) (f_9@@78 T@Field_17827_17832) ) (!  (=> (select (|PolymorphicMapType_10317_17814_39160#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@55) null (PredicateMaskField_5479 pm_f_1@@10))) o2_1@@62 f_9@@78) (= (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@55) o2_1@@62 f_9@@78) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@62 f_9@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@28) o2_1@@62 f_9@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@28 Mask@@63) (IsPredicateField_5479_34674 pm_f_1@@10))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_9768) (ExhaleHeap@@29 T@PolymorphicMapType_9768) (Mask@@64 T@PolymorphicMapType_9789) (pm_f_1@@11 T@Field_14220_14221) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@29 Mask@@64) (=> (and (HasDirectPerm_14220_5529 Mask@@64 null pm_f_1@@11) (IsWandField_14220_41601 pm_f_1@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@63 T@Ref) (f_9@@79 T@Field_9828_53) ) (!  (=> (select (|PolymorphicMapType_10317_9828_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@63 f_9@@79) (= (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@56) o2_1@@63 f_9@@79) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@63 f_9@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@63 f_9@@79))
)) (forall ((o2_1@@64 T@Ref) (f_9@@80 T@Field_9841_9842) ) (!  (=> (select (|PolymorphicMapType_10317_9828_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@64 f_9@@80) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@56) o2_1@@64 f_9@@80) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@64 f_9@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@64 f_9@@80))
))) (forall ((o2_1@@65 T@Ref) (f_9@@81 T@Field_5479_5529) ) (!  (=> (select (|PolymorphicMapType_10317_9828_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@65 f_9@@81) (= (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@56) o2_1@@65 f_9@@81) (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@65 f_9@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@65 f_9@@81))
))) (forall ((o2_1@@66 T@Ref) (f_9@@82 T@Field_5479_14238) ) (!  (=> (select (|PolymorphicMapType_10317_9828_36610#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@66 f_9@@82) (= (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@56) o2_1@@66 f_9@@82) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@66 f_9@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@66 f_9@@82))
))) (forall ((o2_1@@67 T@Ref) (f_9@@83 T@Field_14220_53) ) (!  (=> (select (|PolymorphicMapType_10317_14220_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@67 f_9@@83) (= (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@56) o2_1@@67 f_9@@83) (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@67 f_9@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@67 f_9@@83))
))) (forall ((o2_1@@68 T@Ref) (f_9@@84 T@Field_14220_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14220_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@68 f_9@@84) (= (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@56) o2_1@@68 f_9@@84) (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@68 f_9@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@68 f_9@@84))
))) (forall ((o2_1@@69 T@Ref) (f_9@@85 T@Field_14220_14221) ) (!  (=> (select (|PolymorphicMapType_10317_14220_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@69 f_9@@85) (= (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@56) o2_1@@69 f_9@@85) (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@69 f_9@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@69 f_9@@85))
))) (forall ((o2_1@@70 T@Ref) (f_9@@86 T@Field_14233_14238) ) (!  (=> (select (|PolymorphicMapType_10317_14220_37460#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@70 f_9@@86) (= (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) o2_1@@70 f_9@@86) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@70 f_9@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@70 f_9@@86))
))) (forall ((o2_1@@71 T@Ref) (f_9@@87 T@Field_5528_53) ) (!  (=> (select (|PolymorphicMapType_10317_14750_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@71 f_9@@87) (= (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@56) o2_1@@71 f_9@@87) (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@71 f_9@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@71 f_9@@87))
))) (forall ((o2_1@@72 T@Ref) (f_9@@88 T@Field_5528_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14750_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@72 f_9@@88) (= (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@56) o2_1@@72 f_9@@88) (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@72 f_9@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@72 f_9@@88))
))) (forall ((o2_1@@73 T@Ref) (f_9@@89 T@Field_14750_14751) ) (!  (=> (select (|PolymorphicMapType_10317_14750_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@73 f_9@@89) (= (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@56) o2_1@@73 f_9@@89) (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@73 f_9@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@73 f_9@@89))
))) (forall ((o2_1@@74 T@Ref) (f_9@@90 T@Field_14763_14768) ) (!  (=> (select (|PolymorphicMapType_10317_14750_38310#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@74 f_9@@90) (= (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@56) o2_1@@74 f_9@@90) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@74 f_9@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@74 f_9@@90))
))) (forall ((o2_1@@75 T@Ref) (f_9@@91 T@Field_5562_53) ) (!  (=> (select (|PolymorphicMapType_10317_17814_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@75 f_9@@91) (= (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@56) o2_1@@75 f_9@@91) (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@75 f_9@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@75 f_9@@91))
))) (forall ((o2_1@@76 T@Ref) (f_9@@92 T@Field_5562_5480) ) (!  (=> (select (|PolymorphicMapType_10317_17814_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@76 f_9@@92) (= (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@56) o2_1@@76 f_9@@92) (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@76 f_9@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@76 f_9@@92))
))) (forall ((o2_1@@77 T@Ref) (f_9@@93 T@Field_17814_17815) ) (!  (=> (select (|PolymorphicMapType_10317_17814_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@77 f_9@@93) (= (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@56) o2_1@@77 f_9@@93) (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@77 f_9@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@77 f_9@@93))
))) (forall ((o2_1@@78 T@Ref) (f_9@@94 T@Field_17827_17832) ) (!  (=> (select (|PolymorphicMapType_10317_17814_39160#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@56) null (WandMaskField_14220 pm_f_1@@11))) o2_1@@78 f_9@@94) (= (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@56) o2_1@@78 f_9@@94) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@78 f_9@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@29) o2_1@@78 f_9@@94))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@29 Mask@@64) (IsWandField_14220_41601 pm_f_1@@11))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_9768) (ExhaleHeap@@30 T@PolymorphicMapType_9768) (Mask@@65 T@PolymorphicMapType_9789) (pm_f_1@@12 T@Field_17814_17815) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@30 Mask@@65) (=> (and (HasDirectPerm_5562_5563 Mask@@65 null pm_f_1@@12) (IsWandField_5562_41244 pm_f_1@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@79 T@Ref) (f_9@@95 T@Field_9828_53) ) (!  (=> (select (|PolymorphicMapType_10317_9828_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@79 f_9@@95) (= (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@57) o2_1@@79 f_9@@95) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@79 f_9@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@79 f_9@@95))
)) (forall ((o2_1@@80 T@Ref) (f_9@@96 T@Field_9841_9842) ) (!  (=> (select (|PolymorphicMapType_10317_9828_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@80 f_9@@96) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@57) o2_1@@80 f_9@@96) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@80 f_9@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@80 f_9@@96))
))) (forall ((o2_1@@81 T@Ref) (f_9@@97 T@Field_5479_5529) ) (!  (=> (select (|PolymorphicMapType_10317_9828_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@81 f_9@@97) (= (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@57) o2_1@@81 f_9@@97) (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@81 f_9@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@81 f_9@@97))
))) (forall ((o2_1@@82 T@Ref) (f_9@@98 T@Field_5479_14238) ) (!  (=> (select (|PolymorphicMapType_10317_9828_36610#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@82 f_9@@98) (= (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@57) o2_1@@82 f_9@@98) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@82 f_9@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@82 f_9@@98))
))) (forall ((o2_1@@83 T@Ref) (f_9@@99 T@Field_14220_53) ) (!  (=> (select (|PolymorphicMapType_10317_14220_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@83 f_9@@99) (= (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@57) o2_1@@83 f_9@@99) (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@83 f_9@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@83 f_9@@99))
))) (forall ((o2_1@@84 T@Ref) (f_9@@100 T@Field_14220_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14220_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@84 f_9@@100) (= (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@57) o2_1@@84 f_9@@100) (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@84 f_9@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@84 f_9@@100))
))) (forall ((o2_1@@85 T@Ref) (f_9@@101 T@Field_14220_14221) ) (!  (=> (select (|PolymorphicMapType_10317_14220_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@85 f_9@@101) (= (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@57) o2_1@@85 f_9@@101) (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@85 f_9@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@85 f_9@@101))
))) (forall ((o2_1@@86 T@Ref) (f_9@@102 T@Field_14233_14238) ) (!  (=> (select (|PolymorphicMapType_10317_14220_37460#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@86 f_9@@102) (= (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@57) o2_1@@86 f_9@@102) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@86 f_9@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@86 f_9@@102))
))) (forall ((o2_1@@87 T@Ref) (f_9@@103 T@Field_5528_53) ) (!  (=> (select (|PolymorphicMapType_10317_14750_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@87 f_9@@103) (= (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@57) o2_1@@87 f_9@@103) (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@87 f_9@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@87 f_9@@103))
))) (forall ((o2_1@@88 T@Ref) (f_9@@104 T@Field_5528_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14750_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@88 f_9@@104) (= (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@57) o2_1@@88 f_9@@104) (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@88 f_9@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@88 f_9@@104))
))) (forall ((o2_1@@89 T@Ref) (f_9@@105 T@Field_14750_14751) ) (!  (=> (select (|PolymorphicMapType_10317_14750_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@89 f_9@@105) (= (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@57) o2_1@@89 f_9@@105) (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@89 f_9@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@89 f_9@@105))
))) (forall ((o2_1@@90 T@Ref) (f_9@@106 T@Field_14763_14768) ) (!  (=> (select (|PolymorphicMapType_10317_14750_38310#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@90 f_9@@106) (= (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@57) o2_1@@90 f_9@@106) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@90 f_9@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@90 f_9@@106))
))) (forall ((o2_1@@91 T@Ref) (f_9@@107 T@Field_5562_53) ) (!  (=> (select (|PolymorphicMapType_10317_17814_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@91 f_9@@107) (= (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@57) o2_1@@91 f_9@@107) (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@91 f_9@@107)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@91 f_9@@107))
))) (forall ((o2_1@@92 T@Ref) (f_9@@108 T@Field_5562_5480) ) (!  (=> (select (|PolymorphicMapType_10317_17814_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@92 f_9@@108) (= (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@57) o2_1@@92 f_9@@108) (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@92 f_9@@108)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@92 f_9@@108))
))) (forall ((o2_1@@93 T@Ref) (f_9@@109 T@Field_17814_17815) ) (!  (=> (select (|PolymorphicMapType_10317_17814_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@93 f_9@@109) (= (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@57) o2_1@@93 f_9@@109) (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@93 f_9@@109)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@93 f_9@@109))
))) (forall ((o2_1@@94 T@Ref) (f_9@@110 T@Field_17827_17832) ) (!  (=> (select (|PolymorphicMapType_10317_17814_39160#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) null (WandMaskField_5562 pm_f_1@@12))) o2_1@@94 f_9@@110) (= (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@57) o2_1@@94 f_9@@110) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@94 f_9@@110)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@30) o2_1@@94 f_9@@110))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@30 Mask@@65) (IsWandField_5562_41244 pm_f_1@@12))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_9768) (ExhaleHeap@@31 T@PolymorphicMapType_9768) (Mask@@66 T@PolymorphicMapType_9789) (pm_f_1@@13 T@Field_14750_14751) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@31 Mask@@66) (=> (and (HasDirectPerm_5528_5529 Mask@@66 null pm_f_1@@13) (IsWandField_5528_40887 pm_f_1@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@95 T@Ref) (f_9@@111 T@Field_9828_53) ) (!  (=> (select (|PolymorphicMapType_10317_9828_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@95 f_9@@111) (= (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@58) o2_1@@95 f_9@@111) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@95 f_9@@111)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@95 f_9@@111))
)) (forall ((o2_1@@96 T@Ref) (f_9@@112 T@Field_9841_9842) ) (!  (=> (select (|PolymorphicMapType_10317_9828_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@96 f_9@@112) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@58) o2_1@@96 f_9@@112) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@96 f_9@@112)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@96 f_9@@112))
))) (forall ((o2_1@@97 T@Ref) (f_9@@113 T@Field_5479_5529) ) (!  (=> (select (|PolymorphicMapType_10317_9828_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@97 f_9@@113) (= (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@58) o2_1@@97 f_9@@113) (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@97 f_9@@113)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@97 f_9@@113))
))) (forall ((o2_1@@98 T@Ref) (f_9@@114 T@Field_5479_14238) ) (!  (=> (select (|PolymorphicMapType_10317_9828_36610#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@98 f_9@@114) (= (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@58) o2_1@@98 f_9@@114) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@98 f_9@@114)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@98 f_9@@114))
))) (forall ((o2_1@@99 T@Ref) (f_9@@115 T@Field_14220_53) ) (!  (=> (select (|PolymorphicMapType_10317_14220_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@99 f_9@@115) (= (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@58) o2_1@@99 f_9@@115) (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@99 f_9@@115)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@99 f_9@@115))
))) (forall ((o2_1@@100 T@Ref) (f_9@@116 T@Field_14220_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14220_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@100 f_9@@116) (= (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@58) o2_1@@100 f_9@@116) (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@100 f_9@@116)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@100 f_9@@116))
))) (forall ((o2_1@@101 T@Ref) (f_9@@117 T@Field_14220_14221) ) (!  (=> (select (|PolymorphicMapType_10317_14220_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@101 f_9@@117) (= (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@58) o2_1@@101 f_9@@117) (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@101 f_9@@117)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@101 f_9@@117))
))) (forall ((o2_1@@102 T@Ref) (f_9@@118 T@Field_14233_14238) ) (!  (=> (select (|PolymorphicMapType_10317_14220_37460#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@102 f_9@@118) (= (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@58) o2_1@@102 f_9@@118) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@102 f_9@@118)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@102 f_9@@118))
))) (forall ((o2_1@@103 T@Ref) (f_9@@119 T@Field_5528_53) ) (!  (=> (select (|PolymorphicMapType_10317_14750_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@103 f_9@@119) (= (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@58) o2_1@@103 f_9@@119) (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@103 f_9@@119)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@103 f_9@@119))
))) (forall ((o2_1@@104 T@Ref) (f_9@@120 T@Field_5528_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14750_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@104 f_9@@120) (= (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@58) o2_1@@104 f_9@@120) (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@104 f_9@@120)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@104 f_9@@120))
))) (forall ((o2_1@@105 T@Ref) (f_9@@121 T@Field_14750_14751) ) (!  (=> (select (|PolymorphicMapType_10317_14750_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@105 f_9@@121) (= (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@58) o2_1@@105 f_9@@121) (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@105 f_9@@121)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@105 f_9@@121))
))) (forall ((o2_1@@106 T@Ref) (f_9@@122 T@Field_14763_14768) ) (!  (=> (select (|PolymorphicMapType_10317_14750_38310#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@106 f_9@@122) (= (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) o2_1@@106 f_9@@122) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@106 f_9@@122)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@106 f_9@@122))
))) (forall ((o2_1@@107 T@Ref) (f_9@@123 T@Field_5562_53) ) (!  (=> (select (|PolymorphicMapType_10317_17814_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@107 f_9@@123) (= (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@58) o2_1@@107 f_9@@123) (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@107 f_9@@123)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@107 f_9@@123))
))) (forall ((o2_1@@108 T@Ref) (f_9@@124 T@Field_5562_5480) ) (!  (=> (select (|PolymorphicMapType_10317_17814_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@108 f_9@@124) (= (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@58) o2_1@@108 f_9@@124) (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@108 f_9@@124)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@108 f_9@@124))
))) (forall ((o2_1@@109 T@Ref) (f_9@@125 T@Field_17814_17815) ) (!  (=> (select (|PolymorphicMapType_10317_17814_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@109 f_9@@125) (= (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@58) o2_1@@109 f_9@@125) (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@109 f_9@@125)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@109 f_9@@125))
))) (forall ((o2_1@@110 T@Ref) (f_9@@126 T@Field_17827_17832) ) (!  (=> (select (|PolymorphicMapType_10317_17814_39160#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@58) null (WandMaskField_5528 pm_f_1@@13))) o2_1@@110 f_9@@126) (= (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@58) o2_1@@110 f_9@@126) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@110 f_9@@126)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@31) o2_1@@110 f_9@@126))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@31 Mask@@66) (IsWandField_5528_40887 pm_f_1@@13))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_9768) (ExhaleHeap@@32 T@PolymorphicMapType_9768) (Mask@@67 T@PolymorphicMapType_9789) (pm_f_1@@14 T@Field_5479_5529) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@32 Mask@@67) (=> (and (HasDirectPerm_5479_5529 Mask@@67 null pm_f_1@@14) (IsWandField_5479_40530 pm_f_1@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@111 T@Ref) (f_9@@127 T@Field_9828_53) ) (!  (=> (select (|PolymorphicMapType_10317_9828_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@111 f_9@@127) (= (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@59) o2_1@@111 f_9@@127) (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@111 f_9@@127)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@111 f_9@@127))
)) (forall ((o2_1@@112 T@Ref) (f_9@@128 T@Field_9841_9842) ) (!  (=> (select (|PolymorphicMapType_10317_9828_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@112 f_9@@128) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@59) o2_1@@112 f_9@@128) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@112 f_9@@128)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@112 f_9@@128))
))) (forall ((o2_1@@113 T@Ref) (f_9@@129 T@Field_5479_5529) ) (!  (=> (select (|PolymorphicMapType_10317_9828_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@113 f_9@@129) (= (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| Heap@@59) o2_1@@113 f_9@@129) (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@113 f_9@@129)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5479_5529#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@113 f_9@@129))
))) (forall ((o2_1@@114 T@Ref) (f_9@@130 T@Field_5479_14238) ) (!  (=> (select (|PolymorphicMapType_10317_9828_36610#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@114 f_9@@130) (= (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) o2_1@@114 f_9@@130) (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@114 f_9@@130)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@114 f_9@@130))
))) (forall ((o2_1@@115 T@Ref) (f_9@@131 T@Field_14220_53) ) (!  (=> (select (|PolymorphicMapType_10317_14220_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@115 f_9@@131) (= (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| Heap@@59) o2_1@@115 f_9@@131) (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@115 f_9@@131)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_53#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@115 f_9@@131))
))) (forall ((o2_1@@116 T@Ref) (f_9@@132 T@Field_14220_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14220_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@116 f_9@@132) (= (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| Heap@@59) o2_1@@116 f_9@@132) (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@116 f_9@@132)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_5480#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@116 f_9@@132))
))) (forall ((o2_1@@117 T@Ref) (f_9@@133 T@Field_14220_14221) ) (!  (=> (select (|PolymorphicMapType_10317_14220_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@117 f_9@@133) (= (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| Heap@@59) o2_1@@117 f_9@@133) (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@117 f_9@@133)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5506_5507#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@117 f_9@@133))
))) (forall ((o2_1@@118 T@Ref) (f_9@@134 T@Field_14233_14238) ) (!  (=> (select (|PolymorphicMapType_10317_14220_37460#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@118 f_9@@134) (= (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| Heap@@59) o2_1@@118 f_9@@134) (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@118 f_9@@134)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_14220_34428#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@118 f_9@@134))
))) (forall ((o2_1@@119 T@Ref) (f_9@@135 T@Field_5528_53) ) (!  (=> (select (|PolymorphicMapType_10317_14750_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@119 f_9@@135) (= (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| Heap@@59) o2_1@@119 f_9@@135) (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@119 f_9@@135)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_53#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@119 f_9@@135))
))) (forall ((o2_1@@120 T@Ref) (f_9@@136 T@Field_5528_5480) ) (!  (=> (select (|PolymorphicMapType_10317_14750_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@120 f_9@@136) (= (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| Heap@@59) o2_1@@120 f_9@@136) (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@120 f_9@@136)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5480#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@120 f_9@@136))
))) (forall ((o2_1@@121 T@Ref) (f_9@@137 T@Field_14750_14751) ) (!  (=> (select (|PolymorphicMapType_10317_14750_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@121 f_9@@137) (= (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| Heap@@59) o2_1@@121 f_9@@137) (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@121 f_9@@137)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_5529#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@121 f_9@@137))
))) (forall ((o2_1@@122 T@Ref) (f_9@@138 T@Field_14763_14768) ) (!  (=> (select (|PolymorphicMapType_10317_14750_38310#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@122 f_9@@138) (= (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| Heap@@59) o2_1@@122 f_9@@138) (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@122 f_9@@138)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5528_32611#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@122 f_9@@138))
))) (forall ((o2_1@@123 T@Ref) (f_9@@139 T@Field_5562_53) ) (!  (=> (select (|PolymorphicMapType_10317_17814_53#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@123 f_9@@139) (= (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| Heap@@59) o2_1@@123 f_9@@139) (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@123 f_9@@139)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_53#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@123 f_9@@139))
))) (forall ((o2_1@@124 T@Ref) (f_9@@140 T@Field_5562_5480) ) (!  (=> (select (|PolymorphicMapType_10317_17814_9842#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@124 f_9@@140) (= (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| Heap@@59) o2_1@@124 f_9@@140) (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@124 f_9@@140)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5480#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@124 f_9@@140))
))) (forall ((o2_1@@125 T@Ref) (f_9@@141 T@Field_17814_17815) ) (!  (=> (select (|PolymorphicMapType_10317_17814_14221#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@125 f_9@@141) (= (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| Heap@@59) o2_1@@125 f_9@@141) (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@125 f_9@@141)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5562_5563#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@125 f_9@@141))
))) (forall ((o2_1@@126 T@Ref) (f_9@@142 T@Field_17827_17832) ) (!  (=> (select (|PolymorphicMapType_10317_17814_39160#PolymorphicMapType_10317| (select (|PolymorphicMapType_9768_5479_31691#PolymorphicMapType_9768| Heap@@59) null (WandMaskField_5479 pm_f_1@@14))) o2_1@@126 f_9@@142) (= (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| Heap@@59) o2_1@@126 f_9@@142) (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@126 f_9@@142)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9768_5566_28280#PolymorphicMapType_9768| ExhaleHeap@@32) o2_1@@126 f_9@@142))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@32 Mask@@67) (IsWandField_5479_40530 pm_f_1@@14))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_9768) (Mask@@68 T@PolymorphicMapType_9789) ) (!  (=> (and (state Heap@@60 Mask@@68) (< AssumeFunctionsAbove 0)) (= (one_1 Heap@@60) 1))
 :qid |stdinbpl.238:15|
 :skolemid |24|
 :pattern ( (state Heap@@60 Mask@@68) (one_1 Heap@@60))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_9768) (Mask@@69 T@PolymorphicMapType_9789) ) (!  (=> (and (state Heap@@61 Mask@@69) (< AssumeFunctionsAbove 1)) (= (two_1 Heap@@61) 2))
 :qid |stdinbpl.288:15|
 :skolemid |28|
 :pattern ( (state Heap@@61 Mask@@69) (two_1 Heap@@61))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@62 () T@PolymorphicMapType_9768)
(declare-fun x@@19 () T@Ref)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_9789)
(declare-fun getPredWandId_5479_5480 (T@Field_9841_9842) Int)
(declare-fun getPredWandId_5479_5507 (T@Field_5479_5529) Int)
(declare-fun getPredWandId_5479_53 (T@Field_9828_53) Int)
(declare-fun getPredWandId_5479_69219 (T@Field_5479_14238) Int)
(declare-fun getPredWandId_5506_5480 (T@Field_14220_5480) Int)
(declare-fun getPredWandId_5506_53 (T@Field_14220_53) Int)
(declare-fun getPredWandId_5506_69866 (T@Field_14233_14238) Int)
(declare-fun getPredWandId_5528_5480 (T@Field_5528_5480) Int)
(declare-fun getPredWandId_5528_53 (T@Field_5528_53) Int)
(declare-fun getPredWandId_5528_70513 (T@Field_14763_14768) Int)
(declare-fun getPredWandId_5562_5480 (T@Field_5562_5480) Int)
(declare-fun getPredWandId_5562_53 (T@Field_5562_53) Int)
(declare-fun getPredWandId_5562_71160 (T@Field_17827_17832) Int)
(set-info :boogie-vc-id producePred)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon9_correct true))
(let ((anon15_Else_correct  (=> (and (not (and (= (one_1 Heap@@62) (two_1 Heap@@62)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 f_7) null)))) (= (ControlFlow 0 9) 6)) anon9_correct)))
(let ((anon15_Then_correct  (=> (and (= (one_1 Heap@@62) (two_1 Heap@@62)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 f_7) null))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_5479_5480 ZeroMask x@@19 g)) (=> (HasDirectPerm_5479_5480 ZeroMask x@@19 g) (=> (= (ControlFlow 0 7) 6) anon9_correct))))))
(let ((anon14_Else_correct  (=> (not (= (one_1 Heap@@62) (two_1 Heap@@62))) (and (=> (= (ControlFlow 0 12) 7) anon15_Then_correct) (=> (= (ControlFlow 0 12) 9) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (= (one_1 Heap@@62) (two_1 Heap@@62)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_5479_5480 ZeroMask x@@19 f_7)) (=> (HasDirectPerm_5479_5480 ZeroMask x@@19 f_7) (and (=> (= (ControlFlow 0 10) 7) anon15_Then_correct) (=> (= (ControlFlow 0 10) 9) anon15_Else_correct)))))))
(let ((anon13_Then_correct true))
(let ((anon12_Then_correct true))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (= (one_1 Heap@@62) (two_1 Heap@@62)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 f_7) null)))) (and (= (one_1 Heap@@62) (two_1 Heap@@62)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 f_7) null)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 g) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 g))))
 :qid |stdinbpl.958:17|
 :skolemid |81|
 :pattern ( (neverTriggered6 i_1) (neverTriggered6 i_1_1))
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (= (one_1 Heap@@62) (two_1 Heap@@62)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 f_7) null)))) (and (= (one_1 Heap@@62) (two_1 Heap@@62)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 f_7) null)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 g) (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 g))))
 :qid |stdinbpl.958:17|
 :skolemid |81|
 :pattern ( (neverTriggered6 i_1@@0) (neverTriggered6 i_1_1@@0))
)) (=> (forall ((i_1@@1 Int) ) (!  (=> (and (and (= (one_1 Heap@@62) (two_1 Heap@@62)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 f_7) null))) (< NoPerm FullPerm)) (and (= (invRecv6 (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 g)) i_1@@1) (qpRange6 (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 g))))
 :qid |stdinbpl.964:22|
 :skolemid |82|
)) (=> (and (forall ((x_1_1_1 T@Ref) ) (!  (=> (and (and (and (= (one_1 Heap@@62) (two_1 Heap@@62)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 f_7) null))) (< NoPerm FullPerm)) (qpRange6 x_1_1_1)) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 g) x_1_1_1))
 :qid |stdinbpl.968:22|
 :skolemid |83|
 :pattern ( (invRecv6 x_1_1_1))
)) (forall ((x_1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (= (one_1 Heap@@62) (two_1 Heap@@62)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 f_7) null))) (< NoPerm FullPerm)) (qpRange6 x_1_1_1@@0)) (and (=> (< NoPerm FullPerm) (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 g) x_1_1_1@@0)) (= (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| QPMask@0) null (Q x_1_1_1@@0)) (+ (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| ZeroMask) null (Q x_1_1_1@@0)) FullPerm))))
 :qid |stdinbpl.974:22|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| QPMask@0) null (Q x_1_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_9841_9842) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_5479_5480 f_5))) (not (= (getPredWandId_5479_5480 f_5) 0))) (= (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| ZeroMask) o_9 f_5) (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| QPMask@0) o_9 f_5)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| ZeroMask) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_9789_5479_5480#PolymorphicMapType_9789| QPMask@0) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_5479_5529) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_5479_34674 f_5@@0))) (not (= (getPredWandId_5479_5507 f_5@@0) 0))) (= (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| ZeroMask) o_9@@0 f_5@@0) (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| QPMask@0) o_9@@0 f_5@@0)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| ZeroMask) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9789_5479_5507#PolymorphicMapType_9789| QPMask@0) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_9828_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_5479_53 f_5@@1))) (not (= (getPredWandId_5479_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| ZeroMask) o_9@@1 f_5@@1) (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| QPMask@0) o_9@@1 f_5@@1)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| ZeroMask) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9789_5479_53#PolymorphicMapType_9789| QPMask@0) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_5479_14238) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_5479_50877 f_5@@2))) (not (= (getPredWandId_5479_69219 f_5@@2) 0))) (= (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| ZeroMask) o_9@@2 f_5@@2) (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| QPMask@0) o_9@@2 f_5@@2)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| ZeroMask) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9789_5479_48191#PolymorphicMapType_9789| QPMask@0) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_14220_5480) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_5506_5480 f_5@@3))) (not (= (getPredWandId_5506_5480 f_5@@3) 0))) (= (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| ZeroMask) o_9@@3 f_5@@3) (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| QPMask@0) o_9@@3 f_5@@3)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| ZeroMask) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9789_5506_5480#PolymorphicMapType_9789| QPMask@0) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_14220_14221) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_5506_5507 f_5@@4))) (not (= (getPredWandId_5506_5507 f_5@@4) 0))) (= (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| ZeroMask) o_9@@4 f_5@@4) (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| QPMask@0) o_9@@4 f_5@@4)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| ZeroMask) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| QPMask@0) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_14220_53) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_5506_53 f_5@@5))) (not (= (getPredWandId_5506_53 f_5@@5) 0))) (= (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| ZeroMask) o_9@@5 f_5@@5) (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| QPMask@0) o_9@@5 f_5@@5)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| ZeroMask) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_9789_5506_53#PolymorphicMapType_9789| QPMask@0) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_14233_14238) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_5506_51540 f_5@@6))) (not (= (getPredWandId_5506_69866 f_5@@6) 0))) (= (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| ZeroMask) o_9@@6 f_5@@6) (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| QPMask@0) o_9@@6 f_5@@6)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| ZeroMask) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_9789_5506_48522#PolymorphicMapType_9789| QPMask@0) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_5528_5480) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_5528_5480 f_5@@7))) (not (= (getPredWandId_5528_5480 f_5@@7) 0))) (= (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| ZeroMask) o_9@@7 f_5@@7) (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| QPMask@0) o_9@@7 f_5@@7)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| ZeroMask) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_9789_5528_5480#PolymorphicMapType_9789| QPMask@0) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_14750_14751) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_5528_5529 f_5@@8))) (not (= (getPredWandId_5528_5529 f_5@@8) 0))) (= (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| ZeroMask) o_9@@8 f_5@@8) (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| QPMask@0) o_9@@8 f_5@@8)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| ZeroMask) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_9789_5528_5529#PolymorphicMapType_9789| QPMask@0) o_9@@8 f_5@@8))
))) (forall ((o_9@@9 T@Ref) (f_5@@9 T@Field_5528_53) ) (!  (=> (or (or (not (= o_9@@9 null)) (not (IsPredicateField_5528_53 f_5@@9))) (not (= (getPredWandId_5528_53 f_5@@9) 0))) (= (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| ZeroMask) o_9@@9 f_5@@9) (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| QPMask@0) o_9@@9 f_5@@9)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| ZeroMask) o_9@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_9789_5528_53#PolymorphicMapType_9789| QPMask@0) o_9@@9 f_5@@9))
))) (forall ((o_9@@10 T@Ref) (f_5@@10 T@Field_14763_14768) ) (!  (=> (or (or (not (= o_9@@10 null)) (not (IsPredicateField_5528_52203 f_5@@10))) (not (= (getPredWandId_5528_70513 f_5@@10) 0))) (= (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| ZeroMask) o_9@@10 f_5@@10) (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| QPMask@0) o_9@@10 f_5@@10)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| ZeroMask) o_9@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_9789_5528_48853#PolymorphicMapType_9789| QPMask@0) o_9@@10 f_5@@10))
))) (forall ((o_9@@11 T@Ref) (f_5@@11 T@Field_5562_5480) ) (!  (=> (or (or (not (= o_9@@11 null)) (not (IsPredicateField_5562_5480 f_5@@11))) (not (= (getPredWandId_5562_5480 f_5@@11) 0))) (= (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| ZeroMask) o_9@@11 f_5@@11) (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| QPMask@0) o_9@@11 f_5@@11)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| ZeroMask) o_9@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_9789_5562_5480#PolymorphicMapType_9789| QPMask@0) o_9@@11 f_5@@11))
))) (forall ((o_9@@12 T@Ref) (f_5@@12 T@Field_17814_17815) ) (!  (=> (or (or (not (= o_9@@12 null)) (not (IsPredicateField_5562_5563 f_5@@12))) (not (= (getPredWandId_5562_5563 f_5@@12) 0))) (= (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| ZeroMask) o_9@@12 f_5@@12) (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| QPMask@0) o_9@@12 f_5@@12)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| ZeroMask) o_9@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_9789_5562_5563#PolymorphicMapType_9789| QPMask@0) o_9@@12 f_5@@12))
))) (forall ((o_9@@13 T@Ref) (f_5@@13 T@Field_5562_53) ) (!  (=> (or (or (not (= o_9@@13 null)) (not (IsPredicateField_5562_53 f_5@@13))) (not (= (getPredWandId_5562_53 f_5@@13) 0))) (= (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| ZeroMask) o_9@@13 f_5@@13) (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| QPMask@0) o_9@@13 f_5@@13)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| ZeroMask) o_9@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_9789_5562_53#PolymorphicMapType_9789| QPMask@0) o_9@@13 f_5@@13))
))) (forall ((o_9@@14 T@Ref) (f_5@@14 T@Field_17827_17832) ) (!  (=> (or (or (not (= o_9@@14 null)) (not (IsPredicateField_5562_52866 f_5@@14))) (not (= (getPredWandId_5562_71160 f_5@@14) 0))) (= (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| ZeroMask) o_9@@14 f_5@@14) (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| QPMask@0) o_9@@14 f_5@@14)))
 :qid |stdinbpl.980:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| ZeroMask) o_9@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_9789_5562_49184#PolymorphicMapType_9789| QPMask@0) o_9@@14 f_5@@14))
))) (forall ((x_1_1_1@@1 T@Ref) ) (!  (=> (not (and (and (and (= (one_1 Heap@@62) (two_1 Heap@@62)) (not (= (select (|PolymorphicMapType_9768_5342_5343#PolymorphicMapType_9768| Heap@@62) x@@19 f_7) null))) (< NoPerm FullPerm)) (qpRange6 x_1_1_1@@1))) (= (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| QPMask@0) null (Q x_1_1_1@@1)) (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| ZeroMask) null (Q x_1_1_1@@1))))
 :qid |stdinbpl.984:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_9789_5506_5507#PolymorphicMapType_9789| QPMask@0) null (Q x_1_1_1@@1)))
))) (and (and (state Heap@@62 QPMask@0) (state Heap@@62 QPMask@0)) (and (state Heap@@62 QPMask@0) (= (ControlFlow 0 2) (- 0 1))))) false)))))))
(let ((anon0_correct  (=> (state Heap@@62 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_9768_5339_53#PolymorphicMapType_9768| Heap@@62) x@@19 $allocated) (state Heap@@62 ZeroMask))) (and (and (and (and (=> (= (ControlFlow 0 13) 2) anon11_Else_correct) (=> (= (ControlFlow 0 13) 4) anon12_Then_correct)) (=> (= (ControlFlow 0 13) 5) anon13_Then_correct)) (=> (= (ControlFlow 0 13) 10) anon14_Then_correct)) (=> (= (ControlFlow 0 13) 12) anon14_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
