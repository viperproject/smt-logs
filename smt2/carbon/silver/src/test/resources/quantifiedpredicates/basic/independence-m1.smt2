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
(declare-sort T@Field_19186_53 0)
(declare-sort T@Field_19199_19200 0)
(declare-sort T@Field_24377_24378 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_23380_1999 0)
(declare-sort T@Field_24390_24395 0)
(declare-sort T@Field_23457_23458 0)
(declare-sort T@Field_23470_23475 0)
(declare-sort T@Field_22549_22554 0)
(declare-sort T@Field_11079_2014 0)
(declare-sort T@Field_11079_53 0)
(declare-sort T@Field_11079_19200 0)
(declare-sort T@Field_11054_2014 0)
(declare-sort T@Field_11054_53 0)
(declare-sort T@Field_11054_19200 0)
(declare-sort T@Field_11051_11080 0)
(declare-sort T@Field_11051_22554 0)
(declare-sort T@Field_22566_22567 0)
(declare-sort T@Field_22535_1535 0)
(declare-sort T@Field_22535_53 0)
(declare-sort T@Field_22535_19200 0)
(declare-datatypes ((T@PolymorphicMapType_19147 0)) (((PolymorphicMapType_19147 (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| (Array T@Ref T@Field_23380_1999 Real)) (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| (Array T@Ref T@Field_24377_24378 Real)) (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| (Array T@Ref T@Field_23457_23458 Real)) (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| (Array T@Ref T@Field_22535_1535 Real)) (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| (Array T@Ref T@Field_11051_11080 Real)) (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| (Array T@Ref T@Field_19186_53 Real)) (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| (Array T@Ref T@Field_19199_19200 Real)) (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| (Array T@Ref T@Field_11051_22554 Real)) (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| (Array T@Ref T@Field_11079_2014 Real)) (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| (Array T@Ref T@Field_11079_53 Real)) (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| (Array T@Ref T@Field_11079_19200 Real)) (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| (Array T@Ref T@Field_24390_24395 Real)) (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| (Array T@Ref T@Field_11054_2014 Real)) (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| (Array T@Ref T@Field_11054_53 Real)) (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| (Array T@Ref T@Field_11054_19200 Real)) (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| (Array T@Ref T@Field_23470_23475 Real)) (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| (Array T@Ref T@Field_22566_22567 Real)) (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| (Array T@Ref T@Field_22535_53 Real)) (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| (Array T@Ref T@Field_22535_19200 Real)) (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| (Array T@Ref T@Field_22549_22554 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19675 0)) (((PolymorphicMapType_19675 (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (Array T@Ref T@Field_23380_1999 Bool)) (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (Array T@Ref T@Field_19186_53 Bool)) (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (Array T@Ref T@Field_19199_19200 Bool)) (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (Array T@Ref T@Field_11051_22554 Bool)) (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (Array T@Ref T@Field_11051_11080 Bool)) (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (Array T@Ref T@Field_22535_1535 Bool)) (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (Array T@Ref T@Field_22535_53 Bool)) (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (Array T@Ref T@Field_22535_19200 Bool)) (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (Array T@Ref T@Field_22549_22554 Bool)) (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (Array T@Ref T@Field_22566_22567 Bool)) (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (Array T@Ref T@Field_11054_2014 Bool)) (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (Array T@Ref T@Field_11054_53 Bool)) (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (Array T@Ref T@Field_11054_19200 Bool)) (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (Array T@Ref T@Field_23470_23475 Bool)) (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (Array T@Ref T@Field_23457_23458 Bool)) (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (Array T@Ref T@Field_11079_2014 Bool)) (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (Array T@Ref T@Field_11079_53 Bool)) (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (Array T@Ref T@Field_11079_19200 Bool)) (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (Array T@Ref T@Field_24390_24395 Bool)) (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (Array T@Ref T@Field_24377_24378 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19126 0)) (((PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| (Array T@Ref T@Field_19186_53 Bool)) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| (Array T@Ref T@Field_19199_19200 T@Ref)) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| (Array T@Ref T@Field_24377_24378 T@FrameType)) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| (Array T@Ref T@Field_23380_1999 Int)) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| (Array T@Ref T@Field_24390_24395 T@PolymorphicMapType_19675)) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| (Array T@Ref T@Field_23457_23458 T@FrameType)) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| (Array T@Ref T@Field_23470_23475 T@PolymorphicMapType_19675)) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| (Array T@Ref T@Field_22549_22554 T@PolymorphicMapType_19675)) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| (Array T@Ref T@Field_11079_2014 Int)) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| (Array T@Ref T@Field_11079_53 Bool)) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| (Array T@Ref T@Field_11079_19200 T@Ref)) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| (Array T@Ref T@Field_11054_2014 Int)) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| (Array T@Ref T@Field_11054_53 Bool)) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| (Array T@Ref T@Field_11054_19200 T@Ref)) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| (Array T@Ref T@Field_11051_11080 T@FrameType)) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| (Array T@Ref T@Field_11051_22554 T@PolymorphicMapType_19675)) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| (Array T@Ref T@Field_22566_22567 T@FrameType)) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| (Array T@Ref T@Field_22535_1535 Int)) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| (Array T@Ref T@Field_22535_53 Bool)) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| (Array T@Ref T@Field_22535_19200 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_19186_53)
(declare-fun f_7 () T@Field_23380_1999)
(declare-fun g () T@Field_23380_1999)
(declare-fun succHeap (T@PolymorphicMapType_19126 T@PolymorphicMapType_19126) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_19126 T@PolymorphicMapType_19126) Bool)
(declare-fun state (T@PolymorphicMapType_19126 T@PolymorphicMapType_19147) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_19147) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19675)
(declare-fun p2 (T@Ref Int) T@Field_24377_24378)
(declare-fun IsPredicateField_11079_11080 (T@Field_24377_24378) Bool)
(declare-fun |p2#trigger_11079| (T@PolymorphicMapType_19126 T@Field_24377_24378) Bool)
(declare-fun |p2#everUsed_11079| (T@Field_24377_24378) Bool)
(declare-fun p1 (T@Ref) T@Field_23457_23458)
(declare-fun IsPredicateField_11054_11055 (T@Field_23457_23458) Bool)
(declare-fun |p1#trigger_11054| (T@PolymorphicMapType_19126 T@Field_23457_23458) Bool)
(declare-fun |p1#everUsed_11054| (T@Field_23457_23458) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_19126 T@PolymorphicMapType_19126 T@PolymorphicMapType_19147) Bool)
(declare-fun IsPredicateField_11006_11007 (T@Field_22566_22567) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_22535 (T@Field_22566_22567) T@Field_22549_22554)
(declare-fun HasDirectPerm_22535_11080 (T@PolymorphicMapType_19147 T@Ref T@Field_22566_22567) Bool)
(declare-fun IsPredicateField_11051_67161 (T@Field_11051_11080) Bool)
(declare-fun PredicateMaskField_11051 (T@Field_11051_11080) T@Field_11051_22554)
(declare-fun HasDirectPerm_11051_11080 (T@PolymorphicMapType_19147 T@Ref T@Field_11051_11080) Bool)
(declare-fun PredicateMaskField_11054 (T@Field_23457_23458) T@Field_23470_23475)
(declare-fun HasDirectPerm_11054_11055 (T@PolymorphicMapType_19147 T@Ref T@Field_23457_23458) Bool)
(declare-fun PredicateMaskField_11079 (T@Field_24377_24378) T@Field_24390_24395)
(declare-fun HasDirectPerm_11079_11080 (T@PolymorphicMapType_19147 T@Ref T@Field_24377_24378) Bool)
(declare-fun IsWandField_11006_11007 (T@Field_22566_22567) Bool)
(declare-fun WandMaskField_11006 (T@Field_22566_22567) T@Field_22549_22554)
(declare-fun IsWandField_11051_73886 (T@Field_11051_11080) Bool)
(declare-fun WandMaskField_11051 (T@Field_11051_11080) T@Field_11051_22554)
(declare-fun IsWandField_11054_73529 (T@Field_23457_23458) Bool)
(declare-fun WandMaskField_11054 (T@Field_23457_23458) T@Field_23470_23475)
(declare-fun IsWandField_11079_73172 (T@Field_24377_24378) Bool)
(declare-fun WandMaskField_11079 (T@Field_24377_24378) T@Field_24390_24395)
(declare-fun |p2#sm| (T@Ref Int) T@Field_24390_24395)
(declare-fun |p1#sm| (T@Ref) T@Field_23470_23475)
(declare-fun dummyHeap () T@PolymorphicMapType_19126)
(declare-fun ZeroMask () T@PolymorphicMapType_19147)
(declare-fun InsidePredicate_24377_24377 (T@Field_24377_24378 T@FrameType T@Field_24377_24378 T@FrameType) Bool)
(declare-fun InsidePredicate_23457_23457 (T@Field_23457_23458 T@FrameType T@Field_23457_23458 T@FrameType) Bool)
(declare-fun InsidePredicate_22535_22535 (T@Field_22566_22567 T@FrameType T@Field_22566_22567 T@FrameType) Bool)
(declare-fun InsidePredicate_19186_19186 (T@Field_11051_11080 T@FrameType T@Field_11051_11080 T@FrameType) Bool)
(declare-fun IsPredicateField_11049_1999 (T@Field_23380_1999) Bool)
(declare-fun IsWandField_11049_1999 (T@Field_23380_1999) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10991_87904 (T@Field_22549_22554) Bool)
(declare-fun IsWandField_10991_87920 (T@Field_22549_22554) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10991_19200 (T@Field_22535_19200) Bool)
(declare-fun IsWandField_10991_19200 (T@Field_22535_19200) Bool)
(declare-fun IsPredicateField_10991_53 (T@Field_22535_53) Bool)
(declare-fun IsWandField_10991_53 (T@Field_22535_53) Bool)
(declare-fun IsPredicateField_10991_1535 (T@Field_22535_1535) Bool)
(declare-fun IsWandField_10991_1535 (T@Field_22535_1535) Bool)
(declare-fun IsPredicateField_11054_87087 (T@Field_23470_23475) Bool)
(declare-fun IsWandField_11054_87103 (T@Field_23470_23475) Bool)
(declare-fun IsPredicateField_11054_19200 (T@Field_11054_19200) Bool)
(declare-fun IsWandField_11054_19200 (T@Field_11054_19200) Bool)
(declare-fun IsPredicateField_11054_53 (T@Field_11054_53) Bool)
(declare-fun IsWandField_11054_53 (T@Field_11054_53) Bool)
(declare-fun IsPredicateField_11054_1999 (T@Field_11054_2014) Bool)
(declare-fun IsWandField_11054_1999 (T@Field_11054_2014) Bool)
(declare-fun IsPredicateField_11079_86256 (T@Field_24390_24395) Bool)
(declare-fun IsWandField_11079_86272 (T@Field_24390_24395) Bool)
(declare-fun IsPredicateField_11079_19200 (T@Field_11079_19200) Bool)
(declare-fun IsWandField_11079_19200 (T@Field_11079_19200) Bool)
(declare-fun IsPredicateField_11079_53 (T@Field_11079_53) Bool)
(declare-fun IsWandField_11079_53 (T@Field_11079_53) Bool)
(declare-fun IsPredicateField_11079_1999 (T@Field_11079_2014) Bool)
(declare-fun IsWandField_11079_1999 (T@Field_11079_2014) Bool)
(declare-fun IsPredicateField_11049_85425 (T@Field_11051_22554) Bool)
(declare-fun IsWandField_11049_85441 (T@Field_11051_22554) Bool)
(declare-fun IsPredicateField_11049_19200 (T@Field_19199_19200) Bool)
(declare-fun IsWandField_11049_19200 (T@Field_19199_19200) Bool)
(declare-fun IsPredicateField_11049_53 (T@Field_19186_53) Bool)
(declare-fun IsWandField_11049_53 (T@Field_19186_53) Bool)
(declare-fun HasDirectPerm_22535_66266 (T@PolymorphicMapType_19147 T@Ref T@Field_22549_22554) Bool)
(declare-fun HasDirectPerm_22535_19200 (T@PolymorphicMapType_19147 T@Ref T@Field_22535_19200) Bool)
(declare-fun HasDirectPerm_22535_53 (T@PolymorphicMapType_19147 T@Ref T@Field_22535_53) Bool)
(declare-fun HasDirectPerm_22535_2014 (T@PolymorphicMapType_19147 T@Ref T@Field_22535_1535) Bool)
(declare-fun HasDirectPerm_11051_65089 (T@PolymorphicMapType_19147 T@Ref T@Field_11051_22554) Bool)
(declare-fun HasDirectPerm_11051_19200 (T@PolymorphicMapType_19147 T@Ref T@Field_19199_19200) Bool)
(declare-fun HasDirectPerm_11051_53 (T@PolymorphicMapType_19147 T@Ref T@Field_19186_53) Bool)
(declare-fun HasDirectPerm_11051_2014 (T@PolymorphicMapType_19147 T@Ref T@Field_23380_1999) Bool)
(declare-fun HasDirectPerm_11054_64016 (T@PolymorphicMapType_19147 T@Ref T@Field_23470_23475) Bool)
(declare-fun HasDirectPerm_11054_19200 (T@PolymorphicMapType_19147 T@Ref T@Field_11054_19200) Bool)
(declare-fun HasDirectPerm_11054_53 (T@PolymorphicMapType_19147 T@Ref T@Field_11054_53) Bool)
(declare-fun HasDirectPerm_11054_2014 (T@PolymorphicMapType_19147 T@Ref T@Field_11054_2014) Bool)
(declare-fun HasDirectPerm_11079_62918 (T@PolymorphicMapType_19147 T@Ref T@Field_24390_24395) Bool)
(declare-fun HasDirectPerm_11079_19200 (T@PolymorphicMapType_19147 T@Ref T@Field_11079_19200) Bool)
(declare-fun HasDirectPerm_11079_53 (T@PolymorphicMapType_19147 T@Ref T@Field_11079_53) Bool)
(declare-fun HasDirectPerm_11079_2014 (T@PolymorphicMapType_19147 T@Ref T@Field_11079_2014) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_19147 T@PolymorphicMapType_19147 T@PolymorphicMapType_19147) Bool)
(declare-fun getPredWandId_11079_11080 (T@Field_24377_24378) Int)
(declare-fun wand (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_22535_1535)
(declare-fun getPredWandId_11054_11055 (T@Field_23457_23458) Int)
(declare-fun |wand#ft| (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_22566_22567)
(declare-fun |wand#sm| (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_22549_22554)
(declare-fun InsidePredicate_24377_23457 (T@Field_24377_24378 T@FrameType T@Field_23457_23458 T@FrameType) Bool)
(declare-fun InsidePredicate_24377_22535 (T@Field_24377_24378 T@FrameType T@Field_22566_22567 T@FrameType) Bool)
(declare-fun InsidePredicate_24377_19186 (T@Field_24377_24378 T@FrameType T@Field_11051_11080 T@FrameType) Bool)
(declare-fun InsidePredicate_23457_24377 (T@Field_23457_23458 T@FrameType T@Field_24377_24378 T@FrameType) Bool)
(declare-fun InsidePredicate_23457_22535 (T@Field_23457_23458 T@FrameType T@Field_22566_22567 T@FrameType) Bool)
(declare-fun InsidePredicate_23457_19186 (T@Field_23457_23458 T@FrameType T@Field_11051_11080 T@FrameType) Bool)
(declare-fun InsidePredicate_22535_24377 (T@Field_22566_22567 T@FrameType T@Field_24377_24378 T@FrameType) Bool)
(declare-fun InsidePredicate_22535_23457 (T@Field_22566_22567 T@FrameType T@Field_23457_23458 T@FrameType) Bool)
(declare-fun InsidePredicate_22535_19186 (T@Field_22566_22567 T@FrameType T@Field_11051_11080 T@FrameType) Bool)
(declare-fun InsidePredicate_19186_24377 (T@Field_11051_11080 T@FrameType T@Field_24377_24378 T@FrameType) Bool)
(declare-fun InsidePredicate_19186_23457 (T@Field_11051_11080 T@FrameType T@Field_23457_23458 T@FrameType) Bool)
(declare-fun InsidePredicate_19186_22535 (T@Field_11051_11080 T@FrameType T@Field_22566_22567 T@FrameType) Bool)
(declare-fun getPredWandId_10991_1535 (T@Field_22535_1535) Int)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_19126) (Heap1 T@PolymorphicMapType_19126) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_19126) (Mask T@PolymorphicMapType_19147) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_19126) (Heap1@@0 T@PolymorphicMapType_19126) (Heap2 T@PolymorphicMapType_19126) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_24377_24378) ) (!  (not (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_24390_24395) ) (!  (not (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11079_19200) ) (!  (not (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11079_53) ) (!  (not (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11079_2014) ) (!  (not (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_23457_23458) ) (!  (not (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_23470_23475) ) (!  (not (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11054_19200) ) (!  (not (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11054_53) ) (!  (not (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11054_2014) ) (!  (not (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_22566_22567) ) (!  (not (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_22549_22554) ) (!  (not (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_22535_19200) ) (!  (not (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_22535_53) ) (!  (not (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_22535_1535) ) (!  (not (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11051_11080) ) (!  (not (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_11051_22554) ) (!  (not (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_19199_19200) ) (!  (not (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_19186_53) ) (!  (not (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_23380_1999) ) (!  (not (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((a_2 T@Ref) (b_24 Int) ) (! (IsPredicateField_11079_11080 (p2 a_2 b_24))
 :qid |stdinbpl.331:15|
 :skolemid |36|
 :pattern ( (p2 a_2 b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_19126) (a_2@@0 T@Ref) (b_24@@0 Int) ) (! (|p2#everUsed_11079| (p2 a_2@@0 b_24@@0))
 :qid |stdinbpl.350:15|
 :skolemid |40|
 :pattern ( (|p2#trigger_11079| Heap@@0 (p2 a_2@@0 b_24@@0)))
)))
(assert (forall ((a_2@@1 T@Ref) ) (! (IsPredicateField_11054_11055 (p1 a_2@@1))
 :qid |stdinbpl.277:15|
 :skolemid |30|
 :pattern ( (p1 a_2@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_19126) (a_2@@2 T@Ref) ) (! (|p1#everUsed_11054| (p1 a_2@@2))
 :qid |stdinbpl.296:15|
 :skolemid |34|
 :pattern ( (|p1#trigger_11054| Heap@@1 (p1 a_2@@2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_19126) (ExhaleHeap T@PolymorphicMapType_19126) (Mask@@0 T@PolymorphicMapType_19147) (pm_f_10 T@Field_22566_22567) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_22535_11080 Mask@@0 null pm_f_10) (IsPredicateField_11006_11007 pm_f_10)) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@2) null (PredicateMaskField_22535 pm_f_10)) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap) null (PredicateMaskField_22535 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_11006_11007 pm_f_10) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap) null (PredicateMaskField_22535 pm_f_10)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19126) (ExhaleHeap@@0 T@PolymorphicMapType_19126) (Mask@@1 T@PolymorphicMapType_19147) (pm_f_10@@0 T@Field_11051_11080) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11051_11080 Mask@@1 null pm_f_10@@0) (IsPredicateField_11051_67161 pm_f_10@@0)) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@3) null (PredicateMaskField_11051 pm_f_10@@0)) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@0) null (PredicateMaskField_11051 pm_f_10@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_11051_67161 pm_f_10@@0) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@0) null (PredicateMaskField_11051 pm_f_10@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19126) (ExhaleHeap@@1 T@PolymorphicMapType_19126) (Mask@@2 T@PolymorphicMapType_19147) (pm_f_10@@1 T@Field_23457_23458) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11054_11055 Mask@@2 null pm_f_10@@1) (IsPredicateField_11054_11055 pm_f_10@@1)) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@4) null (PredicateMaskField_11054 pm_f_10@@1)) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@1) null (PredicateMaskField_11054 pm_f_10@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_11054_11055 pm_f_10@@1) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@1) null (PredicateMaskField_11054 pm_f_10@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19126) (ExhaleHeap@@2 T@PolymorphicMapType_19126) (Mask@@3 T@PolymorphicMapType_19147) (pm_f_10@@2 T@Field_24377_24378) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11079_11080 Mask@@3 null pm_f_10@@2) (IsPredicateField_11079_11080 pm_f_10@@2)) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@5) null (PredicateMaskField_11079 pm_f_10@@2)) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@2) null (PredicateMaskField_11079 pm_f_10@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_11079_11080 pm_f_10@@2) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@2) null (PredicateMaskField_11079 pm_f_10@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19126) (ExhaleHeap@@3 T@PolymorphicMapType_19126) (Mask@@4 T@PolymorphicMapType_19147) (pm_f_10@@3 T@Field_22566_22567) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_22535_11080 Mask@@4 null pm_f_10@@3) (IsWandField_11006_11007 pm_f_10@@3)) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@6) null (WandMaskField_11006 pm_f_10@@3)) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@3) null (WandMaskField_11006 pm_f_10@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_11006_11007 pm_f_10@@3) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@3) null (WandMaskField_11006 pm_f_10@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19126) (ExhaleHeap@@4 T@PolymorphicMapType_19126) (Mask@@5 T@PolymorphicMapType_19147) (pm_f_10@@4 T@Field_11051_11080) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_11051_11080 Mask@@5 null pm_f_10@@4) (IsWandField_11051_73886 pm_f_10@@4)) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@7) null (WandMaskField_11051 pm_f_10@@4)) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@4) null (WandMaskField_11051 pm_f_10@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_11051_73886 pm_f_10@@4) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@4) null (WandMaskField_11051 pm_f_10@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19126) (ExhaleHeap@@5 T@PolymorphicMapType_19126) (Mask@@6 T@PolymorphicMapType_19147) (pm_f_10@@5 T@Field_23457_23458) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11054_11055 Mask@@6 null pm_f_10@@5) (IsWandField_11054_73529 pm_f_10@@5)) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@8) null (WandMaskField_11054 pm_f_10@@5)) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@5) null (WandMaskField_11054 pm_f_10@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_11054_73529 pm_f_10@@5) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@5) null (WandMaskField_11054 pm_f_10@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19126) (ExhaleHeap@@6 T@PolymorphicMapType_19126) (Mask@@7 T@PolymorphicMapType_19147) (pm_f_10@@6 T@Field_24377_24378) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_11079_11080 Mask@@7 null pm_f_10@@6) (IsWandField_11079_73172 pm_f_10@@6)) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@9) null (WandMaskField_11079 pm_f_10@@6)) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@6) null (WandMaskField_11079 pm_f_10@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_11079_73172 pm_f_10@@6) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@6) null (WandMaskField_11079 pm_f_10@@6)))
)))
(assert (forall ((a_2@@3 T@Ref) (b_24@@1 Int) (a2 T@Ref) (b2 Int) ) (!  (=> (= (p2 a_2@@3 b_24@@1) (p2 a2 b2)) (and (= a_2@@3 a2) (= b_24@@1 b2)))
 :qid |stdinbpl.341:15|
 :skolemid |38|
 :pattern ( (p2 a_2@@3 b_24@@1) (p2 a2 b2))
)))
(assert (forall ((a_2@@4 T@Ref) (b_24@@2 Int) (a2@@0 T@Ref) (b2@@0 Int) ) (!  (=> (= (|p2#sm| a_2@@4 b_24@@2) (|p2#sm| a2@@0 b2@@0)) (and (= a_2@@4 a2@@0) (= b_24@@2 b2@@0)))
 :qid |stdinbpl.345:15|
 :skolemid |39|
 :pattern ( (|p2#sm| a_2@@4 b_24@@2) (|p2#sm| a2@@0 b2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_19126) (ExhaleHeap@@7 T@PolymorphicMapType_19126) (Mask@@8 T@PolymorphicMapType_19147) (pm_f_10@@7 T@Field_22566_22567) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_22535_11080 Mask@@8 null pm_f_10@@7) (IsPredicateField_11006_11007 pm_f_10@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10 f_15) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@10) o2_10 f_15) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@10) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@10) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@10) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@10) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@3 f_15@@3))
))) (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@10) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@4 f_15@@4))
))) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@10) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@10) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@10) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@8 f_15@@8))
))) (forall ((o2_10@@9 T@Ref) (f_15@@9 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@9 f_15@@9) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@10) o2_10@@9 f_15@@9) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@9 f_15@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@9 f_15@@9))
))) (forall ((o2_10@@10 T@Ref) (f_15@@10 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@10 f_15@@10) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@10) o2_10@@10 f_15@@10) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@10 f_15@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@10 f_15@@10))
))) (forall ((o2_10@@11 T@Ref) (f_15@@11 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@11 f_15@@11) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@10) o2_10@@11 f_15@@11) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@11 f_15@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@11 f_15@@11))
))) (forall ((o2_10@@12 T@Ref) (f_15@@12 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@12 f_15@@12) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@10) o2_10@@12 f_15@@12) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@12 f_15@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@12 f_15@@12))
))) (forall ((o2_10@@13 T@Ref) (f_15@@13 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@13 f_15@@13) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@10) o2_10@@13 f_15@@13) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@13 f_15@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@13 f_15@@13))
))) (forall ((o2_10@@14 T@Ref) (f_15@@14 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@14 f_15@@14) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@10) o2_10@@14 f_15@@14) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@14 f_15@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@14 f_15@@14))
))) (forall ((o2_10@@15 T@Ref) (f_15@@15 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@15 f_15@@15) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@10) o2_10@@15 f_15@@15) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@15 f_15@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@15 f_15@@15))
))) (forall ((o2_10@@16 T@Ref) (f_15@@16 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@16 f_15@@16) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@10) o2_10@@16 f_15@@16) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@16 f_15@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@16 f_15@@16))
))) (forall ((o2_10@@17 T@Ref) (f_15@@17 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@17 f_15@@17) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@10) o2_10@@17 f_15@@17) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@17 f_15@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@17 f_15@@17))
))) (forall ((o2_10@@18 T@Ref) (f_15@@18 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@18 f_15@@18) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@10) o2_10@@18 f_15@@18) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@18 f_15@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@18 f_15@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_11006_11007 pm_f_10@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_19126) (ExhaleHeap@@8 T@PolymorphicMapType_19126) (Mask@@9 T@PolymorphicMapType_19147) (pm_f_10@@8 T@Field_11051_11080) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_11051_11080 Mask@@9 null pm_f_10@@8) (IsPredicateField_11051_67161 pm_f_10@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@19 T@Ref) (f_15@@19 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@19 f_15@@19) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@11) o2_10@@19 f_15@@19) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@19 f_15@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@19 f_15@@19))
)) (forall ((o2_10@@20 T@Ref) (f_15@@20 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@20 f_15@@20) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@11) o2_10@@20 f_15@@20) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@20 f_15@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@20 f_15@@20))
))) (forall ((o2_10@@21 T@Ref) (f_15@@21 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@21 f_15@@21) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@11) o2_10@@21 f_15@@21) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@21 f_15@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@21 f_15@@21))
))) (forall ((o2_10@@22 T@Ref) (f_15@@22 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@22 f_15@@22) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) o2_10@@22 f_15@@22) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@22 f_15@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@22 f_15@@22))
))) (forall ((o2_10@@23 T@Ref) (f_15@@23 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@23 f_15@@23) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@11) o2_10@@23 f_15@@23) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@23 f_15@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@23 f_15@@23))
))) (forall ((o2_10@@24 T@Ref) (f_15@@24 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@24 f_15@@24) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@11) o2_10@@24 f_15@@24) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@24 f_15@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@24 f_15@@24))
))) (forall ((o2_10@@25 T@Ref) (f_15@@25 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@25 f_15@@25) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@11) o2_10@@25 f_15@@25) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@25 f_15@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@25 f_15@@25))
))) (forall ((o2_10@@26 T@Ref) (f_15@@26 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@26 f_15@@26) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@11) o2_10@@26 f_15@@26) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@26 f_15@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@26 f_15@@26))
))) (forall ((o2_10@@27 T@Ref) (f_15@@27 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@27 f_15@@27) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@11) o2_10@@27 f_15@@27) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@27 f_15@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@27 f_15@@27))
))) (forall ((o2_10@@28 T@Ref) (f_15@@28 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@28 f_15@@28) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@11) o2_10@@28 f_15@@28) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@28 f_15@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@28 f_15@@28))
))) (forall ((o2_10@@29 T@Ref) (f_15@@29 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@29 f_15@@29) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@11) o2_10@@29 f_15@@29) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@29 f_15@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@29 f_15@@29))
))) (forall ((o2_10@@30 T@Ref) (f_15@@30 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@30 f_15@@30) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@11) o2_10@@30 f_15@@30) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@30 f_15@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@30 f_15@@30))
))) (forall ((o2_10@@31 T@Ref) (f_15@@31 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@31 f_15@@31) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@11) o2_10@@31 f_15@@31) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@31 f_15@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@31 f_15@@31))
))) (forall ((o2_10@@32 T@Ref) (f_15@@32 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@32 f_15@@32) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@11) o2_10@@32 f_15@@32) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@32 f_15@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@32 f_15@@32))
))) (forall ((o2_10@@33 T@Ref) (f_15@@33 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@33 f_15@@33) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@11) o2_10@@33 f_15@@33) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@33 f_15@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@33 f_15@@33))
))) (forall ((o2_10@@34 T@Ref) (f_15@@34 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@34 f_15@@34) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@11) o2_10@@34 f_15@@34) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@34 f_15@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@34 f_15@@34))
))) (forall ((o2_10@@35 T@Ref) (f_15@@35 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@35 f_15@@35) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@11) o2_10@@35 f_15@@35) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@35 f_15@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@35 f_15@@35))
))) (forall ((o2_10@@36 T@Ref) (f_15@@36 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@36 f_15@@36) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@11) o2_10@@36 f_15@@36) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@36 f_15@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@36 f_15@@36))
))) (forall ((o2_10@@37 T@Ref) (f_15@@37 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@37 f_15@@37) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@11) o2_10@@37 f_15@@37) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@37 f_15@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@37 f_15@@37))
))) (forall ((o2_10@@38 T@Ref) (f_15@@38 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@38 f_15@@38) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@11) o2_10@@38 f_15@@38) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@38 f_15@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@38 f_15@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsPredicateField_11051_67161 pm_f_10@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19126) (ExhaleHeap@@9 T@PolymorphicMapType_19126) (Mask@@10 T@PolymorphicMapType_19147) (pm_f_10@@9 T@Field_23457_23458) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_11054_11055 Mask@@10 null pm_f_10@@9) (IsPredicateField_11054_11055 pm_f_10@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@39 T@Ref) (f_15@@39 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@39 f_15@@39) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@12) o2_10@@39 f_15@@39) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@39 f_15@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@39 f_15@@39))
)) (forall ((o2_10@@40 T@Ref) (f_15@@40 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@40 f_15@@40) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@12) o2_10@@40 f_15@@40) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@40 f_15@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@40 f_15@@40))
))) (forall ((o2_10@@41 T@Ref) (f_15@@41 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@41 f_15@@41) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@12) o2_10@@41 f_15@@41) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@41 f_15@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@41 f_15@@41))
))) (forall ((o2_10@@42 T@Ref) (f_15@@42 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@42 f_15@@42) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@12) o2_10@@42 f_15@@42) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@42 f_15@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@42 f_15@@42))
))) (forall ((o2_10@@43 T@Ref) (f_15@@43 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@43 f_15@@43) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@12) o2_10@@43 f_15@@43) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@43 f_15@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@43 f_15@@43))
))) (forall ((o2_10@@44 T@Ref) (f_15@@44 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@44 f_15@@44) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@12) o2_10@@44 f_15@@44) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@44 f_15@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@44 f_15@@44))
))) (forall ((o2_10@@45 T@Ref) (f_15@@45 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@45 f_15@@45) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@12) o2_10@@45 f_15@@45) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@45 f_15@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@45 f_15@@45))
))) (forall ((o2_10@@46 T@Ref) (f_15@@46 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@46 f_15@@46) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@12) o2_10@@46 f_15@@46) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@46 f_15@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@46 f_15@@46))
))) (forall ((o2_10@@47 T@Ref) (f_15@@47 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@47 f_15@@47) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@12) o2_10@@47 f_15@@47) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@47 f_15@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@47 f_15@@47))
))) (forall ((o2_10@@48 T@Ref) (f_15@@48 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@48 f_15@@48) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@12) o2_10@@48 f_15@@48) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@48 f_15@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@48 f_15@@48))
))) (forall ((o2_10@@49 T@Ref) (f_15@@49 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@49 f_15@@49) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@12) o2_10@@49 f_15@@49) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@49 f_15@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@49 f_15@@49))
))) (forall ((o2_10@@50 T@Ref) (f_15@@50 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@50 f_15@@50) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@12) o2_10@@50 f_15@@50) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@50 f_15@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@50 f_15@@50))
))) (forall ((o2_10@@51 T@Ref) (f_15@@51 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@51 f_15@@51) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@12) o2_10@@51 f_15@@51) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@51 f_15@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@51 f_15@@51))
))) (forall ((o2_10@@52 T@Ref) (f_15@@52 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@52 f_15@@52) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) o2_10@@52 f_15@@52) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@52 f_15@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@52 f_15@@52))
))) (forall ((o2_10@@53 T@Ref) (f_15@@53 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@53 f_15@@53) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@12) o2_10@@53 f_15@@53) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@53 f_15@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@53 f_15@@53))
))) (forall ((o2_10@@54 T@Ref) (f_15@@54 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@54 f_15@@54) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@12) o2_10@@54 f_15@@54) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@54 f_15@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@54 f_15@@54))
))) (forall ((o2_10@@55 T@Ref) (f_15@@55 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@55 f_15@@55) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@12) o2_10@@55 f_15@@55) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@55 f_15@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@55 f_15@@55))
))) (forall ((o2_10@@56 T@Ref) (f_15@@56 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@56 f_15@@56) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@12) o2_10@@56 f_15@@56) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@56 f_15@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@56 f_15@@56))
))) (forall ((o2_10@@57 T@Ref) (f_15@@57 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@57 f_15@@57) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@12) o2_10@@57 f_15@@57) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@57 f_15@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@57 f_15@@57))
))) (forall ((o2_10@@58 T@Ref) (f_15@@58 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@58 f_15@@58) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@12) o2_10@@58 f_15@@58) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@58 f_15@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@58 f_15@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsPredicateField_11054_11055 pm_f_10@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19126) (ExhaleHeap@@10 T@PolymorphicMapType_19126) (Mask@@11 T@PolymorphicMapType_19147) (pm_f_10@@10 T@Field_24377_24378) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_11079_11080 Mask@@11 null pm_f_10@@10) (IsPredicateField_11079_11080 pm_f_10@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@59 T@Ref) (f_15@@59 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@59 f_15@@59) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@13) o2_10@@59 f_15@@59) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@59 f_15@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@59 f_15@@59))
)) (forall ((o2_10@@60 T@Ref) (f_15@@60 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@60 f_15@@60) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@13) o2_10@@60 f_15@@60) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@60 f_15@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@60 f_15@@60))
))) (forall ((o2_10@@61 T@Ref) (f_15@@61 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@61 f_15@@61) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@13) o2_10@@61 f_15@@61) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@61 f_15@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@61 f_15@@61))
))) (forall ((o2_10@@62 T@Ref) (f_15@@62 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@62 f_15@@62) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@13) o2_10@@62 f_15@@62) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@62 f_15@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@62 f_15@@62))
))) (forall ((o2_10@@63 T@Ref) (f_15@@63 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@63 f_15@@63) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@13) o2_10@@63 f_15@@63) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@63 f_15@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@63 f_15@@63))
))) (forall ((o2_10@@64 T@Ref) (f_15@@64 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@64 f_15@@64) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@13) o2_10@@64 f_15@@64) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@64 f_15@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@64 f_15@@64))
))) (forall ((o2_10@@65 T@Ref) (f_15@@65 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@65 f_15@@65) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@13) o2_10@@65 f_15@@65) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@65 f_15@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@65 f_15@@65))
))) (forall ((o2_10@@66 T@Ref) (f_15@@66 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@66 f_15@@66) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@13) o2_10@@66 f_15@@66) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@66 f_15@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@66 f_15@@66))
))) (forall ((o2_10@@67 T@Ref) (f_15@@67 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@67 f_15@@67) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@13) o2_10@@67 f_15@@67) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@67 f_15@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@67 f_15@@67))
))) (forall ((o2_10@@68 T@Ref) (f_15@@68 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@68 f_15@@68) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@13) o2_10@@68 f_15@@68) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@68 f_15@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@68 f_15@@68))
))) (forall ((o2_10@@69 T@Ref) (f_15@@69 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@69 f_15@@69) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@13) o2_10@@69 f_15@@69) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@69 f_15@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@69 f_15@@69))
))) (forall ((o2_10@@70 T@Ref) (f_15@@70 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@70 f_15@@70) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@13) o2_10@@70 f_15@@70) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@70 f_15@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@70 f_15@@70))
))) (forall ((o2_10@@71 T@Ref) (f_15@@71 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@71 f_15@@71) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@13) o2_10@@71 f_15@@71) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@71 f_15@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@71 f_15@@71))
))) (forall ((o2_10@@72 T@Ref) (f_15@@72 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@72 f_15@@72) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@13) o2_10@@72 f_15@@72) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@72 f_15@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@72 f_15@@72))
))) (forall ((o2_10@@73 T@Ref) (f_15@@73 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@73 f_15@@73) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@13) o2_10@@73 f_15@@73) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@73 f_15@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@73 f_15@@73))
))) (forall ((o2_10@@74 T@Ref) (f_15@@74 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@74 f_15@@74) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@13) o2_10@@74 f_15@@74) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@74 f_15@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@74 f_15@@74))
))) (forall ((o2_10@@75 T@Ref) (f_15@@75 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@75 f_15@@75) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@13) o2_10@@75 f_15@@75) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@75 f_15@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@75 f_15@@75))
))) (forall ((o2_10@@76 T@Ref) (f_15@@76 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@76 f_15@@76) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@13) o2_10@@76 f_15@@76) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@76 f_15@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@76 f_15@@76))
))) (forall ((o2_10@@77 T@Ref) (f_15@@77 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@77 f_15@@77) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) o2_10@@77 f_15@@77) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@77 f_15@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@77 f_15@@77))
))) (forall ((o2_10@@78 T@Ref) (f_15@@78 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@78 f_15@@78) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@13) o2_10@@78 f_15@@78) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@78 f_15@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@78 f_15@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsPredicateField_11079_11080 pm_f_10@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19126) (ExhaleHeap@@11 T@PolymorphicMapType_19126) (Mask@@12 T@PolymorphicMapType_19147) (pm_f_10@@11 T@Field_22566_22567) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_22535_11080 Mask@@12 null pm_f_10@@11) (IsWandField_11006_11007 pm_f_10@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@79 T@Ref) (f_15@@79 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@79 f_15@@79) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@14) o2_10@@79 f_15@@79) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@79 f_15@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@79 f_15@@79))
)) (forall ((o2_10@@80 T@Ref) (f_15@@80 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@80 f_15@@80) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@14) o2_10@@80 f_15@@80) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@80 f_15@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@80 f_15@@80))
))) (forall ((o2_10@@81 T@Ref) (f_15@@81 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@81 f_15@@81) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@14) o2_10@@81 f_15@@81) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@81 f_15@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@81 f_15@@81))
))) (forall ((o2_10@@82 T@Ref) (f_15@@82 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@82 f_15@@82) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@14) o2_10@@82 f_15@@82) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@82 f_15@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@82 f_15@@82))
))) (forall ((o2_10@@83 T@Ref) (f_15@@83 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@83 f_15@@83) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@14) o2_10@@83 f_15@@83) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@83 f_15@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@83 f_15@@83))
))) (forall ((o2_10@@84 T@Ref) (f_15@@84 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@84 f_15@@84) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@14) o2_10@@84 f_15@@84) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@84 f_15@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@84 f_15@@84))
))) (forall ((o2_10@@85 T@Ref) (f_15@@85 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@85 f_15@@85) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@14) o2_10@@85 f_15@@85) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@85 f_15@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@85 f_15@@85))
))) (forall ((o2_10@@86 T@Ref) (f_15@@86 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@86 f_15@@86) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@14) o2_10@@86 f_15@@86) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@86 f_15@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@86 f_15@@86))
))) (forall ((o2_10@@87 T@Ref) (f_15@@87 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@87 f_15@@87) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) o2_10@@87 f_15@@87) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@87 f_15@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@87 f_15@@87))
))) (forall ((o2_10@@88 T@Ref) (f_15@@88 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@88 f_15@@88) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@14) o2_10@@88 f_15@@88) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@88 f_15@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@88 f_15@@88))
))) (forall ((o2_10@@89 T@Ref) (f_15@@89 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@89 f_15@@89) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@14) o2_10@@89 f_15@@89) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@89 f_15@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@89 f_15@@89))
))) (forall ((o2_10@@90 T@Ref) (f_15@@90 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@90 f_15@@90) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@14) o2_10@@90 f_15@@90) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@90 f_15@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@90 f_15@@90))
))) (forall ((o2_10@@91 T@Ref) (f_15@@91 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@91 f_15@@91) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@14) o2_10@@91 f_15@@91) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@91 f_15@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@91 f_15@@91))
))) (forall ((o2_10@@92 T@Ref) (f_15@@92 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@92 f_15@@92) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@14) o2_10@@92 f_15@@92) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@92 f_15@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@92 f_15@@92))
))) (forall ((o2_10@@93 T@Ref) (f_15@@93 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@93 f_15@@93) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@14) o2_10@@93 f_15@@93) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@93 f_15@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@93 f_15@@93))
))) (forall ((o2_10@@94 T@Ref) (f_15@@94 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@94 f_15@@94) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@14) o2_10@@94 f_15@@94) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@94 f_15@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@94 f_15@@94))
))) (forall ((o2_10@@95 T@Ref) (f_15@@95 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@95 f_15@@95) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@14) o2_10@@95 f_15@@95) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@95 f_15@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@95 f_15@@95))
))) (forall ((o2_10@@96 T@Ref) (f_15@@96 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@96 f_15@@96) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@14) o2_10@@96 f_15@@96) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@96 f_15@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@96 f_15@@96))
))) (forall ((o2_10@@97 T@Ref) (f_15@@97 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@97 f_15@@97) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@14) o2_10@@97 f_15@@97) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@97 f_15@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@97 f_15@@97))
))) (forall ((o2_10@@98 T@Ref) (f_15@@98 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@98 f_15@@98) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@14) o2_10@@98 f_15@@98) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@98 f_15@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@98 f_15@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (IsWandField_11006_11007 pm_f_10@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19126) (ExhaleHeap@@12 T@PolymorphicMapType_19126) (Mask@@13 T@PolymorphicMapType_19147) (pm_f_10@@12 T@Field_11051_11080) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_11051_11080 Mask@@13 null pm_f_10@@12) (IsWandField_11051_73886 pm_f_10@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@99 T@Ref) (f_15@@99 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@99 f_15@@99) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@15) o2_10@@99 f_15@@99) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@99 f_15@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@99 f_15@@99))
)) (forall ((o2_10@@100 T@Ref) (f_15@@100 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@100 f_15@@100) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@15) o2_10@@100 f_15@@100) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@100 f_15@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@100 f_15@@100))
))) (forall ((o2_10@@101 T@Ref) (f_15@@101 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@101 f_15@@101) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@15) o2_10@@101 f_15@@101) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@101 f_15@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@101 f_15@@101))
))) (forall ((o2_10@@102 T@Ref) (f_15@@102 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@102 f_15@@102) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) o2_10@@102 f_15@@102) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@102 f_15@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@102 f_15@@102))
))) (forall ((o2_10@@103 T@Ref) (f_15@@103 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@103 f_15@@103) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@15) o2_10@@103 f_15@@103) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@103 f_15@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@103 f_15@@103))
))) (forall ((o2_10@@104 T@Ref) (f_15@@104 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@104 f_15@@104) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@15) o2_10@@104 f_15@@104) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@104 f_15@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@104 f_15@@104))
))) (forall ((o2_10@@105 T@Ref) (f_15@@105 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@105 f_15@@105) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@15) o2_10@@105 f_15@@105) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@105 f_15@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@105 f_15@@105))
))) (forall ((o2_10@@106 T@Ref) (f_15@@106 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@106 f_15@@106) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@15) o2_10@@106 f_15@@106) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@106 f_15@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@106 f_15@@106))
))) (forall ((o2_10@@107 T@Ref) (f_15@@107 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@107 f_15@@107) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@15) o2_10@@107 f_15@@107) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@107 f_15@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@107 f_15@@107))
))) (forall ((o2_10@@108 T@Ref) (f_15@@108 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@108 f_15@@108) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@15) o2_10@@108 f_15@@108) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@108 f_15@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@108 f_15@@108))
))) (forall ((o2_10@@109 T@Ref) (f_15@@109 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@109 f_15@@109) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@15) o2_10@@109 f_15@@109) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@109 f_15@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@109 f_15@@109))
))) (forall ((o2_10@@110 T@Ref) (f_15@@110 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@110 f_15@@110) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@15) o2_10@@110 f_15@@110) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@110 f_15@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@110 f_15@@110))
))) (forall ((o2_10@@111 T@Ref) (f_15@@111 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@111 f_15@@111) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@15) o2_10@@111 f_15@@111) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@111 f_15@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@111 f_15@@111))
))) (forall ((o2_10@@112 T@Ref) (f_15@@112 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@112 f_15@@112) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@15) o2_10@@112 f_15@@112) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@112 f_15@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@112 f_15@@112))
))) (forall ((o2_10@@113 T@Ref) (f_15@@113 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@113 f_15@@113) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@15) o2_10@@113 f_15@@113) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@113 f_15@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@113 f_15@@113))
))) (forall ((o2_10@@114 T@Ref) (f_15@@114 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@114 f_15@@114) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@15) o2_10@@114 f_15@@114) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@114 f_15@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@114 f_15@@114))
))) (forall ((o2_10@@115 T@Ref) (f_15@@115 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@115 f_15@@115) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@15) o2_10@@115 f_15@@115) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@115 f_15@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@115 f_15@@115))
))) (forall ((o2_10@@116 T@Ref) (f_15@@116 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@116 f_15@@116) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@15) o2_10@@116 f_15@@116) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@116 f_15@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@116 f_15@@116))
))) (forall ((o2_10@@117 T@Ref) (f_15@@117 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@117 f_15@@117) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@15) o2_10@@117 f_15@@117) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@117 f_15@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@117 f_15@@117))
))) (forall ((o2_10@@118 T@Ref) (f_15@@118 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@118 f_15@@118) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@15) o2_10@@118 f_15@@118) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@118 f_15@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@118 f_15@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (IsWandField_11051_73886 pm_f_10@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19126) (ExhaleHeap@@13 T@PolymorphicMapType_19126) (Mask@@14 T@PolymorphicMapType_19147) (pm_f_10@@13 T@Field_23457_23458) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_11054_11055 Mask@@14 null pm_f_10@@13) (IsWandField_11054_73529 pm_f_10@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@119 T@Ref) (f_15@@119 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@119 f_15@@119) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@16) o2_10@@119 f_15@@119) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@119 f_15@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@119 f_15@@119))
)) (forall ((o2_10@@120 T@Ref) (f_15@@120 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@120 f_15@@120) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@16) o2_10@@120 f_15@@120) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@120 f_15@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@120 f_15@@120))
))) (forall ((o2_10@@121 T@Ref) (f_15@@121 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@121 f_15@@121) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@16) o2_10@@121 f_15@@121) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@121 f_15@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@121 f_15@@121))
))) (forall ((o2_10@@122 T@Ref) (f_15@@122 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@122 f_15@@122) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@16) o2_10@@122 f_15@@122) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@122 f_15@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@122 f_15@@122))
))) (forall ((o2_10@@123 T@Ref) (f_15@@123 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@123 f_15@@123) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@16) o2_10@@123 f_15@@123) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@123 f_15@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@123 f_15@@123))
))) (forall ((o2_10@@124 T@Ref) (f_15@@124 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@124 f_15@@124) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@16) o2_10@@124 f_15@@124) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@124 f_15@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@124 f_15@@124))
))) (forall ((o2_10@@125 T@Ref) (f_15@@125 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@125 f_15@@125) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@16) o2_10@@125 f_15@@125) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@125 f_15@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@125 f_15@@125))
))) (forall ((o2_10@@126 T@Ref) (f_15@@126 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@126 f_15@@126) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@16) o2_10@@126 f_15@@126) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@126 f_15@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@126 f_15@@126))
))) (forall ((o2_10@@127 T@Ref) (f_15@@127 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@127 f_15@@127) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@16) o2_10@@127 f_15@@127) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@127 f_15@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@127 f_15@@127))
))) (forall ((o2_10@@128 T@Ref) (f_15@@128 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@128 f_15@@128) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@16) o2_10@@128 f_15@@128) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@128 f_15@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@128 f_15@@128))
))) (forall ((o2_10@@129 T@Ref) (f_15@@129 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@129 f_15@@129) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@16) o2_10@@129 f_15@@129) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@129 f_15@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@129 f_15@@129))
))) (forall ((o2_10@@130 T@Ref) (f_15@@130 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@130 f_15@@130) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@16) o2_10@@130 f_15@@130) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@130 f_15@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@130 f_15@@130))
))) (forall ((o2_10@@131 T@Ref) (f_15@@131 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@131 f_15@@131) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@16) o2_10@@131 f_15@@131) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@131 f_15@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@131 f_15@@131))
))) (forall ((o2_10@@132 T@Ref) (f_15@@132 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@132 f_15@@132) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) o2_10@@132 f_15@@132) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@132 f_15@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@132 f_15@@132))
))) (forall ((o2_10@@133 T@Ref) (f_15@@133 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@133 f_15@@133) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@16) o2_10@@133 f_15@@133) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@133 f_15@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@133 f_15@@133))
))) (forall ((o2_10@@134 T@Ref) (f_15@@134 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@134 f_15@@134) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@16) o2_10@@134 f_15@@134) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@134 f_15@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@134 f_15@@134))
))) (forall ((o2_10@@135 T@Ref) (f_15@@135 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@135 f_15@@135) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@16) o2_10@@135 f_15@@135) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@135 f_15@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@135 f_15@@135))
))) (forall ((o2_10@@136 T@Ref) (f_15@@136 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@136 f_15@@136) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@16) o2_10@@136 f_15@@136) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@136 f_15@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@136 f_15@@136))
))) (forall ((o2_10@@137 T@Ref) (f_15@@137 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@137 f_15@@137) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@16) o2_10@@137 f_15@@137) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@137 f_15@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@137 f_15@@137))
))) (forall ((o2_10@@138 T@Ref) (f_15@@138 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@138 f_15@@138) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@16) o2_10@@138 f_15@@138) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@138 f_15@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@138 f_15@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (IsWandField_11054_73529 pm_f_10@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19126) (ExhaleHeap@@14 T@PolymorphicMapType_19126) (Mask@@15 T@PolymorphicMapType_19147) (pm_f_10@@14 T@Field_24377_24378) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_11079_11080 Mask@@15 null pm_f_10@@14) (IsWandField_11079_73172 pm_f_10@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@139 T@Ref) (f_15@@139 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@139 f_15@@139) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@17) o2_10@@139 f_15@@139) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@139 f_15@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@139 f_15@@139))
)) (forall ((o2_10@@140 T@Ref) (f_15@@140 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@140 f_15@@140) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@17) o2_10@@140 f_15@@140) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@140 f_15@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@140 f_15@@140))
))) (forall ((o2_10@@141 T@Ref) (f_15@@141 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@141 f_15@@141) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@17) o2_10@@141 f_15@@141) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@141 f_15@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@141 f_15@@141))
))) (forall ((o2_10@@142 T@Ref) (f_15@@142 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@142 f_15@@142) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@17) o2_10@@142 f_15@@142) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@142 f_15@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@142 f_15@@142))
))) (forall ((o2_10@@143 T@Ref) (f_15@@143 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@143 f_15@@143) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@17) o2_10@@143 f_15@@143) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@143 f_15@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@143 f_15@@143))
))) (forall ((o2_10@@144 T@Ref) (f_15@@144 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@144 f_15@@144) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@17) o2_10@@144 f_15@@144) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@144 f_15@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@144 f_15@@144))
))) (forall ((o2_10@@145 T@Ref) (f_15@@145 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@145 f_15@@145) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@17) o2_10@@145 f_15@@145) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@145 f_15@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@145 f_15@@145))
))) (forall ((o2_10@@146 T@Ref) (f_15@@146 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@146 f_15@@146) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@17) o2_10@@146 f_15@@146) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@146 f_15@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@146 f_15@@146))
))) (forall ((o2_10@@147 T@Ref) (f_15@@147 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@147 f_15@@147) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@17) o2_10@@147 f_15@@147) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@147 f_15@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@147 f_15@@147))
))) (forall ((o2_10@@148 T@Ref) (f_15@@148 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@148 f_15@@148) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@17) o2_10@@148 f_15@@148) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@148 f_15@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@148 f_15@@148))
))) (forall ((o2_10@@149 T@Ref) (f_15@@149 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@149 f_15@@149) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@17) o2_10@@149 f_15@@149) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@149 f_15@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@149 f_15@@149))
))) (forall ((o2_10@@150 T@Ref) (f_15@@150 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@150 f_15@@150) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@17) o2_10@@150 f_15@@150) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@150 f_15@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@150 f_15@@150))
))) (forall ((o2_10@@151 T@Ref) (f_15@@151 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@151 f_15@@151) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@17) o2_10@@151 f_15@@151) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@151 f_15@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@151 f_15@@151))
))) (forall ((o2_10@@152 T@Ref) (f_15@@152 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@152 f_15@@152) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@17) o2_10@@152 f_15@@152) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@152 f_15@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@152 f_15@@152))
))) (forall ((o2_10@@153 T@Ref) (f_15@@153 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@153 f_15@@153) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@17) o2_10@@153 f_15@@153) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@153 f_15@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@153 f_15@@153))
))) (forall ((o2_10@@154 T@Ref) (f_15@@154 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@154 f_15@@154) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@17) o2_10@@154 f_15@@154) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@154 f_15@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@154 f_15@@154))
))) (forall ((o2_10@@155 T@Ref) (f_15@@155 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@155 f_15@@155) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@17) o2_10@@155 f_15@@155) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@155 f_15@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@155 f_15@@155))
))) (forall ((o2_10@@156 T@Ref) (f_15@@156 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@156 f_15@@156) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@17) o2_10@@156 f_15@@156) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@156 f_15@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@156 f_15@@156))
))) (forall ((o2_10@@157 T@Ref) (f_15@@157 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@157 f_15@@157) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) o2_10@@157 f_15@@157) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@157 f_15@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@157 f_15@@157))
))) (forall ((o2_10@@158 T@Ref) (f_15@@158 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@158 f_15@@158) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@17) o2_10@@158 f_15@@158) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@158 f_15@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@158 f_15@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (IsWandField_11079_73172 pm_f_10@@14))
)))
(assert (forall ((a_2@@5 T@Ref) (a2@@1 T@Ref) ) (!  (=> (= (p1 a_2@@5) (p1 a2@@1)) (= a_2@@5 a2@@1))
 :qid |stdinbpl.287:15|
 :skolemid |32|
 :pattern ( (p1 a_2@@5) (p1 a2@@1))
)))
(assert (forall ((a_2@@6 T@Ref) (a2@@2 T@Ref) ) (!  (=> (= (|p1#sm| a_2@@6) (|p1#sm| a2@@2)) (= a_2@@6 a2@@2))
 :qid |stdinbpl.291:15|
 :skolemid |33|
 :pattern ( (|p1#sm| a_2@@6) (|p1#sm| a2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19126) (ExhaleHeap@@15 T@PolymorphicMapType_19126) (Mask@@16 T@PolymorphicMapType_19147) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@18) o_23 $allocated) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@15) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@15) o_23 $allocated))
)))
(assert (forall ((p T@Field_24377_24378) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_24377_24377 p v_1 p w))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24377_24377 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_23457_23458) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_23457_23457 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23457_23457 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_22566_22567) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_22535_22535 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22535_22535 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_11051_11080) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_19186_19186 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19186_19186 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_11049_1999 f_7)))
(assert  (not (IsWandField_11049_1999 f_7)))
(assert  (not (IsPredicateField_11049_1999 g)))
(assert  (not (IsWandField_11049_1999 g)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19126) (ExhaleHeap@@16 T@PolymorphicMapType_19126) (Mask@@17 T@PolymorphicMapType_19147) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@19 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_19147) (o_2@@19 T@Ref) (f_4@@19 T@Field_22549_22554) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_10991_87904 f_4@@19))) (not (IsWandField_10991_87920 f_4@@19))) (<= (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_19147) (o_2@@20 T@Ref) (f_4@@20 T@Field_22535_19200) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_10991_19200 f_4@@20))) (not (IsWandField_10991_19200 f_4@@20))) (<= (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_19147) (o_2@@21 T@Ref) (f_4@@21 T@Field_22535_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_10991_53 f_4@@21))) (not (IsWandField_10991_53 f_4@@21))) (<= (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_19147) (o_2@@22 T@Ref) (f_4@@22 T@Field_22566_22567) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_11006_11007 f_4@@22))) (not (IsWandField_11006_11007 f_4@@22))) (<= (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_19147) (o_2@@23 T@Ref) (f_4@@23 T@Field_22535_1535) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_10991_1535 f_4@@23))) (not (IsWandField_10991_1535 f_4@@23))) (<= (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_19147) (o_2@@24 T@Ref) (f_4@@24 T@Field_23470_23475) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_11054_87087 f_4@@24))) (not (IsWandField_11054_87103 f_4@@24))) (<= (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_19147) (o_2@@25 T@Ref) (f_4@@25 T@Field_11054_19200) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_11054_19200 f_4@@25))) (not (IsWandField_11054_19200 f_4@@25))) (<= (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_19147) (o_2@@26 T@Ref) (f_4@@26 T@Field_11054_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_11054_53 f_4@@26))) (not (IsWandField_11054_53 f_4@@26))) (<= (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_19147) (o_2@@27 T@Ref) (f_4@@27 T@Field_23457_23458) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_11054_11055 f_4@@27))) (not (IsWandField_11054_73529 f_4@@27))) (<= (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_19147) (o_2@@28 T@Ref) (f_4@@28 T@Field_11054_2014) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_11054_1999 f_4@@28))) (not (IsWandField_11054_1999 f_4@@28))) (<= (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_19147) (o_2@@29 T@Ref) (f_4@@29 T@Field_24390_24395) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_11079_86256 f_4@@29))) (not (IsWandField_11079_86272 f_4@@29))) (<= (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_19147) (o_2@@30 T@Ref) (f_4@@30 T@Field_11079_19200) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_11079_19200 f_4@@30))) (not (IsWandField_11079_19200 f_4@@30))) (<= (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_19147) (o_2@@31 T@Ref) (f_4@@31 T@Field_11079_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_11079_53 f_4@@31))) (not (IsWandField_11079_53 f_4@@31))) (<= (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_19147) (o_2@@32 T@Ref) (f_4@@32 T@Field_24377_24378) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_11079_11080 f_4@@32))) (not (IsWandField_11079_73172 f_4@@32))) (<= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_19147) (o_2@@33 T@Ref) (f_4@@33 T@Field_11079_2014) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_11079_1999 f_4@@33))) (not (IsWandField_11079_1999 f_4@@33))) (<= (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_19147) (o_2@@34 T@Ref) (f_4@@34 T@Field_11051_22554) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_11049_85425 f_4@@34))) (not (IsWandField_11049_85441 f_4@@34))) (<= (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_19147) (o_2@@35 T@Ref) (f_4@@35 T@Field_19199_19200) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_11049_19200 f_4@@35))) (not (IsWandField_11049_19200 f_4@@35))) (<= (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_19147) (o_2@@36 T@Ref) (f_4@@36 T@Field_19186_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_11049_53 f_4@@36))) (not (IsWandField_11049_53 f_4@@36))) (<= (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_19147) (o_2@@37 T@Ref) (f_4@@37 T@Field_11051_11080) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_11051_67161 f_4@@37))) (not (IsWandField_11051_73886 f_4@@37))) (<= (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_19147) (o_2@@38 T@Ref) (f_4@@38 T@Field_23380_1999) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_11049_1999 f_4@@38))) (not (IsWandField_11049_1999 f_4@@38))) (<= (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_19147) (o_2@@39 T@Ref) (f_4@@39 T@Field_22549_22554) ) (! (= (HasDirectPerm_22535_66266 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22535_66266 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_19147) (o_2@@40 T@Ref) (f_4@@40 T@Field_22535_19200) ) (! (= (HasDirectPerm_22535_19200 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22535_19200 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_19147) (o_2@@41 T@Ref) (f_4@@41 T@Field_22535_53) ) (! (= (HasDirectPerm_22535_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22535_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_19147) (o_2@@42 T@Ref) (f_4@@42 T@Field_22535_1535) ) (! (= (HasDirectPerm_22535_2014 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22535_2014 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_19147) (o_2@@43 T@Ref) (f_4@@43 T@Field_22566_22567) ) (! (= (HasDirectPerm_22535_11080 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22535_11080 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_19147) (o_2@@44 T@Ref) (f_4@@44 T@Field_11051_22554) ) (! (= (HasDirectPerm_11051_65089 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_65089 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_19147) (o_2@@45 T@Ref) (f_4@@45 T@Field_19199_19200) ) (! (= (HasDirectPerm_11051_19200 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_19200 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_19147) (o_2@@46 T@Ref) (f_4@@46 T@Field_19186_53) ) (! (= (HasDirectPerm_11051_53 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_53 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_19147) (o_2@@47 T@Ref) (f_4@@47 T@Field_23380_1999) ) (! (= (HasDirectPerm_11051_2014 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_2014 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_19147) (o_2@@48 T@Ref) (f_4@@48 T@Field_11051_11080) ) (! (= (HasDirectPerm_11051_11080 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_11080 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_19147) (o_2@@49 T@Ref) (f_4@@49 T@Field_23470_23475) ) (! (= (HasDirectPerm_11054_64016 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11054_64016 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_19147) (o_2@@50 T@Ref) (f_4@@50 T@Field_11054_19200) ) (! (= (HasDirectPerm_11054_19200 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11054_19200 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_19147) (o_2@@51 T@Ref) (f_4@@51 T@Field_11054_53) ) (! (= (HasDirectPerm_11054_53 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11054_53 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_19147) (o_2@@52 T@Ref) (f_4@@52 T@Field_11054_2014) ) (! (= (HasDirectPerm_11054_2014 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11054_2014 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_19147) (o_2@@53 T@Ref) (f_4@@53 T@Field_23457_23458) ) (! (= (HasDirectPerm_11054_11055 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11054_11055 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_19147) (o_2@@54 T@Ref) (f_4@@54 T@Field_24390_24395) ) (! (= (HasDirectPerm_11079_62918 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11079_62918 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_19147) (o_2@@55 T@Ref) (f_4@@55 T@Field_11079_19200) ) (! (= (HasDirectPerm_11079_19200 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11079_19200 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_19147) (o_2@@56 T@Ref) (f_4@@56 T@Field_11079_53) ) (! (= (HasDirectPerm_11079_53 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11079_53 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_19147) (o_2@@57 T@Ref) (f_4@@57 T@Field_11079_2014) ) (! (= (HasDirectPerm_11079_2014 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11079_2014 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_19147) (o_2@@58 T@Ref) (f_4@@58 T@Field_24377_24378) ) (! (= (HasDirectPerm_11079_11080 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11079_11080 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.201:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19126) (ExhaleHeap@@17 T@PolymorphicMapType_19126) (Mask@@58 T@PolymorphicMapType_19147) (o_23@@0 T@Ref) (f_15@@159 T@Field_22549_22554) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_22535_66266 Mask@@58 o_23@@0 f_15@@159) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@20) o_23@@0 f_15@@159) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@17) o_23@@0 f_15@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@17) o_23@@0 f_15@@159))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19126) (ExhaleHeap@@18 T@PolymorphicMapType_19126) (Mask@@59 T@PolymorphicMapType_19147) (o_23@@1 T@Ref) (f_15@@160 T@Field_22535_19200) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_22535_19200 Mask@@59 o_23@@1 f_15@@160) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@21) o_23@@1 f_15@@160) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@18) o_23@@1 f_15@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@18) o_23@@1 f_15@@160))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19126) (ExhaleHeap@@19 T@PolymorphicMapType_19126) (Mask@@60 T@PolymorphicMapType_19147) (o_23@@2 T@Ref) (f_15@@161 T@Field_22535_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_22535_53 Mask@@60 o_23@@2 f_15@@161) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@22) o_23@@2 f_15@@161) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@19) o_23@@2 f_15@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@19) o_23@@2 f_15@@161))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19126) (ExhaleHeap@@20 T@PolymorphicMapType_19126) (Mask@@61 T@PolymorphicMapType_19147) (o_23@@3 T@Ref) (f_15@@162 T@Field_22535_1535) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_22535_2014 Mask@@61 o_23@@3 f_15@@162) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@23) o_23@@3 f_15@@162) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@20) o_23@@3 f_15@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@20) o_23@@3 f_15@@162))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19126) (ExhaleHeap@@21 T@PolymorphicMapType_19126) (Mask@@62 T@PolymorphicMapType_19147) (o_23@@4 T@Ref) (f_15@@163 T@Field_22566_22567) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_22535_11080 Mask@@62 o_23@@4 f_15@@163) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@24) o_23@@4 f_15@@163) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@21) o_23@@4 f_15@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@21) o_23@@4 f_15@@163))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19126) (ExhaleHeap@@22 T@PolymorphicMapType_19126) (Mask@@63 T@PolymorphicMapType_19147) (o_23@@5 T@Ref) (f_15@@164 T@Field_11051_22554) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_11051_65089 Mask@@63 o_23@@5 f_15@@164) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@25) o_23@@5 f_15@@164) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@22) o_23@@5 f_15@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@22) o_23@@5 f_15@@164))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19126) (ExhaleHeap@@23 T@PolymorphicMapType_19126) (Mask@@64 T@PolymorphicMapType_19147) (o_23@@6 T@Ref) (f_15@@165 T@Field_19199_19200) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_11051_19200 Mask@@64 o_23@@6 f_15@@165) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@26) o_23@@6 f_15@@165) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@23) o_23@@6 f_15@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@23) o_23@@6 f_15@@165))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19126) (ExhaleHeap@@24 T@PolymorphicMapType_19126) (Mask@@65 T@PolymorphicMapType_19147) (o_23@@7 T@Ref) (f_15@@166 T@Field_19186_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_11051_53 Mask@@65 o_23@@7 f_15@@166) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@27) o_23@@7 f_15@@166) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@24) o_23@@7 f_15@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@24) o_23@@7 f_15@@166))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19126) (ExhaleHeap@@25 T@PolymorphicMapType_19126) (Mask@@66 T@PolymorphicMapType_19147) (o_23@@8 T@Ref) (f_15@@167 T@Field_23380_1999) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_11051_2014 Mask@@66 o_23@@8 f_15@@167) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@28) o_23@@8 f_15@@167) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@25) o_23@@8 f_15@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@25) o_23@@8 f_15@@167))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19126) (ExhaleHeap@@26 T@PolymorphicMapType_19126) (Mask@@67 T@PolymorphicMapType_19147) (o_23@@9 T@Ref) (f_15@@168 T@Field_11051_11080) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_11051_11080 Mask@@67 o_23@@9 f_15@@168) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@29) o_23@@9 f_15@@168) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@26) o_23@@9 f_15@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@26) o_23@@9 f_15@@168))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19126) (ExhaleHeap@@27 T@PolymorphicMapType_19126) (Mask@@68 T@PolymorphicMapType_19147) (o_23@@10 T@Ref) (f_15@@169 T@Field_23470_23475) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_11054_64016 Mask@@68 o_23@@10 f_15@@169) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@30) o_23@@10 f_15@@169) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@27) o_23@@10 f_15@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@27) o_23@@10 f_15@@169))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_19126) (ExhaleHeap@@28 T@PolymorphicMapType_19126) (Mask@@69 T@PolymorphicMapType_19147) (o_23@@11 T@Ref) (f_15@@170 T@Field_11054_19200) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_11054_19200 Mask@@69 o_23@@11 f_15@@170) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@31) o_23@@11 f_15@@170) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@28) o_23@@11 f_15@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@28) o_23@@11 f_15@@170))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_19126) (ExhaleHeap@@29 T@PolymorphicMapType_19126) (Mask@@70 T@PolymorphicMapType_19147) (o_23@@12 T@Ref) (f_15@@171 T@Field_11054_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_11054_53 Mask@@70 o_23@@12 f_15@@171) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@32) o_23@@12 f_15@@171) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@29) o_23@@12 f_15@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@29) o_23@@12 f_15@@171))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_19126) (ExhaleHeap@@30 T@PolymorphicMapType_19126) (Mask@@71 T@PolymorphicMapType_19147) (o_23@@13 T@Ref) (f_15@@172 T@Field_11054_2014) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_11054_2014 Mask@@71 o_23@@13 f_15@@172) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@33) o_23@@13 f_15@@172) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@30) o_23@@13 f_15@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@30) o_23@@13 f_15@@172))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_19126) (ExhaleHeap@@31 T@PolymorphicMapType_19126) (Mask@@72 T@PolymorphicMapType_19147) (o_23@@14 T@Ref) (f_15@@173 T@Field_23457_23458) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_11054_11055 Mask@@72 o_23@@14 f_15@@173) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@34) o_23@@14 f_15@@173) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@31) o_23@@14 f_15@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@31) o_23@@14 f_15@@173))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_19126) (ExhaleHeap@@32 T@PolymorphicMapType_19126) (Mask@@73 T@PolymorphicMapType_19147) (o_23@@15 T@Ref) (f_15@@174 T@Field_24390_24395) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_11079_62918 Mask@@73 o_23@@15 f_15@@174) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@35) o_23@@15 f_15@@174) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@32) o_23@@15 f_15@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@32) o_23@@15 f_15@@174))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_19126) (ExhaleHeap@@33 T@PolymorphicMapType_19126) (Mask@@74 T@PolymorphicMapType_19147) (o_23@@16 T@Ref) (f_15@@175 T@Field_11079_19200) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_11079_19200 Mask@@74 o_23@@16 f_15@@175) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@36) o_23@@16 f_15@@175) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@33) o_23@@16 f_15@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@33) o_23@@16 f_15@@175))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_19126) (ExhaleHeap@@34 T@PolymorphicMapType_19126) (Mask@@75 T@PolymorphicMapType_19147) (o_23@@17 T@Ref) (f_15@@176 T@Field_11079_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_11079_53 Mask@@75 o_23@@17 f_15@@176) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@37) o_23@@17 f_15@@176) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@34) o_23@@17 f_15@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@34) o_23@@17 f_15@@176))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_19126) (ExhaleHeap@@35 T@PolymorphicMapType_19126) (Mask@@76 T@PolymorphicMapType_19147) (o_23@@18 T@Ref) (f_15@@177 T@Field_11079_2014) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_11079_2014 Mask@@76 o_23@@18 f_15@@177) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@38) o_23@@18 f_15@@177) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@35) o_23@@18 f_15@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@35) o_23@@18 f_15@@177))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_19126) (ExhaleHeap@@36 T@PolymorphicMapType_19126) (Mask@@77 T@PolymorphicMapType_19147) (o_23@@19 T@Ref) (f_15@@178 T@Field_24377_24378) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_11079_11080 Mask@@77 o_23@@19 f_15@@178) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@39) o_23@@19 f_15@@178) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@36) o_23@@19 f_15@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@36) o_23@@19 f_15@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_22549_22554) ) (! (= (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_22535_19200) ) (! (= (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_22535_53) ) (! (= (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_22566_22567) ) (! (= (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_22535_1535) ) (! (= (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_23470_23475) ) (! (= (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_11054_19200) ) (! (= (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_11054_53) ) (! (= (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_23457_23458) ) (! (= (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_11054_2014) ) (! (= (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_24390_24395) ) (! (= (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_11079_19200) ) (! (= (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_11079_53) ) (! (= (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_24377_24378) ) (! (= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_11079_2014) ) (! (= (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_11051_22554) ) (! (= (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_19199_19200) ) (! (= (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_19186_53) ) (! (= (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_11051_11080) ) (! (= (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_23380_1999) ) (! (= (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_19147) (SummandMask1 T@PolymorphicMapType_19147) (SummandMask2 T@PolymorphicMapType_19147) (o_2@@79 T@Ref) (f_4@@79 T@Field_22549_22554) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_19147) (SummandMask1@@0 T@PolymorphicMapType_19147) (SummandMask2@@0 T@PolymorphicMapType_19147) (o_2@@80 T@Ref) (f_4@@80 T@Field_22535_19200) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_19147) (SummandMask1@@1 T@PolymorphicMapType_19147) (SummandMask2@@1 T@PolymorphicMapType_19147) (o_2@@81 T@Ref) (f_4@@81 T@Field_22535_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_19147) (SummandMask1@@2 T@PolymorphicMapType_19147) (SummandMask2@@2 T@PolymorphicMapType_19147) (o_2@@82 T@Ref) (f_4@@82 T@Field_22566_22567) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_19147) (SummandMask1@@3 T@PolymorphicMapType_19147) (SummandMask2@@3 T@PolymorphicMapType_19147) (o_2@@83 T@Ref) (f_4@@83 T@Field_22535_1535) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_19147) (SummandMask1@@4 T@PolymorphicMapType_19147) (SummandMask2@@4 T@PolymorphicMapType_19147) (o_2@@84 T@Ref) (f_4@@84 T@Field_23470_23475) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_19147) (SummandMask1@@5 T@PolymorphicMapType_19147) (SummandMask2@@5 T@PolymorphicMapType_19147) (o_2@@85 T@Ref) (f_4@@85 T@Field_11054_19200) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_19147) (SummandMask1@@6 T@PolymorphicMapType_19147) (SummandMask2@@6 T@PolymorphicMapType_19147) (o_2@@86 T@Ref) (f_4@@86 T@Field_11054_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_19147) (SummandMask1@@7 T@PolymorphicMapType_19147) (SummandMask2@@7 T@PolymorphicMapType_19147) (o_2@@87 T@Ref) (f_4@@87 T@Field_23457_23458) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_19147) (SummandMask1@@8 T@PolymorphicMapType_19147) (SummandMask2@@8 T@PolymorphicMapType_19147) (o_2@@88 T@Ref) (f_4@@88 T@Field_11054_2014) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_19147) (SummandMask1@@9 T@PolymorphicMapType_19147) (SummandMask2@@9 T@PolymorphicMapType_19147) (o_2@@89 T@Ref) (f_4@@89 T@Field_24390_24395) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_19147) (SummandMask1@@10 T@PolymorphicMapType_19147) (SummandMask2@@10 T@PolymorphicMapType_19147) (o_2@@90 T@Ref) (f_4@@90 T@Field_11079_19200) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_19147) (SummandMask1@@11 T@PolymorphicMapType_19147) (SummandMask2@@11 T@PolymorphicMapType_19147) (o_2@@91 T@Ref) (f_4@@91 T@Field_11079_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_19147) (SummandMask1@@12 T@PolymorphicMapType_19147) (SummandMask2@@12 T@PolymorphicMapType_19147) (o_2@@92 T@Ref) (f_4@@92 T@Field_24377_24378) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_19147) (SummandMask1@@13 T@PolymorphicMapType_19147) (SummandMask2@@13 T@PolymorphicMapType_19147) (o_2@@93 T@Ref) (f_4@@93 T@Field_11079_2014) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_19147) (SummandMask1@@14 T@PolymorphicMapType_19147) (SummandMask2@@14 T@PolymorphicMapType_19147) (o_2@@94 T@Ref) (f_4@@94 T@Field_11051_22554) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_19147) (SummandMask1@@15 T@PolymorphicMapType_19147) (SummandMask2@@15 T@PolymorphicMapType_19147) (o_2@@95 T@Ref) (f_4@@95 T@Field_19199_19200) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_19147) (SummandMask1@@16 T@PolymorphicMapType_19147) (SummandMask2@@16 T@PolymorphicMapType_19147) (o_2@@96 T@Ref) (f_4@@96 T@Field_19186_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_19147) (SummandMask1@@17 T@PolymorphicMapType_19147) (SummandMask2@@17 T@PolymorphicMapType_19147) (o_2@@97 T@Ref) (f_4@@97 T@Field_11051_11080) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_19147) (SummandMask1@@18 T@PolymorphicMapType_19147) (SummandMask2@@18 T@PolymorphicMapType_19147) (o_2@@98 T@Ref) (f_4@@98 T@Field_23380_1999) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((a_2@@7 T@Ref) (b_24@@3 Int) ) (! (= (getPredWandId_11079_11080 (p2 a_2@@7 b_24@@3)) 1)
 :qid |stdinbpl.335:15|
 :skolemid |37|
 :pattern ( (p2 a_2@@7 b_24@@3))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 Bool) (arg4 T@Ref) (arg5 Real) (arg6 T@Ref) (arg7 Int) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 Bool) (arg4_2 T@Ref) (arg5_2 Real) (arg6_2 T@Ref) (arg7_2 Int) ) (!  (=> (= (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2)) (and (= arg1 arg1_2) (and (= arg2 arg2_2) (and (= arg3 arg3_2) (and (= arg4 arg4_2) (and (= arg5 arg5_2) (and (= arg6 arg6_2) (= arg7 arg7_2))))))))
 :qid |stdinbpl.250:15|
 :skolemid |28|
 :pattern ( (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2))
)))
(assert (forall ((a_2@@8 T@Ref) ) (! (= (getPredWandId_11054_11055 (p1 a_2@@8)) 0)
 :qid |stdinbpl.281:15|
 :skolemid |31|
 :pattern ( (p1 a_2@@8))
)))
(assert (forall ((a_2@@9 T@Ref) (b_24@@4 Int) ) (! (= (PredicateMaskField_11079 (p2 a_2@@9 b_24@@4)) (|p2#sm| a_2@@9 b_24@@4))
 :qid |stdinbpl.327:15|
 :skolemid |35|
 :pattern ( (PredicateMaskField_11079 (p2 a_2@@9 b_24@@4)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_19126) (o_4 T@Ref) (f_25 T@Field_22549_22554) (v T@PolymorphicMapType_19675) ) (! (succHeap Heap@@40 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@40) (store (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@40) o_4 f_25 v) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@40) (store (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@40) o_4 f_25 v) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_19126) (o_4@@0 T@Ref) (f_25@@0 T@Field_22535_1535) (v@@0 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@41) (store (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@41) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@41) (store (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@41) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_19126) (o_4@@1 T@Ref) (f_25@@1 T@Field_22566_22567) (v@@1 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@42) (store (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@42) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@42) (store (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@42) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_19126) (o_4@@2 T@Ref) (f_25@@2 T@Field_22535_19200) (v@@2 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@43) (store (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@43) o_4@@2 f_25@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@43) (store (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@43) o_4@@2 f_25@@2 v@@2)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_19126) (o_4@@3 T@Ref) (f_25@@3 T@Field_22535_53) (v@@3 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@44) (store (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@44) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@44) (store (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@44) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_19126) (o_4@@4 T@Ref) (f_25@@4 T@Field_23470_23475) (v@@4 T@PolymorphicMapType_19675) ) (! (succHeap Heap@@45 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@45) (store (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@45) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@45) (store (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@45) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_19126) (o_4@@5 T@Ref) (f_25@@5 T@Field_11054_2014) (v@@5 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@46) (store (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@46) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@46) (store (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@46) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_19126) (o_4@@6 T@Ref) (f_25@@6 T@Field_23457_23458) (v@@6 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@47) (store (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@47) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@47) (store (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@47) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_19126) (o_4@@7 T@Ref) (f_25@@7 T@Field_11054_19200) (v@@7 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@48) (store (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@48) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@48) (store (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@48) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_19126) (o_4@@8 T@Ref) (f_25@@8 T@Field_11054_53) (v@@8 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@49) (store (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@49) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@49) (store (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@49) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_19126) (o_4@@9 T@Ref) (f_25@@9 T@Field_24390_24395) (v@@9 T@PolymorphicMapType_19675) ) (! (succHeap Heap@@50 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@50) (store (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@50) o_4@@9 f_25@@9 v@@9) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@50) (store (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@50) o_4@@9 f_25@@9 v@@9) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_19126) (o_4@@10 T@Ref) (f_25@@10 T@Field_11079_2014) (v@@10 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@51) (store (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@51) o_4@@10 f_25@@10 v@@10) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@51) (store (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@51) o_4@@10 f_25@@10 v@@10) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_19126) (o_4@@11 T@Ref) (f_25@@11 T@Field_24377_24378) (v@@11 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@52) (store (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@52) o_4@@11 f_25@@11 v@@11) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@52) (store (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@52) o_4@@11 f_25@@11 v@@11) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_19126) (o_4@@12 T@Ref) (f_25@@12 T@Field_11079_19200) (v@@12 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@53) (store (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@53) o_4@@12 f_25@@12 v@@12) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@53) (store (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@53) o_4@@12 f_25@@12 v@@12) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_19126) (o_4@@13 T@Ref) (f_25@@13 T@Field_11079_53) (v@@13 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@54) (store (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@54) o_4@@13 f_25@@13 v@@13) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@54) (store (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@54) o_4@@13 f_25@@13 v@@13) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_19126) (o_4@@14 T@Ref) (f_25@@14 T@Field_11051_22554) (v@@14 T@PolymorphicMapType_19675) ) (! (succHeap Heap@@55 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@55) (store (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@55) o_4@@14 f_25@@14 v@@14) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@55) (store (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@55) o_4@@14 f_25@@14 v@@14) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_19126) (o_4@@15 T@Ref) (f_25@@15 T@Field_23380_1999) (v@@15 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@56) (store (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@56) o_4@@15 f_25@@15 v@@15) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@56) (store (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@56) o_4@@15 f_25@@15 v@@15) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_19126) (o_4@@16 T@Ref) (f_25@@16 T@Field_11051_11080) (v@@16 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@57) (store (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@57) o_4@@16 f_25@@16 v@@16) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@57) (store (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@57) o_4@@16 f_25@@16 v@@16) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_19126) (o_4@@17 T@Ref) (f_25@@17 T@Field_19199_19200) (v@@17 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@58) (store (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@58) o_4@@17 f_25@@17 v@@17) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@58) (store (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@58) o_4@@17 f_25@@17 v@@17) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_19126) (o_4@@18 T@Ref) (f_25@@18 T@Field_19186_53) (v@@18 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_19126 (store (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@59) o_4@@18 f_25@@18 v@@18) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (store (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@59) o_4@@18 f_25@@18 v@@18) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@59)))
)))
(assert (forall ((a_2@@10 T@Ref) ) (! (= (PredicateMaskField_11054 (p1 a_2@@10)) (|p1#sm| a_2@@10))
 :qid |stdinbpl.273:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_11054 (p1 a_2@@10)))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 Bool) (arg4@@0 T@Ref) (arg5@@0 Real) (arg6@@0 T@Ref) (arg7@@0 Int) ) (! (= (|wand#sm| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0) (WandMaskField_11006 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
 :qid |stdinbpl.242:15|
 :skolemid |26|
 :pattern ( (WandMaskField_11006 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
)))
(assert (forall ((o_4@@19 T@Ref) (f_9 T@Field_19199_19200) (Heap@@60 T@PolymorphicMapType_19126) ) (!  (=> (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@60) o_4@@19 $allocated) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@60) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@60) o_4@@19 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@60) o_4@@19 f_9))
)))
(assert (forall ((p@@4 T@Field_24377_24378) (v_1@@3 T@FrameType) (q T@Field_24377_24378) (w@@3 T@FrameType) (r T@Field_24377_24378) (u T@FrameType) ) (!  (=> (and (InsidePredicate_24377_24377 p@@4 v_1@@3 q w@@3) (InsidePredicate_24377_24377 q w@@3 r u)) (InsidePredicate_24377_24377 p@@4 v_1@@3 r u))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_24377 p@@4 v_1@@3 q w@@3) (InsidePredicate_24377_24377 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_24377_24378) (v_1@@4 T@FrameType) (q@@0 T@Field_24377_24378) (w@@4 T@FrameType) (r@@0 T@Field_23457_23458) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_24377 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_24377_23457 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_24377_23457 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_24377 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_24377_23457 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_24377_24378) (v_1@@5 T@FrameType) (q@@1 T@Field_24377_24378) (w@@5 T@FrameType) (r@@1 T@Field_22566_22567) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_24377 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_24377_22535 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_24377_22535 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_24377 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_24377_22535 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_24377_24378) (v_1@@6 T@FrameType) (q@@2 T@Field_24377_24378) (w@@6 T@FrameType) (r@@2 T@Field_11051_11080) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_24377 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_24377_19186 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_24377_19186 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_24377 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_24377_19186 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_24377_24378) (v_1@@7 T@FrameType) (q@@3 T@Field_23457_23458) (w@@7 T@FrameType) (r@@3 T@Field_24377_24378) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_23457 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_23457_24377 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_24377_24377 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_23457 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_23457_24377 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_24377_24378) (v_1@@8 T@FrameType) (q@@4 T@Field_23457_23458) (w@@8 T@FrameType) (r@@4 T@Field_23457_23458) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_23457 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_23457_23457 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_24377_23457 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_23457 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_23457_23457 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_24377_24378) (v_1@@9 T@FrameType) (q@@5 T@Field_23457_23458) (w@@9 T@FrameType) (r@@5 T@Field_22566_22567) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_23457 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_23457_22535 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_24377_22535 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_23457 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_23457_22535 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_24377_24378) (v_1@@10 T@FrameType) (q@@6 T@Field_23457_23458) (w@@10 T@FrameType) (r@@6 T@Field_11051_11080) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_23457 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_23457_19186 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_24377_19186 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_23457 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_23457_19186 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_24377_24378) (v_1@@11 T@FrameType) (q@@7 T@Field_22566_22567) (w@@11 T@FrameType) (r@@7 T@Field_24377_24378) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_22535 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_22535_24377 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_24377_24377 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_22535 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_22535_24377 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_24377_24378) (v_1@@12 T@FrameType) (q@@8 T@Field_22566_22567) (w@@12 T@FrameType) (r@@8 T@Field_23457_23458) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_22535 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_22535_23457 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_24377_23457 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_22535 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_22535_23457 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_24377_24378) (v_1@@13 T@FrameType) (q@@9 T@Field_22566_22567) (w@@13 T@FrameType) (r@@9 T@Field_22566_22567) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_22535 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_22535_22535 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_24377_22535 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_22535 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_22535_22535 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_24377_24378) (v_1@@14 T@FrameType) (q@@10 T@Field_22566_22567) (w@@14 T@FrameType) (r@@10 T@Field_11051_11080) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_22535 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_22535_19186 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_24377_19186 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_22535 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_22535_19186 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_24377_24378) (v_1@@15 T@FrameType) (q@@11 T@Field_11051_11080) (w@@15 T@FrameType) (r@@11 T@Field_24377_24378) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_19186 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_19186_24377 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_24377_24377 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_19186 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_19186_24377 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_24377_24378) (v_1@@16 T@FrameType) (q@@12 T@Field_11051_11080) (w@@16 T@FrameType) (r@@12 T@Field_23457_23458) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_19186 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_19186_23457 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_24377_23457 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_19186 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_19186_23457 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_24377_24378) (v_1@@17 T@FrameType) (q@@13 T@Field_11051_11080) (w@@17 T@FrameType) (r@@13 T@Field_22566_22567) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_19186 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_19186_22535 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_24377_22535 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_19186 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_19186_22535 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_24377_24378) (v_1@@18 T@FrameType) (q@@14 T@Field_11051_11080) (w@@18 T@FrameType) (r@@14 T@Field_11051_11080) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_19186 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_19186_19186 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_24377_19186 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_19186 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_19186_19186 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_23457_23458) (v_1@@19 T@FrameType) (q@@15 T@Field_24377_24378) (w@@19 T@FrameType) (r@@15 T@Field_24377_24378) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_24377 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_24377_24377 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_23457_24377 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_24377 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_24377_24377 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_23457_23458) (v_1@@20 T@FrameType) (q@@16 T@Field_24377_24378) (w@@20 T@FrameType) (r@@16 T@Field_23457_23458) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_24377 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_24377_23457 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_23457_23457 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_24377 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_24377_23457 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_23457_23458) (v_1@@21 T@FrameType) (q@@17 T@Field_24377_24378) (w@@21 T@FrameType) (r@@17 T@Field_22566_22567) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_24377 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_24377_22535 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_23457_22535 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_24377 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_24377_22535 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_23457_23458) (v_1@@22 T@FrameType) (q@@18 T@Field_24377_24378) (w@@22 T@FrameType) (r@@18 T@Field_11051_11080) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_24377 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_24377_19186 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_23457_19186 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_24377 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_24377_19186 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_23457_23458) (v_1@@23 T@FrameType) (q@@19 T@Field_23457_23458) (w@@23 T@FrameType) (r@@19 T@Field_24377_24378) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_23457 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_23457_24377 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_23457_24377 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_23457 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_23457_24377 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_23457_23458) (v_1@@24 T@FrameType) (q@@20 T@Field_23457_23458) (w@@24 T@FrameType) (r@@20 T@Field_23457_23458) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_23457 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_23457_23457 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_23457_23457 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_23457 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_23457_23457 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_23457_23458) (v_1@@25 T@FrameType) (q@@21 T@Field_23457_23458) (w@@25 T@FrameType) (r@@21 T@Field_22566_22567) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_23457 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_23457_22535 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_23457_22535 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_23457 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_23457_22535 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_23457_23458) (v_1@@26 T@FrameType) (q@@22 T@Field_23457_23458) (w@@26 T@FrameType) (r@@22 T@Field_11051_11080) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_23457 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_23457_19186 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_23457_19186 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_23457 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_23457_19186 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_23457_23458) (v_1@@27 T@FrameType) (q@@23 T@Field_22566_22567) (w@@27 T@FrameType) (r@@23 T@Field_24377_24378) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_22535 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_22535_24377 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_23457_24377 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_22535 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_22535_24377 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_23457_23458) (v_1@@28 T@FrameType) (q@@24 T@Field_22566_22567) (w@@28 T@FrameType) (r@@24 T@Field_23457_23458) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_22535 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_22535_23457 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_23457_23457 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_22535 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_22535_23457 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_23457_23458) (v_1@@29 T@FrameType) (q@@25 T@Field_22566_22567) (w@@29 T@FrameType) (r@@25 T@Field_22566_22567) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_22535 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_22535_22535 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_23457_22535 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_22535 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_22535_22535 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_23457_23458) (v_1@@30 T@FrameType) (q@@26 T@Field_22566_22567) (w@@30 T@FrameType) (r@@26 T@Field_11051_11080) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_22535 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_22535_19186 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_23457_19186 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_22535 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_22535_19186 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_23457_23458) (v_1@@31 T@FrameType) (q@@27 T@Field_11051_11080) (w@@31 T@FrameType) (r@@27 T@Field_24377_24378) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_19186 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_19186_24377 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_23457_24377 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_19186 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_19186_24377 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_23457_23458) (v_1@@32 T@FrameType) (q@@28 T@Field_11051_11080) (w@@32 T@FrameType) (r@@28 T@Field_23457_23458) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_19186 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_19186_23457 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_23457_23457 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_19186 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_19186_23457 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_23457_23458) (v_1@@33 T@FrameType) (q@@29 T@Field_11051_11080) (w@@33 T@FrameType) (r@@29 T@Field_22566_22567) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_19186 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_19186_22535 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_23457_22535 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_19186 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_19186_22535 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_23457_23458) (v_1@@34 T@FrameType) (q@@30 T@Field_11051_11080) (w@@34 T@FrameType) (r@@30 T@Field_11051_11080) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_19186 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_19186_19186 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_23457_19186 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_19186 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_19186_19186 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_22566_22567) (v_1@@35 T@FrameType) (q@@31 T@Field_24377_24378) (w@@35 T@FrameType) (r@@31 T@Field_24377_24378) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_24377 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_24377_24377 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_22535_24377 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_24377 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_24377_24377 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_22566_22567) (v_1@@36 T@FrameType) (q@@32 T@Field_24377_24378) (w@@36 T@FrameType) (r@@32 T@Field_23457_23458) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_24377 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_24377_23457 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_22535_23457 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_24377 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_24377_23457 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_22566_22567) (v_1@@37 T@FrameType) (q@@33 T@Field_24377_24378) (w@@37 T@FrameType) (r@@33 T@Field_22566_22567) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_24377 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_24377_22535 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_22535_22535 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_24377 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_24377_22535 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_22566_22567) (v_1@@38 T@FrameType) (q@@34 T@Field_24377_24378) (w@@38 T@FrameType) (r@@34 T@Field_11051_11080) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_24377 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_24377_19186 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_22535_19186 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_24377 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_24377_19186 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_22566_22567) (v_1@@39 T@FrameType) (q@@35 T@Field_23457_23458) (w@@39 T@FrameType) (r@@35 T@Field_24377_24378) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_23457 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_23457_24377 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_22535_24377 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_23457 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_23457_24377 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_22566_22567) (v_1@@40 T@FrameType) (q@@36 T@Field_23457_23458) (w@@40 T@FrameType) (r@@36 T@Field_23457_23458) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_23457 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_23457_23457 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_22535_23457 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_23457 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_23457_23457 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_22566_22567) (v_1@@41 T@FrameType) (q@@37 T@Field_23457_23458) (w@@41 T@FrameType) (r@@37 T@Field_22566_22567) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_23457 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_23457_22535 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_22535_22535 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_23457 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_23457_22535 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_22566_22567) (v_1@@42 T@FrameType) (q@@38 T@Field_23457_23458) (w@@42 T@FrameType) (r@@38 T@Field_11051_11080) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_23457 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_23457_19186 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_22535_19186 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_23457 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_23457_19186 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_22566_22567) (v_1@@43 T@FrameType) (q@@39 T@Field_22566_22567) (w@@43 T@FrameType) (r@@39 T@Field_24377_24378) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_22535 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_22535_24377 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_22535_24377 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_22535 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_22535_24377 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_22566_22567) (v_1@@44 T@FrameType) (q@@40 T@Field_22566_22567) (w@@44 T@FrameType) (r@@40 T@Field_23457_23458) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_22535 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_22535_23457 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_22535_23457 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_22535 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_22535_23457 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_22566_22567) (v_1@@45 T@FrameType) (q@@41 T@Field_22566_22567) (w@@45 T@FrameType) (r@@41 T@Field_22566_22567) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_22535 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_22535_22535 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_22535_22535 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_22535 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_22535_22535 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_22566_22567) (v_1@@46 T@FrameType) (q@@42 T@Field_22566_22567) (w@@46 T@FrameType) (r@@42 T@Field_11051_11080) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_22535 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_22535_19186 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_22535_19186 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_22535 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_22535_19186 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_22566_22567) (v_1@@47 T@FrameType) (q@@43 T@Field_11051_11080) (w@@47 T@FrameType) (r@@43 T@Field_24377_24378) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_19186 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_19186_24377 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_22535_24377 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_19186 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_19186_24377 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_22566_22567) (v_1@@48 T@FrameType) (q@@44 T@Field_11051_11080) (w@@48 T@FrameType) (r@@44 T@Field_23457_23458) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_19186 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_19186_23457 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_22535_23457 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_19186 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_19186_23457 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_22566_22567) (v_1@@49 T@FrameType) (q@@45 T@Field_11051_11080) (w@@49 T@FrameType) (r@@45 T@Field_22566_22567) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_19186 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_19186_22535 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_22535_22535 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_19186 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_19186_22535 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_22566_22567) (v_1@@50 T@FrameType) (q@@46 T@Field_11051_11080) (w@@50 T@FrameType) (r@@46 T@Field_11051_11080) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_19186 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_19186_19186 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_22535_19186 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_19186 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_19186_19186 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_11051_11080) (v_1@@51 T@FrameType) (q@@47 T@Field_24377_24378) (w@@51 T@FrameType) (r@@47 T@Field_24377_24378) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_24377 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_24377_24377 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_19186_24377 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_24377 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_24377_24377 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_11051_11080) (v_1@@52 T@FrameType) (q@@48 T@Field_24377_24378) (w@@52 T@FrameType) (r@@48 T@Field_23457_23458) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_24377 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_24377_23457 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_19186_23457 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_24377 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_24377_23457 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_11051_11080) (v_1@@53 T@FrameType) (q@@49 T@Field_24377_24378) (w@@53 T@FrameType) (r@@49 T@Field_22566_22567) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_24377 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_24377_22535 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_19186_22535 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_24377 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_24377_22535 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_11051_11080) (v_1@@54 T@FrameType) (q@@50 T@Field_24377_24378) (w@@54 T@FrameType) (r@@50 T@Field_11051_11080) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_24377 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_24377_19186 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_19186_19186 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_24377 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_24377_19186 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_11051_11080) (v_1@@55 T@FrameType) (q@@51 T@Field_23457_23458) (w@@55 T@FrameType) (r@@51 T@Field_24377_24378) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_23457 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_23457_24377 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_19186_24377 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_23457 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_23457_24377 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_11051_11080) (v_1@@56 T@FrameType) (q@@52 T@Field_23457_23458) (w@@56 T@FrameType) (r@@52 T@Field_23457_23458) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_23457 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_23457_23457 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_19186_23457 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_23457 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_23457_23457 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_11051_11080) (v_1@@57 T@FrameType) (q@@53 T@Field_23457_23458) (w@@57 T@FrameType) (r@@53 T@Field_22566_22567) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_23457 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_23457_22535 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_19186_22535 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_23457 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_23457_22535 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_11051_11080) (v_1@@58 T@FrameType) (q@@54 T@Field_23457_23458) (w@@58 T@FrameType) (r@@54 T@Field_11051_11080) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_23457 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_23457_19186 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_19186_19186 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_23457 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_23457_19186 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_11051_11080) (v_1@@59 T@FrameType) (q@@55 T@Field_22566_22567) (w@@59 T@FrameType) (r@@55 T@Field_24377_24378) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_22535 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_22535_24377 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_19186_24377 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_22535 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_22535_24377 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_11051_11080) (v_1@@60 T@FrameType) (q@@56 T@Field_22566_22567) (w@@60 T@FrameType) (r@@56 T@Field_23457_23458) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_22535 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_22535_23457 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_19186_23457 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_22535 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_22535_23457 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_11051_11080) (v_1@@61 T@FrameType) (q@@57 T@Field_22566_22567) (w@@61 T@FrameType) (r@@57 T@Field_22566_22567) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_22535 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_22535_22535 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_19186_22535 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_22535 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_22535_22535 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_11051_11080) (v_1@@62 T@FrameType) (q@@58 T@Field_22566_22567) (w@@62 T@FrameType) (r@@58 T@Field_11051_11080) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_22535 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_22535_19186 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_19186_19186 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_22535 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_22535_19186 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_11051_11080) (v_1@@63 T@FrameType) (q@@59 T@Field_11051_11080) (w@@63 T@FrameType) (r@@59 T@Field_24377_24378) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_19186 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_19186_24377 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_19186_24377 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_19186 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_19186_24377 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_11051_11080) (v_1@@64 T@FrameType) (q@@60 T@Field_11051_11080) (w@@64 T@FrameType) (r@@60 T@Field_23457_23458) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_19186 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_19186_23457 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_19186_23457 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_19186 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_19186_23457 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_11051_11080) (v_1@@65 T@FrameType) (q@@61 T@Field_11051_11080) (w@@65 T@FrameType) (r@@61 T@Field_22566_22567) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_19186 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_19186_22535 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_19186_22535 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_19186 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_19186_22535 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_11051_11080) (v_1@@66 T@FrameType) (q@@62 T@Field_11051_11080) (w@@66 T@FrameType) (r@@62 T@Field_11051_11080) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_19186 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_19186_19186 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_19186_19186 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_19186 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_19186_19186 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 Bool) (arg4@@1 T@Ref) (arg5@@1 Real) (arg6@@1 T@Ref) (arg7@@1 Int) ) (! (IsWandField_10991_1535 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
 :qid |stdinbpl.226:15|
 :skolemid |22|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 Bool) (arg4@@2 T@Ref) (arg5@@2 Real) (arg6@@2 T@Ref) (arg7@@2 Int) ) (! (IsWandField_11006_11007 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
 :qid |stdinbpl.230:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 Bool) (arg4@@3 T@Ref) (arg5@@3 Real) (arg6@@3 T@Ref) (arg7@@3 Int) ) (!  (not (IsPredicateField_10991_1535 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3)))
 :qid |stdinbpl.234:15|
 :skolemid |24|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 Bool) (arg4@@4 T@Ref) (arg5@@4 Real) (arg6@@4 T@Ref) (arg7@@4 Int) ) (!  (not (IsPredicateField_11006_11007 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4)))
 :qid |stdinbpl.238:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 Bool) (arg4@@5 T@Ref) (arg5@@5 Real) (arg6@@5 T@Ref) (arg7@@5 Int) ) (! (= (getPredWandId_10991_1535 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5)) 2)
 :qid |stdinbpl.246:15|
 :skolemid |27|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun r_1 () T@Ref)
(declare-fun Heap@@61 () T@PolymorphicMapType_19126)
(declare-fun QPMask@0 () T@PolymorphicMapType_19147)
(declare-fun invRecv2 (T@Ref Int) Int)
(declare-fun qpRange2 (T@Ref Int) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_19147)
(declare-fun getPredWandId_10991_11007 (T@Field_22566_22567) Int)
(declare-fun getPredWandId_10991_53 (T@Field_22535_53) Int)
(declare-fun getPredWandId_10991_19200 (T@Field_22535_19200) Int)
(declare-fun getPredWandId_10991_103784 (T@Field_22549_22554) Int)
(declare-fun getPredWandId_11049_1535 (T@Field_23380_1999) Int)
(declare-fun getPredWandId_11049_11007 (T@Field_11051_11080) Int)
(declare-fun getPredWandId_11049_53 (T@Field_19186_53) Int)
(declare-fun getPredWandId_11049_19200 (T@Field_19199_19200) Int)
(declare-fun getPredWandId_11049_104600 (T@Field_11051_22554) Int)
(declare-fun getPredWandId_11054_1535 (T@Field_11054_2014) Int)
(declare-fun getPredWandId_11054_53 (T@Field_11054_53) Int)
(declare-fun getPredWandId_11054_19200 (T@Field_11054_19200) Int)
(declare-fun getPredWandId_11054_105409 (T@Field_23470_23475) Int)
(declare-fun getPredWandId_11079_1535 (T@Field_11079_2014) Int)
(declare-fun getPredWandId_11079_53 (T@Field_11079_53) Int)
(declare-fun getPredWandId_11079_19200 (T@Field_11079_19200) Int)
(declare-fun getPredWandId_11079_106218 (T@Field_24390_24395) Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_19126)
(declare-fun neverTriggered1 (Int) Bool)
(declare-fun invRecv1 (T@Ref Int) Int)
(declare-fun qpRange1 (T@Ref Int) Bool)
(set-info :boogie-vc-id m1)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon6_Else_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) (forall ((x_4_2 Int) (x_4_3 Int) ) (!  (=> (and (and (and (and (not (= x_4_2 x_4_3)) (> x_4_2 0)) (> x_4_3 0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_1 r_1)) (not (= x_4_2 x_4_3))))
 :qid |stdinbpl.474:17|
 :skolemid |47|
 :pattern ( (neverTriggered2 x_4_2) (neverTriggered2 x_4_3))
))) (=> (forall ((x_4_2@@0 Int) (x_4_3@@0 Int) ) (!  (=> (and (and (and (and (not (= x_4_2@@0 x_4_3@@0)) (> x_4_2@@0 0)) (> x_4_3@@0 0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_1 r_1)) (not (= x_4_2@@0 x_4_3@@0))))
 :qid |stdinbpl.474:17|
 :skolemid |47|
 :pattern ( (neverTriggered2 x_4_2@@0) (neverTriggered2 x_4_3@@0))
)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((x_4_2@@1 Int) ) (!  (=> (> x_4_2@@1 0) (>= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) null (p2 r_1 x_4_2@@1)) FullPerm))
 :qid |stdinbpl.481:17|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@61) null (p2 r_1 x_4_2@@1)))
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) null (p2 r_1 x_4_2@@1)))
))) (=> (forall ((x_4_2@@2 Int) ) (!  (=> (> x_4_2@@2 0) (>= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) null (p2 r_1 x_4_2@@2)) FullPerm))
 :qid |stdinbpl.481:17|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@61) null (p2 r_1 x_4_2@@2)))
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) null (p2 r_1 x_4_2@@2)))
)) (=> (and (and (forall ((x_4_2@@3 Int) ) (!  (=> (and (> x_4_2@@3 0) (< NoPerm FullPerm)) (and (= (invRecv2 r_1 x_4_2@@3) x_4_2@@3) (qpRange2 r_1 x_4_2@@3)))
 :qid |stdinbpl.487:22|
 :skolemid |49|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@61) null (p2 r_1 x_4_2@@3)))
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) null (p2 r_1 x_4_2@@3)))
)) (forall ((a_1_1 T@Ref) (b_1_2 Int) ) (!  (=> (and (and (> (invRecv2 a_1_1 b_1_2) 0) (< NoPerm FullPerm)) (qpRange2 a_1_1 b_1_2)) (and (= r_1 a_1_1) (= (invRecv2 a_1_1 b_1_2) b_1_2)))
 :qid |stdinbpl.491:22|
 :skolemid |50|
 :pattern ( (invRecv2 a_1_1 b_1_2))
))) (and (forall ((a_1_1@@0 T@Ref) (b_1_2@@0 Int) ) (!  (=> (and (and (> (invRecv2 a_1_1@@0 b_1_2@@0) 0) (< NoPerm FullPerm)) (qpRange2 a_1_1@@0 b_1_2@@0)) (and (and (= r_1 a_1_1@@0) (= (invRecv2 a_1_1@@0 b_1_2@@0) b_1_2@@0)) (= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@1) null (p2 a_1_1@@0 b_1_2@@0)) (- (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) null (p2 a_1_1@@0 b_1_2@@0)) FullPerm))))
 :qid |stdinbpl.497:22|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@1) null (p2 a_1_1@@0 b_1_2@@0)))
)) (forall ((a_1_1@@1 T@Ref) (b_1_2@@1 Int) ) (!  (=> (not (and (and (> (invRecv2 a_1_1@@1 b_1_2@@1) 0) (< NoPerm FullPerm)) (qpRange2 a_1_1@@1 b_1_2@@1))) (= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@1) null (p2 a_1_1@@1 b_1_2@@1)) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) null (p2 a_1_1@@1 b_1_2@@1))))
 :qid |stdinbpl.501:22|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@1) null (p2 a_1_1@@1 b_1_2@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_22535_1535) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_10991_1535 f_5))) (not (= (getPredWandId_10991_1535 f_5) 1))) (= (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| QPMask@0) o_9 f_5) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| QPMask@1) o_9 f_5)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| QPMask@0) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| QPMask@1) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_22566_22567) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_11006_11007 f_5@@0))) (not (= (getPredWandId_10991_11007 f_5@@0) 1))) (= (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| QPMask@0) o_9@@0 f_5@@0) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| QPMask@1) o_9@@0 f_5@@0)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| QPMask@0) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| QPMask@1) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_22535_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_10991_53 f_5@@1))) (not (= (getPredWandId_10991_53 f_5@@1) 1))) (= (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| QPMask@0) o_9@@1 f_5@@1) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| QPMask@1) o_9@@1 f_5@@1)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| QPMask@0) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| QPMask@1) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_22535_19200) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_10991_19200 f_5@@2))) (not (= (getPredWandId_10991_19200 f_5@@2) 1))) (= (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| QPMask@0) o_9@@2 f_5@@2) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| QPMask@1) o_9@@2 f_5@@2)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| QPMask@0) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| QPMask@1) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_22549_22554) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_10991_87904 f_5@@3))) (not (= (getPredWandId_10991_103784 f_5@@3) 1))) (= (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| QPMask@0) o_9@@3 f_5@@3) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| QPMask@1) o_9@@3 f_5@@3)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| QPMask@0) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| QPMask@1) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_23380_1999) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_11049_1999 f_5@@4))) (not (= (getPredWandId_11049_1535 f_5@@4) 1))) (= (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| QPMask@0) o_9@@4 f_5@@4) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| QPMask@1) o_9@@4 f_5@@4)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| QPMask@0) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| QPMask@1) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_11051_11080) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_11051_67161 f_5@@5))) (not (= (getPredWandId_11049_11007 f_5@@5) 1))) (= (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| QPMask@0) o_9@@5 f_5@@5) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| QPMask@1) o_9@@5 f_5@@5)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| QPMask@0) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| QPMask@1) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_19186_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_11049_53 f_5@@6))) (not (= (getPredWandId_11049_53 f_5@@6) 1))) (= (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| QPMask@0) o_9@@6 f_5@@6) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| QPMask@1) o_9@@6 f_5@@6)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| QPMask@0) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| QPMask@1) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_19199_19200) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_11049_19200 f_5@@7))) (not (= (getPredWandId_11049_19200 f_5@@7) 1))) (= (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| QPMask@0) o_9@@7 f_5@@7) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| QPMask@1) o_9@@7 f_5@@7)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| QPMask@0) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| QPMask@1) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_11051_22554) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_11049_85425 f_5@@8))) (not (= (getPredWandId_11049_104600 f_5@@8) 1))) (= (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| QPMask@0) o_9@@8 f_5@@8) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| QPMask@1) o_9@@8 f_5@@8)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| QPMask@0) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| QPMask@1) o_9@@8 f_5@@8))
))) (forall ((o_9@@9 T@Ref) (f_5@@9 T@Field_11054_2014) ) (!  (=> (or (or (not (= o_9@@9 null)) (not (IsPredicateField_11054_1999 f_5@@9))) (not (= (getPredWandId_11054_1535 f_5@@9) 1))) (= (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| QPMask@0) o_9@@9 f_5@@9) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| QPMask@1) o_9@@9 f_5@@9)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| QPMask@0) o_9@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| QPMask@1) o_9@@9 f_5@@9))
))) (forall ((o_9@@10 T@Ref) (f_5@@10 T@Field_23457_23458) ) (!  (=> (or (or (not (= o_9@@10 null)) (not (IsPredicateField_11054_11055 f_5@@10))) (not (= (getPredWandId_11054_11055 f_5@@10) 1))) (= (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| QPMask@0) o_9@@10 f_5@@10) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| QPMask@1) o_9@@10 f_5@@10)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| QPMask@0) o_9@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| QPMask@1) o_9@@10 f_5@@10))
))) (forall ((o_9@@11 T@Ref) (f_5@@11 T@Field_11054_53) ) (!  (=> (or (or (not (= o_9@@11 null)) (not (IsPredicateField_11054_53 f_5@@11))) (not (= (getPredWandId_11054_53 f_5@@11) 1))) (= (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| QPMask@0) o_9@@11 f_5@@11) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| QPMask@1) o_9@@11 f_5@@11)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| QPMask@0) o_9@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| QPMask@1) o_9@@11 f_5@@11))
))) (forall ((o_9@@12 T@Ref) (f_5@@12 T@Field_11054_19200) ) (!  (=> (or (or (not (= o_9@@12 null)) (not (IsPredicateField_11054_19200 f_5@@12))) (not (= (getPredWandId_11054_19200 f_5@@12) 1))) (= (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| QPMask@0) o_9@@12 f_5@@12) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| QPMask@1) o_9@@12 f_5@@12)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| QPMask@0) o_9@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| QPMask@1) o_9@@12 f_5@@12))
))) (forall ((o_9@@13 T@Ref) (f_5@@13 T@Field_23470_23475) ) (!  (=> (or (or (not (= o_9@@13 null)) (not (IsPredicateField_11054_87087 f_5@@13))) (not (= (getPredWandId_11054_105409 f_5@@13) 1))) (= (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| QPMask@0) o_9@@13 f_5@@13) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| QPMask@1) o_9@@13 f_5@@13)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| QPMask@0) o_9@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| QPMask@1) o_9@@13 f_5@@13))
))) (forall ((o_9@@14 T@Ref) (f_5@@14 T@Field_11079_2014) ) (!  (=> (or (or (not (= o_9@@14 null)) (not (IsPredicateField_11079_1999 f_5@@14))) (not (= (getPredWandId_11079_1535 f_5@@14) 1))) (= (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| QPMask@0) o_9@@14 f_5@@14) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| QPMask@1) o_9@@14 f_5@@14)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| QPMask@0) o_9@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| QPMask@1) o_9@@14 f_5@@14))
))) (forall ((o_9@@15 T@Ref) (f_5@@15 T@Field_24377_24378) ) (!  (=> (or (or (not (= o_9@@15 null)) (not (IsPredicateField_11079_11080 f_5@@15))) (not (= (getPredWandId_11079_11080 f_5@@15) 1))) (= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) o_9@@15 f_5@@15) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@1) o_9@@15 f_5@@15)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) o_9@@15 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@1) o_9@@15 f_5@@15))
))) (forall ((o_9@@16 T@Ref) (f_5@@16 T@Field_11079_53) ) (!  (=> (or (or (not (= o_9@@16 null)) (not (IsPredicateField_11079_53 f_5@@16))) (not (= (getPredWandId_11079_53 f_5@@16) 1))) (= (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| QPMask@0) o_9@@16 f_5@@16) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| QPMask@1) o_9@@16 f_5@@16)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| QPMask@0) o_9@@16 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| QPMask@1) o_9@@16 f_5@@16))
))) (forall ((o_9@@17 T@Ref) (f_5@@17 T@Field_11079_19200) ) (!  (=> (or (or (not (= o_9@@17 null)) (not (IsPredicateField_11079_19200 f_5@@17))) (not (= (getPredWandId_11079_19200 f_5@@17) 1))) (= (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| QPMask@0) o_9@@17 f_5@@17) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| QPMask@1) o_9@@17 f_5@@17)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| QPMask@0) o_9@@17 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| QPMask@1) o_9@@17 f_5@@17))
))) (forall ((o_9@@18 T@Ref) (f_5@@18 T@Field_24390_24395) ) (!  (=> (or (or (not (= o_9@@18 null)) (not (IsPredicateField_11079_86256 f_5@@18))) (not (= (getPredWandId_11079_106218 f_5@@18) 1))) (= (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| QPMask@0) o_9@@18 f_5@@18) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| QPMask@1) o_9@@18 f_5@@18)))
 :qid |stdinbpl.507:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| QPMask@0) o_9@@18 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| QPMask@1) o_9@@18 f_5@@18))
))) (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@0 QPMask@1)) (and (state ExhaleHeap@0 QPMask@1) (= (ControlFlow 0 4) (- 0 3)))) (= 2 2)))))))))
(let ((anon6_Then_correct true))
(let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) (forall ((x_1 Int) (x_1_1 Int) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (> x_1 0)) (> x_1_1 0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_1 r_1)) (not (= x_1 x_1_1))))
 :qid |stdinbpl.417:17|
 :skolemid |41|
 :pattern ( (neverTriggered1 x_1) (neverTriggered1 x_1_1))
))) (=> (forall ((x_1@@0 Int) (x_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (> x_1@@0 0)) (> x_1_1@@0 0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_1 r_1)) (not (= x_1@@0 x_1_1@@0))))
 :qid |stdinbpl.417:17|
 :skolemid |41|
 :pattern ( (neverTriggered1 x_1@@0) (neverTriggered1 x_1_1@@0))
)) (=> (forall ((x_1@@1 Int) ) (!  (=> (and (> x_1@@1 0) (< NoPerm FullPerm)) (and (= (invRecv1 r_1 x_1@@1) x_1@@1) (qpRange1 r_1 x_1@@1)))
 :qid |stdinbpl.423:22|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@61) null (p2 r_1 x_1@@1)))
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ZeroMask) null (p2 r_1 x_1@@1)))
)) (=> (and (forall ((a_2@@11 T@Ref) (b_24@@5 Int) ) (!  (=> (and (and (> (invRecv1 a_2@@11 b_24@@5) 0) (< NoPerm FullPerm)) (qpRange1 a_2@@11 b_24@@5)) (and (= r_1 a_2@@11) (= (invRecv1 a_2@@11 b_24@@5) b_24@@5)))
 :qid |stdinbpl.427:22|
 :skolemid |43|
 :pattern ( (invRecv1 a_2@@11 b_24@@5))
)) (forall ((a_2@@12 T@Ref) (b_24@@6 Int) ) (!  (=> (and (and (> (invRecv1 a_2@@12 b_24@@6) 0) (< NoPerm FullPerm)) (qpRange1 a_2@@12 b_24@@6)) (and (=> (< NoPerm FullPerm) (and (= r_1 a_2@@12) (= (invRecv1 a_2@@12 b_24@@6) b_24@@6))) (= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) null (p2 a_2@@12 b_24@@6)) (+ (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ZeroMask) null (p2 a_2@@12 b_24@@6)) FullPerm))))
 :qid |stdinbpl.433:22|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) null (p2 a_2@@12 b_24@@6)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@19 T@Ref) (f_5@@19 T@Field_22535_1535) ) (!  (=> (or (or (not (= o_9@@19 null)) (not (IsPredicateField_10991_1535 f_5@@19))) (not (= (getPredWandId_10991_1535 f_5@@19) 1))) (= (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| ZeroMask) o_9@@19 f_5@@19) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| QPMask@0) o_9@@19 f_5@@19)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| ZeroMask) o_9@@19 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| QPMask@0) o_9@@19 f_5@@19))
)) (forall ((o_9@@20 T@Ref) (f_5@@20 T@Field_22566_22567) ) (!  (=> (or (or (not (= o_9@@20 null)) (not (IsPredicateField_11006_11007 f_5@@20))) (not (= (getPredWandId_10991_11007 f_5@@20) 1))) (= (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| ZeroMask) o_9@@20 f_5@@20) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| QPMask@0) o_9@@20 f_5@@20)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| ZeroMask) o_9@@20 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| QPMask@0) o_9@@20 f_5@@20))
))) (forall ((o_9@@21 T@Ref) (f_5@@21 T@Field_22535_53) ) (!  (=> (or (or (not (= o_9@@21 null)) (not (IsPredicateField_10991_53 f_5@@21))) (not (= (getPredWandId_10991_53 f_5@@21) 1))) (= (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| ZeroMask) o_9@@21 f_5@@21) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| QPMask@0) o_9@@21 f_5@@21)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| ZeroMask) o_9@@21 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| QPMask@0) o_9@@21 f_5@@21))
))) (forall ((o_9@@22 T@Ref) (f_5@@22 T@Field_22535_19200) ) (!  (=> (or (or (not (= o_9@@22 null)) (not (IsPredicateField_10991_19200 f_5@@22))) (not (= (getPredWandId_10991_19200 f_5@@22) 1))) (= (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| ZeroMask) o_9@@22 f_5@@22) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| QPMask@0) o_9@@22 f_5@@22)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| ZeroMask) o_9@@22 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| QPMask@0) o_9@@22 f_5@@22))
))) (forall ((o_9@@23 T@Ref) (f_5@@23 T@Field_22549_22554) ) (!  (=> (or (or (not (= o_9@@23 null)) (not (IsPredicateField_10991_87904 f_5@@23))) (not (= (getPredWandId_10991_103784 f_5@@23) 1))) (= (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| ZeroMask) o_9@@23 f_5@@23) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| QPMask@0) o_9@@23 f_5@@23)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| ZeroMask) o_9@@23 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| QPMask@0) o_9@@23 f_5@@23))
))) (forall ((o_9@@24 T@Ref) (f_5@@24 T@Field_23380_1999) ) (!  (=> (or (or (not (= o_9@@24 null)) (not (IsPredicateField_11049_1999 f_5@@24))) (not (= (getPredWandId_11049_1535 f_5@@24) 1))) (= (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| ZeroMask) o_9@@24 f_5@@24) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| QPMask@0) o_9@@24 f_5@@24)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| ZeroMask) o_9@@24 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| QPMask@0) o_9@@24 f_5@@24))
))) (forall ((o_9@@25 T@Ref) (f_5@@25 T@Field_11051_11080) ) (!  (=> (or (or (not (= o_9@@25 null)) (not (IsPredicateField_11051_67161 f_5@@25))) (not (= (getPredWandId_11049_11007 f_5@@25) 1))) (= (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| ZeroMask) o_9@@25 f_5@@25) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| QPMask@0) o_9@@25 f_5@@25)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| ZeroMask) o_9@@25 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| QPMask@0) o_9@@25 f_5@@25))
))) (forall ((o_9@@26 T@Ref) (f_5@@26 T@Field_19186_53) ) (!  (=> (or (or (not (= o_9@@26 null)) (not (IsPredicateField_11049_53 f_5@@26))) (not (= (getPredWandId_11049_53 f_5@@26) 1))) (= (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| ZeroMask) o_9@@26 f_5@@26) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| QPMask@0) o_9@@26 f_5@@26)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| ZeroMask) o_9@@26 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| QPMask@0) o_9@@26 f_5@@26))
))) (forall ((o_9@@27 T@Ref) (f_5@@27 T@Field_19199_19200) ) (!  (=> (or (or (not (= o_9@@27 null)) (not (IsPredicateField_11049_19200 f_5@@27))) (not (= (getPredWandId_11049_19200 f_5@@27) 1))) (= (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| ZeroMask) o_9@@27 f_5@@27) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| QPMask@0) o_9@@27 f_5@@27)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| ZeroMask) o_9@@27 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| QPMask@0) o_9@@27 f_5@@27))
))) (forall ((o_9@@28 T@Ref) (f_5@@28 T@Field_11051_22554) ) (!  (=> (or (or (not (= o_9@@28 null)) (not (IsPredicateField_11049_85425 f_5@@28))) (not (= (getPredWandId_11049_104600 f_5@@28) 1))) (= (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| ZeroMask) o_9@@28 f_5@@28) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| QPMask@0) o_9@@28 f_5@@28)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| ZeroMask) o_9@@28 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| QPMask@0) o_9@@28 f_5@@28))
))) (forall ((o_9@@29 T@Ref) (f_5@@29 T@Field_11054_2014) ) (!  (=> (or (or (not (= o_9@@29 null)) (not (IsPredicateField_11054_1999 f_5@@29))) (not (= (getPredWandId_11054_1535 f_5@@29) 1))) (= (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| ZeroMask) o_9@@29 f_5@@29) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| QPMask@0) o_9@@29 f_5@@29)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| ZeroMask) o_9@@29 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| QPMask@0) o_9@@29 f_5@@29))
))) (forall ((o_9@@30 T@Ref) (f_5@@30 T@Field_23457_23458) ) (!  (=> (or (or (not (= o_9@@30 null)) (not (IsPredicateField_11054_11055 f_5@@30))) (not (= (getPredWandId_11054_11055 f_5@@30) 1))) (= (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| ZeroMask) o_9@@30 f_5@@30) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| QPMask@0) o_9@@30 f_5@@30)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| ZeroMask) o_9@@30 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| QPMask@0) o_9@@30 f_5@@30))
))) (forall ((o_9@@31 T@Ref) (f_5@@31 T@Field_11054_53) ) (!  (=> (or (or (not (= o_9@@31 null)) (not (IsPredicateField_11054_53 f_5@@31))) (not (= (getPredWandId_11054_53 f_5@@31) 1))) (= (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| ZeroMask) o_9@@31 f_5@@31) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| QPMask@0) o_9@@31 f_5@@31)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| ZeroMask) o_9@@31 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| QPMask@0) o_9@@31 f_5@@31))
))) (forall ((o_9@@32 T@Ref) (f_5@@32 T@Field_11054_19200) ) (!  (=> (or (or (not (= o_9@@32 null)) (not (IsPredicateField_11054_19200 f_5@@32))) (not (= (getPredWandId_11054_19200 f_5@@32) 1))) (= (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| ZeroMask) o_9@@32 f_5@@32) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| QPMask@0) o_9@@32 f_5@@32)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| ZeroMask) o_9@@32 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| QPMask@0) o_9@@32 f_5@@32))
))) (forall ((o_9@@33 T@Ref) (f_5@@33 T@Field_23470_23475) ) (!  (=> (or (or (not (= o_9@@33 null)) (not (IsPredicateField_11054_87087 f_5@@33))) (not (= (getPredWandId_11054_105409 f_5@@33) 1))) (= (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| ZeroMask) o_9@@33 f_5@@33) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| QPMask@0) o_9@@33 f_5@@33)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| ZeroMask) o_9@@33 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| QPMask@0) o_9@@33 f_5@@33))
))) (forall ((o_9@@34 T@Ref) (f_5@@34 T@Field_11079_2014) ) (!  (=> (or (or (not (= o_9@@34 null)) (not (IsPredicateField_11079_1999 f_5@@34))) (not (= (getPredWandId_11079_1535 f_5@@34) 1))) (= (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| ZeroMask) o_9@@34 f_5@@34) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| QPMask@0) o_9@@34 f_5@@34)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| ZeroMask) o_9@@34 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| QPMask@0) o_9@@34 f_5@@34))
))) (forall ((o_9@@35 T@Ref) (f_5@@35 T@Field_24377_24378) ) (!  (=> (or (or (not (= o_9@@35 null)) (not (IsPredicateField_11079_11080 f_5@@35))) (not (= (getPredWandId_11079_11080 f_5@@35) 1))) (= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ZeroMask) o_9@@35 f_5@@35) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) o_9@@35 f_5@@35)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ZeroMask) o_9@@35 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) o_9@@35 f_5@@35))
))) (forall ((o_9@@36 T@Ref) (f_5@@36 T@Field_11079_53) ) (!  (=> (or (or (not (= o_9@@36 null)) (not (IsPredicateField_11079_53 f_5@@36))) (not (= (getPredWandId_11079_53 f_5@@36) 1))) (= (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| ZeroMask) o_9@@36 f_5@@36) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| QPMask@0) o_9@@36 f_5@@36)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| ZeroMask) o_9@@36 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| QPMask@0) o_9@@36 f_5@@36))
))) (forall ((o_9@@37 T@Ref) (f_5@@37 T@Field_11079_19200) ) (!  (=> (or (or (not (= o_9@@37 null)) (not (IsPredicateField_11079_19200 f_5@@37))) (not (= (getPredWandId_11079_19200 f_5@@37) 1))) (= (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| ZeroMask) o_9@@37 f_5@@37) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| QPMask@0) o_9@@37 f_5@@37)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| ZeroMask) o_9@@37 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| QPMask@0) o_9@@37 f_5@@37))
))) (forall ((o_9@@38 T@Ref) (f_5@@38 T@Field_24390_24395) ) (!  (=> (or (or (not (= o_9@@38 null)) (not (IsPredicateField_11079_86256 f_5@@38))) (not (= (getPredWandId_11079_106218 f_5@@38) 1))) (= (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| ZeroMask) o_9@@38 f_5@@38) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| QPMask@0) o_9@@38 f_5@@38)))
 :qid |stdinbpl.439:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| ZeroMask) o_9@@38 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| QPMask@0) o_9@@38 f_5@@38))
))) (and (and (forall ((a_2@@13 T@Ref) (b_24@@7 Int) ) (!  (=> (not (and (and (> (invRecv1 a_2@@13 b_24@@7) 0) (< NoPerm FullPerm)) (qpRange1 a_2@@13 b_24@@7))) (= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) null (p2 a_2@@13 b_24@@7)) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ZeroMask) null (p2 a_2@@13 b_24@@7))))
 :qid |stdinbpl.443:22|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| QPMask@0) null (p2 a_2@@13 b_24@@7)))
)) (state Heap@@61 QPMask@0)) (and (state Heap@@61 QPMask@0) (state Heap@@61 QPMask@0)))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= 2 2)) (=> (= 2 2) (=> (state Heap@@61 QPMask@0) (and (=> (= (ControlFlow 0 7) 2) anon6_Then_correct) (=> (= (ControlFlow 0 7) 4) anon6_Else_correct))))))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@61 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@61) r_1 $allocated) (state Heap@@61 ZeroMask))) (and (=> (= (ControlFlow 0 10) 1) anon5_Then_correct) (=> (= (ControlFlow 0 10) 7) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-sort T@Field_19186_53 0)
(declare-sort T@Field_19199_19200 0)
(declare-sort T@Field_24377_24378 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_23380_1999 0)
(declare-sort T@Field_24390_24395 0)
(declare-sort T@Field_23457_23458 0)
(declare-sort T@Field_23470_23475 0)
(declare-sort T@Field_22549_22554 0)
(declare-sort T@Field_11079_2014 0)
(declare-sort T@Field_11079_53 0)
(declare-sort T@Field_11079_19200 0)
(declare-sort T@Field_11054_2014 0)
(declare-sort T@Field_11054_53 0)
(declare-sort T@Field_11054_19200 0)
(declare-sort T@Field_11051_11080 0)
(declare-sort T@Field_11051_22554 0)
(declare-sort T@Field_22566_22567 0)
(declare-sort T@Field_22535_1535 0)
(declare-sort T@Field_22535_53 0)
(declare-sort T@Field_22535_19200 0)
(declare-datatypes ((T@PolymorphicMapType_19147 0)) (((PolymorphicMapType_19147 (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| (Array T@Ref T@Field_23380_1999 Real)) (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| (Array T@Ref T@Field_24377_24378 Real)) (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| (Array T@Ref T@Field_23457_23458 Real)) (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| (Array T@Ref T@Field_22535_1535 Real)) (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| (Array T@Ref T@Field_11051_11080 Real)) (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| (Array T@Ref T@Field_19186_53 Real)) (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| (Array T@Ref T@Field_19199_19200 Real)) (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| (Array T@Ref T@Field_11051_22554 Real)) (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| (Array T@Ref T@Field_11079_2014 Real)) (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| (Array T@Ref T@Field_11079_53 Real)) (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| (Array T@Ref T@Field_11079_19200 Real)) (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| (Array T@Ref T@Field_24390_24395 Real)) (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| (Array T@Ref T@Field_11054_2014 Real)) (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| (Array T@Ref T@Field_11054_53 Real)) (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| (Array T@Ref T@Field_11054_19200 Real)) (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| (Array T@Ref T@Field_23470_23475 Real)) (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| (Array T@Ref T@Field_22566_22567 Real)) (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| (Array T@Ref T@Field_22535_53 Real)) (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| (Array T@Ref T@Field_22535_19200 Real)) (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| (Array T@Ref T@Field_22549_22554 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19675 0)) (((PolymorphicMapType_19675 (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (Array T@Ref T@Field_23380_1999 Bool)) (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (Array T@Ref T@Field_19186_53 Bool)) (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (Array T@Ref T@Field_19199_19200 Bool)) (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (Array T@Ref T@Field_11051_22554 Bool)) (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (Array T@Ref T@Field_11051_11080 Bool)) (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (Array T@Ref T@Field_22535_1535 Bool)) (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (Array T@Ref T@Field_22535_53 Bool)) (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (Array T@Ref T@Field_22535_19200 Bool)) (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (Array T@Ref T@Field_22549_22554 Bool)) (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (Array T@Ref T@Field_22566_22567 Bool)) (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (Array T@Ref T@Field_11054_2014 Bool)) (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (Array T@Ref T@Field_11054_53 Bool)) (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (Array T@Ref T@Field_11054_19200 Bool)) (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (Array T@Ref T@Field_23470_23475 Bool)) (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (Array T@Ref T@Field_23457_23458 Bool)) (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (Array T@Ref T@Field_11079_2014 Bool)) (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (Array T@Ref T@Field_11079_53 Bool)) (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (Array T@Ref T@Field_11079_19200 Bool)) (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (Array T@Ref T@Field_24390_24395 Bool)) (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (Array T@Ref T@Field_24377_24378 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19126 0)) (((PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| (Array T@Ref T@Field_19186_53 Bool)) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| (Array T@Ref T@Field_19199_19200 T@Ref)) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| (Array T@Ref T@Field_24377_24378 T@FrameType)) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| (Array T@Ref T@Field_23380_1999 Int)) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| (Array T@Ref T@Field_24390_24395 T@PolymorphicMapType_19675)) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| (Array T@Ref T@Field_23457_23458 T@FrameType)) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| (Array T@Ref T@Field_23470_23475 T@PolymorphicMapType_19675)) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| (Array T@Ref T@Field_22549_22554 T@PolymorphicMapType_19675)) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| (Array T@Ref T@Field_11079_2014 Int)) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| (Array T@Ref T@Field_11079_53 Bool)) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| (Array T@Ref T@Field_11079_19200 T@Ref)) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| (Array T@Ref T@Field_11054_2014 Int)) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| (Array T@Ref T@Field_11054_53 Bool)) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| (Array T@Ref T@Field_11054_19200 T@Ref)) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| (Array T@Ref T@Field_11051_11080 T@FrameType)) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| (Array T@Ref T@Field_11051_22554 T@PolymorphicMapType_19675)) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| (Array T@Ref T@Field_22566_22567 T@FrameType)) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| (Array T@Ref T@Field_22535_1535 Int)) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| (Array T@Ref T@Field_22535_53 Bool)) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| (Array T@Ref T@Field_22535_19200 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_19186_53)
(declare-fun f_7 () T@Field_23380_1999)
(declare-fun g () T@Field_23380_1999)
(declare-fun succHeap (T@PolymorphicMapType_19126 T@PolymorphicMapType_19126) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_19126 T@PolymorphicMapType_19126) Bool)
(declare-fun state (T@PolymorphicMapType_19126 T@PolymorphicMapType_19147) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_19147) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19675)
(declare-fun p2 (T@Ref Int) T@Field_24377_24378)
(declare-fun IsPredicateField_11079_11080 (T@Field_24377_24378) Bool)
(declare-fun |p2#trigger_11079| (T@PolymorphicMapType_19126 T@Field_24377_24378) Bool)
(declare-fun |p2#everUsed_11079| (T@Field_24377_24378) Bool)
(declare-fun p1 (T@Ref) T@Field_23457_23458)
(declare-fun IsPredicateField_11054_11055 (T@Field_23457_23458) Bool)
(declare-fun |p1#trigger_11054| (T@PolymorphicMapType_19126 T@Field_23457_23458) Bool)
(declare-fun |p1#everUsed_11054| (T@Field_23457_23458) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_19126 T@PolymorphicMapType_19126 T@PolymorphicMapType_19147) Bool)
(declare-fun IsPredicateField_11006_11007 (T@Field_22566_22567) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_22535 (T@Field_22566_22567) T@Field_22549_22554)
(declare-fun HasDirectPerm_22535_11080 (T@PolymorphicMapType_19147 T@Ref T@Field_22566_22567) Bool)
(declare-fun IsPredicateField_11051_67161 (T@Field_11051_11080) Bool)
(declare-fun PredicateMaskField_11051 (T@Field_11051_11080) T@Field_11051_22554)
(declare-fun HasDirectPerm_11051_11080 (T@PolymorphicMapType_19147 T@Ref T@Field_11051_11080) Bool)
(declare-fun PredicateMaskField_11054 (T@Field_23457_23458) T@Field_23470_23475)
(declare-fun HasDirectPerm_11054_11055 (T@PolymorphicMapType_19147 T@Ref T@Field_23457_23458) Bool)
(declare-fun PredicateMaskField_11079 (T@Field_24377_24378) T@Field_24390_24395)
(declare-fun HasDirectPerm_11079_11080 (T@PolymorphicMapType_19147 T@Ref T@Field_24377_24378) Bool)
(declare-fun IsWandField_11006_11007 (T@Field_22566_22567) Bool)
(declare-fun WandMaskField_11006 (T@Field_22566_22567) T@Field_22549_22554)
(declare-fun IsWandField_11051_73886 (T@Field_11051_11080) Bool)
(declare-fun WandMaskField_11051 (T@Field_11051_11080) T@Field_11051_22554)
(declare-fun IsWandField_11054_73529 (T@Field_23457_23458) Bool)
(declare-fun WandMaskField_11054 (T@Field_23457_23458) T@Field_23470_23475)
(declare-fun IsWandField_11079_73172 (T@Field_24377_24378) Bool)
(declare-fun WandMaskField_11079 (T@Field_24377_24378) T@Field_24390_24395)
(declare-fun |p2#sm| (T@Ref Int) T@Field_24390_24395)
(declare-fun |p1#sm| (T@Ref) T@Field_23470_23475)
(declare-fun dummyHeap () T@PolymorphicMapType_19126)
(declare-fun ZeroMask () T@PolymorphicMapType_19147)
(declare-fun InsidePredicate_24377_24377 (T@Field_24377_24378 T@FrameType T@Field_24377_24378 T@FrameType) Bool)
(declare-fun InsidePredicate_23457_23457 (T@Field_23457_23458 T@FrameType T@Field_23457_23458 T@FrameType) Bool)
(declare-fun InsidePredicate_22535_22535 (T@Field_22566_22567 T@FrameType T@Field_22566_22567 T@FrameType) Bool)
(declare-fun InsidePredicate_19186_19186 (T@Field_11051_11080 T@FrameType T@Field_11051_11080 T@FrameType) Bool)
(declare-fun IsPredicateField_11049_1999 (T@Field_23380_1999) Bool)
(declare-fun IsWandField_11049_1999 (T@Field_23380_1999) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10991_87904 (T@Field_22549_22554) Bool)
(declare-fun IsWandField_10991_87920 (T@Field_22549_22554) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10991_19200 (T@Field_22535_19200) Bool)
(declare-fun IsWandField_10991_19200 (T@Field_22535_19200) Bool)
(declare-fun IsPredicateField_10991_53 (T@Field_22535_53) Bool)
(declare-fun IsWandField_10991_53 (T@Field_22535_53) Bool)
(declare-fun IsPredicateField_10991_1535 (T@Field_22535_1535) Bool)
(declare-fun IsWandField_10991_1535 (T@Field_22535_1535) Bool)
(declare-fun IsPredicateField_11054_87087 (T@Field_23470_23475) Bool)
(declare-fun IsWandField_11054_87103 (T@Field_23470_23475) Bool)
(declare-fun IsPredicateField_11054_19200 (T@Field_11054_19200) Bool)
(declare-fun IsWandField_11054_19200 (T@Field_11054_19200) Bool)
(declare-fun IsPredicateField_11054_53 (T@Field_11054_53) Bool)
(declare-fun IsWandField_11054_53 (T@Field_11054_53) Bool)
(declare-fun IsPredicateField_11054_1999 (T@Field_11054_2014) Bool)
(declare-fun IsWandField_11054_1999 (T@Field_11054_2014) Bool)
(declare-fun IsPredicateField_11079_86256 (T@Field_24390_24395) Bool)
(declare-fun IsWandField_11079_86272 (T@Field_24390_24395) Bool)
(declare-fun IsPredicateField_11079_19200 (T@Field_11079_19200) Bool)
(declare-fun IsWandField_11079_19200 (T@Field_11079_19200) Bool)
(declare-fun IsPredicateField_11079_53 (T@Field_11079_53) Bool)
(declare-fun IsWandField_11079_53 (T@Field_11079_53) Bool)
(declare-fun IsPredicateField_11079_1999 (T@Field_11079_2014) Bool)
(declare-fun IsWandField_11079_1999 (T@Field_11079_2014) Bool)
(declare-fun IsPredicateField_11049_85425 (T@Field_11051_22554) Bool)
(declare-fun IsWandField_11049_85441 (T@Field_11051_22554) Bool)
(declare-fun IsPredicateField_11049_19200 (T@Field_19199_19200) Bool)
(declare-fun IsWandField_11049_19200 (T@Field_19199_19200) Bool)
(declare-fun IsPredicateField_11049_53 (T@Field_19186_53) Bool)
(declare-fun IsWandField_11049_53 (T@Field_19186_53) Bool)
(declare-fun HasDirectPerm_22535_66266 (T@PolymorphicMapType_19147 T@Ref T@Field_22549_22554) Bool)
(declare-fun HasDirectPerm_22535_19200 (T@PolymorphicMapType_19147 T@Ref T@Field_22535_19200) Bool)
(declare-fun HasDirectPerm_22535_53 (T@PolymorphicMapType_19147 T@Ref T@Field_22535_53) Bool)
(declare-fun HasDirectPerm_22535_2014 (T@PolymorphicMapType_19147 T@Ref T@Field_22535_1535) Bool)
(declare-fun HasDirectPerm_11051_65089 (T@PolymorphicMapType_19147 T@Ref T@Field_11051_22554) Bool)
(declare-fun HasDirectPerm_11051_19200 (T@PolymorphicMapType_19147 T@Ref T@Field_19199_19200) Bool)
(declare-fun HasDirectPerm_11051_53 (T@PolymorphicMapType_19147 T@Ref T@Field_19186_53) Bool)
(declare-fun HasDirectPerm_11051_2014 (T@PolymorphicMapType_19147 T@Ref T@Field_23380_1999) Bool)
(declare-fun HasDirectPerm_11054_64016 (T@PolymorphicMapType_19147 T@Ref T@Field_23470_23475) Bool)
(declare-fun HasDirectPerm_11054_19200 (T@PolymorphicMapType_19147 T@Ref T@Field_11054_19200) Bool)
(declare-fun HasDirectPerm_11054_53 (T@PolymorphicMapType_19147 T@Ref T@Field_11054_53) Bool)
(declare-fun HasDirectPerm_11054_2014 (T@PolymorphicMapType_19147 T@Ref T@Field_11054_2014) Bool)
(declare-fun HasDirectPerm_11079_62918 (T@PolymorphicMapType_19147 T@Ref T@Field_24390_24395) Bool)
(declare-fun HasDirectPerm_11079_19200 (T@PolymorphicMapType_19147 T@Ref T@Field_11079_19200) Bool)
(declare-fun HasDirectPerm_11079_53 (T@PolymorphicMapType_19147 T@Ref T@Field_11079_53) Bool)
(declare-fun HasDirectPerm_11079_2014 (T@PolymorphicMapType_19147 T@Ref T@Field_11079_2014) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_19147 T@PolymorphicMapType_19147 T@PolymorphicMapType_19147) Bool)
(declare-fun getPredWandId_11079_11080 (T@Field_24377_24378) Int)
(declare-fun wand (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_22535_1535)
(declare-fun getPredWandId_11054_11055 (T@Field_23457_23458) Int)
(declare-fun |wand#ft| (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_22566_22567)
(declare-fun |wand#sm| (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_22549_22554)
(declare-fun InsidePredicate_24377_23457 (T@Field_24377_24378 T@FrameType T@Field_23457_23458 T@FrameType) Bool)
(declare-fun InsidePredicate_24377_22535 (T@Field_24377_24378 T@FrameType T@Field_22566_22567 T@FrameType) Bool)
(declare-fun InsidePredicate_24377_19186 (T@Field_24377_24378 T@FrameType T@Field_11051_11080 T@FrameType) Bool)
(declare-fun InsidePredicate_23457_24377 (T@Field_23457_23458 T@FrameType T@Field_24377_24378 T@FrameType) Bool)
(declare-fun InsidePredicate_23457_22535 (T@Field_23457_23458 T@FrameType T@Field_22566_22567 T@FrameType) Bool)
(declare-fun InsidePredicate_23457_19186 (T@Field_23457_23458 T@FrameType T@Field_11051_11080 T@FrameType) Bool)
(declare-fun InsidePredicate_22535_24377 (T@Field_22566_22567 T@FrameType T@Field_24377_24378 T@FrameType) Bool)
(declare-fun InsidePredicate_22535_23457 (T@Field_22566_22567 T@FrameType T@Field_23457_23458 T@FrameType) Bool)
(declare-fun InsidePredicate_22535_19186 (T@Field_22566_22567 T@FrameType T@Field_11051_11080 T@FrameType) Bool)
(declare-fun InsidePredicate_19186_24377 (T@Field_11051_11080 T@FrameType T@Field_24377_24378 T@FrameType) Bool)
(declare-fun InsidePredicate_19186_23457 (T@Field_11051_11080 T@FrameType T@Field_23457_23458 T@FrameType) Bool)
(declare-fun InsidePredicate_19186_22535 (T@Field_11051_11080 T@FrameType T@Field_22566_22567 T@FrameType) Bool)
(declare-fun getPredWandId_10991_1535 (T@Field_22535_1535) Int)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_19126) (Heap1 T@PolymorphicMapType_19126) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_19126) (Mask T@PolymorphicMapType_19147) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_19126) (Heap1@@0 T@PolymorphicMapType_19126) (Heap2 T@PolymorphicMapType_19126) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_24377_24378) ) (!  (not (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_24390_24395) ) (!  (not (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11079_19200) ) (!  (not (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11079_53) ) (!  (not (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11079_2014) ) (!  (not (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_23457_23458) ) (!  (not (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_23470_23475) ) (!  (not (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11054_19200) ) (!  (not (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11054_53) ) (!  (not (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11054_2014) ) (!  (not (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_22566_22567) ) (!  (not (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_22549_22554) ) (!  (not (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_22535_19200) ) (!  (not (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_22535_53) ) (!  (not (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_22535_1535) ) (!  (not (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11051_11080) ) (!  (not (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_11051_22554) ) (!  (not (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_19199_19200) ) (!  (not (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_19186_53) ) (!  (not (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_23380_1999) ) (!  (not (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((a_2 T@Ref) (b_24 Int) ) (! (IsPredicateField_11079_11080 (p2 a_2 b_24))
 :qid |stdinbpl.331:15|
 :skolemid |36|
 :pattern ( (p2 a_2 b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_19126) (a_2@@0 T@Ref) (b_24@@0 Int) ) (! (|p2#everUsed_11079| (p2 a_2@@0 b_24@@0))
 :qid |stdinbpl.350:15|
 :skolemid |40|
 :pattern ( (|p2#trigger_11079| Heap@@0 (p2 a_2@@0 b_24@@0)))
)))
(assert (forall ((a_2@@1 T@Ref) ) (! (IsPredicateField_11054_11055 (p1 a_2@@1))
 :qid |stdinbpl.277:15|
 :skolemid |30|
 :pattern ( (p1 a_2@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_19126) (a_2@@2 T@Ref) ) (! (|p1#everUsed_11054| (p1 a_2@@2))
 :qid |stdinbpl.296:15|
 :skolemid |34|
 :pattern ( (|p1#trigger_11054| Heap@@1 (p1 a_2@@2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_19126) (ExhaleHeap T@PolymorphicMapType_19126) (Mask@@0 T@PolymorphicMapType_19147) (pm_f_10 T@Field_22566_22567) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_22535_11080 Mask@@0 null pm_f_10) (IsPredicateField_11006_11007 pm_f_10)) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@2) null (PredicateMaskField_22535 pm_f_10)) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap) null (PredicateMaskField_22535 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_11006_11007 pm_f_10) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap) null (PredicateMaskField_22535 pm_f_10)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19126) (ExhaleHeap@@0 T@PolymorphicMapType_19126) (Mask@@1 T@PolymorphicMapType_19147) (pm_f_10@@0 T@Field_11051_11080) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11051_11080 Mask@@1 null pm_f_10@@0) (IsPredicateField_11051_67161 pm_f_10@@0)) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@3) null (PredicateMaskField_11051 pm_f_10@@0)) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@0) null (PredicateMaskField_11051 pm_f_10@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_11051_67161 pm_f_10@@0) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@0) null (PredicateMaskField_11051 pm_f_10@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19126) (ExhaleHeap@@1 T@PolymorphicMapType_19126) (Mask@@2 T@PolymorphicMapType_19147) (pm_f_10@@1 T@Field_23457_23458) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11054_11055 Mask@@2 null pm_f_10@@1) (IsPredicateField_11054_11055 pm_f_10@@1)) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@4) null (PredicateMaskField_11054 pm_f_10@@1)) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@1) null (PredicateMaskField_11054 pm_f_10@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_11054_11055 pm_f_10@@1) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@1) null (PredicateMaskField_11054 pm_f_10@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19126) (ExhaleHeap@@2 T@PolymorphicMapType_19126) (Mask@@3 T@PolymorphicMapType_19147) (pm_f_10@@2 T@Field_24377_24378) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11079_11080 Mask@@3 null pm_f_10@@2) (IsPredicateField_11079_11080 pm_f_10@@2)) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@5) null (PredicateMaskField_11079 pm_f_10@@2)) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@2) null (PredicateMaskField_11079 pm_f_10@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_11079_11080 pm_f_10@@2) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@2) null (PredicateMaskField_11079 pm_f_10@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19126) (ExhaleHeap@@3 T@PolymorphicMapType_19126) (Mask@@4 T@PolymorphicMapType_19147) (pm_f_10@@3 T@Field_22566_22567) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_22535_11080 Mask@@4 null pm_f_10@@3) (IsWandField_11006_11007 pm_f_10@@3)) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@6) null (WandMaskField_11006 pm_f_10@@3)) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@3) null (WandMaskField_11006 pm_f_10@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_11006_11007 pm_f_10@@3) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@3) null (WandMaskField_11006 pm_f_10@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19126) (ExhaleHeap@@4 T@PolymorphicMapType_19126) (Mask@@5 T@PolymorphicMapType_19147) (pm_f_10@@4 T@Field_11051_11080) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_11051_11080 Mask@@5 null pm_f_10@@4) (IsWandField_11051_73886 pm_f_10@@4)) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@7) null (WandMaskField_11051 pm_f_10@@4)) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@4) null (WandMaskField_11051 pm_f_10@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_11051_73886 pm_f_10@@4) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@4) null (WandMaskField_11051 pm_f_10@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19126) (ExhaleHeap@@5 T@PolymorphicMapType_19126) (Mask@@6 T@PolymorphicMapType_19147) (pm_f_10@@5 T@Field_23457_23458) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11054_11055 Mask@@6 null pm_f_10@@5) (IsWandField_11054_73529 pm_f_10@@5)) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@8) null (WandMaskField_11054 pm_f_10@@5)) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@5) null (WandMaskField_11054 pm_f_10@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_11054_73529 pm_f_10@@5) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@5) null (WandMaskField_11054 pm_f_10@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19126) (ExhaleHeap@@6 T@PolymorphicMapType_19126) (Mask@@7 T@PolymorphicMapType_19147) (pm_f_10@@6 T@Field_24377_24378) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_11079_11080 Mask@@7 null pm_f_10@@6) (IsWandField_11079_73172 pm_f_10@@6)) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@9) null (WandMaskField_11079 pm_f_10@@6)) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@6) null (WandMaskField_11079 pm_f_10@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_11079_73172 pm_f_10@@6) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@6) null (WandMaskField_11079 pm_f_10@@6)))
)))
(assert (forall ((a_2@@3 T@Ref) (b_24@@1 Int) (a2 T@Ref) (b2 Int) ) (!  (=> (= (p2 a_2@@3 b_24@@1) (p2 a2 b2)) (and (= a_2@@3 a2) (= b_24@@1 b2)))
 :qid |stdinbpl.341:15|
 :skolemid |38|
 :pattern ( (p2 a_2@@3 b_24@@1) (p2 a2 b2))
)))
(assert (forall ((a_2@@4 T@Ref) (b_24@@2 Int) (a2@@0 T@Ref) (b2@@0 Int) ) (!  (=> (= (|p2#sm| a_2@@4 b_24@@2) (|p2#sm| a2@@0 b2@@0)) (and (= a_2@@4 a2@@0) (= b_24@@2 b2@@0)))
 :qid |stdinbpl.345:15|
 :skolemid |39|
 :pattern ( (|p2#sm| a_2@@4 b_24@@2) (|p2#sm| a2@@0 b2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_19126) (ExhaleHeap@@7 T@PolymorphicMapType_19126) (Mask@@8 T@PolymorphicMapType_19147) (pm_f_10@@7 T@Field_22566_22567) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_22535_11080 Mask@@8 null pm_f_10@@7) (IsPredicateField_11006_11007 pm_f_10@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10 f_15) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@10) o2_10 f_15) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@10) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@10) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@10) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@10) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@3 f_15@@3))
))) (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@10) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@4 f_15@@4))
))) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@10) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@10) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@10) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@8 f_15@@8))
))) (forall ((o2_10@@9 T@Ref) (f_15@@9 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@9 f_15@@9) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@10) o2_10@@9 f_15@@9) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@9 f_15@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@9 f_15@@9))
))) (forall ((o2_10@@10 T@Ref) (f_15@@10 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@10 f_15@@10) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@10) o2_10@@10 f_15@@10) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@10 f_15@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@10 f_15@@10))
))) (forall ((o2_10@@11 T@Ref) (f_15@@11 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@11 f_15@@11) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@10) o2_10@@11 f_15@@11) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@11 f_15@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@11 f_15@@11))
))) (forall ((o2_10@@12 T@Ref) (f_15@@12 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@12 f_15@@12) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@10) o2_10@@12 f_15@@12) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@12 f_15@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@12 f_15@@12))
))) (forall ((o2_10@@13 T@Ref) (f_15@@13 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@13 f_15@@13) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@10) o2_10@@13 f_15@@13) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@13 f_15@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@13 f_15@@13))
))) (forall ((o2_10@@14 T@Ref) (f_15@@14 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@14 f_15@@14) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@10) o2_10@@14 f_15@@14) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@14 f_15@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@14 f_15@@14))
))) (forall ((o2_10@@15 T@Ref) (f_15@@15 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@15 f_15@@15) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@10) o2_10@@15 f_15@@15) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@15 f_15@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@15 f_15@@15))
))) (forall ((o2_10@@16 T@Ref) (f_15@@16 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@16 f_15@@16) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@10) o2_10@@16 f_15@@16) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@16 f_15@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@16 f_15@@16))
))) (forall ((o2_10@@17 T@Ref) (f_15@@17 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@17 f_15@@17) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@10) o2_10@@17 f_15@@17) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@17 f_15@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@17 f_15@@17))
))) (forall ((o2_10@@18 T@Ref) (f_15@@18 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@10) null (PredicateMaskField_22535 pm_f_10@@7))) o2_10@@18 f_15@@18) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@10) o2_10@@18 f_15@@18) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@18 f_15@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@7) o2_10@@18 f_15@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_11006_11007 pm_f_10@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_19126) (ExhaleHeap@@8 T@PolymorphicMapType_19126) (Mask@@9 T@PolymorphicMapType_19147) (pm_f_10@@8 T@Field_11051_11080) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_11051_11080 Mask@@9 null pm_f_10@@8) (IsPredicateField_11051_67161 pm_f_10@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@19 T@Ref) (f_15@@19 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@19 f_15@@19) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@11) o2_10@@19 f_15@@19) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@19 f_15@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@19 f_15@@19))
)) (forall ((o2_10@@20 T@Ref) (f_15@@20 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@20 f_15@@20) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@11) o2_10@@20 f_15@@20) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@20 f_15@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@20 f_15@@20))
))) (forall ((o2_10@@21 T@Ref) (f_15@@21 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@21 f_15@@21) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@11) o2_10@@21 f_15@@21) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@21 f_15@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@21 f_15@@21))
))) (forall ((o2_10@@22 T@Ref) (f_15@@22 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@22 f_15@@22) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) o2_10@@22 f_15@@22) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@22 f_15@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@22 f_15@@22))
))) (forall ((o2_10@@23 T@Ref) (f_15@@23 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@23 f_15@@23) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@11) o2_10@@23 f_15@@23) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@23 f_15@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@23 f_15@@23))
))) (forall ((o2_10@@24 T@Ref) (f_15@@24 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@24 f_15@@24) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@11) o2_10@@24 f_15@@24) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@24 f_15@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@24 f_15@@24))
))) (forall ((o2_10@@25 T@Ref) (f_15@@25 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@25 f_15@@25) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@11) o2_10@@25 f_15@@25) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@25 f_15@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@25 f_15@@25))
))) (forall ((o2_10@@26 T@Ref) (f_15@@26 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@26 f_15@@26) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@11) o2_10@@26 f_15@@26) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@26 f_15@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@26 f_15@@26))
))) (forall ((o2_10@@27 T@Ref) (f_15@@27 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@27 f_15@@27) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@11) o2_10@@27 f_15@@27) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@27 f_15@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@27 f_15@@27))
))) (forall ((o2_10@@28 T@Ref) (f_15@@28 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@28 f_15@@28) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@11) o2_10@@28 f_15@@28) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@28 f_15@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@28 f_15@@28))
))) (forall ((o2_10@@29 T@Ref) (f_15@@29 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@29 f_15@@29) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@11) o2_10@@29 f_15@@29) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@29 f_15@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@29 f_15@@29))
))) (forall ((o2_10@@30 T@Ref) (f_15@@30 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@30 f_15@@30) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@11) o2_10@@30 f_15@@30) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@30 f_15@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@30 f_15@@30))
))) (forall ((o2_10@@31 T@Ref) (f_15@@31 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@31 f_15@@31) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@11) o2_10@@31 f_15@@31) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@31 f_15@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@31 f_15@@31))
))) (forall ((o2_10@@32 T@Ref) (f_15@@32 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@32 f_15@@32) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@11) o2_10@@32 f_15@@32) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@32 f_15@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@32 f_15@@32))
))) (forall ((o2_10@@33 T@Ref) (f_15@@33 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@33 f_15@@33) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@11) o2_10@@33 f_15@@33) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@33 f_15@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@33 f_15@@33))
))) (forall ((o2_10@@34 T@Ref) (f_15@@34 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@34 f_15@@34) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@11) o2_10@@34 f_15@@34) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@34 f_15@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@34 f_15@@34))
))) (forall ((o2_10@@35 T@Ref) (f_15@@35 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@35 f_15@@35) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@11) o2_10@@35 f_15@@35) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@35 f_15@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@35 f_15@@35))
))) (forall ((o2_10@@36 T@Ref) (f_15@@36 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@36 f_15@@36) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@11) o2_10@@36 f_15@@36) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@36 f_15@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@36 f_15@@36))
))) (forall ((o2_10@@37 T@Ref) (f_15@@37 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@37 f_15@@37) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@11) o2_10@@37 f_15@@37) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@37 f_15@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@37 f_15@@37))
))) (forall ((o2_10@@38 T@Ref) (f_15@@38 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@11) null (PredicateMaskField_11051 pm_f_10@@8))) o2_10@@38 f_15@@38) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@11) o2_10@@38 f_15@@38) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@38 f_15@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@8) o2_10@@38 f_15@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsPredicateField_11051_67161 pm_f_10@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19126) (ExhaleHeap@@9 T@PolymorphicMapType_19126) (Mask@@10 T@PolymorphicMapType_19147) (pm_f_10@@9 T@Field_23457_23458) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_11054_11055 Mask@@10 null pm_f_10@@9) (IsPredicateField_11054_11055 pm_f_10@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@39 T@Ref) (f_15@@39 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@39 f_15@@39) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@12) o2_10@@39 f_15@@39) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@39 f_15@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@39 f_15@@39))
)) (forall ((o2_10@@40 T@Ref) (f_15@@40 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@40 f_15@@40) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@12) o2_10@@40 f_15@@40) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@40 f_15@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@40 f_15@@40))
))) (forall ((o2_10@@41 T@Ref) (f_15@@41 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@41 f_15@@41) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@12) o2_10@@41 f_15@@41) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@41 f_15@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@41 f_15@@41))
))) (forall ((o2_10@@42 T@Ref) (f_15@@42 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@42 f_15@@42) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@12) o2_10@@42 f_15@@42) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@42 f_15@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@42 f_15@@42))
))) (forall ((o2_10@@43 T@Ref) (f_15@@43 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@43 f_15@@43) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@12) o2_10@@43 f_15@@43) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@43 f_15@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@43 f_15@@43))
))) (forall ((o2_10@@44 T@Ref) (f_15@@44 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@44 f_15@@44) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@12) o2_10@@44 f_15@@44) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@44 f_15@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@44 f_15@@44))
))) (forall ((o2_10@@45 T@Ref) (f_15@@45 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@45 f_15@@45) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@12) o2_10@@45 f_15@@45) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@45 f_15@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@45 f_15@@45))
))) (forall ((o2_10@@46 T@Ref) (f_15@@46 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@46 f_15@@46) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@12) o2_10@@46 f_15@@46) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@46 f_15@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@46 f_15@@46))
))) (forall ((o2_10@@47 T@Ref) (f_15@@47 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@47 f_15@@47) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@12) o2_10@@47 f_15@@47) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@47 f_15@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@47 f_15@@47))
))) (forall ((o2_10@@48 T@Ref) (f_15@@48 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@48 f_15@@48) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@12) o2_10@@48 f_15@@48) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@48 f_15@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@48 f_15@@48))
))) (forall ((o2_10@@49 T@Ref) (f_15@@49 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@49 f_15@@49) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@12) o2_10@@49 f_15@@49) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@49 f_15@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@49 f_15@@49))
))) (forall ((o2_10@@50 T@Ref) (f_15@@50 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@50 f_15@@50) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@12) o2_10@@50 f_15@@50) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@50 f_15@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@50 f_15@@50))
))) (forall ((o2_10@@51 T@Ref) (f_15@@51 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@51 f_15@@51) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@12) o2_10@@51 f_15@@51) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@51 f_15@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@51 f_15@@51))
))) (forall ((o2_10@@52 T@Ref) (f_15@@52 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@52 f_15@@52) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) o2_10@@52 f_15@@52) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@52 f_15@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@52 f_15@@52))
))) (forall ((o2_10@@53 T@Ref) (f_15@@53 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@53 f_15@@53) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@12) o2_10@@53 f_15@@53) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@53 f_15@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@53 f_15@@53))
))) (forall ((o2_10@@54 T@Ref) (f_15@@54 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@54 f_15@@54) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@12) o2_10@@54 f_15@@54) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@54 f_15@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@54 f_15@@54))
))) (forall ((o2_10@@55 T@Ref) (f_15@@55 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@55 f_15@@55) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@12) o2_10@@55 f_15@@55) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@55 f_15@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@55 f_15@@55))
))) (forall ((o2_10@@56 T@Ref) (f_15@@56 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@56 f_15@@56) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@12) o2_10@@56 f_15@@56) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@56 f_15@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@56 f_15@@56))
))) (forall ((o2_10@@57 T@Ref) (f_15@@57 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@57 f_15@@57) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@12) o2_10@@57 f_15@@57) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@57 f_15@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@57 f_15@@57))
))) (forall ((o2_10@@58 T@Ref) (f_15@@58 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@12) null (PredicateMaskField_11054 pm_f_10@@9))) o2_10@@58 f_15@@58) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@12) o2_10@@58 f_15@@58) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@58 f_15@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@9) o2_10@@58 f_15@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsPredicateField_11054_11055 pm_f_10@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19126) (ExhaleHeap@@10 T@PolymorphicMapType_19126) (Mask@@11 T@PolymorphicMapType_19147) (pm_f_10@@10 T@Field_24377_24378) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_11079_11080 Mask@@11 null pm_f_10@@10) (IsPredicateField_11079_11080 pm_f_10@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@59 T@Ref) (f_15@@59 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@59 f_15@@59) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@13) o2_10@@59 f_15@@59) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@59 f_15@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@59 f_15@@59))
)) (forall ((o2_10@@60 T@Ref) (f_15@@60 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@60 f_15@@60) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@13) o2_10@@60 f_15@@60) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@60 f_15@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@60 f_15@@60))
))) (forall ((o2_10@@61 T@Ref) (f_15@@61 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@61 f_15@@61) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@13) o2_10@@61 f_15@@61) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@61 f_15@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@61 f_15@@61))
))) (forall ((o2_10@@62 T@Ref) (f_15@@62 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@62 f_15@@62) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@13) o2_10@@62 f_15@@62) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@62 f_15@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@62 f_15@@62))
))) (forall ((o2_10@@63 T@Ref) (f_15@@63 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@63 f_15@@63) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@13) o2_10@@63 f_15@@63) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@63 f_15@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@63 f_15@@63))
))) (forall ((o2_10@@64 T@Ref) (f_15@@64 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@64 f_15@@64) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@13) o2_10@@64 f_15@@64) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@64 f_15@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@64 f_15@@64))
))) (forall ((o2_10@@65 T@Ref) (f_15@@65 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@65 f_15@@65) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@13) o2_10@@65 f_15@@65) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@65 f_15@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@65 f_15@@65))
))) (forall ((o2_10@@66 T@Ref) (f_15@@66 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@66 f_15@@66) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@13) o2_10@@66 f_15@@66) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@66 f_15@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@66 f_15@@66))
))) (forall ((o2_10@@67 T@Ref) (f_15@@67 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@67 f_15@@67) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@13) o2_10@@67 f_15@@67) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@67 f_15@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@67 f_15@@67))
))) (forall ((o2_10@@68 T@Ref) (f_15@@68 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@68 f_15@@68) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@13) o2_10@@68 f_15@@68) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@68 f_15@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@68 f_15@@68))
))) (forall ((o2_10@@69 T@Ref) (f_15@@69 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@69 f_15@@69) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@13) o2_10@@69 f_15@@69) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@69 f_15@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@69 f_15@@69))
))) (forall ((o2_10@@70 T@Ref) (f_15@@70 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@70 f_15@@70) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@13) o2_10@@70 f_15@@70) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@70 f_15@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@70 f_15@@70))
))) (forall ((o2_10@@71 T@Ref) (f_15@@71 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@71 f_15@@71) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@13) o2_10@@71 f_15@@71) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@71 f_15@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@71 f_15@@71))
))) (forall ((o2_10@@72 T@Ref) (f_15@@72 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@72 f_15@@72) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@13) o2_10@@72 f_15@@72) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@72 f_15@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@72 f_15@@72))
))) (forall ((o2_10@@73 T@Ref) (f_15@@73 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@73 f_15@@73) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@13) o2_10@@73 f_15@@73) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@73 f_15@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@73 f_15@@73))
))) (forall ((o2_10@@74 T@Ref) (f_15@@74 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@74 f_15@@74) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@13) o2_10@@74 f_15@@74) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@74 f_15@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@74 f_15@@74))
))) (forall ((o2_10@@75 T@Ref) (f_15@@75 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@75 f_15@@75) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@13) o2_10@@75 f_15@@75) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@75 f_15@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@75 f_15@@75))
))) (forall ((o2_10@@76 T@Ref) (f_15@@76 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@76 f_15@@76) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@13) o2_10@@76 f_15@@76) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@76 f_15@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@76 f_15@@76))
))) (forall ((o2_10@@77 T@Ref) (f_15@@77 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@77 f_15@@77) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) o2_10@@77 f_15@@77) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@77 f_15@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@77 f_15@@77))
))) (forall ((o2_10@@78 T@Ref) (f_15@@78 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@13) null (PredicateMaskField_11079 pm_f_10@@10))) o2_10@@78 f_15@@78) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@13) o2_10@@78 f_15@@78) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@78 f_15@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@10) o2_10@@78 f_15@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsPredicateField_11079_11080 pm_f_10@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19126) (ExhaleHeap@@11 T@PolymorphicMapType_19126) (Mask@@12 T@PolymorphicMapType_19147) (pm_f_10@@11 T@Field_22566_22567) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_22535_11080 Mask@@12 null pm_f_10@@11) (IsWandField_11006_11007 pm_f_10@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@79 T@Ref) (f_15@@79 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@79 f_15@@79) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@14) o2_10@@79 f_15@@79) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@79 f_15@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@79 f_15@@79))
)) (forall ((o2_10@@80 T@Ref) (f_15@@80 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@80 f_15@@80) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@14) o2_10@@80 f_15@@80) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@80 f_15@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@80 f_15@@80))
))) (forall ((o2_10@@81 T@Ref) (f_15@@81 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@81 f_15@@81) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@14) o2_10@@81 f_15@@81) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@81 f_15@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@81 f_15@@81))
))) (forall ((o2_10@@82 T@Ref) (f_15@@82 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@82 f_15@@82) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@14) o2_10@@82 f_15@@82) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@82 f_15@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@82 f_15@@82))
))) (forall ((o2_10@@83 T@Ref) (f_15@@83 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@83 f_15@@83) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@14) o2_10@@83 f_15@@83) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@83 f_15@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@83 f_15@@83))
))) (forall ((o2_10@@84 T@Ref) (f_15@@84 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@84 f_15@@84) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@14) o2_10@@84 f_15@@84) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@84 f_15@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@84 f_15@@84))
))) (forall ((o2_10@@85 T@Ref) (f_15@@85 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@85 f_15@@85) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@14) o2_10@@85 f_15@@85) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@85 f_15@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@85 f_15@@85))
))) (forall ((o2_10@@86 T@Ref) (f_15@@86 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@86 f_15@@86) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@14) o2_10@@86 f_15@@86) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@86 f_15@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@86 f_15@@86))
))) (forall ((o2_10@@87 T@Ref) (f_15@@87 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@87 f_15@@87) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) o2_10@@87 f_15@@87) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@87 f_15@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@87 f_15@@87))
))) (forall ((o2_10@@88 T@Ref) (f_15@@88 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@88 f_15@@88) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@14) o2_10@@88 f_15@@88) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@88 f_15@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@88 f_15@@88))
))) (forall ((o2_10@@89 T@Ref) (f_15@@89 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@89 f_15@@89) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@14) o2_10@@89 f_15@@89) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@89 f_15@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@89 f_15@@89))
))) (forall ((o2_10@@90 T@Ref) (f_15@@90 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@90 f_15@@90) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@14) o2_10@@90 f_15@@90) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@90 f_15@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@90 f_15@@90))
))) (forall ((o2_10@@91 T@Ref) (f_15@@91 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@91 f_15@@91) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@14) o2_10@@91 f_15@@91) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@91 f_15@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@91 f_15@@91))
))) (forall ((o2_10@@92 T@Ref) (f_15@@92 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@92 f_15@@92) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@14) o2_10@@92 f_15@@92) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@92 f_15@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@92 f_15@@92))
))) (forall ((o2_10@@93 T@Ref) (f_15@@93 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@93 f_15@@93) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@14) o2_10@@93 f_15@@93) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@93 f_15@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@93 f_15@@93))
))) (forall ((o2_10@@94 T@Ref) (f_15@@94 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@94 f_15@@94) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@14) o2_10@@94 f_15@@94) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@94 f_15@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@94 f_15@@94))
))) (forall ((o2_10@@95 T@Ref) (f_15@@95 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@95 f_15@@95) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@14) o2_10@@95 f_15@@95) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@95 f_15@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@95 f_15@@95))
))) (forall ((o2_10@@96 T@Ref) (f_15@@96 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@96 f_15@@96) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@14) o2_10@@96 f_15@@96) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@96 f_15@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@96 f_15@@96))
))) (forall ((o2_10@@97 T@Ref) (f_15@@97 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@97 f_15@@97) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@14) o2_10@@97 f_15@@97) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@97 f_15@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@97 f_15@@97))
))) (forall ((o2_10@@98 T@Ref) (f_15@@98 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@14) null (WandMaskField_11006 pm_f_10@@11))) o2_10@@98 f_15@@98) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@14) o2_10@@98 f_15@@98) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@98 f_15@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@11) o2_10@@98 f_15@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (IsWandField_11006_11007 pm_f_10@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19126) (ExhaleHeap@@12 T@PolymorphicMapType_19126) (Mask@@13 T@PolymorphicMapType_19147) (pm_f_10@@12 T@Field_11051_11080) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_11051_11080 Mask@@13 null pm_f_10@@12) (IsWandField_11051_73886 pm_f_10@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@99 T@Ref) (f_15@@99 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@99 f_15@@99) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@15) o2_10@@99 f_15@@99) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@99 f_15@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@99 f_15@@99))
)) (forall ((o2_10@@100 T@Ref) (f_15@@100 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@100 f_15@@100) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@15) o2_10@@100 f_15@@100) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@100 f_15@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@100 f_15@@100))
))) (forall ((o2_10@@101 T@Ref) (f_15@@101 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@101 f_15@@101) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@15) o2_10@@101 f_15@@101) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@101 f_15@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@101 f_15@@101))
))) (forall ((o2_10@@102 T@Ref) (f_15@@102 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@102 f_15@@102) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) o2_10@@102 f_15@@102) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@102 f_15@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@102 f_15@@102))
))) (forall ((o2_10@@103 T@Ref) (f_15@@103 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@103 f_15@@103) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@15) o2_10@@103 f_15@@103) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@103 f_15@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@103 f_15@@103))
))) (forall ((o2_10@@104 T@Ref) (f_15@@104 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@104 f_15@@104) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@15) o2_10@@104 f_15@@104) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@104 f_15@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@104 f_15@@104))
))) (forall ((o2_10@@105 T@Ref) (f_15@@105 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@105 f_15@@105) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@15) o2_10@@105 f_15@@105) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@105 f_15@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@105 f_15@@105))
))) (forall ((o2_10@@106 T@Ref) (f_15@@106 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@106 f_15@@106) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@15) o2_10@@106 f_15@@106) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@106 f_15@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@106 f_15@@106))
))) (forall ((o2_10@@107 T@Ref) (f_15@@107 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@107 f_15@@107) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@15) o2_10@@107 f_15@@107) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@107 f_15@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@107 f_15@@107))
))) (forall ((o2_10@@108 T@Ref) (f_15@@108 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@108 f_15@@108) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@15) o2_10@@108 f_15@@108) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@108 f_15@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@108 f_15@@108))
))) (forall ((o2_10@@109 T@Ref) (f_15@@109 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@109 f_15@@109) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@15) o2_10@@109 f_15@@109) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@109 f_15@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@109 f_15@@109))
))) (forall ((o2_10@@110 T@Ref) (f_15@@110 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@110 f_15@@110) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@15) o2_10@@110 f_15@@110) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@110 f_15@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@110 f_15@@110))
))) (forall ((o2_10@@111 T@Ref) (f_15@@111 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@111 f_15@@111) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@15) o2_10@@111 f_15@@111) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@111 f_15@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@111 f_15@@111))
))) (forall ((o2_10@@112 T@Ref) (f_15@@112 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@112 f_15@@112) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@15) o2_10@@112 f_15@@112) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@112 f_15@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@112 f_15@@112))
))) (forall ((o2_10@@113 T@Ref) (f_15@@113 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@113 f_15@@113) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@15) o2_10@@113 f_15@@113) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@113 f_15@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@113 f_15@@113))
))) (forall ((o2_10@@114 T@Ref) (f_15@@114 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@114 f_15@@114) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@15) o2_10@@114 f_15@@114) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@114 f_15@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@114 f_15@@114))
))) (forall ((o2_10@@115 T@Ref) (f_15@@115 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@115 f_15@@115) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@15) o2_10@@115 f_15@@115) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@115 f_15@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@115 f_15@@115))
))) (forall ((o2_10@@116 T@Ref) (f_15@@116 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@116 f_15@@116) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@15) o2_10@@116 f_15@@116) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@116 f_15@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@116 f_15@@116))
))) (forall ((o2_10@@117 T@Ref) (f_15@@117 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@117 f_15@@117) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@15) o2_10@@117 f_15@@117) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@117 f_15@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@117 f_15@@117))
))) (forall ((o2_10@@118 T@Ref) (f_15@@118 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@15) null (WandMaskField_11051 pm_f_10@@12))) o2_10@@118 f_15@@118) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@15) o2_10@@118 f_15@@118) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@118 f_15@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@12) o2_10@@118 f_15@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (IsWandField_11051_73886 pm_f_10@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19126) (ExhaleHeap@@13 T@PolymorphicMapType_19126) (Mask@@14 T@PolymorphicMapType_19147) (pm_f_10@@13 T@Field_23457_23458) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_11054_11055 Mask@@14 null pm_f_10@@13) (IsWandField_11054_73529 pm_f_10@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@119 T@Ref) (f_15@@119 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@119 f_15@@119) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@16) o2_10@@119 f_15@@119) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@119 f_15@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@119 f_15@@119))
)) (forall ((o2_10@@120 T@Ref) (f_15@@120 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@120 f_15@@120) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@16) o2_10@@120 f_15@@120) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@120 f_15@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@120 f_15@@120))
))) (forall ((o2_10@@121 T@Ref) (f_15@@121 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@121 f_15@@121) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@16) o2_10@@121 f_15@@121) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@121 f_15@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@121 f_15@@121))
))) (forall ((o2_10@@122 T@Ref) (f_15@@122 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@122 f_15@@122) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@16) o2_10@@122 f_15@@122) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@122 f_15@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@122 f_15@@122))
))) (forall ((o2_10@@123 T@Ref) (f_15@@123 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@123 f_15@@123) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@16) o2_10@@123 f_15@@123) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@123 f_15@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@123 f_15@@123))
))) (forall ((o2_10@@124 T@Ref) (f_15@@124 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@124 f_15@@124) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@16) o2_10@@124 f_15@@124) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@124 f_15@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@124 f_15@@124))
))) (forall ((o2_10@@125 T@Ref) (f_15@@125 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@125 f_15@@125) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@16) o2_10@@125 f_15@@125) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@125 f_15@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@125 f_15@@125))
))) (forall ((o2_10@@126 T@Ref) (f_15@@126 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@126 f_15@@126) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@16) o2_10@@126 f_15@@126) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@126 f_15@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@126 f_15@@126))
))) (forall ((o2_10@@127 T@Ref) (f_15@@127 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@127 f_15@@127) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@16) o2_10@@127 f_15@@127) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@127 f_15@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@127 f_15@@127))
))) (forall ((o2_10@@128 T@Ref) (f_15@@128 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@128 f_15@@128) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@16) o2_10@@128 f_15@@128) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@128 f_15@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@128 f_15@@128))
))) (forall ((o2_10@@129 T@Ref) (f_15@@129 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@129 f_15@@129) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@16) o2_10@@129 f_15@@129) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@129 f_15@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@129 f_15@@129))
))) (forall ((o2_10@@130 T@Ref) (f_15@@130 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@130 f_15@@130) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@16) o2_10@@130 f_15@@130) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@130 f_15@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@130 f_15@@130))
))) (forall ((o2_10@@131 T@Ref) (f_15@@131 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@131 f_15@@131) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@16) o2_10@@131 f_15@@131) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@131 f_15@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@131 f_15@@131))
))) (forall ((o2_10@@132 T@Ref) (f_15@@132 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@132 f_15@@132) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) o2_10@@132 f_15@@132) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@132 f_15@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@132 f_15@@132))
))) (forall ((o2_10@@133 T@Ref) (f_15@@133 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@133 f_15@@133) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@16) o2_10@@133 f_15@@133) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@133 f_15@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@133 f_15@@133))
))) (forall ((o2_10@@134 T@Ref) (f_15@@134 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@134 f_15@@134) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@16) o2_10@@134 f_15@@134) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@134 f_15@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@134 f_15@@134))
))) (forall ((o2_10@@135 T@Ref) (f_15@@135 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@135 f_15@@135) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@16) o2_10@@135 f_15@@135) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@135 f_15@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@135 f_15@@135))
))) (forall ((o2_10@@136 T@Ref) (f_15@@136 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@136 f_15@@136) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@16) o2_10@@136 f_15@@136) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@136 f_15@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@136 f_15@@136))
))) (forall ((o2_10@@137 T@Ref) (f_15@@137 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@137 f_15@@137) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@16) o2_10@@137 f_15@@137) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@137 f_15@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@137 f_15@@137))
))) (forall ((o2_10@@138 T@Ref) (f_15@@138 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@16) null (WandMaskField_11054 pm_f_10@@13))) o2_10@@138 f_15@@138) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@16) o2_10@@138 f_15@@138) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@138 f_15@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@13) o2_10@@138 f_15@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (IsWandField_11054_73529 pm_f_10@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19126) (ExhaleHeap@@14 T@PolymorphicMapType_19126) (Mask@@15 T@PolymorphicMapType_19147) (pm_f_10@@14 T@Field_24377_24378) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_11079_11080 Mask@@15 null pm_f_10@@14) (IsWandField_11079_73172 pm_f_10@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@139 T@Ref) (f_15@@139 T@Field_23380_1999) ) (!  (=> (select (|PolymorphicMapType_19675_11051_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@139 f_15@@139) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@17) o2_10@@139 f_15@@139) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@139 f_15@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@139 f_15@@139))
)) (forall ((o2_10@@140 T@Ref) (f_15@@140 T@Field_19186_53) ) (!  (=> (select (|PolymorphicMapType_19675_11051_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@140 f_15@@140) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@17) o2_10@@140 f_15@@140) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@140 f_15@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@140 f_15@@140))
))) (forall ((o2_10@@141 T@Ref) (f_15@@141 T@Field_19199_19200) ) (!  (=> (select (|PolymorphicMapType_19675_11051_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@141 f_15@@141) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@17) o2_10@@141 f_15@@141) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@141 f_15@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@141 f_15@@141))
))) (forall ((o2_10@@142 T@Ref) (f_15@@142 T@Field_11051_22554) ) (!  (=> (select (|PolymorphicMapType_19675_11051_68454#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@142 f_15@@142) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@17) o2_10@@142 f_15@@142) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@142 f_15@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@142 f_15@@142))
))) (forall ((o2_10@@143 T@Ref) (f_15@@143 T@Field_11051_11080) ) (!  (=> (select (|PolymorphicMapType_19675_11051_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@143 f_15@@143) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@17) o2_10@@143 f_15@@143) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@143 f_15@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@143 f_15@@143))
))) (forall ((o2_10@@144 T@Ref) (f_15@@144 T@Field_22535_1535) ) (!  (=> (select (|PolymorphicMapType_19675_22535_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@144 f_15@@144) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@17) o2_10@@144 f_15@@144) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@144 f_15@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@144 f_15@@144))
))) (forall ((o2_10@@145 T@Ref) (f_15@@145 T@Field_22535_53) ) (!  (=> (select (|PolymorphicMapType_19675_22535_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@145 f_15@@145) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@17) o2_10@@145 f_15@@145) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@145 f_15@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@145 f_15@@145))
))) (forall ((o2_10@@146 T@Ref) (f_15@@146 T@Field_22535_19200) ) (!  (=> (select (|PolymorphicMapType_19675_22535_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@146 f_15@@146) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@17) o2_10@@146 f_15@@146) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@146 f_15@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@146 f_15@@146))
))) (forall ((o2_10@@147 T@Ref) (f_15@@147 T@Field_22549_22554) ) (!  (=> (select (|PolymorphicMapType_19675_22535_69502#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@147 f_15@@147) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@17) o2_10@@147 f_15@@147) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@147 f_15@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@147 f_15@@147))
))) (forall ((o2_10@@148 T@Ref) (f_15@@148 T@Field_22566_22567) ) (!  (=> (select (|PolymorphicMapType_19675_22535_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@148 f_15@@148) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@17) o2_10@@148 f_15@@148) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@148 f_15@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@148 f_15@@148))
))) (forall ((o2_10@@149 T@Ref) (f_15@@149 T@Field_11054_2014) ) (!  (=> (select (|PolymorphicMapType_19675_23457_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@149 f_15@@149) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@17) o2_10@@149 f_15@@149) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@149 f_15@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@149 f_15@@149))
))) (forall ((o2_10@@150 T@Ref) (f_15@@150 T@Field_11054_53) ) (!  (=> (select (|PolymorphicMapType_19675_23457_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@150 f_15@@150) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@17) o2_10@@150 f_15@@150) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@150 f_15@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@150 f_15@@150))
))) (forall ((o2_10@@151 T@Ref) (f_15@@151 T@Field_11054_19200) ) (!  (=> (select (|PolymorphicMapType_19675_23457_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@151 f_15@@151) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@17) o2_10@@151 f_15@@151) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@151 f_15@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@151 f_15@@151))
))) (forall ((o2_10@@152 T@Ref) (f_15@@152 T@Field_23470_23475) ) (!  (=> (select (|PolymorphicMapType_19675_23457_70550#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@152 f_15@@152) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@17) o2_10@@152 f_15@@152) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@152 f_15@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@152 f_15@@152))
))) (forall ((o2_10@@153 T@Ref) (f_15@@153 T@Field_23457_23458) ) (!  (=> (select (|PolymorphicMapType_19675_23457_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@153 f_15@@153) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@17) o2_10@@153 f_15@@153) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@153 f_15@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@153 f_15@@153))
))) (forall ((o2_10@@154 T@Ref) (f_15@@154 T@Field_11079_2014) ) (!  (=> (select (|PolymorphicMapType_19675_24377_2014#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@154 f_15@@154) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@17) o2_10@@154 f_15@@154) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@154 f_15@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@154 f_15@@154))
))) (forall ((o2_10@@155 T@Ref) (f_15@@155 T@Field_11079_53) ) (!  (=> (select (|PolymorphicMapType_19675_24377_53#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@155 f_15@@155) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@17) o2_10@@155 f_15@@155) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@155 f_15@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@155 f_15@@155))
))) (forall ((o2_10@@156 T@Ref) (f_15@@156 T@Field_11079_19200) ) (!  (=> (select (|PolymorphicMapType_19675_24377_19200#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@156 f_15@@156) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@17) o2_10@@156 f_15@@156) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@156 f_15@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@156 f_15@@156))
))) (forall ((o2_10@@157 T@Ref) (f_15@@157 T@Field_24390_24395) ) (!  (=> (select (|PolymorphicMapType_19675_24377_71598#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@157 f_15@@157) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) o2_10@@157 f_15@@157) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@157 f_15@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@157 f_15@@157))
))) (forall ((o2_10@@158 T@Ref) (f_15@@158 T@Field_24377_24378) ) (!  (=> (select (|PolymorphicMapType_19675_24377_22567#PolymorphicMapType_19675| (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@17) null (WandMaskField_11079 pm_f_10@@14))) o2_10@@158 f_15@@158) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@17) o2_10@@158 f_15@@158) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@158 f_15@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@14) o2_10@@158 f_15@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (IsWandField_11079_73172 pm_f_10@@14))
)))
(assert (forall ((a_2@@5 T@Ref) (a2@@1 T@Ref) ) (!  (=> (= (p1 a_2@@5) (p1 a2@@1)) (= a_2@@5 a2@@1))
 :qid |stdinbpl.287:15|
 :skolemid |32|
 :pattern ( (p1 a_2@@5) (p1 a2@@1))
)))
(assert (forall ((a_2@@6 T@Ref) (a2@@2 T@Ref) ) (!  (=> (= (|p1#sm| a_2@@6) (|p1#sm| a2@@2)) (= a_2@@6 a2@@2))
 :qid |stdinbpl.291:15|
 :skolemid |33|
 :pattern ( (|p1#sm| a_2@@6) (|p1#sm| a2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19126) (ExhaleHeap@@15 T@PolymorphicMapType_19126) (Mask@@16 T@PolymorphicMapType_19147) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@18) o_23 $allocated) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@15) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@15) o_23 $allocated))
)))
(assert (forall ((p T@Field_24377_24378) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_24377_24377 p v_1 p w))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24377_24377 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_23457_23458) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_23457_23457 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23457_23457 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_22566_22567) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_22535_22535 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22535_22535 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_11051_11080) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_19186_19186 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19186_19186 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_11049_1999 f_7)))
(assert  (not (IsWandField_11049_1999 f_7)))
(assert  (not (IsPredicateField_11049_1999 g)))
(assert  (not (IsWandField_11049_1999 g)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19126) (ExhaleHeap@@16 T@PolymorphicMapType_19126) (Mask@@17 T@PolymorphicMapType_19147) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@19 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_19147) (o_2@@19 T@Ref) (f_4@@19 T@Field_22549_22554) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_10991_87904 f_4@@19))) (not (IsWandField_10991_87920 f_4@@19))) (<= (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_19147) (o_2@@20 T@Ref) (f_4@@20 T@Field_22535_19200) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_10991_19200 f_4@@20))) (not (IsWandField_10991_19200 f_4@@20))) (<= (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_19147) (o_2@@21 T@Ref) (f_4@@21 T@Field_22535_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_10991_53 f_4@@21))) (not (IsWandField_10991_53 f_4@@21))) (<= (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_19147) (o_2@@22 T@Ref) (f_4@@22 T@Field_22566_22567) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_11006_11007 f_4@@22))) (not (IsWandField_11006_11007 f_4@@22))) (<= (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_19147) (o_2@@23 T@Ref) (f_4@@23 T@Field_22535_1535) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_10991_1535 f_4@@23))) (not (IsWandField_10991_1535 f_4@@23))) (<= (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_19147) (o_2@@24 T@Ref) (f_4@@24 T@Field_23470_23475) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_11054_87087 f_4@@24))) (not (IsWandField_11054_87103 f_4@@24))) (<= (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_19147) (o_2@@25 T@Ref) (f_4@@25 T@Field_11054_19200) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_11054_19200 f_4@@25))) (not (IsWandField_11054_19200 f_4@@25))) (<= (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_19147) (o_2@@26 T@Ref) (f_4@@26 T@Field_11054_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_11054_53 f_4@@26))) (not (IsWandField_11054_53 f_4@@26))) (<= (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_19147) (o_2@@27 T@Ref) (f_4@@27 T@Field_23457_23458) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_11054_11055 f_4@@27))) (not (IsWandField_11054_73529 f_4@@27))) (<= (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_19147) (o_2@@28 T@Ref) (f_4@@28 T@Field_11054_2014) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_11054_1999 f_4@@28))) (not (IsWandField_11054_1999 f_4@@28))) (<= (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_19147) (o_2@@29 T@Ref) (f_4@@29 T@Field_24390_24395) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_11079_86256 f_4@@29))) (not (IsWandField_11079_86272 f_4@@29))) (<= (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_19147) (o_2@@30 T@Ref) (f_4@@30 T@Field_11079_19200) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_11079_19200 f_4@@30))) (not (IsWandField_11079_19200 f_4@@30))) (<= (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_19147) (o_2@@31 T@Ref) (f_4@@31 T@Field_11079_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_11079_53 f_4@@31))) (not (IsWandField_11079_53 f_4@@31))) (<= (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_19147) (o_2@@32 T@Ref) (f_4@@32 T@Field_24377_24378) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_11079_11080 f_4@@32))) (not (IsWandField_11079_73172 f_4@@32))) (<= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_19147) (o_2@@33 T@Ref) (f_4@@33 T@Field_11079_2014) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_11079_1999 f_4@@33))) (not (IsWandField_11079_1999 f_4@@33))) (<= (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_19147) (o_2@@34 T@Ref) (f_4@@34 T@Field_11051_22554) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_11049_85425 f_4@@34))) (not (IsWandField_11049_85441 f_4@@34))) (<= (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_19147) (o_2@@35 T@Ref) (f_4@@35 T@Field_19199_19200) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_11049_19200 f_4@@35))) (not (IsWandField_11049_19200 f_4@@35))) (<= (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_19147) (o_2@@36 T@Ref) (f_4@@36 T@Field_19186_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_11049_53 f_4@@36))) (not (IsWandField_11049_53 f_4@@36))) (<= (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_19147) (o_2@@37 T@Ref) (f_4@@37 T@Field_11051_11080) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_11051_67161 f_4@@37))) (not (IsWandField_11051_73886 f_4@@37))) (<= (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_19147) (o_2@@38 T@Ref) (f_4@@38 T@Field_23380_1999) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_11049_1999 f_4@@38))) (not (IsWandField_11049_1999 f_4@@38))) (<= (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_19147) (o_2@@39 T@Ref) (f_4@@39 T@Field_22549_22554) ) (! (= (HasDirectPerm_22535_66266 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22535_66266 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_19147) (o_2@@40 T@Ref) (f_4@@40 T@Field_22535_19200) ) (! (= (HasDirectPerm_22535_19200 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22535_19200 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_19147) (o_2@@41 T@Ref) (f_4@@41 T@Field_22535_53) ) (! (= (HasDirectPerm_22535_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22535_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_19147) (o_2@@42 T@Ref) (f_4@@42 T@Field_22535_1535) ) (! (= (HasDirectPerm_22535_2014 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22535_2014 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_19147) (o_2@@43 T@Ref) (f_4@@43 T@Field_22566_22567) ) (! (= (HasDirectPerm_22535_11080 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22535_11080 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_19147) (o_2@@44 T@Ref) (f_4@@44 T@Field_11051_22554) ) (! (= (HasDirectPerm_11051_65089 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_65089 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_19147) (o_2@@45 T@Ref) (f_4@@45 T@Field_19199_19200) ) (! (= (HasDirectPerm_11051_19200 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_19200 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_19147) (o_2@@46 T@Ref) (f_4@@46 T@Field_19186_53) ) (! (= (HasDirectPerm_11051_53 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_53 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_19147) (o_2@@47 T@Ref) (f_4@@47 T@Field_23380_1999) ) (! (= (HasDirectPerm_11051_2014 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_2014 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_19147) (o_2@@48 T@Ref) (f_4@@48 T@Field_11051_11080) ) (! (= (HasDirectPerm_11051_11080 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_11080 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_19147) (o_2@@49 T@Ref) (f_4@@49 T@Field_23470_23475) ) (! (= (HasDirectPerm_11054_64016 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11054_64016 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_19147) (o_2@@50 T@Ref) (f_4@@50 T@Field_11054_19200) ) (! (= (HasDirectPerm_11054_19200 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11054_19200 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_19147) (o_2@@51 T@Ref) (f_4@@51 T@Field_11054_53) ) (! (= (HasDirectPerm_11054_53 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11054_53 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_19147) (o_2@@52 T@Ref) (f_4@@52 T@Field_11054_2014) ) (! (= (HasDirectPerm_11054_2014 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11054_2014 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_19147) (o_2@@53 T@Ref) (f_4@@53 T@Field_23457_23458) ) (! (= (HasDirectPerm_11054_11055 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11054_11055 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_19147) (o_2@@54 T@Ref) (f_4@@54 T@Field_24390_24395) ) (! (= (HasDirectPerm_11079_62918 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11079_62918 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_19147) (o_2@@55 T@Ref) (f_4@@55 T@Field_11079_19200) ) (! (= (HasDirectPerm_11079_19200 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11079_19200 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_19147) (o_2@@56 T@Ref) (f_4@@56 T@Field_11079_53) ) (! (= (HasDirectPerm_11079_53 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11079_53 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_19147) (o_2@@57 T@Ref) (f_4@@57 T@Field_11079_2014) ) (! (= (HasDirectPerm_11079_2014 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11079_2014 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_19147) (o_2@@58 T@Ref) (f_4@@58 T@Field_24377_24378) ) (! (= (HasDirectPerm_11079_11080 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11079_11080 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.201:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19126) (ExhaleHeap@@17 T@PolymorphicMapType_19126) (Mask@@58 T@PolymorphicMapType_19147) (o_23@@0 T@Ref) (f_15@@159 T@Field_22549_22554) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_22535_66266 Mask@@58 o_23@@0 f_15@@159) (= (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@20) o_23@@0 f_15@@159) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@17) o_23@@0 f_15@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| ExhaleHeap@@17) o_23@@0 f_15@@159))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19126) (ExhaleHeap@@18 T@PolymorphicMapType_19126) (Mask@@59 T@PolymorphicMapType_19147) (o_23@@1 T@Ref) (f_15@@160 T@Field_22535_19200) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_22535_19200 Mask@@59 o_23@@1 f_15@@160) (= (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@21) o_23@@1 f_15@@160) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@18) o_23@@1 f_15@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| ExhaleHeap@@18) o_23@@1 f_15@@160))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19126) (ExhaleHeap@@19 T@PolymorphicMapType_19126) (Mask@@60 T@PolymorphicMapType_19147) (o_23@@2 T@Ref) (f_15@@161 T@Field_22535_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_22535_53 Mask@@60 o_23@@2 f_15@@161) (= (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@22) o_23@@2 f_15@@161) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@19) o_23@@2 f_15@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| ExhaleHeap@@19) o_23@@2 f_15@@161))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19126) (ExhaleHeap@@20 T@PolymorphicMapType_19126) (Mask@@61 T@PolymorphicMapType_19147) (o_23@@3 T@Ref) (f_15@@162 T@Field_22535_1535) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_22535_2014 Mask@@61 o_23@@3 f_15@@162) (= (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@23) o_23@@3 f_15@@162) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@20) o_23@@3 f_15@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| ExhaleHeap@@20) o_23@@3 f_15@@162))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19126) (ExhaleHeap@@21 T@PolymorphicMapType_19126) (Mask@@62 T@PolymorphicMapType_19147) (o_23@@4 T@Ref) (f_15@@163 T@Field_22566_22567) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_22535_11080 Mask@@62 o_23@@4 f_15@@163) (= (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@24) o_23@@4 f_15@@163) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@21) o_23@@4 f_15@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| ExhaleHeap@@21) o_23@@4 f_15@@163))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19126) (ExhaleHeap@@22 T@PolymorphicMapType_19126) (Mask@@63 T@PolymorphicMapType_19147) (o_23@@5 T@Ref) (f_15@@164 T@Field_11051_22554) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_11051_65089 Mask@@63 o_23@@5 f_15@@164) (= (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@25) o_23@@5 f_15@@164) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@22) o_23@@5 f_15@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| ExhaleHeap@@22) o_23@@5 f_15@@164))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19126) (ExhaleHeap@@23 T@PolymorphicMapType_19126) (Mask@@64 T@PolymorphicMapType_19147) (o_23@@6 T@Ref) (f_15@@165 T@Field_19199_19200) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_11051_19200 Mask@@64 o_23@@6 f_15@@165) (= (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@26) o_23@@6 f_15@@165) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@23) o_23@@6 f_15@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| ExhaleHeap@@23) o_23@@6 f_15@@165))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19126) (ExhaleHeap@@24 T@PolymorphicMapType_19126) (Mask@@65 T@PolymorphicMapType_19147) (o_23@@7 T@Ref) (f_15@@166 T@Field_19186_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_11051_53 Mask@@65 o_23@@7 f_15@@166) (= (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@27) o_23@@7 f_15@@166) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@24) o_23@@7 f_15@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| ExhaleHeap@@24) o_23@@7 f_15@@166))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19126) (ExhaleHeap@@25 T@PolymorphicMapType_19126) (Mask@@66 T@PolymorphicMapType_19147) (o_23@@8 T@Ref) (f_15@@167 T@Field_23380_1999) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_11051_2014 Mask@@66 o_23@@8 f_15@@167) (= (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@28) o_23@@8 f_15@@167) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@25) o_23@@8 f_15@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| ExhaleHeap@@25) o_23@@8 f_15@@167))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19126) (ExhaleHeap@@26 T@PolymorphicMapType_19126) (Mask@@67 T@PolymorphicMapType_19147) (o_23@@9 T@Ref) (f_15@@168 T@Field_11051_11080) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_11051_11080 Mask@@67 o_23@@9 f_15@@168) (= (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@29) o_23@@9 f_15@@168) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@26) o_23@@9 f_15@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| ExhaleHeap@@26) o_23@@9 f_15@@168))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19126) (ExhaleHeap@@27 T@PolymorphicMapType_19126) (Mask@@68 T@PolymorphicMapType_19147) (o_23@@10 T@Ref) (f_15@@169 T@Field_23470_23475) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_11054_64016 Mask@@68 o_23@@10 f_15@@169) (= (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@30) o_23@@10 f_15@@169) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@27) o_23@@10 f_15@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| ExhaleHeap@@27) o_23@@10 f_15@@169))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_19126) (ExhaleHeap@@28 T@PolymorphicMapType_19126) (Mask@@69 T@PolymorphicMapType_19147) (o_23@@11 T@Ref) (f_15@@170 T@Field_11054_19200) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_11054_19200 Mask@@69 o_23@@11 f_15@@170) (= (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@31) o_23@@11 f_15@@170) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@28) o_23@@11 f_15@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| ExhaleHeap@@28) o_23@@11 f_15@@170))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_19126) (ExhaleHeap@@29 T@PolymorphicMapType_19126) (Mask@@70 T@PolymorphicMapType_19147) (o_23@@12 T@Ref) (f_15@@171 T@Field_11054_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_11054_53 Mask@@70 o_23@@12 f_15@@171) (= (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@32) o_23@@12 f_15@@171) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@29) o_23@@12 f_15@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| ExhaleHeap@@29) o_23@@12 f_15@@171))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_19126) (ExhaleHeap@@30 T@PolymorphicMapType_19126) (Mask@@71 T@PolymorphicMapType_19147) (o_23@@13 T@Ref) (f_15@@172 T@Field_11054_2014) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_11054_2014 Mask@@71 o_23@@13 f_15@@172) (= (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@33) o_23@@13 f_15@@172) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@30) o_23@@13 f_15@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| ExhaleHeap@@30) o_23@@13 f_15@@172))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_19126) (ExhaleHeap@@31 T@PolymorphicMapType_19126) (Mask@@72 T@PolymorphicMapType_19147) (o_23@@14 T@Ref) (f_15@@173 T@Field_23457_23458) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_11054_11055 Mask@@72 o_23@@14 f_15@@173) (= (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@34) o_23@@14 f_15@@173) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@31) o_23@@14 f_15@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| ExhaleHeap@@31) o_23@@14 f_15@@173))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_19126) (ExhaleHeap@@32 T@PolymorphicMapType_19126) (Mask@@73 T@PolymorphicMapType_19147) (o_23@@15 T@Ref) (f_15@@174 T@Field_24390_24395) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_11079_62918 Mask@@73 o_23@@15 f_15@@174) (= (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@35) o_23@@15 f_15@@174) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@32) o_23@@15 f_15@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| ExhaleHeap@@32) o_23@@15 f_15@@174))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_19126) (ExhaleHeap@@33 T@PolymorphicMapType_19126) (Mask@@74 T@PolymorphicMapType_19147) (o_23@@16 T@Ref) (f_15@@175 T@Field_11079_19200) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_11079_19200 Mask@@74 o_23@@16 f_15@@175) (= (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@36) o_23@@16 f_15@@175) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@33) o_23@@16 f_15@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| ExhaleHeap@@33) o_23@@16 f_15@@175))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_19126) (ExhaleHeap@@34 T@PolymorphicMapType_19126) (Mask@@75 T@PolymorphicMapType_19147) (o_23@@17 T@Ref) (f_15@@176 T@Field_11079_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_11079_53 Mask@@75 o_23@@17 f_15@@176) (= (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@37) o_23@@17 f_15@@176) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@34) o_23@@17 f_15@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| ExhaleHeap@@34) o_23@@17 f_15@@176))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_19126) (ExhaleHeap@@35 T@PolymorphicMapType_19126) (Mask@@76 T@PolymorphicMapType_19147) (o_23@@18 T@Ref) (f_15@@177 T@Field_11079_2014) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_11079_2014 Mask@@76 o_23@@18 f_15@@177) (= (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@38) o_23@@18 f_15@@177) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@35) o_23@@18 f_15@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| ExhaleHeap@@35) o_23@@18 f_15@@177))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_19126) (ExhaleHeap@@36 T@PolymorphicMapType_19126) (Mask@@77 T@PolymorphicMapType_19147) (o_23@@19 T@Ref) (f_15@@178 T@Field_24377_24378) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_11079_11080 Mask@@77 o_23@@19 f_15@@178) (= (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@39) o_23@@19 f_15@@178) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@36) o_23@@19 f_15@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| ExhaleHeap@@36) o_23@@19 f_15@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_22549_22554) ) (! (= (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_22535_19200) ) (! (= (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_22535_53) ) (! (= (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_22566_22567) ) (! (= (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_22535_1535) ) (! (= (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_23470_23475) ) (! (= (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_11054_19200) ) (! (= (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_11054_53) ) (! (= (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_23457_23458) ) (! (= (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_11054_2014) ) (! (= (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_24390_24395) ) (! (= (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_11079_19200) ) (! (= (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_11079_53) ) (! (= (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_24377_24378) ) (! (= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_11079_2014) ) (! (= (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_11051_22554) ) (! (= (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_19199_19200) ) (! (= (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_19186_53) ) (! (= (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_11051_11080) ) (! (= (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_23380_1999) ) (! (= (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_19147) (SummandMask1 T@PolymorphicMapType_19147) (SummandMask2 T@PolymorphicMapType_19147) (o_2@@79 T@Ref) (f_4@@79 T@Field_22549_22554) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19147_10991_83300#PolymorphicMapType_19147| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_19147) (SummandMask1@@0 T@PolymorphicMapType_19147) (SummandMask2@@0 T@PolymorphicMapType_19147) (o_2@@80 T@Ref) (f_4@@80 T@Field_22535_19200) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19147_10991_19200#PolymorphicMapType_19147| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_19147) (SummandMask1@@1 T@PolymorphicMapType_19147) (SummandMask2@@1 T@PolymorphicMapType_19147) (o_2@@81 T@Ref) (f_4@@81 T@Field_22535_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19147_10991_53#PolymorphicMapType_19147| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_19147) (SummandMask1@@2 T@PolymorphicMapType_19147) (SummandMask2@@2 T@PolymorphicMapType_19147) (o_2@@82 T@Ref) (f_4@@82 T@Field_22566_22567) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19147_10991_11080#PolymorphicMapType_19147| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_19147) (SummandMask1@@3 T@PolymorphicMapType_19147) (SummandMask2@@3 T@PolymorphicMapType_19147) (o_2@@83 T@Ref) (f_4@@83 T@Field_22535_1535) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19147_10991_1535#PolymorphicMapType_19147| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_19147) (SummandMask1@@4 T@PolymorphicMapType_19147) (SummandMask2@@4 T@PolymorphicMapType_19147) (o_2@@84 T@Ref) (f_4@@84 T@Field_23470_23475) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19147_11054_82886#PolymorphicMapType_19147| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_19147) (SummandMask1@@5 T@PolymorphicMapType_19147) (SummandMask2@@5 T@PolymorphicMapType_19147) (o_2@@85 T@Ref) (f_4@@85 T@Field_11054_19200) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19147_11054_19200#PolymorphicMapType_19147| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_19147) (SummandMask1@@6 T@PolymorphicMapType_19147) (SummandMask2@@6 T@PolymorphicMapType_19147) (o_2@@86 T@Ref) (f_4@@86 T@Field_11054_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19147_11054_53#PolymorphicMapType_19147| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_19147) (SummandMask1@@7 T@PolymorphicMapType_19147) (SummandMask2@@7 T@PolymorphicMapType_19147) (o_2@@87 T@Ref) (f_4@@87 T@Field_23457_23458) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19147_11054_11055#PolymorphicMapType_19147| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_19147) (SummandMask1@@8 T@PolymorphicMapType_19147) (SummandMask2@@8 T@PolymorphicMapType_19147) (o_2@@88 T@Ref) (f_4@@88 T@Field_11054_2014) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19147_11054_1999#PolymorphicMapType_19147| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_19147) (SummandMask1@@9 T@PolymorphicMapType_19147) (SummandMask2@@9 T@PolymorphicMapType_19147) (o_2@@89 T@Ref) (f_4@@89 T@Field_24390_24395) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19147_11079_82475#PolymorphicMapType_19147| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_19147) (SummandMask1@@10 T@PolymorphicMapType_19147) (SummandMask2@@10 T@PolymorphicMapType_19147) (o_2@@90 T@Ref) (f_4@@90 T@Field_11079_19200) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19147_11079_19200#PolymorphicMapType_19147| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_19147) (SummandMask1@@11 T@PolymorphicMapType_19147) (SummandMask2@@11 T@PolymorphicMapType_19147) (o_2@@91 T@Ref) (f_4@@91 T@Field_11079_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19147_11079_53#PolymorphicMapType_19147| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_19147) (SummandMask1@@12 T@PolymorphicMapType_19147) (SummandMask2@@12 T@PolymorphicMapType_19147) (o_2@@92 T@Ref) (f_4@@92 T@Field_24377_24378) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19147_11079_11080#PolymorphicMapType_19147| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_19147) (SummandMask1@@13 T@PolymorphicMapType_19147) (SummandMask2@@13 T@PolymorphicMapType_19147) (o_2@@93 T@Ref) (f_4@@93 T@Field_11079_2014) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19147_11079_1999#PolymorphicMapType_19147| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_19147) (SummandMask1@@14 T@PolymorphicMapType_19147) (SummandMask2@@14 T@PolymorphicMapType_19147) (o_2@@94 T@Ref) (f_4@@94 T@Field_11051_22554) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_19147_11049_82064#PolymorphicMapType_19147| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_19147) (SummandMask1@@15 T@PolymorphicMapType_19147) (SummandMask2@@15 T@PolymorphicMapType_19147) (o_2@@95 T@Ref) (f_4@@95 T@Field_19199_19200) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_19147_11049_19200#PolymorphicMapType_19147| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_19147) (SummandMask1@@16 T@PolymorphicMapType_19147) (SummandMask2@@16 T@PolymorphicMapType_19147) (o_2@@96 T@Ref) (f_4@@96 T@Field_19186_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_19147_11049_53#PolymorphicMapType_19147| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_19147) (SummandMask1@@17 T@PolymorphicMapType_19147) (SummandMask2@@17 T@PolymorphicMapType_19147) (o_2@@97 T@Ref) (f_4@@97 T@Field_11051_11080) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_19147_11049_11080#PolymorphicMapType_19147| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_19147) (SummandMask1@@18 T@PolymorphicMapType_19147) (SummandMask2@@18 T@PolymorphicMapType_19147) (o_2@@98 T@Ref) (f_4@@98 T@Field_23380_1999) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_19147_11049_1999#PolymorphicMapType_19147| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((a_2@@7 T@Ref) (b_24@@3 Int) ) (! (= (getPredWandId_11079_11080 (p2 a_2@@7 b_24@@3)) 1)
 :qid |stdinbpl.335:15|
 :skolemid |37|
 :pattern ( (p2 a_2@@7 b_24@@3))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 Bool) (arg4 T@Ref) (arg5 Real) (arg6 T@Ref) (arg7 Int) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 Bool) (arg4_2 T@Ref) (arg5_2 Real) (arg6_2 T@Ref) (arg7_2 Int) ) (!  (=> (= (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2)) (and (= arg1 arg1_2) (and (= arg2 arg2_2) (and (= arg3 arg3_2) (and (= arg4 arg4_2) (and (= arg5 arg5_2) (and (= arg6 arg6_2) (= arg7 arg7_2))))))))
 :qid |stdinbpl.250:15|
 :skolemid |28|
 :pattern ( (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2))
)))
(assert (forall ((a_2@@8 T@Ref) ) (! (= (getPredWandId_11054_11055 (p1 a_2@@8)) 0)
 :qid |stdinbpl.281:15|
 :skolemid |31|
 :pattern ( (p1 a_2@@8))
)))
(assert (forall ((a_2@@9 T@Ref) (b_24@@4 Int) ) (! (= (PredicateMaskField_11079 (p2 a_2@@9 b_24@@4)) (|p2#sm| a_2@@9 b_24@@4))
 :qid |stdinbpl.327:15|
 :skolemid |35|
 :pattern ( (PredicateMaskField_11079 (p2 a_2@@9 b_24@@4)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_19126) (o_4 T@Ref) (f_25 T@Field_22549_22554) (v T@PolymorphicMapType_19675) ) (! (succHeap Heap@@40 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@40) (store (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@40) o_4 f_25 v) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@40) (store (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@40) o_4 f_25 v) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@40) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_19126) (o_4@@0 T@Ref) (f_25@@0 T@Field_22535_1535) (v@@0 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@41) (store (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@41) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@41) (store (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@41) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@41) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_19126) (o_4@@1 T@Ref) (f_25@@1 T@Field_22566_22567) (v@@1 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@42) (store (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@42) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@42) (store (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@42) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@42) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_19126) (o_4@@2 T@Ref) (f_25@@2 T@Field_22535_19200) (v@@2 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@43) (store (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@43) o_4@@2 f_25@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@43) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@43) (store (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@43) o_4@@2 f_25@@2 v@@2)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_19126) (o_4@@3 T@Ref) (f_25@@3 T@Field_22535_53) (v@@3 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@44) (store (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@44) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@44) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@44) (store (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@44) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_19126) (o_4@@4 T@Ref) (f_25@@4 T@Field_23470_23475) (v@@4 T@PolymorphicMapType_19675) ) (! (succHeap Heap@@45 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@45) (store (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@45) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@45) (store (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@45) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@45) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_19126) (o_4@@5 T@Ref) (f_25@@5 T@Field_11054_2014) (v@@5 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@46) (store (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@46) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@46) (store (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@46) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@46) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_19126) (o_4@@6 T@Ref) (f_25@@6 T@Field_23457_23458) (v@@6 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@47) (store (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@47) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@47) (store (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@47) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@47) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_19126) (o_4@@7 T@Ref) (f_25@@7 T@Field_11054_19200) (v@@7 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@48) (store (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@48) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@48) (store (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@48) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@48) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_19126) (o_4@@8 T@Ref) (f_25@@8 T@Field_11054_53) (v@@8 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@49) (store (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@49) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@49) (store (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@49) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@49) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_19126) (o_4@@9 T@Ref) (f_25@@9 T@Field_24390_24395) (v@@9 T@PolymorphicMapType_19675) ) (! (succHeap Heap@@50 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@50) (store (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@50) o_4@@9 f_25@@9 v@@9) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@50) (store (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@50) o_4@@9 f_25@@9 v@@9) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@50) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_19126) (o_4@@10 T@Ref) (f_25@@10 T@Field_11079_2014) (v@@10 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@51) (store (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@51) o_4@@10 f_25@@10 v@@10) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@51) (store (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@51) o_4@@10 f_25@@10 v@@10) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@51) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_19126) (o_4@@11 T@Ref) (f_25@@11 T@Field_24377_24378) (v@@11 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@52) (store (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@52) o_4@@11 f_25@@11 v@@11) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@52) (store (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@52) o_4@@11 f_25@@11 v@@11) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@52) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_19126) (o_4@@12 T@Ref) (f_25@@12 T@Field_11079_19200) (v@@12 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@53) (store (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@53) o_4@@12 f_25@@12 v@@12) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@53) (store (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@53) o_4@@12 f_25@@12 v@@12) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@53) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_19126) (o_4@@13 T@Ref) (f_25@@13 T@Field_11079_53) (v@@13 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@54) (store (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@54) o_4@@13 f_25@@13 v@@13) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@54) (store (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@54) o_4@@13 f_25@@13 v@@13) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@54) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_19126) (o_4@@14 T@Ref) (f_25@@14 T@Field_11051_22554) (v@@14 T@PolymorphicMapType_19675) ) (! (succHeap Heap@@55 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@55) (store (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@55) o_4@@14 f_25@@14 v@@14) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@55) (store (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@55) o_4@@14 f_25@@14 v@@14) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@55) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_19126) (o_4@@15 T@Ref) (f_25@@15 T@Field_23380_1999) (v@@15 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@56) (store (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@56) o_4@@15 f_25@@15 v@@15) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@56) (store (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@56) o_4@@15 f_25@@15 v@@15) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@56) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_19126) (o_4@@16 T@Ref) (f_25@@16 T@Field_11051_11080) (v@@16 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@57) (store (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@57) o_4@@16 f_25@@16 v@@16) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@57) (store (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@57) o_4@@16 f_25@@16 v@@16) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@57) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_19126) (o_4@@17 T@Ref) (f_25@@17 T@Field_19199_19200) (v@@17 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@58) (store (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@58) o_4@@17 f_25@@17 v@@17) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@58) (store (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@58) o_4@@17 f_25@@17 v@@17) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@58) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_19126) (o_4@@18 T@Ref) (f_25@@18 T@Field_19186_53) (v@@18 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_19126 (store (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@59) o_4@@18 f_25@@18 v@@18) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19126 (store (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@59) o_4@@18 f_25@@18 v@@18) (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11083_31380#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_11055#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11058_45689#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_10998_56071#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11079_19200#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11054_19200#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_11051_65131#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_11080#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_2014#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_53#PolymorphicMapType_19126| Heap@@59) (|PolymorphicMapType_19126_22535_19200#PolymorphicMapType_19126| Heap@@59)))
)))
(assert (forall ((a_2@@10 T@Ref) ) (! (= (PredicateMaskField_11054 (p1 a_2@@10)) (|p1#sm| a_2@@10))
 :qid |stdinbpl.273:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_11054 (p1 a_2@@10)))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 Bool) (arg4@@0 T@Ref) (arg5@@0 Real) (arg6@@0 T@Ref) (arg7@@0 Int) ) (! (= (|wand#sm| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0) (WandMaskField_11006 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
 :qid |stdinbpl.242:15|
 :skolemid |26|
 :pattern ( (WandMaskField_11006 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
)))
(assert (forall ((o_4@@19 T@Ref) (f_9 T@Field_19199_19200) (Heap@@60 T@PolymorphicMapType_19126) ) (!  (=> (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@60) o_4@@19 $allocated) (select (|PolymorphicMapType_19126_10838_53#PolymorphicMapType_19126| Heap@@60) (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@60) o_4@@19 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19126_10841_10842#PolymorphicMapType_19126| Heap@@60) o_4@@19 f_9))
)))
(assert (forall ((p@@4 T@Field_24377_24378) (v_1@@3 T@FrameType) (q T@Field_24377_24378) (w@@3 T@FrameType) (r T@Field_24377_24378) (u T@FrameType) ) (!  (=> (and (InsidePredicate_24377_24377 p@@4 v_1@@3 q w@@3) (InsidePredicate_24377_24377 q w@@3 r u)) (InsidePredicate_24377_24377 p@@4 v_1@@3 r u))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_24377 p@@4 v_1@@3 q w@@3) (InsidePredicate_24377_24377 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_24377_24378) (v_1@@4 T@FrameType) (q@@0 T@Field_24377_24378) (w@@4 T@FrameType) (r@@0 T@Field_23457_23458) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_24377 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_24377_23457 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_24377_23457 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_24377 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_24377_23457 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_24377_24378) (v_1@@5 T@FrameType) (q@@1 T@Field_24377_24378) (w@@5 T@FrameType) (r@@1 T@Field_22566_22567) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_24377 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_24377_22535 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_24377_22535 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_24377 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_24377_22535 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_24377_24378) (v_1@@6 T@FrameType) (q@@2 T@Field_24377_24378) (w@@6 T@FrameType) (r@@2 T@Field_11051_11080) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_24377 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_24377_19186 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_24377_19186 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_24377 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_24377_19186 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_24377_24378) (v_1@@7 T@FrameType) (q@@3 T@Field_23457_23458) (w@@7 T@FrameType) (r@@3 T@Field_24377_24378) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_23457 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_23457_24377 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_24377_24377 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_23457 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_23457_24377 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_24377_24378) (v_1@@8 T@FrameType) (q@@4 T@Field_23457_23458) (w@@8 T@FrameType) (r@@4 T@Field_23457_23458) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_23457 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_23457_23457 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_24377_23457 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_23457 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_23457_23457 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_24377_24378) (v_1@@9 T@FrameType) (q@@5 T@Field_23457_23458) (w@@9 T@FrameType) (r@@5 T@Field_22566_22567) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_23457 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_23457_22535 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_24377_22535 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_23457 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_23457_22535 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_24377_24378) (v_1@@10 T@FrameType) (q@@6 T@Field_23457_23458) (w@@10 T@FrameType) (r@@6 T@Field_11051_11080) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_23457 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_23457_19186 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_24377_19186 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_23457 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_23457_19186 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_24377_24378) (v_1@@11 T@FrameType) (q@@7 T@Field_22566_22567) (w@@11 T@FrameType) (r@@7 T@Field_24377_24378) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_22535 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_22535_24377 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_24377_24377 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_22535 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_22535_24377 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_24377_24378) (v_1@@12 T@FrameType) (q@@8 T@Field_22566_22567) (w@@12 T@FrameType) (r@@8 T@Field_23457_23458) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_22535 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_22535_23457 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_24377_23457 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_22535 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_22535_23457 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_24377_24378) (v_1@@13 T@FrameType) (q@@9 T@Field_22566_22567) (w@@13 T@FrameType) (r@@9 T@Field_22566_22567) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_22535 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_22535_22535 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_24377_22535 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_22535 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_22535_22535 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_24377_24378) (v_1@@14 T@FrameType) (q@@10 T@Field_22566_22567) (w@@14 T@FrameType) (r@@10 T@Field_11051_11080) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_22535 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_22535_19186 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_24377_19186 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_22535 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_22535_19186 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_24377_24378) (v_1@@15 T@FrameType) (q@@11 T@Field_11051_11080) (w@@15 T@FrameType) (r@@11 T@Field_24377_24378) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_19186 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_19186_24377 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_24377_24377 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_19186 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_19186_24377 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_24377_24378) (v_1@@16 T@FrameType) (q@@12 T@Field_11051_11080) (w@@16 T@FrameType) (r@@12 T@Field_23457_23458) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_19186 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_19186_23457 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_24377_23457 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_19186 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_19186_23457 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_24377_24378) (v_1@@17 T@FrameType) (q@@13 T@Field_11051_11080) (w@@17 T@FrameType) (r@@13 T@Field_22566_22567) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_19186 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_19186_22535 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_24377_22535 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_19186 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_19186_22535 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_24377_24378) (v_1@@18 T@FrameType) (q@@14 T@Field_11051_11080) (w@@18 T@FrameType) (r@@14 T@Field_11051_11080) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_24377_19186 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_19186_19186 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_24377_19186 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24377_19186 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_19186_19186 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_23457_23458) (v_1@@19 T@FrameType) (q@@15 T@Field_24377_24378) (w@@19 T@FrameType) (r@@15 T@Field_24377_24378) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_24377 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_24377_24377 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_23457_24377 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_24377 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_24377_24377 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_23457_23458) (v_1@@20 T@FrameType) (q@@16 T@Field_24377_24378) (w@@20 T@FrameType) (r@@16 T@Field_23457_23458) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_24377 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_24377_23457 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_23457_23457 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_24377 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_24377_23457 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_23457_23458) (v_1@@21 T@FrameType) (q@@17 T@Field_24377_24378) (w@@21 T@FrameType) (r@@17 T@Field_22566_22567) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_24377 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_24377_22535 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_23457_22535 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_24377 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_24377_22535 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_23457_23458) (v_1@@22 T@FrameType) (q@@18 T@Field_24377_24378) (w@@22 T@FrameType) (r@@18 T@Field_11051_11080) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_24377 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_24377_19186 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_23457_19186 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_24377 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_24377_19186 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_23457_23458) (v_1@@23 T@FrameType) (q@@19 T@Field_23457_23458) (w@@23 T@FrameType) (r@@19 T@Field_24377_24378) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_23457 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_23457_24377 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_23457_24377 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_23457 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_23457_24377 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_23457_23458) (v_1@@24 T@FrameType) (q@@20 T@Field_23457_23458) (w@@24 T@FrameType) (r@@20 T@Field_23457_23458) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_23457 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_23457_23457 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_23457_23457 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_23457 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_23457_23457 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_23457_23458) (v_1@@25 T@FrameType) (q@@21 T@Field_23457_23458) (w@@25 T@FrameType) (r@@21 T@Field_22566_22567) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_23457 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_23457_22535 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_23457_22535 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_23457 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_23457_22535 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_23457_23458) (v_1@@26 T@FrameType) (q@@22 T@Field_23457_23458) (w@@26 T@FrameType) (r@@22 T@Field_11051_11080) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_23457 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_23457_19186 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_23457_19186 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_23457 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_23457_19186 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_23457_23458) (v_1@@27 T@FrameType) (q@@23 T@Field_22566_22567) (w@@27 T@FrameType) (r@@23 T@Field_24377_24378) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_22535 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_22535_24377 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_23457_24377 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_22535 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_22535_24377 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_23457_23458) (v_1@@28 T@FrameType) (q@@24 T@Field_22566_22567) (w@@28 T@FrameType) (r@@24 T@Field_23457_23458) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_22535 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_22535_23457 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_23457_23457 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_22535 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_22535_23457 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_23457_23458) (v_1@@29 T@FrameType) (q@@25 T@Field_22566_22567) (w@@29 T@FrameType) (r@@25 T@Field_22566_22567) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_22535 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_22535_22535 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_23457_22535 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_22535 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_22535_22535 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_23457_23458) (v_1@@30 T@FrameType) (q@@26 T@Field_22566_22567) (w@@30 T@FrameType) (r@@26 T@Field_11051_11080) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_22535 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_22535_19186 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_23457_19186 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_22535 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_22535_19186 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_23457_23458) (v_1@@31 T@FrameType) (q@@27 T@Field_11051_11080) (w@@31 T@FrameType) (r@@27 T@Field_24377_24378) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_19186 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_19186_24377 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_23457_24377 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_19186 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_19186_24377 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_23457_23458) (v_1@@32 T@FrameType) (q@@28 T@Field_11051_11080) (w@@32 T@FrameType) (r@@28 T@Field_23457_23458) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_19186 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_19186_23457 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_23457_23457 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_19186 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_19186_23457 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_23457_23458) (v_1@@33 T@FrameType) (q@@29 T@Field_11051_11080) (w@@33 T@FrameType) (r@@29 T@Field_22566_22567) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_19186 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_19186_22535 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_23457_22535 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_19186 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_19186_22535 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_23457_23458) (v_1@@34 T@FrameType) (q@@30 T@Field_11051_11080) (w@@34 T@FrameType) (r@@30 T@Field_11051_11080) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_23457_19186 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_19186_19186 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_23457_19186 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23457_19186 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_19186_19186 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_22566_22567) (v_1@@35 T@FrameType) (q@@31 T@Field_24377_24378) (w@@35 T@FrameType) (r@@31 T@Field_24377_24378) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_24377 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_24377_24377 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_22535_24377 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_24377 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_24377_24377 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_22566_22567) (v_1@@36 T@FrameType) (q@@32 T@Field_24377_24378) (w@@36 T@FrameType) (r@@32 T@Field_23457_23458) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_24377 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_24377_23457 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_22535_23457 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_24377 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_24377_23457 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_22566_22567) (v_1@@37 T@FrameType) (q@@33 T@Field_24377_24378) (w@@37 T@FrameType) (r@@33 T@Field_22566_22567) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_24377 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_24377_22535 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_22535_22535 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_24377 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_24377_22535 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_22566_22567) (v_1@@38 T@FrameType) (q@@34 T@Field_24377_24378) (w@@38 T@FrameType) (r@@34 T@Field_11051_11080) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_24377 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_24377_19186 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_22535_19186 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_24377 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_24377_19186 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_22566_22567) (v_1@@39 T@FrameType) (q@@35 T@Field_23457_23458) (w@@39 T@FrameType) (r@@35 T@Field_24377_24378) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_23457 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_23457_24377 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_22535_24377 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_23457 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_23457_24377 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_22566_22567) (v_1@@40 T@FrameType) (q@@36 T@Field_23457_23458) (w@@40 T@FrameType) (r@@36 T@Field_23457_23458) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_23457 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_23457_23457 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_22535_23457 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_23457 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_23457_23457 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_22566_22567) (v_1@@41 T@FrameType) (q@@37 T@Field_23457_23458) (w@@41 T@FrameType) (r@@37 T@Field_22566_22567) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_23457 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_23457_22535 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_22535_22535 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_23457 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_23457_22535 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_22566_22567) (v_1@@42 T@FrameType) (q@@38 T@Field_23457_23458) (w@@42 T@FrameType) (r@@38 T@Field_11051_11080) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_23457 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_23457_19186 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_22535_19186 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_23457 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_23457_19186 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_22566_22567) (v_1@@43 T@FrameType) (q@@39 T@Field_22566_22567) (w@@43 T@FrameType) (r@@39 T@Field_24377_24378) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_22535 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_22535_24377 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_22535_24377 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_22535 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_22535_24377 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_22566_22567) (v_1@@44 T@FrameType) (q@@40 T@Field_22566_22567) (w@@44 T@FrameType) (r@@40 T@Field_23457_23458) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_22535 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_22535_23457 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_22535_23457 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_22535 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_22535_23457 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_22566_22567) (v_1@@45 T@FrameType) (q@@41 T@Field_22566_22567) (w@@45 T@FrameType) (r@@41 T@Field_22566_22567) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_22535 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_22535_22535 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_22535_22535 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_22535 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_22535_22535 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_22566_22567) (v_1@@46 T@FrameType) (q@@42 T@Field_22566_22567) (w@@46 T@FrameType) (r@@42 T@Field_11051_11080) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_22535 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_22535_19186 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_22535_19186 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_22535 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_22535_19186 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_22566_22567) (v_1@@47 T@FrameType) (q@@43 T@Field_11051_11080) (w@@47 T@FrameType) (r@@43 T@Field_24377_24378) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_19186 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_19186_24377 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_22535_24377 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_19186 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_19186_24377 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_22566_22567) (v_1@@48 T@FrameType) (q@@44 T@Field_11051_11080) (w@@48 T@FrameType) (r@@44 T@Field_23457_23458) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_19186 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_19186_23457 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_22535_23457 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_19186 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_19186_23457 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_22566_22567) (v_1@@49 T@FrameType) (q@@45 T@Field_11051_11080) (w@@49 T@FrameType) (r@@45 T@Field_22566_22567) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_19186 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_19186_22535 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_22535_22535 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_19186 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_19186_22535 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_22566_22567) (v_1@@50 T@FrameType) (q@@46 T@Field_11051_11080) (w@@50 T@FrameType) (r@@46 T@Field_11051_11080) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_22535_19186 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_19186_19186 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_22535_19186 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22535_19186 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_19186_19186 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_11051_11080) (v_1@@51 T@FrameType) (q@@47 T@Field_24377_24378) (w@@51 T@FrameType) (r@@47 T@Field_24377_24378) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_24377 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_24377_24377 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_19186_24377 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_24377 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_24377_24377 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_11051_11080) (v_1@@52 T@FrameType) (q@@48 T@Field_24377_24378) (w@@52 T@FrameType) (r@@48 T@Field_23457_23458) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_24377 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_24377_23457 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_19186_23457 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_24377 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_24377_23457 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_11051_11080) (v_1@@53 T@FrameType) (q@@49 T@Field_24377_24378) (w@@53 T@FrameType) (r@@49 T@Field_22566_22567) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_24377 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_24377_22535 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_19186_22535 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_24377 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_24377_22535 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_11051_11080) (v_1@@54 T@FrameType) (q@@50 T@Field_24377_24378) (w@@54 T@FrameType) (r@@50 T@Field_11051_11080) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_24377 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_24377_19186 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_19186_19186 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_24377 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_24377_19186 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_11051_11080) (v_1@@55 T@FrameType) (q@@51 T@Field_23457_23458) (w@@55 T@FrameType) (r@@51 T@Field_24377_24378) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_23457 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_23457_24377 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_19186_24377 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_23457 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_23457_24377 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_11051_11080) (v_1@@56 T@FrameType) (q@@52 T@Field_23457_23458) (w@@56 T@FrameType) (r@@52 T@Field_23457_23458) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_23457 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_23457_23457 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_19186_23457 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_23457 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_23457_23457 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_11051_11080) (v_1@@57 T@FrameType) (q@@53 T@Field_23457_23458) (w@@57 T@FrameType) (r@@53 T@Field_22566_22567) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_23457 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_23457_22535 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_19186_22535 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_23457 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_23457_22535 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_11051_11080) (v_1@@58 T@FrameType) (q@@54 T@Field_23457_23458) (w@@58 T@FrameType) (r@@54 T@Field_11051_11080) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_23457 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_23457_19186 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_19186_19186 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_23457 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_23457_19186 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_11051_11080) (v_1@@59 T@FrameType) (q@@55 T@Field_22566_22567) (w@@59 T@FrameType) (r@@55 T@Field_24377_24378) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_22535 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_22535_24377 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_19186_24377 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_22535 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_22535_24377 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_11051_11080) (v_1@@60 T@FrameType) (q@@56 T@Field_22566_22567) (w@@60 T@FrameType) (r@@56 T@Field_23457_23458) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_22535 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_22535_23457 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_19186_23457 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_22535 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_22535_23457 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_11051_11080) (v_1@@61 T@FrameType) (q@@57 T@Field_22566_22567) (w@@61 T@FrameType) (r@@57 T@Field_22566_22567) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_22535 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_22535_22535 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_19186_22535 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_22535 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_22535_22535 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_11051_11080) (v_1@@62 T@FrameType) (q@@58 T@Field_22566_22567) (w@@62 T@FrameType) (r@@58 T@Field_11051_11080) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_22535 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_22535_19186 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_19186_19186 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_22535 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_22535_19186 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_11051_11080) (v_1@@63 T@FrameType) (q@@59 T@Field_11051_11080) (w@@63 T@FrameType) (r@@59 T@Field_24377_24378) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_19186 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_19186_24377 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_19186_24377 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_19186 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_19186_24377 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_11051_11080) (v_1@@64 T@FrameType) (q@@60 T@Field_11051_11080) (w@@64 T@FrameType) (r@@60 T@Field_23457_23458) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_19186 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_19186_23457 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_19186_23457 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_19186 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_19186_23457 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_11051_11080) (v_1@@65 T@FrameType) (q@@61 T@Field_11051_11080) (w@@65 T@FrameType) (r@@61 T@Field_22566_22567) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_19186 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_19186_22535 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_19186_22535 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_19186 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_19186_22535 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_11051_11080) (v_1@@66 T@FrameType) (q@@62 T@Field_11051_11080) (w@@66 T@FrameType) (r@@62 T@Field_11051_11080) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_19186_19186 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_19186_19186 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_19186_19186 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19186_19186 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_19186_19186 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 Bool) (arg4@@1 T@Ref) (arg5@@1 Real) (arg6@@1 T@Ref) (arg7@@1 Int) ) (! (IsWandField_10991_1535 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
 :qid |stdinbpl.226:15|
 :skolemid |22|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 Bool) (arg4@@2 T@Ref) (arg5@@2 Real) (arg6@@2 T@Ref) (arg7@@2 Int) ) (! (IsWandField_11006_11007 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
 :qid |stdinbpl.230:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 Bool) (arg4@@3 T@Ref) (arg5@@3 Real) (arg6@@3 T@Ref) (arg7@@3 Int) ) (!  (not (IsPredicateField_10991_1535 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3)))
 :qid |stdinbpl.234:15|
 :skolemid |24|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 Bool) (arg4@@4 T@Ref) (arg5@@4 Real) (arg6@@4 T@Ref) (arg7@@4 Int) ) (!  (not (IsPredicateField_11006_11007 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4)))
 :qid |stdinbpl.238:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 Bool) (arg4@@5 T@Ref) (arg5@@5 Real) (arg6@@5 T@Ref) (arg7@@5 Int) ) (! (= (getPredWandId_10991_1535 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5)) 2)
 :qid |stdinbpl.246:15|
 :skolemid |27|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

