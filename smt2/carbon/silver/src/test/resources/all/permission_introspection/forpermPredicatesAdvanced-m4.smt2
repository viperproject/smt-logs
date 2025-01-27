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
(declare-sort T@Field_10042_53 0)
(declare-sort T@Field_10055_10056 0)
(declare-sort T@Field_13369_1189 0)
(declare-sort T@Field_13888_13889 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14983_14984 0)
(declare-sort T@Field_16316_16317 0)
(declare-sort T@Field_5154_5182 0)
(declare-sort T@Field_5154_13906 0)
(declare-sort T@Field_5181_1189 0)
(declare-sort T@Field_5181_53 0)
(declare-sort T@Field_5181_10056 0)
(declare-sort T@Field_13901_13906 0)
(declare-sort T@Field_5207_1189 0)
(declare-sort T@Field_5207_53 0)
(declare-sort T@Field_5207_10056 0)
(declare-sort T@Field_14997_15002 0)
(declare-sort T@Field_5244_1189 0)
(declare-sort T@Field_5244_53 0)
(declare-sort T@Field_5244_10056 0)
(declare-sort T@Field_16330_16335 0)
(declare-datatypes ((T@PolymorphicMapType_10003 0)) (((PolymorphicMapType_10003 (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| (Array T@Ref T@Field_13369_1189 Real)) (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| (Array T@Ref T@Field_13888_13889 Real)) (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| (Array T@Ref T@Field_14983_14984 Real)) (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| (Array T@Ref T@Field_16316_16317 Real)) (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| (Array T@Ref T@Field_5154_5182 Real)) (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| (Array T@Ref T@Field_10042_53 Real)) (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| (Array T@Ref T@Field_10055_10056 Real)) (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| (Array T@Ref T@Field_5154_13906 Real)) (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| (Array T@Ref T@Field_5181_1189 Real)) (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| (Array T@Ref T@Field_5181_53 Real)) (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| (Array T@Ref T@Field_5181_10056 Real)) (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| (Array T@Ref T@Field_13901_13906 Real)) (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| (Array T@Ref T@Field_5207_1189 Real)) (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| (Array T@Ref T@Field_5207_53 Real)) (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| (Array T@Ref T@Field_5207_10056 Real)) (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| (Array T@Ref T@Field_14997_15002 Real)) (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| (Array T@Ref T@Field_5244_1189 Real)) (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| (Array T@Ref T@Field_5244_53 Real)) (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| (Array T@Ref T@Field_5244_10056 Real)) (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| (Array T@Ref T@Field_16330_16335 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10531 0)) (((PolymorphicMapType_10531 (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (Array T@Ref T@Field_10042_53 Bool)) (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (Array T@Ref T@Field_10055_10056 Bool)) (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (Array T@Ref T@Field_13369_1189 Bool)) (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (Array T@Ref T@Field_5154_5182 Bool)) (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (Array T@Ref T@Field_5154_13906 Bool)) (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (Array T@Ref T@Field_5181_53 Bool)) (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (Array T@Ref T@Field_5181_10056 Bool)) (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (Array T@Ref T@Field_5181_1189 Bool)) (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (Array T@Ref T@Field_13888_13889 Bool)) (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (Array T@Ref T@Field_13901_13906 Bool)) (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (Array T@Ref T@Field_5207_53 Bool)) (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (Array T@Ref T@Field_5207_10056 Bool)) (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (Array T@Ref T@Field_5207_1189 Bool)) (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (Array T@Ref T@Field_14983_14984 Bool)) (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (Array T@Ref T@Field_14997_15002 Bool)) (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (Array T@Ref T@Field_5244_53 Bool)) (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (Array T@Ref T@Field_5244_10056 Bool)) (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (Array T@Ref T@Field_5244_1189 Bool)) (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (Array T@Ref T@Field_16316_16317 Bool)) (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (Array T@Ref T@Field_16330_16335 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9982 0)) (((PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| (Array T@Ref T@Field_10042_53 Bool)) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| (Array T@Ref T@Field_10055_10056 T@Ref)) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| (Array T@Ref T@Field_13369_1189 Int)) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| (Array T@Ref T@Field_13888_13889 T@FrameType)) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| (Array T@Ref T@Field_14983_14984 T@FrameType)) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| (Array T@Ref T@Field_16316_16317 T@FrameType)) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| (Array T@Ref T@Field_5154_5182 T@FrameType)) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| (Array T@Ref T@Field_5154_13906 T@PolymorphicMapType_10531)) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| (Array T@Ref T@Field_5181_1189 Int)) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| (Array T@Ref T@Field_5181_53 Bool)) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| (Array T@Ref T@Field_5181_10056 T@Ref)) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| (Array T@Ref T@Field_13901_13906 T@PolymorphicMapType_10531)) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| (Array T@Ref T@Field_5207_1189 Int)) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| (Array T@Ref T@Field_5207_53 Bool)) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| (Array T@Ref T@Field_5207_10056 T@Ref)) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| (Array T@Ref T@Field_14997_15002 T@PolymorphicMapType_10531)) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| (Array T@Ref T@Field_5244_1189 Int)) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| (Array T@Ref T@Field_5244_53 Bool)) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| (Array T@Ref T@Field_5244_10056 T@Ref)) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| (Array T@Ref T@Field_16330_16335 T@PolymorphicMapType_10531)) ) ) ))
(declare-fun $allocated () T@Field_10042_53)
(declare-fun f_7 () T@Field_13369_1189)
(declare-fun succHeap (T@PolymorphicMapType_9982 T@PolymorphicMapType_9982) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9982 T@PolymorphicMapType_9982) Bool)
(declare-fun state (T@PolymorphicMapType_9982 T@PolymorphicMapType_10003) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10003) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10531)
(declare-fun p1 (T@Ref Int) T@Field_13888_13889)
(declare-fun IsPredicateField_5181_5182 (T@Field_13888_13889) Bool)
(declare-fun p2 (T@Ref T@Ref) T@Field_14983_14984)
(declare-fun IsPredicateField_5207_5208 (T@Field_14983_14984) Bool)
(declare-fun p3_1 (T@Ref T@Ref) T@Field_16316_16317)
(declare-fun IsPredicateField_5244_5245 (T@Field_16316_16317) Bool)
(declare-fun |p1#trigger_5181| (T@PolymorphicMapType_9982 T@Field_13888_13889) Bool)
(declare-fun |p1#everUsed_5181| (T@Field_13888_13889) Bool)
(declare-fun |p2#trigger_5207| (T@PolymorphicMapType_9982 T@Field_14983_14984) Bool)
(declare-fun |p2#everUsed_5207| (T@Field_14983_14984) Bool)
(declare-fun |p3#trigger_5244| (T@PolymorphicMapType_9982 T@Field_16316_16317) Bool)
(declare-fun |p3#everUsed_5244| (T@Field_16316_16317) Bool)
(declare-fun |fun'| (T@PolymorphicMapType_9982 T@Ref) T@Ref)
(declare-fun dummyFunction_5175 (T@Ref) Bool)
(declare-fun |fun#triggerStateless| (T@Ref) T@Ref)
(declare-fun fun (T@PolymorphicMapType_9982 T@Ref) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9982 T@PolymorphicMapType_9982 T@PolymorphicMapType_10003) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5244 (T@Field_16316_16317) T@Field_16330_16335)
(declare-fun HasDirectPerm_5244_5245 (T@PolymorphicMapType_10003 T@Ref T@Field_16316_16317) Bool)
(declare-fun PredicateMaskField_5207 (T@Field_14983_14984) T@Field_14997_15002)
(declare-fun HasDirectPerm_5207_5208 (T@PolymorphicMapType_10003 T@Ref T@Field_14983_14984) Bool)
(declare-fun PredicateMaskField_5181 (T@Field_13888_13889) T@Field_13901_13906)
(declare-fun HasDirectPerm_5181_5182 (T@PolymorphicMapType_10003 T@Ref T@Field_13888_13889) Bool)
(declare-fun IsPredicateField_5154_35776 (T@Field_5154_5182) Bool)
(declare-fun PredicateMaskField_5154 (T@Field_5154_5182) T@Field_5154_13906)
(declare-fun HasDirectPerm_5154_5182 (T@PolymorphicMapType_10003 T@Ref T@Field_5154_5182) Bool)
(declare-fun IsWandField_5244_43495 (T@Field_16316_16317) Bool)
(declare-fun WandMaskField_5244 (T@Field_16316_16317) T@Field_16330_16335)
(declare-fun IsWandField_5207_43138 (T@Field_14983_14984) Bool)
(declare-fun WandMaskField_5207 (T@Field_14983_14984) T@Field_14997_15002)
(declare-fun IsWandField_5181_42781 (T@Field_13888_13889) Bool)
(declare-fun WandMaskField_5181 (T@Field_13888_13889) T@Field_13901_13906)
(declare-fun IsWandField_5154_42424 (T@Field_5154_5182) Bool)
(declare-fun WandMaskField_5154 (T@Field_5154_5182) T@Field_5154_13906)
(declare-fun |p1#sm| (T@Ref Int) T@Field_13901_13906)
(declare-fun |p2#sm| (T@Ref T@Ref) T@Field_14997_15002)
(declare-fun |p3#sm| (T@Ref T@Ref) T@Field_16330_16335)
(declare-fun dummyHeap () T@PolymorphicMapType_9982)
(declare-fun ZeroMask () T@PolymorphicMapType_10003)
(declare-fun InsidePredicate_16316_16316 (T@Field_16316_16317 T@FrameType T@Field_16316_16317 T@FrameType) Bool)
(declare-fun InsidePredicate_14983_14983 (T@Field_14983_14984 T@FrameType T@Field_14983_14984 T@FrameType) Bool)
(declare-fun InsidePredicate_13888_13888 (T@Field_13888_13889 T@FrameType T@Field_13888_13889 T@FrameType) Bool)
(declare-fun InsidePredicate_10042_10042 (T@Field_5154_5182 T@FrameType T@Field_5154_5182 T@FrameType) Bool)
(declare-fun IsPredicateField_5154_1189 (T@Field_13369_1189) Bool)
(declare-fun IsWandField_5154_1189 (T@Field_13369_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5244_57199 (T@Field_16330_16335) Bool)
(declare-fun IsWandField_5244_57215 (T@Field_16330_16335) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5244_10056 (T@Field_5244_10056) Bool)
(declare-fun IsWandField_5244_10056 (T@Field_5244_10056) Bool)
(declare-fun IsPredicateField_5244_53 (T@Field_5244_53) Bool)
(declare-fun IsWandField_5244_53 (T@Field_5244_53) Bool)
(declare-fun IsPredicateField_5244_1189 (T@Field_5244_1189) Bool)
(declare-fun IsWandField_5244_1189 (T@Field_5244_1189) Bool)
(declare-fun IsPredicateField_5207_56368 (T@Field_14997_15002) Bool)
(declare-fun IsWandField_5207_56384 (T@Field_14997_15002) Bool)
(declare-fun IsPredicateField_5207_10056 (T@Field_5207_10056) Bool)
(declare-fun IsWandField_5207_10056 (T@Field_5207_10056) Bool)
(declare-fun IsPredicateField_5207_53 (T@Field_5207_53) Bool)
(declare-fun IsWandField_5207_53 (T@Field_5207_53) Bool)
(declare-fun IsPredicateField_5207_1189 (T@Field_5207_1189) Bool)
(declare-fun IsWandField_5207_1189 (T@Field_5207_1189) Bool)
(declare-fun IsPredicateField_5181_55537 (T@Field_13901_13906) Bool)
(declare-fun IsWandField_5181_55553 (T@Field_13901_13906) Bool)
(declare-fun IsPredicateField_5181_10056 (T@Field_5181_10056) Bool)
(declare-fun IsWandField_5181_10056 (T@Field_5181_10056) Bool)
(declare-fun IsPredicateField_5181_53 (T@Field_5181_53) Bool)
(declare-fun IsWandField_5181_53 (T@Field_5181_53) Bool)
(declare-fun IsPredicateField_5181_1189 (T@Field_5181_1189) Bool)
(declare-fun IsWandField_5181_1189 (T@Field_5181_1189) Bool)
(declare-fun IsPredicateField_5154_54706 (T@Field_5154_13906) Bool)
(declare-fun IsWandField_5154_54722 (T@Field_5154_13906) Bool)
(declare-fun IsPredicateField_5154_10056 (T@Field_10055_10056) Bool)
(declare-fun IsWandField_5154_10056 (T@Field_10055_10056) Bool)
(declare-fun IsPredicateField_5154_53 (T@Field_10042_53) Bool)
(declare-fun IsWandField_5154_53 (T@Field_10042_53) Bool)
(declare-fun HasDirectPerm_5244_35488 (T@PolymorphicMapType_10003 T@Ref T@Field_16330_16335) Bool)
(declare-fun HasDirectPerm_5244_10056 (T@PolymorphicMapType_10003 T@Ref T@Field_5244_10056) Bool)
(declare-fun HasDirectPerm_5244_53 (T@PolymorphicMapType_10003 T@Ref T@Field_5244_53) Bool)
(declare-fun HasDirectPerm_5244_1189 (T@PolymorphicMapType_10003 T@Ref T@Field_5244_1189) Bool)
(declare-fun HasDirectPerm_5207_34347 (T@PolymorphicMapType_10003 T@Ref T@Field_14997_15002) Bool)
(declare-fun HasDirectPerm_5207_10056 (T@PolymorphicMapType_10003 T@Ref T@Field_5207_10056) Bool)
(declare-fun HasDirectPerm_5207_53 (T@PolymorphicMapType_10003 T@Ref T@Field_5207_53) Bool)
(declare-fun HasDirectPerm_5207_1189 (T@PolymorphicMapType_10003 T@Ref T@Field_5207_1189) Bool)
(declare-fun HasDirectPerm_5181_33206 (T@PolymorphicMapType_10003 T@Ref T@Field_13901_13906) Bool)
(declare-fun HasDirectPerm_5181_10056 (T@PolymorphicMapType_10003 T@Ref T@Field_5181_10056) Bool)
(declare-fun HasDirectPerm_5181_53 (T@PolymorphicMapType_10003 T@Ref T@Field_5181_53) Bool)
(declare-fun HasDirectPerm_5181_1189 (T@PolymorphicMapType_10003 T@Ref T@Field_5181_1189) Bool)
(declare-fun HasDirectPerm_5154_32065 (T@PolymorphicMapType_10003 T@Ref T@Field_5154_13906) Bool)
(declare-fun HasDirectPerm_5154_10056 (T@PolymorphicMapType_10003 T@Ref T@Field_10055_10056) Bool)
(declare-fun HasDirectPerm_5154_53 (T@PolymorphicMapType_10003 T@Ref T@Field_10042_53) Bool)
(declare-fun HasDirectPerm_5154_1189 (T@PolymorphicMapType_10003 T@Ref T@Field_13369_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10003 T@PolymorphicMapType_10003 T@PolymorphicMapType_10003) Bool)
(declare-fun getPredWandId_5181_5182 (T@Field_13888_13889) Int)
(declare-fun getPredWandId_5207_5208 (T@Field_14983_14984) Int)
(declare-fun getPredWandId_5244_5245 (T@Field_16316_16317) Int)
(declare-fun |fun#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun InsidePredicate_16316_14983 (T@Field_16316_16317 T@FrameType T@Field_14983_14984 T@FrameType) Bool)
(declare-fun InsidePredicate_16316_13888 (T@Field_16316_16317 T@FrameType T@Field_13888_13889 T@FrameType) Bool)
(declare-fun InsidePredicate_16316_10042 (T@Field_16316_16317 T@FrameType T@Field_5154_5182 T@FrameType) Bool)
(declare-fun InsidePredicate_14983_16316 (T@Field_14983_14984 T@FrameType T@Field_16316_16317 T@FrameType) Bool)
(declare-fun InsidePredicate_14983_13888 (T@Field_14983_14984 T@FrameType T@Field_13888_13889 T@FrameType) Bool)
(declare-fun InsidePredicate_14983_10042 (T@Field_14983_14984 T@FrameType T@Field_5154_5182 T@FrameType) Bool)
(declare-fun InsidePredicate_13888_16316 (T@Field_13888_13889 T@FrameType T@Field_16316_16317 T@FrameType) Bool)
(declare-fun InsidePredicate_13888_14983 (T@Field_13888_13889 T@FrameType T@Field_14983_14984 T@FrameType) Bool)
(declare-fun InsidePredicate_13888_10042 (T@Field_13888_13889 T@FrameType T@Field_5154_5182 T@FrameType) Bool)
(declare-fun InsidePredicate_10042_16316 (T@Field_5154_5182 T@FrameType T@Field_16316_16317 T@FrameType) Bool)
(declare-fun InsidePredicate_10042_14983 (T@Field_5154_5182 T@FrameType T@Field_14983_14984 T@FrameType) Bool)
(declare-fun InsidePredicate_10042_13888 (T@Field_5154_5182 T@FrameType T@Field_13888_13889 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9982) (Heap1 T@PolymorphicMapType_9982) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9982) (Mask T@PolymorphicMapType_10003) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9982) (Heap1@@0 T@PolymorphicMapType_9982) (Heap2 T@PolymorphicMapType_9982) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16330_16335) ) (!  (not (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16316_16317) ) (!  (not (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5244_1189) ) (!  (not (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5244_10056) ) (!  (not (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5244_53) ) (!  (not (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_14997_15002) ) (!  (not (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_14983_14984) ) (!  (not (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5207_1189) ) (!  (not (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_5207_10056) ) (!  (not (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_5207_53) ) (!  (not (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_13901_13906) ) (!  (not (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_13888_13889) ) (!  (not (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5181_1189) ) (!  (not (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5181_10056) ) (!  (not (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5181_53) ) (!  (not (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5154_13906) ) (!  (not (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5154_5182) ) (!  (not (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_13369_1189) ) (!  (not (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10055_10056) ) (!  (not (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10042_53) ) (!  (not (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((x T@Ref) (i Int) ) (! (IsPredicateField_5181_5182 (p1 x i))
 :qid |stdinbpl.240:15|
 :skolemid |26|
 :pattern ( (p1 x i))
)))
(assert (forall ((x@@0 T@Ref) (y T@Ref) ) (! (IsPredicateField_5207_5208 (p2 x@@0 y))
 :qid |stdinbpl.300:15|
 :skolemid |32|
 :pattern ( (p2 x@@0 y))
)))
(assert (forall ((x@@1 T@Ref) (y@@0 T@Ref) ) (! (IsPredicateField_5244_5245 (p3_1 x@@1 y@@0))
 :qid |stdinbpl.367:15|
 :skolemid |38|
 :pattern ( (p3_1 x@@1 y@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9982) (x@@2 T@Ref) (i@@0 Int) ) (! (|p1#everUsed_5181| (p1 x@@2 i@@0))
 :qid |stdinbpl.259:15|
 :skolemid |30|
 :pattern ( (|p1#trigger_5181| Heap@@0 (p1 x@@2 i@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9982) (x@@3 T@Ref) (y@@1 T@Ref) ) (! (|p2#everUsed_5207| (p2 x@@3 y@@1))
 :qid |stdinbpl.319:15|
 :skolemid |36|
 :pattern ( (|p2#trigger_5207| Heap@@1 (p2 x@@3 y@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9982) (x@@4 T@Ref) (y@@2 T@Ref) ) (! (|p3#everUsed_5244| (p3_1 x@@4 y@@2))
 :qid |stdinbpl.386:15|
 :skolemid |42|
 :pattern ( (|p3#trigger_5244| Heap@@2 (p3_1 x@@4 y@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9982) (x@@5 T@Ref) ) (! (dummyFunction_5175 (|fun#triggerStateless| x@@5))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|fun'| Heap@@3 x@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9982) (x@@6 T@Ref) ) (!  (and (= (fun Heap@@4 x@@6) (|fun'| Heap@@4 x@@6)) (dummyFunction_5175 (|fun#triggerStateless| x@@6)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (fun Heap@@4 x@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9982) (ExhaleHeap T@PolymorphicMapType_9982) (Mask@@0 T@PolymorphicMapType_10003) (pm_f_10 T@Field_16316_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5244_5245 Mask@@0 null pm_f_10) (IsPredicateField_5244_5245 pm_f_10)) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@5) null (PredicateMaskField_5244 pm_f_10)) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap) null (PredicateMaskField_5244 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (IsPredicateField_5244_5245 pm_f_10) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap) null (PredicateMaskField_5244 pm_f_10)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9982) (ExhaleHeap@@0 T@PolymorphicMapType_9982) (Mask@@1 T@PolymorphicMapType_10003) (pm_f_10@@0 T@Field_14983_14984) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5207_5208 Mask@@1 null pm_f_10@@0) (IsPredicateField_5207_5208 pm_f_10@@0)) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@6) null (PredicateMaskField_5207 pm_f_10@@0)) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@0) null (PredicateMaskField_5207 pm_f_10@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5207_5208 pm_f_10@@0) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@0) null (PredicateMaskField_5207 pm_f_10@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9982) (ExhaleHeap@@1 T@PolymorphicMapType_9982) (Mask@@2 T@PolymorphicMapType_10003) (pm_f_10@@1 T@Field_13888_13889) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5181_5182 Mask@@2 null pm_f_10@@1) (IsPredicateField_5181_5182 pm_f_10@@1)) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@7) null (PredicateMaskField_5181 pm_f_10@@1)) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@1) null (PredicateMaskField_5181 pm_f_10@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5181_5182 pm_f_10@@1) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@1) null (PredicateMaskField_5181 pm_f_10@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9982) (ExhaleHeap@@2 T@PolymorphicMapType_9982) (Mask@@3 T@PolymorphicMapType_10003) (pm_f_10@@2 T@Field_5154_5182) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5154_5182 Mask@@3 null pm_f_10@@2) (IsPredicateField_5154_35776 pm_f_10@@2)) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@8) null (PredicateMaskField_5154 pm_f_10@@2)) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@2) null (PredicateMaskField_5154 pm_f_10@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (IsPredicateField_5154_35776 pm_f_10@@2) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@2) null (PredicateMaskField_5154 pm_f_10@@2)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9982) (ExhaleHeap@@3 T@PolymorphicMapType_9982) (Mask@@4 T@PolymorphicMapType_10003) (pm_f_10@@3 T@Field_16316_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5244_5245 Mask@@4 null pm_f_10@@3) (IsWandField_5244_43495 pm_f_10@@3)) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@9) null (WandMaskField_5244 pm_f_10@@3)) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@3) null (WandMaskField_5244 pm_f_10@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (IsWandField_5244_43495 pm_f_10@@3) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@3) null (WandMaskField_5244 pm_f_10@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9982) (ExhaleHeap@@4 T@PolymorphicMapType_9982) (Mask@@5 T@PolymorphicMapType_10003) (pm_f_10@@4 T@Field_14983_14984) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5207_5208 Mask@@5 null pm_f_10@@4) (IsWandField_5207_43138 pm_f_10@@4)) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@10) null (WandMaskField_5207 pm_f_10@@4)) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@4) null (WandMaskField_5207 pm_f_10@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (IsWandField_5207_43138 pm_f_10@@4) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@4) null (WandMaskField_5207 pm_f_10@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9982) (ExhaleHeap@@5 T@PolymorphicMapType_9982) (Mask@@6 T@PolymorphicMapType_10003) (pm_f_10@@5 T@Field_13888_13889) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5181_5182 Mask@@6 null pm_f_10@@5) (IsWandField_5181_42781 pm_f_10@@5)) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@11) null (WandMaskField_5181 pm_f_10@@5)) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@5) null (WandMaskField_5181 pm_f_10@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (IsWandField_5181_42781 pm_f_10@@5) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@5) null (WandMaskField_5181 pm_f_10@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9982) (ExhaleHeap@@6 T@PolymorphicMapType_9982) (Mask@@7 T@PolymorphicMapType_10003) (pm_f_10@@6 T@Field_5154_5182) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5154_5182 Mask@@7 null pm_f_10@@6) (IsWandField_5154_42424 pm_f_10@@6)) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@12) null (WandMaskField_5154 pm_f_10@@6)) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@6) null (WandMaskField_5154 pm_f_10@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (IsWandField_5154_42424 pm_f_10@@6) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@6) null (WandMaskField_5154 pm_f_10@@6)))
)))
(assert (forall ((x@@7 T@Ref) (i@@1 Int) (x2 T@Ref) (i2 Int) ) (!  (=> (= (p1 x@@7 i@@1) (p1 x2 i2)) (and (= x@@7 x2) (= i@@1 i2)))
 :qid |stdinbpl.250:15|
 :skolemid |28|
 :pattern ( (p1 x@@7 i@@1) (p1 x2 i2))
)))
(assert (forall ((x@@8 T@Ref) (i@@2 Int) (x2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|p1#sm| x@@8 i@@2) (|p1#sm| x2@@0 i2@@0)) (and (= x@@8 x2@@0) (= i@@2 i2@@0)))
 :qid |stdinbpl.254:15|
 :skolemid |29|
 :pattern ( (|p1#sm| x@@8 i@@2) (|p1#sm| x2@@0 i2@@0))
)))
(assert (forall ((x@@9 T@Ref) (y@@3 T@Ref) (x2@@1 T@Ref) (y2 T@Ref) ) (!  (=> (= (p2 x@@9 y@@3) (p2 x2@@1 y2)) (and (= x@@9 x2@@1) (= y@@3 y2)))
 :qid |stdinbpl.310:15|
 :skolemid |34|
 :pattern ( (p2 x@@9 y@@3) (p2 x2@@1 y2))
)))
(assert (forall ((x@@10 T@Ref) (y@@4 T@Ref) (x2@@2 T@Ref) (y2@@0 T@Ref) ) (!  (=> (= (|p2#sm| x@@10 y@@4) (|p2#sm| x2@@2 y2@@0)) (and (= x@@10 x2@@2) (= y@@4 y2@@0)))
 :qid |stdinbpl.314:15|
 :skolemid |35|
 :pattern ( (|p2#sm| x@@10 y@@4) (|p2#sm| x2@@2 y2@@0))
)))
(assert (forall ((x@@11 T@Ref) (y@@5 T@Ref) (x2@@3 T@Ref) (y2@@1 T@Ref) ) (!  (=> (= (p3_1 x@@11 y@@5) (p3_1 x2@@3 y2@@1)) (and (= x@@11 x2@@3) (= y@@5 y2@@1)))
 :qid |stdinbpl.377:15|
 :skolemid |40|
 :pattern ( (p3_1 x@@11 y@@5) (p3_1 x2@@3 y2@@1))
)))
(assert (forall ((x@@12 T@Ref) (y@@6 T@Ref) (x2@@4 T@Ref) (y2@@2 T@Ref) ) (!  (=> (= (|p3#sm| x@@12 y@@6) (|p3#sm| x2@@4 y2@@2)) (and (= x@@12 x2@@4) (= y@@6 y2@@2)))
 :qid |stdinbpl.381:15|
 :skolemid |41|
 :pattern ( (|p3#sm| x@@12 y@@6) (|p3#sm| x2@@4 y2@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9982) (ExhaleHeap@@7 T@PolymorphicMapType_9982) (Mask@@8 T@PolymorphicMapType_10003) (pm_f_10@@7 T@Field_16316_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_5244_5245 Mask@@8 null pm_f_10@@7) (IsPredicateField_5244_5245 pm_f_10@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10 f_15) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@13) o2_10 f_15) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@13) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@13) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@13) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@13) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@3 f_15@@3))
))) (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@13) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@4 f_15@@4))
))) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@13) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@13) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@13) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@13) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@8 f_15@@8))
))) (forall ((o2_10@@9 T@Ref) (f_15@@9 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@9 f_15@@9) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@13) o2_10@@9 f_15@@9) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@9 f_15@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@9 f_15@@9))
))) (forall ((o2_10@@10 T@Ref) (f_15@@10 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@10 f_15@@10) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@13) o2_10@@10 f_15@@10) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@10 f_15@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@10 f_15@@10))
))) (forall ((o2_10@@11 T@Ref) (f_15@@11 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@11 f_15@@11) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@13) o2_10@@11 f_15@@11) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@11 f_15@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@11 f_15@@11))
))) (forall ((o2_10@@12 T@Ref) (f_15@@12 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@12 f_15@@12) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@13) o2_10@@12 f_15@@12) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@12 f_15@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@12 f_15@@12))
))) (forall ((o2_10@@13 T@Ref) (f_15@@13 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@13 f_15@@13) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@13) o2_10@@13 f_15@@13) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@13 f_15@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@13 f_15@@13))
))) (forall ((o2_10@@14 T@Ref) (f_15@@14 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@14 f_15@@14) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@13) o2_10@@14 f_15@@14) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@14 f_15@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@14 f_15@@14))
))) (forall ((o2_10@@15 T@Ref) (f_15@@15 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@15 f_15@@15) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@13) o2_10@@15 f_15@@15) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@15 f_15@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@15 f_15@@15))
))) (forall ((o2_10@@16 T@Ref) (f_15@@16 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@16 f_15@@16) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@13) o2_10@@16 f_15@@16) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@16 f_15@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@16 f_15@@16))
))) (forall ((o2_10@@17 T@Ref) (f_15@@17 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@17 f_15@@17) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@13) o2_10@@17 f_15@@17) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@17 f_15@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@17 f_15@@17))
))) (forall ((o2_10@@18 T@Ref) (f_15@@18 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@18 f_15@@18) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) o2_10@@18 f_15@@18) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@18 f_15@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@18 f_15@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (IsPredicateField_5244_5245 pm_f_10@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9982) (ExhaleHeap@@8 T@PolymorphicMapType_9982) (Mask@@9 T@PolymorphicMapType_10003) (pm_f_10@@8 T@Field_14983_14984) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_5207_5208 Mask@@9 null pm_f_10@@8) (IsPredicateField_5207_5208 pm_f_10@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@19 T@Ref) (f_15@@19 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@19 f_15@@19) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@14) o2_10@@19 f_15@@19) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@19 f_15@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@19 f_15@@19))
)) (forall ((o2_10@@20 T@Ref) (f_15@@20 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@20 f_15@@20) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@14) o2_10@@20 f_15@@20) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@20 f_15@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@20 f_15@@20))
))) (forall ((o2_10@@21 T@Ref) (f_15@@21 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@21 f_15@@21) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@14) o2_10@@21 f_15@@21) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@21 f_15@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@21 f_15@@21))
))) (forall ((o2_10@@22 T@Ref) (f_15@@22 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@22 f_15@@22) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@14) o2_10@@22 f_15@@22) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@22 f_15@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@22 f_15@@22))
))) (forall ((o2_10@@23 T@Ref) (f_15@@23 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@23 f_15@@23) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@14) o2_10@@23 f_15@@23) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@23 f_15@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@23 f_15@@23))
))) (forall ((o2_10@@24 T@Ref) (f_15@@24 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@24 f_15@@24) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@14) o2_10@@24 f_15@@24) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@24 f_15@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@24 f_15@@24))
))) (forall ((o2_10@@25 T@Ref) (f_15@@25 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@25 f_15@@25) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@14) o2_10@@25 f_15@@25) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@25 f_15@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@25 f_15@@25))
))) (forall ((o2_10@@26 T@Ref) (f_15@@26 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@26 f_15@@26) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@14) o2_10@@26 f_15@@26) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@26 f_15@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@26 f_15@@26))
))) (forall ((o2_10@@27 T@Ref) (f_15@@27 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@27 f_15@@27) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@14) o2_10@@27 f_15@@27) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@27 f_15@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@27 f_15@@27))
))) (forall ((o2_10@@28 T@Ref) (f_15@@28 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@28 f_15@@28) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@14) o2_10@@28 f_15@@28) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@28 f_15@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@28 f_15@@28))
))) (forall ((o2_10@@29 T@Ref) (f_15@@29 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@29 f_15@@29) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@14) o2_10@@29 f_15@@29) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@29 f_15@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@29 f_15@@29))
))) (forall ((o2_10@@30 T@Ref) (f_15@@30 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@30 f_15@@30) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@14) o2_10@@30 f_15@@30) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@30 f_15@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@30 f_15@@30))
))) (forall ((o2_10@@31 T@Ref) (f_15@@31 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@31 f_15@@31) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@14) o2_10@@31 f_15@@31) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@31 f_15@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@31 f_15@@31))
))) (forall ((o2_10@@32 T@Ref) (f_15@@32 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@32 f_15@@32) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@14) o2_10@@32 f_15@@32) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@32 f_15@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@32 f_15@@32))
))) (forall ((o2_10@@33 T@Ref) (f_15@@33 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@33 f_15@@33) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) o2_10@@33 f_15@@33) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@33 f_15@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@33 f_15@@33))
))) (forall ((o2_10@@34 T@Ref) (f_15@@34 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@34 f_15@@34) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@14) o2_10@@34 f_15@@34) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@34 f_15@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@34 f_15@@34))
))) (forall ((o2_10@@35 T@Ref) (f_15@@35 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@35 f_15@@35) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@14) o2_10@@35 f_15@@35) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@35 f_15@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@35 f_15@@35))
))) (forall ((o2_10@@36 T@Ref) (f_15@@36 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@36 f_15@@36) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@14) o2_10@@36 f_15@@36) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@36 f_15@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@36 f_15@@36))
))) (forall ((o2_10@@37 T@Ref) (f_15@@37 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@37 f_15@@37) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@14) o2_10@@37 f_15@@37) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@37 f_15@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@37 f_15@@37))
))) (forall ((o2_10@@38 T@Ref) (f_15@@38 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@38 f_15@@38) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@14) o2_10@@38 f_15@@38) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@38 f_15@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@38 f_15@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (IsPredicateField_5207_5208 pm_f_10@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9982) (ExhaleHeap@@9 T@PolymorphicMapType_9982) (Mask@@10 T@PolymorphicMapType_10003) (pm_f_10@@9 T@Field_13888_13889) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_5181_5182 Mask@@10 null pm_f_10@@9) (IsPredicateField_5181_5182 pm_f_10@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@39 T@Ref) (f_15@@39 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@39 f_15@@39) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@15) o2_10@@39 f_15@@39) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@39 f_15@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@39 f_15@@39))
)) (forall ((o2_10@@40 T@Ref) (f_15@@40 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@40 f_15@@40) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@15) o2_10@@40 f_15@@40) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@40 f_15@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@40 f_15@@40))
))) (forall ((o2_10@@41 T@Ref) (f_15@@41 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@41 f_15@@41) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@15) o2_10@@41 f_15@@41) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@41 f_15@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@41 f_15@@41))
))) (forall ((o2_10@@42 T@Ref) (f_15@@42 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@42 f_15@@42) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@15) o2_10@@42 f_15@@42) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@42 f_15@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@42 f_15@@42))
))) (forall ((o2_10@@43 T@Ref) (f_15@@43 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@43 f_15@@43) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@15) o2_10@@43 f_15@@43) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@43 f_15@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@43 f_15@@43))
))) (forall ((o2_10@@44 T@Ref) (f_15@@44 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@44 f_15@@44) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@15) o2_10@@44 f_15@@44) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@44 f_15@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@44 f_15@@44))
))) (forall ((o2_10@@45 T@Ref) (f_15@@45 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@45 f_15@@45) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@15) o2_10@@45 f_15@@45) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@45 f_15@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@45 f_15@@45))
))) (forall ((o2_10@@46 T@Ref) (f_15@@46 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@46 f_15@@46) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@15) o2_10@@46 f_15@@46) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@46 f_15@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@46 f_15@@46))
))) (forall ((o2_10@@47 T@Ref) (f_15@@47 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@47 f_15@@47) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@15) o2_10@@47 f_15@@47) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@47 f_15@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@47 f_15@@47))
))) (forall ((o2_10@@48 T@Ref) (f_15@@48 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@48 f_15@@48) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) o2_10@@48 f_15@@48) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@48 f_15@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@48 f_15@@48))
))) (forall ((o2_10@@49 T@Ref) (f_15@@49 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@49 f_15@@49) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@15) o2_10@@49 f_15@@49) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@49 f_15@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@49 f_15@@49))
))) (forall ((o2_10@@50 T@Ref) (f_15@@50 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@50 f_15@@50) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@15) o2_10@@50 f_15@@50) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@50 f_15@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@50 f_15@@50))
))) (forall ((o2_10@@51 T@Ref) (f_15@@51 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@51 f_15@@51) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@15) o2_10@@51 f_15@@51) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@51 f_15@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@51 f_15@@51))
))) (forall ((o2_10@@52 T@Ref) (f_15@@52 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@52 f_15@@52) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@15) o2_10@@52 f_15@@52) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@52 f_15@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@52 f_15@@52))
))) (forall ((o2_10@@53 T@Ref) (f_15@@53 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@53 f_15@@53) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@15) o2_10@@53 f_15@@53) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@53 f_15@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@53 f_15@@53))
))) (forall ((o2_10@@54 T@Ref) (f_15@@54 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@54 f_15@@54) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@15) o2_10@@54 f_15@@54) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@54 f_15@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@54 f_15@@54))
))) (forall ((o2_10@@55 T@Ref) (f_15@@55 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@55 f_15@@55) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@15) o2_10@@55 f_15@@55) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@55 f_15@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@55 f_15@@55))
))) (forall ((o2_10@@56 T@Ref) (f_15@@56 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@56 f_15@@56) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@15) o2_10@@56 f_15@@56) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@56 f_15@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@56 f_15@@56))
))) (forall ((o2_10@@57 T@Ref) (f_15@@57 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@57 f_15@@57) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@15) o2_10@@57 f_15@@57) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@57 f_15@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@57 f_15@@57))
))) (forall ((o2_10@@58 T@Ref) (f_15@@58 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@58 f_15@@58) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@15) o2_10@@58 f_15@@58) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@58 f_15@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@58 f_15@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (IsPredicateField_5181_5182 pm_f_10@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9982) (ExhaleHeap@@10 T@PolymorphicMapType_9982) (Mask@@11 T@PolymorphicMapType_10003) (pm_f_10@@10 T@Field_5154_5182) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_5154_5182 Mask@@11 null pm_f_10@@10) (IsPredicateField_5154_35776 pm_f_10@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@59 T@Ref) (f_15@@59 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@59 f_15@@59) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@16) o2_10@@59 f_15@@59) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@59 f_15@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@59 f_15@@59))
)) (forall ((o2_10@@60 T@Ref) (f_15@@60 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@60 f_15@@60) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@16) o2_10@@60 f_15@@60) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@60 f_15@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@60 f_15@@60))
))) (forall ((o2_10@@61 T@Ref) (f_15@@61 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@61 f_15@@61) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@16) o2_10@@61 f_15@@61) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@61 f_15@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@61 f_15@@61))
))) (forall ((o2_10@@62 T@Ref) (f_15@@62 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@62 f_15@@62) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@16) o2_10@@62 f_15@@62) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@62 f_15@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@62 f_15@@62))
))) (forall ((o2_10@@63 T@Ref) (f_15@@63 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@63 f_15@@63) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) o2_10@@63 f_15@@63) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@63 f_15@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@63 f_15@@63))
))) (forall ((o2_10@@64 T@Ref) (f_15@@64 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@64 f_15@@64) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@16) o2_10@@64 f_15@@64) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@64 f_15@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@64 f_15@@64))
))) (forall ((o2_10@@65 T@Ref) (f_15@@65 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@65 f_15@@65) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@16) o2_10@@65 f_15@@65) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@65 f_15@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@65 f_15@@65))
))) (forall ((o2_10@@66 T@Ref) (f_15@@66 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@66 f_15@@66) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@16) o2_10@@66 f_15@@66) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@66 f_15@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@66 f_15@@66))
))) (forall ((o2_10@@67 T@Ref) (f_15@@67 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@67 f_15@@67) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@16) o2_10@@67 f_15@@67) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@67 f_15@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@67 f_15@@67))
))) (forall ((o2_10@@68 T@Ref) (f_15@@68 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@68 f_15@@68) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@16) o2_10@@68 f_15@@68) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@68 f_15@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@68 f_15@@68))
))) (forall ((o2_10@@69 T@Ref) (f_15@@69 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@69 f_15@@69) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@16) o2_10@@69 f_15@@69) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@69 f_15@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@69 f_15@@69))
))) (forall ((o2_10@@70 T@Ref) (f_15@@70 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@70 f_15@@70) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@16) o2_10@@70 f_15@@70) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@70 f_15@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@70 f_15@@70))
))) (forall ((o2_10@@71 T@Ref) (f_15@@71 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@71 f_15@@71) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@16) o2_10@@71 f_15@@71) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@71 f_15@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@71 f_15@@71))
))) (forall ((o2_10@@72 T@Ref) (f_15@@72 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@72 f_15@@72) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@16) o2_10@@72 f_15@@72) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@72 f_15@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@72 f_15@@72))
))) (forall ((o2_10@@73 T@Ref) (f_15@@73 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@73 f_15@@73) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@16) o2_10@@73 f_15@@73) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@73 f_15@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@73 f_15@@73))
))) (forall ((o2_10@@74 T@Ref) (f_15@@74 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@74 f_15@@74) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@16) o2_10@@74 f_15@@74) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@74 f_15@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@74 f_15@@74))
))) (forall ((o2_10@@75 T@Ref) (f_15@@75 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@75 f_15@@75) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@16) o2_10@@75 f_15@@75) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@75 f_15@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@75 f_15@@75))
))) (forall ((o2_10@@76 T@Ref) (f_15@@76 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@76 f_15@@76) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@16) o2_10@@76 f_15@@76) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@76 f_15@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@76 f_15@@76))
))) (forall ((o2_10@@77 T@Ref) (f_15@@77 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@77 f_15@@77) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@16) o2_10@@77 f_15@@77) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@77 f_15@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@77 f_15@@77))
))) (forall ((o2_10@@78 T@Ref) (f_15@@78 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@78 f_15@@78) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@16) o2_10@@78 f_15@@78) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@78 f_15@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@78 f_15@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (IsPredicateField_5154_35776 pm_f_10@@10))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9982) (ExhaleHeap@@11 T@PolymorphicMapType_9982) (Mask@@12 T@PolymorphicMapType_10003) (pm_f_10@@11 T@Field_16316_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_5244_5245 Mask@@12 null pm_f_10@@11) (IsWandField_5244_43495 pm_f_10@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@79 T@Ref) (f_15@@79 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@79 f_15@@79) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@17) o2_10@@79 f_15@@79) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@79 f_15@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@79 f_15@@79))
)) (forall ((o2_10@@80 T@Ref) (f_15@@80 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@80 f_15@@80) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@17) o2_10@@80 f_15@@80) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@80 f_15@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@80 f_15@@80))
))) (forall ((o2_10@@81 T@Ref) (f_15@@81 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@81 f_15@@81) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@17) o2_10@@81 f_15@@81) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@81 f_15@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@81 f_15@@81))
))) (forall ((o2_10@@82 T@Ref) (f_15@@82 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@82 f_15@@82) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@17) o2_10@@82 f_15@@82) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@82 f_15@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@82 f_15@@82))
))) (forall ((o2_10@@83 T@Ref) (f_15@@83 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@83 f_15@@83) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@17) o2_10@@83 f_15@@83) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@83 f_15@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@83 f_15@@83))
))) (forall ((o2_10@@84 T@Ref) (f_15@@84 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@84 f_15@@84) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@17) o2_10@@84 f_15@@84) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@84 f_15@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@84 f_15@@84))
))) (forall ((o2_10@@85 T@Ref) (f_15@@85 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@85 f_15@@85) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@17) o2_10@@85 f_15@@85) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@85 f_15@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@85 f_15@@85))
))) (forall ((o2_10@@86 T@Ref) (f_15@@86 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@86 f_15@@86) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@17) o2_10@@86 f_15@@86) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@86 f_15@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@86 f_15@@86))
))) (forall ((o2_10@@87 T@Ref) (f_15@@87 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@87 f_15@@87) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@17) o2_10@@87 f_15@@87) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@87 f_15@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@87 f_15@@87))
))) (forall ((o2_10@@88 T@Ref) (f_15@@88 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@88 f_15@@88) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@17) o2_10@@88 f_15@@88) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@88 f_15@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@88 f_15@@88))
))) (forall ((o2_10@@89 T@Ref) (f_15@@89 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@89 f_15@@89) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@17) o2_10@@89 f_15@@89) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@89 f_15@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@89 f_15@@89))
))) (forall ((o2_10@@90 T@Ref) (f_15@@90 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@90 f_15@@90) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@17) o2_10@@90 f_15@@90) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@90 f_15@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@90 f_15@@90))
))) (forall ((o2_10@@91 T@Ref) (f_15@@91 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@91 f_15@@91) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@17) o2_10@@91 f_15@@91) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@91 f_15@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@91 f_15@@91))
))) (forall ((o2_10@@92 T@Ref) (f_15@@92 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@92 f_15@@92) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@17) o2_10@@92 f_15@@92) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@92 f_15@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@92 f_15@@92))
))) (forall ((o2_10@@93 T@Ref) (f_15@@93 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@93 f_15@@93) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@17) o2_10@@93 f_15@@93) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@93 f_15@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@93 f_15@@93))
))) (forall ((o2_10@@94 T@Ref) (f_15@@94 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@94 f_15@@94) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@17) o2_10@@94 f_15@@94) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@94 f_15@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@94 f_15@@94))
))) (forall ((o2_10@@95 T@Ref) (f_15@@95 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@95 f_15@@95) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@17) o2_10@@95 f_15@@95) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@95 f_15@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@95 f_15@@95))
))) (forall ((o2_10@@96 T@Ref) (f_15@@96 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@96 f_15@@96) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@17) o2_10@@96 f_15@@96) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@96 f_15@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@96 f_15@@96))
))) (forall ((o2_10@@97 T@Ref) (f_15@@97 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@97 f_15@@97) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@17) o2_10@@97 f_15@@97) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@97 f_15@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@97 f_15@@97))
))) (forall ((o2_10@@98 T@Ref) (f_15@@98 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@98 f_15@@98) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) o2_10@@98 f_15@@98) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@98 f_15@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@98 f_15@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (IsWandField_5244_43495 pm_f_10@@11))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9982) (ExhaleHeap@@12 T@PolymorphicMapType_9982) (Mask@@13 T@PolymorphicMapType_10003) (pm_f_10@@12 T@Field_14983_14984) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_5207_5208 Mask@@13 null pm_f_10@@12) (IsWandField_5207_43138 pm_f_10@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@99 T@Ref) (f_15@@99 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@99 f_15@@99) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@18) o2_10@@99 f_15@@99) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@99 f_15@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@99 f_15@@99))
)) (forall ((o2_10@@100 T@Ref) (f_15@@100 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@100 f_15@@100) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@18) o2_10@@100 f_15@@100) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@100 f_15@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@100 f_15@@100))
))) (forall ((o2_10@@101 T@Ref) (f_15@@101 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@101 f_15@@101) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@18) o2_10@@101 f_15@@101) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@101 f_15@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@101 f_15@@101))
))) (forall ((o2_10@@102 T@Ref) (f_15@@102 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@102 f_15@@102) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@18) o2_10@@102 f_15@@102) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@102 f_15@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@102 f_15@@102))
))) (forall ((o2_10@@103 T@Ref) (f_15@@103 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@103 f_15@@103) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@18) o2_10@@103 f_15@@103) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@103 f_15@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@103 f_15@@103))
))) (forall ((o2_10@@104 T@Ref) (f_15@@104 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@104 f_15@@104) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@18) o2_10@@104 f_15@@104) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@104 f_15@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@104 f_15@@104))
))) (forall ((o2_10@@105 T@Ref) (f_15@@105 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@105 f_15@@105) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@18) o2_10@@105 f_15@@105) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@105 f_15@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@105 f_15@@105))
))) (forall ((o2_10@@106 T@Ref) (f_15@@106 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@106 f_15@@106) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@18) o2_10@@106 f_15@@106) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@106 f_15@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@106 f_15@@106))
))) (forall ((o2_10@@107 T@Ref) (f_15@@107 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@107 f_15@@107) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@18) o2_10@@107 f_15@@107) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@107 f_15@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@107 f_15@@107))
))) (forall ((o2_10@@108 T@Ref) (f_15@@108 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@108 f_15@@108) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@18) o2_10@@108 f_15@@108) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@108 f_15@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@108 f_15@@108))
))) (forall ((o2_10@@109 T@Ref) (f_15@@109 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@109 f_15@@109) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@18) o2_10@@109 f_15@@109) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@109 f_15@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@109 f_15@@109))
))) (forall ((o2_10@@110 T@Ref) (f_15@@110 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@110 f_15@@110) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@18) o2_10@@110 f_15@@110) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@110 f_15@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@110 f_15@@110))
))) (forall ((o2_10@@111 T@Ref) (f_15@@111 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@111 f_15@@111) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@18) o2_10@@111 f_15@@111) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@111 f_15@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@111 f_15@@111))
))) (forall ((o2_10@@112 T@Ref) (f_15@@112 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@112 f_15@@112) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@18) o2_10@@112 f_15@@112) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@112 f_15@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@112 f_15@@112))
))) (forall ((o2_10@@113 T@Ref) (f_15@@113 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@113 f_15@@113) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) o2_10@@113 f_15@@113) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@113 f_15@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@113 f_15@@113))
))) (forall ((o2_10@@114 T@Ref) (f_15@@114 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@114 f_15@@114) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@18) o2_10@@114 f_15@@114) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@114 f_15@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@114 f_15@@114))
))) (forall ((o2_10@@115 T@Ref) (f_15@@115 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@115 f_15@@115) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@18) o2_10@@115 f_15@@115) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@115 f_15@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@115 f_15@@115))
))) (forall ((o2_10@@116 T@Ref) (f_15@@116 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@116 f_15@@116) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@18) o2_10@@116 f_15@@116) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@116 f_15@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@116 f_15@@116))
))) (forall ((o2_10@@117 T@Ref) (f_15@@117 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@117 f_15@@117) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@18) o2_10@@117 f_15@@117) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@117 f_15@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@117 f_15@@117))
))) (forall ((o2_10@@118 T@Ref) (f_15@@118 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@118 f_15@@118) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@18) o2_10@@118 f_15@@118) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@118 f_15@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@118 f_15@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13) (IsWandField_5207_43138 pm_f_10@@12))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9982) (ExhaleHeap@@13 T@PolymorphicMapType_9982) (Mask@@14 T@PolymorphicMapType_10003) (pm_f_10@@13 T@Field_13888_13889) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_5181_5182 Mask@@14 null pm_f_10@@13) (IsWandField_5181_42781 pm_f_10@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@119 T@Ref) (f_15@@119 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@119 f_15@@119) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@19) o2_10@@119 f_15@@119) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@119 f_15@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@119 f_15@@119))
)) (forall ((o2_10@@120 T@Ref) (f_15@@120 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@120 f_15@@120) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@19) o2_10@@120 f_15@@120) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@120 f_15@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@120 f_15@@120))
))) (forall ((o2_10@@121 T@Ref) (f_15@@121 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@121 f_15@@121) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@19) o2_10@@121 f_15@@121) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@121 f_15@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@121 f_15@@121))
))) (forall ((o2_10@@122 T@Ref) (f_15@@122 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@122 f_15@@122) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@19) o2_10@@122 f_15@@122) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@122 f_15@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@122 f_15@@122))
))) (forall ((o2_10@@123 T@Ref) (f_15@@123 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@123 f_15@@123) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@19) o2_10@@123 f_15@@123) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@123 f_15@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@123 f_15@@123))
))) (forall ((o2_10@@124 T@Ref) (f_15@@124 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@124 f_15@@124) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@19) o2_10@@124 f_15@@124) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@124 f_15@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@124 f_15@@124))
))) (forall ((o2_10@@125 T@Ref) (f_15@@125 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@125 f_15@@125) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@19) o2_10@@125 f_15@@125) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@125 f_15@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@125 f_15@@125))
))) (forall ((o2_10@@126 T@Ref) (f_15@@126 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@126 f_15@@126) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@19) o2_10@@126 f_15@@126) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@126 f_15@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@126 f_15@@126))
))) (forall ((o2_10@@127 T@Ref) (f_15@@127 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@127 f_15@@127) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@19) o2_10@@127 f_15@@127) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@127 f_15@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@127 f_15@@127))
))) (forall ((o2_10@@128 T@Ref) (f_15@@128 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@128 f_15@@128) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) o2_10@@128 f_15@@128) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@128 f_15@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@128 f_15@@128))
))) (forall ((o2_10@@129 T@Ref) (f_15@@129 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@129 f_15@@129) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@19) o2_10@@129 f_15@@129) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@129 f_15@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@129 f_15@@129))
))) (forall ((o2_10@@130 T@Ref) (f_15@@130 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@130 f_15@@130) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@19) o2_10@@130 f_15@@130) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@130 f_15@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@130 f_15@@130))
))) (forall ((o2_10@@131 T@Ref) (f_15@@131 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@131 f_15@@131) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@19) o2_10@@131 f_15@@131) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@131 f_15@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@131 f_15@@131))
))) (forall ((o2_10@@132 T@Ref) (f_15@@132 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@132 f_15@@132) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@19) o2_10@@132 f_15@@132) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@132 f_15@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@132 f_15@@132))
))) (forall ((o2_10@@133 T@Ref) (f_15@@133 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@133 f_15@@133) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@19) o2_10@@133 f_15@@133) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@133 f_15@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@133 f_15@@133))
))) (forall ((o2_10@@134 T@Ref) (f_15@@134 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@134 f_15@@134) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@19) o2_10@@134 f_15@@134) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@134 f_15@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@134 f_15@@134))
))) (forall ((o2_10@@135 T@Ref) (f_15@@135 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@135 f_15@@135) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@19) o2_10@@135 f_15@@135) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@135 f_15@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@135 f_15@@135))
))) (forall ((o2_10@@136 T@Ref) (f_15@@136 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@136 f_15@@136) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@19) o2_10@@136 f_15@@136) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@136 f_15@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@136 f_15@@136))
))) (forall ((o2_10@@137 T@Ref) (f_15@@137 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@137 f_15@@137) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@19) o2_10@@137 f_15@@137) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@137 f_15@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@137 f_15@@137))
))) (forall ((o2_10@@138 T@Ref) (f_15@@138 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@138 f_15@@138) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@19) o2_10@@138 f_15@@138) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@138 f_15@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@138 f_15@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@14) (IsWandField_5181_42781 pm_f_10@@13))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9982) (ExhaleHeap@@14 T@PolymorphicMapType_9982) (Mask@@15 T@PolymorphicMapType_10003) (pm_f_10@@14 T@Field_5154_5182) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_5154_5182 Mask@@15 null pm_f_10@@14) (IsWandField_5154_42424 pm_f_10@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@139 T@Ref) (f_15@@139 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@139 f_15@@139) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@20) o2_10@@139 f_15@@139) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@139 f_15@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@139 f_15@@139))
)) (forall ((o2_10@@140 T@Ref) (f_15@@140 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@140 f_15@@140) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@20) o2_10@@140 f_15@@140) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@140 f_15@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@140 f_15@@140))
))) (forall ((o2_10@@141 T@Ref) (f_15@@141 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@141 f_15@@141) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@20) o2_10@@141 f_15@@141) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@141 f_15@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@141 f_15@@141))
))) (forall ((o2_10@@142 T@Ref) (f_15@@142 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@142 f_15@@142) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@20) o2_10@@142 f_15@@142) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@142 f_15@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@142 f_15@@142))
))) (forall ((o2_10@@143 T@Ref) (f_15@@143 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@143 f_15@@143) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) o2_10@@143 f_15@@143) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@143 f_15@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@143 f_15@@143))
))) (forall ((o2_10@@144 T@Ref) (f_15@@144 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@144 f_15@@144) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@20) o2_10@@144 f_15@@144) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@144 f_15@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@144 f_15@@144))
))) (forall ((o2_10@@145 T@Ref) (f_15@@145 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@145 f_15@@145) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@20) o2_10@@145 f_15@@145) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@145 f_15@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@145 f_15@@145))
))) (forall ((o2_10@@146 T@Ref) (f_15@@146 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@146 f_15@@146) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@20) o2_10@@146 f_15@@146) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@146 f_15@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@146 f_15@@146))
))) (forall ((o2_10@@147 T@Ref) (f_15@@147 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@147 f_15@@147) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@20) o2_10@@147 f_15@@147) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@147 f_15@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@147 f_15@@147))
))) (forall ((o2_10@@148 T@Ref) (f_15@@148 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@148 f_15@@148) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@20) o2_10@@148 f_15@@148) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@148 f_15@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@148 f_15@@148))
))) (forall ((o2_10@@149 T@Ref) (f_15@@149 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@149 f_15@@149) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@20) o2_10@@149 f_15@@149) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@149 f_15@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@149 f_15@@149))
))) (forall ((o2_10@@150 T@Ref) (f_15@@150 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@150 f_15@@150) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@20) o2_10@@150 f_15@@150) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@150 f_15@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@150 f_15@@150))
))) (forall ((o2_10@@151 T@Ref) (f_15@@151 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@151 f_15@@151) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@20) o2_10@@151 f_15@@151) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@151 f_15@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@151 f_15@@151))
))) (forall ((o2_10@@152 T@Ref) (f_15@@152 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@152 f_15@@152) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@20) o2_10@@152 f_15@@152) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@152 f_15@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@152 f_15@@152))
))) (forall ((o2_10@@153 T@Ref) (f_15@@153 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@153 f_15@@153) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@20) o2_10@@153 f_15@@153) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@153 f_15@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@153 f_15@@153))
))) (forall ((o2_10@@154 T@Ref) (f_15@@154 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@154 f_15@@154) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@20) o2_10@@154 f_15@@154) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@154 f_15@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@154 f_15@@154))
))) (forall ((o2_10@@155 T@Ref) (f_15@@155 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@155 f_15@@155) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@20) o2_10@@155 f_15@@155) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@155 f_15@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@155 f_15@@155))
))) (forall ((o2_10@@156 T@Ref) (f_15@@156 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@156 f_15@@156) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@20) o2_10@@156 f_15@@156) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@156 f_15@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@156 f_15@@156))
))) (forall ((o2_10@@157 T@Ref) (f_15@@157 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@157 f_15@@157) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@20) o2_10@@157 f_15@@157) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@157 f_15@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@157 f_15@@157))
))) (forall ((o2_10@@158 T@Ref) (f_15@@158 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@158 f_15@@158) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@20) o2_10@@158 f_15@@158) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@158 f_15@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@158 f_15@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@15) (IsWandField_5154_42424 pm_f_10@@14))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9982) (ExhaleHeap@@15 T@PolymorphicMapType_9982) (Mask@@16 T@PolymorphicMapType_10003) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@21) o_23 $allocated) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@15) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@15) o_23 $allocated))
)))
(assert (forall ((p T@Field_16316_16317) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16316_16316 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16316_16316 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14983_14984) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_14983_14983 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14983_14983 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_13888_13889) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_13888_13888 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13888_13888 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_5154_5182) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_10042_10042 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10042_10042 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_5154_1189 f_7)))
(assert  (not (IsWandField_5154_1189 f_7)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9982) (ExhaleHeap@@16 T@PolymorphicMapType_9982) (Mask@@17 T@PolymorphicMapType_10003) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@22 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10003) (o_2@@19 T@Ref) (f_4@@19 T@Field_16330_16335) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5244_57199 f_4@@19))) (not (IsWandField_5244_57215 f_4@@19))) (<= (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10003) (o_2@@20 T@Ref) (f_4@@20 T@Field_5244_10056) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5244_10056 f_4@@20))) (not (IsWandField_5244_10056 f_4@@20))) (<= (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10003) (o_2@@21 T@Ref) (f_4@@21 T@Field_5244_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5244_53 f_4@@21))) (not (IsWandField_5244_53 f_4@@21))) (<= (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10003) (o_2@@22 T@Ref) (f_4@@22 T@Field_16316_16317) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5244_5245 f_4@@22))) (not (IsWandField_5244_43495 f_4@@22))) (<= (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10003) (o_2@@23 T@Ref) (f_4@@23 T@Field_5244_1189) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5244_1189 f_4@@23))) (not (IsWandField_5244_1189 f_4@@23))) (<= (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10003) (o_2@@24 T@Ref) (f_4@@24 T@Field_14997_15002) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5207_56368 f_4@@24))) (not (IsWandField_5207_56384 f_4@@24))) (<= (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10003) (o_2@@25 T@Ref) (f_4@@25 T@Field_5207_10056) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5207_10056 f_4@@25))) (not (IsWandField_5207_10056 f_4@@25))) (<= (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10003) (o_2@@26 T@Ref) (f_4@@26 T@Field_5207_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5207_53 f_4@@26))) (not (IsWandField_5207_53 f_4@@26))) (<= (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10003) (o_2@@27 T@Ref) (f_4@@27 T@Field_14983_14984) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_5207_5208 f_4@@27))) (not (IsWandField_5207_43138 f_4@@27))) (<= (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10003) (o_2@@28 T@Ref) (f_4@@28 T@Field_5207_1189) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_5207_1189 f_4@@28))) (not (IsWandField_5207_1189 f_4@@28))) (<= (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10003) (o_2@@29 T@Ref) (f_4@@29 T@Field_13901_13906) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_5181_55537 f_4@@29))) (not (IsWandField_5181_55553 f_4@@29))) (<= (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10003) (o_2@@30 T@Ref) (f_4@@30 T@Field_5181_10056) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_5181_10056 f_4@@30))) (not (IsWandField_5181_10056 f_4@@30))) (<= (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10003) (o_2@@31 T@Ref) (f_4@@31 T@Field_5181_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_5181_53 f_4@@31))) (not (IsWandField_5181_53 f_4@@31))) (<= (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_10003) (o_2@@32 T@Ref) (f_4@@32 T@Field_13888_13889) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_5181_5182 f_4@@32))) (not (IsWandField_5181_42781 f_4@@32))) (<= (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_10003) (o_2@@33 T@Ref) (f_4@@33 T@Field_5181_1189) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_5181_1189 f_4@@33))) (not (IsWandField_5181_1189 f_4@@33))) (<= (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_10003) (o_2@@34 T@Ref) (f_4@@34 T@Field_5154_13906) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_5154_54706 f_4@@34))) (not (IsWandField_5154_54722 f_4@@34))) (<= (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_10003) (o_2@@35 T@Ref) (f_4@@35 T@Field_10055_10056) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_5154_10056 f_4@@35))) (not (IsWandField_5154_10056 f_4@@35))) (<= (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_10003) (o_2@@36 T@Ref) (f_4@@36 T@Field_10042_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_5154_53 f_4@@36))) (not (IsWandField_5154_53 f_4@@36))) (<= (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_10003) (o_2@@37 T@Ref) (f_4@@37 T@Field_5154_5182) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_5154_35776 f_4@@37))) (not (IsWandField_5154_42424 f_4@@37))) (<= (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_10003) (o_2@@38 T@Ref) (f_4@@38 T@Field_13369_1189) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_5154_1189 f_4@@38))) (not (IsWandField_5154_1189 f_4@@38))) (<= (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_10003) (o_2@@39 T@Ref) (f_4@@39 T@Field_16330_16335) ) (! (= (HasDirectPerm_5244_35488 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5244_35488 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_10003) (o_2@@40 T@Ref) (f_4@@40 T@Field_5244_10056) ) (! (= (HasDirectPerm_5244_10056 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5244_10056 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_10003) (o_2@@41 T@Ref) (f_4@@41 T@Field_5244_53) ) (! (= (HasDirectPerm_5244_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5244_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_10003) (o_2@@42 T@Ref) (f_4@@42 T@Field_16316_16317) ) (! (= (HasDirectPerm_5244_5245 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5244_5245 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_10003) (o_2@@43 T@Ref) (f_4@@43 T@Field_5244_1189) ) (! (= (HasDirectPerm_5244_1189 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5244_1189 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_10003) (o_2@@44 T@Ref) (f_4@@44 T@Field_14997_15002) ) (! (= (HasDirectPerm_5207_34347 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_34347 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_10003) (o_2@@45 T@Ref) (f_4@@45 T@Field_5207_10056) ) (! (= (HasDirectPerm_5207_10056 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_10056 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_10003) (o_2@@46 T@Ref) (f_4@@46 T@Field_5207_53) ) (! (= (HasDirectPerm_5207_53 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_53 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_10003) (o_2@@47 T@Ref) (f_4@@47 T@Field_14983_14984) ) (! (= (HasDirectPerm_5207_5208 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_5208 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_10003) (o_2@@48 T@Ref) (f_4@@48 T@Field_5207_1189) ) (! (= (HasDirectPerm_5207_1189 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_1189 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_10003) (o_2@@49 T@Ref) (f_4@@49 T@Field_13901_13906) ) (! (= (HasDirectPerm_5181_33206 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5181_33206 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_10003) (o_2@@50 T@Ref) (f_4@@50 T@Field_5181_10056) ) (! (= (HasDirectPerm_5181_10056 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5181_10056 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_10003) (o_2@@51 T@Ref) (f_4@@51 T@Field_5181_53) ) (! (= (HasDirectPerm_5181_53 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5181_53 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_10003) (o_2@@52 T@Ref) (f_4@@52 T@Field_13888_13889) ) (! (= (HasDirectPerm_5181_5182 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5181_5182 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_10003) (o_2@@53 T@Ref) (f_4@@53 T@Field_5181_1189) ) (! (= (HasDirectPerm_5181_1189 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5181_1189 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_10003) (o_2@@54 T@Ref) (f_4@@54 T@Field_5154_13906) ) (! (= (HasDirectPerm_5154_32065 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5154_32065 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_10003) (o_2@@55 T@Ref) (f_4@@55 T@Field_10055_10056) ) (! (= (HasDirectPerm_5154_10056 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5154_10056 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_10003) (o_2@@56 T@Ref) (f_4@@56 T@Field_10042_53) ) (! (= (HasDirectPerm_5154_53 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5154_53 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_10003) (o_2@@57 T@Ref) (f_4@@57 T@Field_5154_5182) ) (! (= (HasDirectPerm_5154_5182 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5154_5182 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_10003) (o_2@@58 T@Ref) (f_4@@58 T@Field_13369_1189) ) (! (= (HasDirectPerm_5154_1189 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5154_1189 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9982) (ExhaleHeap@@17 T@PolymorphicMapType_9982) (Mask@@58 T@PolymorphicMapType_10003) (o_23@@0 T@Ref) (f_15@@159 T@Field_16330_16335) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_5244_35488 Mask@@58 o_23@@0 f_15@@159) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@23) o_23@@0 f_15@@159) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@17) o_23@@0 f_15@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@17) o_23@@0 f_15@@159))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9982) (ExhaleHeap@@18 T@PolymorphicMapType_9982) (Mask@@59 T@PolymorphicMapType_10003) (o_23@@1 T@Ref) (f_15@@160 T@Field_5244_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_5244_10056 Mask@@59 o_23@@1 f_15@@160) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@24) o_23@@1 f_15@@160) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@18) o_23@@1 f_15@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@18) o_23@@1 f_15@@160))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9982) (ExhaleHeap@@19 T@PolymorphicMapType_9982) (Mask@@60 T@PolymorphicMapType_10003) (o_23@@2 T@Ref) (f_15@@161 T@Field_5244_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_5244_53 Mask@@60 o_23@@2 f_15@@161) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@25) o_23@@2 f_15@@161) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@19) o_23@@2 f_15@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@19) o_23@@2 f_15@@161))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9982) (ExhaleHeap@@20 T@PolymorphicMapType_9982) (Mask@@61 T@PolymorphicMapType_10003) (o_23@@3 T@Ref) (f_15@@162 T@Field_16316_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_5244_5245 Mask@@61 o_23@@3 f_15@@162) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@26) o_23@@3 f_15@@162) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@20) o_23@@3 f_15@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@20) o_23@@3 f_15@@162))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9982) (ExhaleHeap@@21 T@PolymorphicMapType_9982) (Mask@@62 T@PolymorphicMapType_10003) (o_23@@4 T@Ref) (f_15@@163 T@Field_5244_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_5244_1189 Mask@@62 o_23@@4 f_15@@163) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@27) o_23@@4 f_15@@163) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@21) o_23@@4 f_15@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@21) o_23@@4 f_15@@163))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9982) (ExhaleHeap@@22 T@PolymorphicMapType_9982) (Mask@@63 T@PolymorphicMapType_10003) (o_23@@5 T@Ref) (f_15@@164 T@Field_14997_15002) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_5207_34347 Mask@@63 o_23@@5 f_15@@164) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@28) o_23@@5 f_15@@164) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@22) o_23@@5 f_15@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@22) o_23@@5 f_15@@164))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9982) (ExhaleHeap@@23 T@PolymorphicMapType_9982) (Mask@@64 T@PolymorphicMapType_10003) (o_23@@6 T@Ref) (f_15@@165 T@Field_5207_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_5207_10056 Mask@@64 o_23@@6 f_15@@165) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@29) o_23@@6 f_15@@165) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@23) o_23@@6 f_15@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@23) o_23@@6 f_15@@165))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9982) (ExhaleHeap@@24 T@PolymorphicMapType_9982) (Mask@@65 T@PolymorphicMapType_10003) (o_23@@7 T@Ref) (f_15@@166 T@Field_5207_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_5207_53 Mask@@65 o_23@@7 f_15@@166) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@30) o_23@@7 f_15@@166) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@24) o_23@@7 f_15@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@24) o_23@@7 f_15@@166))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9982) (ExhaleHeap@@25 T@PolymorphicMapType_9982) (Mask@@66 T@PolymorphicMapType_10003) (o_23@@8 T@Ref) (f_15@@167 T@Field_14983_14984) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_5207_5208 Mask@@66 o_23@@8 f_15@@167) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@31) o_23@@8 f_15@@167) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@25) o_23@@8 f_15@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@25) o_23@@8 f_15@@167))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9982) (ExhaleHeap@@26 T@PolymorphicMapType_9982) (Mask@@67 T@PolymorphicMapType_10003) (o_23@@9 T@Ref) (f_15@@168 T@Field_5207_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_5207_1189 Mask@@67 o_23@@9 f_15@@168) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@32) o_23@@9 f_15@@168) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@26) o_23@@9 f_15@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@26) o_23@@9 f_15@@168))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9982) (ExhaleHeap@@27 T@PolymorphicMapType_9982) (Mask@@68 T@PolymorphicMapType_10003) (o_23@@10 T@Ref) (f_15@@169 T@Field_13901_13906) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_5181_33206 Mask@@68 o_23@@10 f_15@@169) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@33) o_23@@10 f_15@@169) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@27) o_23@@10 f_15@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@27) o_23@@10 f_15@@169))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9982) (ExhaleHeap@@28 T@PolymorphicMapType_9982) (Mask@@69 T@PolymorphicMapType_10003) (o_23@@11 T@Ref) (f_15@@170 T@Field_5181_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_5181_10056 Mask@@69 o_23@@11 f_15@@170) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@34) o_23@@11 f_15@@170) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@28) o_23@@11 f_15@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@28) o_23@@11 f_15@@170))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9982) (ExhaleHeap@@29 T@PolymorphicMapType_9982) (Mask@@70 T@PolymorphicMapType_10003) (o_23@@12 T@Ref) (f_15@@171 T@Field_5181_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_5181_53 Mask@@70 o_23@@12 f_15@@171) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@35) o_23@@12 f_15@@171) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@29) o_23@@12 f_15@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@29) o_23@@12 f_15@@171))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9982) (ExhaleHeap@@30 T@PolymorphicMapType_9982) (Mask@@71 T@PolymorphicMapType_10003) (o_23@@13 T@Ref) (f_15@@172 T@Field_13888_13889) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_5181_5182 Mask@@71 o_23@@13 f_15@@172) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@36) o_23@@13 f_15@@172) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@30) o_23@@13 f_15@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@30) o_23@@13 f_15@@172))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9982) (ExhaleHeap@@31 T@PolymorphicMapType_9982) (Mask@@72 T@PolymorphicMapType_10003) (o_23@@14 T@Ref) (f_15@@173 T@Field_5181_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_5181_1189 Mask@@72 o_23@@14 f_15@@173) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@37) o_23@@14 f_15@@173) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@31) o_23@@14 f_15@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@31) o_23@@14 f_15@@173))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9982) (ExhaleHeap@@32 T@PolymorphicMapType_9982) (Mask@@73 T@PolymorphicMapType_10003) (o_23@@15 T@Ref) (f_15@@174 T@Field_5154_13906) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_5154_32065 Mask@@73 o_23@@15 f_15@@174) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@38) o_23@@15 f_15@@174) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@32) o_23@@15 f_15@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@32) o_23@@15 f_15@@174))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9982) (ExhaleHeap@@33 T@PolymorphicMapType_9982) (Mask@@74 T@PolymorphicMapType_10003) (o_23@@16 T@Ref) (f_15@@175 T@Field_10055_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_5154_10056 Mask@@74 o_23@@16 f_15@@175) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@39) o_23@@16 f_15@@175) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@33) o_23@@16 f_15@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@33) o_23@@16 f_15@@175))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9982) (ExhaleHeap@@34 T@PolymorphicMapType_9982) (Mask@@75 T@PolymorphicMapType_10003) (o_23@@17 T@Ref) (f_15@@176 T@Field_10042_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_5154_53 Mask@@75 o_23@@17 f_15@@176) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@40) o_23@@17 f_15@@176) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@34) o_23@@17 f_15@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@34) o_23@@17 f_15@@176))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9982) (ExhaleHeap@@35 T@PolymorphicMapType_9982) (Mask@@76 T@PolymorphicMapType_10003) (o_23@@18 T@Ref) (f_15@@177 T@Field_5154_5182) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_5154_5182 Mask@@76 o_23@@18 f_15@@177) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@41) o_23@@18 f_15@@177) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@35) o_23@@18 f_15@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@35) o_23@@18 f_15@@177))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9982) (ExhaleHeap@@36 T@PolymorphicMapType_9982) (Mask@@77 T@PolymorphicMapType_10003) (o_23@@19 T@Ref) (f_15@@178 T@Field_13369_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_5154_1189 Mask@@77 o_23@@19 f_15@@178) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@42) o_23@@19 f_15@@178) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@36) o_23@@19 f_15@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@36) o_23@@19 f_15@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_16330_16335) ) (! (= (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_5244_10056) ) (! (= (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_5244_53) ) (! (= (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_16316_16317) ) (! (= (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_5244_1189) ) (! (= (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_14997_15002) ) (! (= (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_5207_10056) ) (! (= (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_5207_53) ) (! (= (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_14983_14984) ) (! (= (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_5207_1189) ) (! (= (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_13901_13906) ) (! (= (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_5181_10056) ) (! (= (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_5181_53) ) (! (= (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_13888_13889) ) (! (= (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_5181_1189) ) (! (= (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_5154_13906) ) (! (= (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_10055_10056) ) (! (= (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_10042_53) ) (! (= (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_5154_5182) ) (! (= (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_13369_1189) ) (! (= (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10003) (SummandMask1 T@PolymorphicMapType_10003) (SummandMask2 T@PolymorphicMapType_10003) (o_2@@79 T@Ref) (f_4@@79 T@Field_16330_16335) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10003) (SummandMask1@@0 T@PolymorphicMapType_10003) (SummandMask2@@0 T@PolymorphicMapType_10003) (o_2@@80 T@Ref) (f_4@@80 T@Field_5244_10056) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10003) (SummandMask1@@1 T@PolymorphicMapType_10003) (SummandMask2@@1 T@PolymorphicMapType_10003) (o_2@@81 T@Ref) (f_4@@81 T@Field_5244_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10003) (SummandMask1@@2 T@PolymorphicMapType_10003) (SummandMask2@@2 T@PolymorphicMapType_10003) (o_2@@82 T@Ref) (f_4@@82 T@Field_16316_16317) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10003) (SummandMask1@@3 T@PolymorphicMapType_10003) (SummandMask2@@3 T@PolymorphicMapType_10003) (o_2@@83 T@Ref) (f_4@@83 T@Field_5244_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10003) (SummandMask1@@4 T@PolymorphicMapType_10003) (SummandMask2@@4 T@PolymorphicMapType_10003) (o_2@@84 T@Ref) (f_4@@84 T@Field_14997_15002) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10003) (SummandMask1@@5 T@PolymorphicMapType_10003) (SummandMask2@@5 T@PolymorphicMapType_10003) (o_2@@85 T@Ref) (f_4@@85 T@Field_5207_10056) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10003) (SummandMask1@@6 T@PolymorphicMapType_10003) (SummandMask2@@6 T@PolymorphicMapType_10003) (o_2@@86 T@Ref) (f_4@@86 T@Field_5207_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10003) (SummandMask1@@7 T@PolymorphicMapType_10003) (SummandMask2@@7 T@PolymorphicMapType_10003) (o_2@@87 T@Ref) (f_4@@87 T@Field_14983_14984) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10003) (SummandMask1@@8 T@PolymorphicMapType_10003) (SummandMask2@@8 T@PolymorphicMapType_10003) (o_2@@88 T@Ref) (f_4@@88 T@Field_5207_1189) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_10003) (SummandMask1@@9 T@PolymorphicMapType_10003) (SummandMask2@@9 T@PolymorphicMapType_10003) (o_2@@89 T@Ref) (f_4@@89 T@Field_13901_13906) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_10003) (SummandMask1@@10 T@PolymorphicMapType_10003) (SummandMask2@@10 T@PolymorphicMapType_10003) (o_2@@90 T@Ref) (f_4@@90 T@Field_5181_10056) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_10003) (SummandMask1@@11 T@PolymorphicMapType_10003) (SummandMask2@@11 T@PolymorphicMapType_10003) (o_2@@91 T@Ref) (f_4@@91 T@Field_5181_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_10003) (SummandMask1@@12 T@PolymorphicMapType_10003) (SummandMask2@@12 T@PolymorphicMapType_10003) (o_2@@92 T@Ref) (f_4@@92 T@Field_13888_13889) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_10003) (SummandMask1@@13 T@PolymorphicMapType_10003) (SummandMask2@@13 T@PolymorphicMapType_10003) (o_2@@93 T@Ref) (f_4@@93 T@Field_5181_1189) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_10003) (SummandMask1@@14 T@PolymorphicMapType_10003) (SummandMask2@@14 T@PolymorphicMapType_10003) (o_2@@94 T@Ref) (f_4@@94 T@Field_5154_13906) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_10003) (SummandMask1@@15 T@PolymorphicMapType_10003) (SummandMask2@@15 T@PolymorphicMapType_10003) (o_2@@95 T@Ref) (f_4@@95 T@Field_10055_10056) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_10003) (SummandMask1@@16 T@PolymorphicMapType_10003) (SummandMask2@@16 T@PolymorphicMapType_10003) (o_2@@96 T@Ref) (f_4@@96 T@Field_10042_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_10003) (SummandMask1@@17 T@PolymorphicMapType_10003) (SummandMask2@@17 T@PolymorphicMapType_10003) (o_2@@97 T@Ref) (f_4@@97 T@Field_5154_5182) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_10003) (SummandMask1@@18 T@PolymorphicMapType_10003) (SummandMask2@@18 T@PolymorphicMapType_10003) (o_2@@98 T@Ref) (f_4@@98 T@Field_13369_1189) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((x@@13 T@Ref) (i@@3 Int) ) (! (= (getPredWandId_5181_5182 (p1 x@@13 i@@3)) 0)
 :qid |stdinbpl.244:15|
 :skolemid |27|
 :pattern ( (p1 x@@13 i@@3))
)))
(assert (forall ((x@@14 T@Ref) (y@@7 T@Ref) ) (! (= (getPredWandId_5207_5208 (p2 x@@14 y@@7)) 1)
 :qid |stdinbpl.304:15|
 :skolemid |33|
 :pattern ( (p2 x@@14 y@@7))
)))
(assert (forall ((x@@15 T@Ref) (y@@8 T@Ref) ) (! (= (getPredWandId_5244_5245 (p3_1 x@@15 y@@8)) 2)
 :qid |stdinbpl.371:15|
 :skolemid |39|
 :pattern ( (p3_1 x@@15 y@@8))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9982) (Mask@@78 T@PolymorphicMapType_10003) (x@@16 T@Ref) ) (!  (=> (state Heap@@43 Mask@@78) (= (|fun'| Heap@@43 x@@16) (|fun#frame| EmptyFrame x@@16)))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@43 Mask@@78) (|fun'| Heap@@43 x@@16))
)))
(assert (forall ((x@@17 T@Ref) (i@@4 Int) ) (! (= (PredicateMaskField_5181 (p1 x@@17 i@@4)) (|p1#sm| x@@17 i@@4))
 :qid |stdinbpl.236:15|
 :skolemid |25|
 :pattern ( (PredicateMaskField_5181 (p1 x@@17 i@@4)))
)))
(assert (forall ((x@@18 T@Ref) (y@@9 T@Ref) ) (! (= (PredicateMaskField_5207 (p2 x@@18 y@@9)) (|p2#sm| x@@18 y@@9))
 :qid |stdinbpl.296:15|
 :skolemid |31|
 :pattern ( (PredicateMaskField_5207 (p2 x@@18 y@@9)))
)))
(assert (forall ((x@@19 T@Ref) (y@@10 T@Ref) ) (! (= (PredicateMaskField_5244 (p3_1 x@@19 y@@10)) (|p3#sm| x@@19 y@@10))
 :qid |stdinbpl.363:15|
 :skolemid |37|
 :pattern ( (PredicateMaskField_5244 (p3_1 x@@19 y@@10)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9982) (o_4 T@Ref) (f_25 T@Field_16330_16335) (v T@PolymorphicMapType_10531) ) (! (succHeap Heap@@44 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@44) (store (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@44) o_4 f_25 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@44) (store (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@44) o_4 f_25 v)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_9982) (o_4@@0 T@Ref) (f_25@@0 T@Field_16316_16317) (v@@0 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@45) (store (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@45) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@45) (store (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@45) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_9982) (o_4@@1 T@Ref) (f_25@@1 T@Field_5244_1189) (v@@1 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@46) (store (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@46) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@46) (store (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@46) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_9982) (o_4@@2 T@Ref) (f_25@@2 T@Field_5244_10056) (v@@2 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@47) (store (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@47) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@47) (store (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@47) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_9982) (o_4@@3 T@Ref) (f_25@@3 T@Field_5244_53) (v@@3 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@48) (store (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@48) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@48) (store (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@48) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_9982) (o_4@@4 T@Ref) (f_25@@4 T@Field_14997_15002) (v@@4 T@PolymorphicMapType_10531) ) (! (succHeap Heap@@49 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@49) (store (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@49) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@49) (store (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@49) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_9982) (o_4@@5 T@Ref) (f_25@@5 T@Field_14983_14984) (v@@5 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@50) (store (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@50) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@50) (store (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@50) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_9982) (o_4@@6 T@Ref) (f_25@@6 T@Field_5207_1189) (v@@6 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@51) (store (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@51) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@51) (store (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@51) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_9982) (o_4@@7 T@Ref) (f_25@@7 T@Field_5207_10056) (v@@7 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@52) (store (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@52) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@52) (store (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@52) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_9982) (o_4@@8 T@Ref) (f_25@@8 T@Field_5207_53) (v@@8 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@53) (store (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@53) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@53) (store (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@53) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_9982) (o_4@@9 T@Ref) (f_25@@9 T@Field_13901_13906) (v@@9 T@PolymorphicMapType_10531) ) (! (succHeap Heap@@54 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@54) (store (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@54) o_4@@9 f_25@@9 v@@9) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@54) (store (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@54) o_4@@9 f_25@@9 v@@9) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_9982) (o_4@@10 T@Ref) (f_25@@10 T@Field_13888_13889) (v@@10 T@FrameType) ) (! (succHeap Heap@@55 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@55) (store (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@55) o_4@@10 f_25@@10 v@@10) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@55) (store (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@55) o_4@@10 f_25@@10 v@@10) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_9982) (o_4@@11 T@Ref) (f_25@@11 T@Field_5181_1189) (v@@11 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@56) (store (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@56) o_4@@11 f_25@@11 v@@11) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@56) (store (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@56) o_4@@11 f_25@@11 v@@11) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_9982) (o_4@@12 T@Ref) (f_25@@12 T@Field_5181_10056) (v@@12 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@57) (store (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@57) o_4@@12 f_25@@12 v@@12) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@57) (store (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@57) o_4@@12 f_25@@12 v@@12) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_9982) (o_4@@13 T@Ref) (f_25@@13 T@Field_5181_53) (v@@13 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@58) (store (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@58) o_4@@13 f_25@@13 v@@13) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@58) (store (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@58) o_4@@13 f_25@@13 v@@13) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_9982) (o_4@@14 T@Ref) (f_25@@14 T@Field_5154_13906) (v@@14 T@PolymorphicMapType_10531) ) (! (succHeap Heap@@59 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@59) (store (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@59) o_4@@14 f_25@@14 v@@14) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@59) (store (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@59) o_4@@14 f_25@@14 v@@14) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_9982) (o_4@@15 T@Ref) (f_25@@15 T@Field_5154_5182) (v@@15 T@FrameType) ) (! (succHeap Heap@@60 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@60) (store (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@60) o_4@@15 f_25@@15 v@@15) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@60) (store (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@60) o_4@@15 f_25@@15 v@@15) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_9982) (o_4@@16 T@Ref) (f_25@@16 T@Field_13369_1189) (v@@16 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@61) (store (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@61) o_4@@16 f_25@@16 v@@16) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@61) (store (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@61) o_4@@16 f_25@@16 v@@16) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_9982) (o_4@@17 T@Ref) (f_25@@17 T@Field_10055_10056) (v@@17 T@Ref) ) (! (succHeap Heap@@62 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@62) (store (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@62) o_4@@17 f_25@@17 v@@17) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@62) (store (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@62) o_4@@17 f_25@@17 v@@17) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_9982) (o_4@@18 T@Ref) (f_25@@18 T@Field_10042_53) (v@@18 Bool) ) (! (succHeap Heap@@63 (PolymorphicMapType_9982 (store (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@63) o_4@@18 f_25@@18 v@@18) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (store (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@63) o_4@@18 f_25@@18 v@@18) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@63)))
)))
(assert (forall ((o_4@@19 T@Ref) (f_9 T@Field_10055_10056) (Heap@@64 T@PolymorphicMapType_9982) ) (!  (=> (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@64) o_4@@19 $allocated) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@64) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@64) o_4@@19 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@64) o_4@@19 f_9))
)))
(assert (forall ((p@@4 T@Field_16316_16317) (v_1@@3 T@FrameType) (q T@Field_16316_16317) (w@@3 T@FrameType) (r T@Field_16316_16317) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16316_16316 p@@4 v_1@@3 q w@@3) (InsidePredicate_16316_16316 q w@@3 r u)) (InsidePredicate_16316_16316 p@@4 v_1@@3 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_16316 p@@4 v_1@@3 q w@@3) (InsidePredicate_16316_16316 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_16316_16317) (v_1@@4 T@FrameType) (q@@0 T@Field_16316_16317) (w@@4 T@FrameType) (r@@0 T@Field_14983_14984) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_16316 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_16316_14983 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_16316_14983 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_16316 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_16316_14983 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_16316_16317) (v_1@@5 T@FrameType) (q@@1 T@Field_16316_16317) (w@@5 T@FrameType) (r@@1 T@Field_13888_13889) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_16316 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_16316_13888 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_16316_13888 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_16316 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_16316_13888 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_16316_16317) (v_1@@6 T@FrameType) (q@@2 T@Field_16316_16317) (w@@6 T@FrameType) (r@@2 T@Field_5154_5182) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_16316 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_16316_10042 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_16316_10042 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_16316 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_16316_10042 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_16316_16317) (v_1@@7 T@FrameType) (q@@3 T@Field_14983_14984) (w@@7 T@FrameType) (r@@3 T@Field_16316_16317) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_14983 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_14983_16316 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_16316_16316 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_14983 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_14983_16316 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_16316_16317) (v_1@@8 T@FrameType) (q@@4 T@Field_14983_14984) (w@@8 T@FrameType) (r@@4 T@Field_14983_14984) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_14983 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_14983_14983 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_16316_14983 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_14983 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_14983_14983 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_16316_16317) (v_1@@9 T@FrameType) (q@@5 T@Field_14983_14984) (w@@9 T@FrameType) (r@@5 T@Field_13888_13889) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_14983 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_14983_13888 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_16316_13888 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_14983 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_14983_13888 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_16316_16317) (v_1@@10 T@FrameType) (q@@6 T@Field_14983_14984) (w@@10 T@FrameType) (r@@6 T@Field_5154_5182) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_14983 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_14983_10042 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_16316_10042 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_14983 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_14983_10042 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_16316_16317) (v_1@@11 T@FrameType) (q@@7 T@Field_13888_13889) (w@@11 T@FrameType) (r@@7 T@Field_16316_16317) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_13888 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_13888_16316 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_16316_16316 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_13888 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_13888_16316 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_16316_16317) (v_1@@12 T@FrameType) (q@@8 T@Field_13888_13889) (w@@12 T@FrameType) (r@@8 T@Field_14983_14984) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_13888 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_13888_14983 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_16316_14983 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_13888 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_13888_14983 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_16316_16317) (v_1@@13 T@FrameType) (q@@9 T@Field_13888_13889) (w@@13 T@FrameType) (r@@9 T@Field_13888_13889) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_13888 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_13888_13888 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_16316_13888 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_13888 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_13888_13888 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_16316_16317) (v_1@@14 T@FrameType) (q@@10 T@Field_13888_13889) (w@@14 T@FrameType) (r@@10 T@Field_5154_5182) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_13888 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_13888_10042 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_16316_10042 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_13888 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_13888_10042 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_16316_16317) (v_1@@15 T@FrameType) (q@@11 T@Field_5154_5182) (w@@15 T@FrameType) (r@@11 T@Field_16316_16317) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_10042 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_10042_16316 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_16316_16316 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_10042 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_10042_16316 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_16316_16317) (v_1@@16 T@FrameType) (q@@12 T@Field_5154_5182) (w@@16 T@FrameType) (r@@12 T@Field_14983_14984) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_10042 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_10042_14983 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_16316_14983 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_10042 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_10042_14983 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_16316_16317) (v_1@@17 T@FrameType) (q@@13 T@Field_5154_5182) (w@@17 T@FrameType) (r@@13 T@Field_13888_13889) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_10042 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_10042_13888 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_16316_13888 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_10042 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_10042_13888 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_16316_16317) (v_1@@18 T@FrameType) (q@@14 T@Field_5154_5182) (w@@18 T@FrameType) (r@@14 T@Field_5154_5182) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_10042 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_10042_10042 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_16316_10042 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_10042 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_10042_10042 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_14983_14984) (v_1@@19 T@FrameType) (q@@15 T@Field_16316_16317) (w@@19 T@FrameType) (r@@15 T@Field_16316_16317) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_16316 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_16316_16316 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_14983_16316 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_16316 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_16316_16316 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_14983_14984) (v_1@@20 T@FrameType) (q@@16 T@Field_16316_16317) (w@@20 T@FrameType) (r@@16 T@Field_14983_14984) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_16316 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_16316_14983 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_14983_14983 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_16316 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_16316_14983 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_14983_14984) (v_1@@21 T@FrameType) (q@@17 T@Field_16316_16317) (w@@21 T@FrameType) (r@@17 T@Field_13888_13889) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_16316 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_16316_13888 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_14983_13888 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_16316 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_16316_13888 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_14983_14984) (v_1@@22 T@FrameType) (q@@18 T@Field_16316_16317) (w@@22 T@FrameType) (r@@18 T@Field_5154_5182) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_16316 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_16316_10042 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_14983_10042 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_16316 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_16316_10042 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_14983_14984) (v_1@@23 T@FrameType) (q@@19 T@Field_14983_14984) (w@@23 T@FrameType) (r@@19 T@Field_16316_16317) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_14983 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_14983_16316 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_14983_16316 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_14983 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_14983_16316 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_14983_14984) (v_1@@24 T@FrameType) (q@@20 T@Field_14983_14984) (w@@24 T@FrameType) (r@@20 T@Field_14983_14984) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_14983 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_14983_14983 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_14983_14983 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_14983 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_14983_14983 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_14983_14984) (v_1@@25 T@FrameType) (q@@21 T@Field_14983_14984) (w@@25 T@FrameType) (r@@21 T@Field_13888_13889) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_14983 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_14983_13888 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_14983_13888 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_14983 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_14983_13888 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_14983_14984) (v_1@@26 T@FrameType) (q@@22 T@Field_14983_14984) (w@@26 T@FrameType) (r@@22 T@Field_5154_5182) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_14983 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_14983_10042 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_14983_10042 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_14983 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_14983_10042 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_14983_14984) (v_1@@27 T@FrameType) (q@@23 T@Field_13888_13889) (w@@27 T@FrameType) (r@@23 T@Field_16316_16317) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_13888 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_13888_16316 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_14983_16316 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_13888 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_13888_16316 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_14983_14984) (v_1@@28 T@FrameType) (q@@24 T@Field_13888_13889) (w@@28 T@FrameType) (r@@24 T@Field_14983_14984) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_13888 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_13888_14983 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_14983_14983 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_13888 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_13888_14983 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_14983_14984) (v_1@@29 T@FrameType) (q@@25 T@Field_13888_13889) (w@@29 T@FrameType) (r@@25 T@Field_13888_13889) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_13888 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_13888_13888 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_14983_13888 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_13888 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_13888_13888 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_14983_14984) (v_1@@30 T@FrameType) (q@@26 T@Field_13888_13889) (w@@30 T@FrameType) (r@@26 T@Field_5154_5182) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_13888 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_13888_10042 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_14983_10042 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_13888 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_13888_10042 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_14983_14984) (v_1@@31 T@FrameType) (q@@27 T@Field_5154_5182) (w@@31 T@FrameType) (r@@27 T@Field_16316_16317) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_10042 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_10042_16316 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_14983_16316 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_10042 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_10042_16316 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_14983_14984) (v_1@@32 T@FrameType) (q@@28 T@Field_5154_5182) (w@@32 T@FrameType) (r@@28 T@Field_14983_14984) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_10042 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_10042_14983 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_14983_14983 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_10042 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_10042_14983 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_14983_14984) (v_1@@33 T@FrameType) (q@@29 T@Field_5154_5182) (w@@33 T@FrameType) (r@@29 T@Field_13888_13889) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_10042 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_10042_13888 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_14983_13888 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_10042 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_10042_13888 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_14983_14984) (v_1@@34 T@FrameType) (q@@30 T@Field_5154_5182) (w@@34 T@FrameType) (r@@30 T@Field_5154_5182) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_10042 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_10042_10042 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_14983_10042 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_10042 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_10042_10042 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_13888_13889) (v_1@@35 T@FrameType) (q@@31 T@Field_16316_16317) (w@@35 T@FrameType) (r@@31 T@Field_16316_16317) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_16316 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_16316_16316 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_13888_16316 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_16316 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_16316_16316 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_13888_13889) (v_1@@36 T@FrameType) (q@@32 T@Field_16316_16317) (w@@36 T@FrameType) (r@@32 T@Field_14983_14984) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_16316 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_16316_14983 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_13888_14983 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_16316 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_16316_14983 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_13888_13889) (v_1@@37 T@FrameType) (q@@33 T@Field_16316_16317) (w@@37 T@FrameType) (r@@33 T@Field_13888_13889) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_16316 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_16316_13888 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_13888_13888 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_16316 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_16316_13888 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_13888_13889) (v_1@@38 T@FrameType) (q@@34 T@Field_16316_16317) (w@@38 T@FrameType) (r@@34 T@Field_5154_5182) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_16316 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_16316_10042 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_13888_10042 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_16316 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_16316_10042 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_13888_13889) (v_1@@39 T@FrameType) (q@@35 T@Field_14983_14984) (w@@39 T@FrameType) (r@@35 T@Field_16316_16317) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_14983 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_14983_16316 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_13888_16316 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_14983 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_14983_16316 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_13888_13889) (v_1@@40 T@FrameType) (q@@36 T@Field_14983_14984) (w@@40 T@FrameType) (r@@36 T@Field_14983_14984) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_14983 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_14983_14983 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_13888_14983 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_14983 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_14983_14983 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_13888_13889) (v_1@@41 T@FrameType) (q@@37 T@Field_14983_14984) (w@@41 T@FrameType) (r@@37 T@Field_13888_13889) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_14983 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_14983_13888 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_13888_13888 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_14983 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_14983_13888 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_13888_13889) (v_1@@42 T@FrameType) (q@@38 T@Field_14983_14984) (w@@42 T@FrameType) (r@@38 T@Field_5154_5182) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_14983 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_14983_10042 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_13888_10042 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_14983 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_14983_10042 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_13888_13889) (v_1@@43 T@FrameType) (q@@39 T@Field_13888_13889) (w@@43 T@FrameType) (r@@39 T@Field_16316_16317) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_13888 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_13888_16316 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_13888_16316 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_13888 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_13888_16316 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_13888_13889) (v_1@@44 T@FrameType) (q@@40 T@Field_13888_13889) (w@@44 T@FrameType) (r@@40 T@Field_14983_14984) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_13888 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_13888_14983 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_13888_14983 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_13888 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_13888_14983 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_13888_13889) (v_1@@45 T@FrameType) (q@@41 T@Field_13888_13889) (w@@45 T@FrameType) (r@@41 T@Field_13888_13889) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_13888 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_13888_13888 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_13888_13888 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_13888 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_13888_13888 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_13888_13889) (v_1@@46 T@FrameType) (q@@42 T@Field_13888_13889) (w@@46 T@FrameType) (r@@42 T@Field_5154_5182) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_13888 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_13888_10042 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_13888_10042 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_13888 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_13888_10042 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_13888_13889) (v_1@@47 T@FrameType) (q@@43 T@Field_5154_5182) (w@@47 T@FrameType) (r@@43 T@Field_16316_16317) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_10042 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_10042_16316 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_13888_16316 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_10042 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_10042_16316 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_13888_13889) (v_1@@48 T@FrameType) (q@@44 T@Field_5154_5182) (w@@48 T@FrameType) (r@@44 T@Field_14983_14984) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_10042 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_10042_14983 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_13888_14983 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_10042 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_10042_14983 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_13888_13889) (v_1@@49 T@FrameType) (q@@45 T@Field_5154_5182) (w@@49 T@FrameType) (r@@45 T@Field_13888_13889) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_10042 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_10042_13888 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_13888_13888 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_10042 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_10042_13888 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_13888_13889) (v_1@@50 T@FrameType) (q@@46 T@Field_5154_5182) (w@@50 T@FrameType) (r@@46 T@Field_5154_5182) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_10042 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_10042_10042 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_13888_10042 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_10042 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_10042_10042 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_5154_5182) (v_1@@51 T@FrameType) (q@@47 T@Field_16316_16317) (w@@51 T@FrameType) (r@@47 T@Field_16316_16317) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_16316 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_16316_16316 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_10042_16316 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_16316 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_16316_16316 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_5154_5182) (v_1@@52 T@FrameType) (q@@48 T@Field_16316_16317) (w@@52 T@FrameType) (r@@48 T@Field_14983_14984) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_16316 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_16316_14983 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_10042_14983 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_16316 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_16316_14983 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_5154_5182) (v_1@@53 T@FrameType) (q@@49 T@Field_16316_16317) (w@@53 T@FrameType) (r@@49 T@Field_13888_13889) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_16316 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_16316_13888 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_10042_13888 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_16316 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_16316_13888 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_5154_5182) (v_1@@54 T@FrameType) (q@@50 T@Field_16316_16317) (w@@54 T@FrameType) (r@@50 T@Field_5154_5182) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_16316 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_16316_10042 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_10042_10042 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_16316 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_16316_10042 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_5154_5182) (v_1@@55 T@FrameType) (q@@51 T@Field_14983_14984) (w@@55 T@FrameType) (r@@51 T@Field_16316_16317) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_14983 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_14983_16316 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_10042_16316 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_14983 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_14983_16316 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_5154_5182) (v_1@@56 T@FrameType) (q@@52 T@Field_14983_14984) (w@@56 T@FrameType) (r@@52 T@Field_14983_14984) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_14983 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_14983_14983 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_10042_14983 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_14983 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_14983_14983 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_5154_5182) (v_1@@57 T@FrameType) (q@@53 T@Field_14983_14984) (w@@57 T@FrameType) (r@@53 T@Field_13888_13889) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_14983 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_14983_13888 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_10042_13888 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_14983 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_14983_13888 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_5154_5182) (v_1@@58 T@FrameType) (q@@54 T@Field_14983_14984) (w@@58 T@FrameType) (r@@54 T@Field_5154_5182) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_14983 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_14983_10042 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_10042_10042 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_14983 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_14983_10042 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_5154_5182) (v_1@@59 T@FrameType) (q@@55 T@Field_13888_13889) (w@@59 T@FrameType) (r@@55 T@Field_16316_16317) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_13888 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_13888_16316 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_10042_16316 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_13888 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_13888_16316 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_5154_5182) (v_1@@60 T@FrameType) (q@@56 T@Field_13888_13889) (w@@60 T@FrameType) (r@@56 T@Field_14983_14984) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_13888 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_13888_14983 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_10042_14983 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_13888 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_13888_14983 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_5154_5182) (v_1@@61 T@FrameType) (q@@57 T@Field_13888_13889) (w@@61 T@FrameType) (r@@57 T@Field_13888_13889) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_13888 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_13888_13888 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_10042_13888 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_13888 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_13888_13888 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_5154_5182) (v_1@@62 T@FrameType) (q@@58 T@Field_13888_13889) (w@@62 T@FrameType) (r@@58 T@Field_5154_5182) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_13888 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_13888_10042 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_10042_10042 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_13888 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_13888_10042 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_5154_5182) (v_1@@63 T@FrameType) (q@@59 T@Field_5154_5182) (w@@63 T@FrameType) (r@@59 T@Field_16316_16317) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_10042 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_10042_16316 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_10042_16316 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_10042 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_10042_16316 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_5154_5182) (v_1@@64 T@FrameType) (q@@60 T@Field_5154_5182) (w@@64 T@FrameType) (r@@60 T@Field_14983_14984) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_10042 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_10042_14983 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_10042_14983 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_10042 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_10042_14983 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_5154_5182) (v_1@@65 T@FrameType) (q@@61 T@Field_5154_5182) (w@@65 T@FrameType) (r@@61 T@Field_13888_13889) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_10042 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_10042_13888 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_10042_13888 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_10042 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_10042_13888 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_5154_5182) (v_1@@66 T@FrameType) (q@@62 T@Field_5154_5182) (w@@66 T@FrameType) (r@@62 T@Field_5154_5182) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_10042 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_10042_10042 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_10042_10042 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_10042 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_10042_10042 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_10003)
(declare-fun a_9 () T@Ref)
(declare-fun y@@11 () T@Ref)
(declare-fun Heap@@65 () T@PolymorphicMapType_9982)
(declare-fun x@@20 () T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun z () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_10003)
(set-info :boogie-vc-id m4)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_correct true))
(let ((anon6_Else_correct  (=> (and (not (HasDirectPerm_5244_5245 Mask@1 null (p3_1 a_9 y@@11))) (= (ControlFlow 0 6) 3)) anon3_correct)))
(let ((anon6_Then_correct  (=> (HasDirectPerm_5244_5245 Mask@1 null (p3_1 a_9 y@@11)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_5244_5245 Mask@1 null (p3_1 a_9 y@@11))) (=> (HasDirectPerm_5244_5245 Mask@1 null (p3_1 a_9 y@@11)) (=> (= (ControlFlow 0 4) 3) anon3_correct))))))
(let ((anon5_Else_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((a_1_1 T@Ref) ) (!  (=> (HasDirectPerm_5244_5245 Mask@1 null (p3_1 a_1_1 y@@11)) (= a_1_1 x@@20))
 :qid |stdinbpl.734:15|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| Mask@1) null (p3_1 a_1_1 y@@11)))
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@65) null (p3_1 a_1_1 y@@11)))
)))))
(let ((anon0_correct  (=> (state Heap@@65 ZeroMask) (=> (and (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@65) x@@20 $allocated) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@65) y@@11 $allocated))) (and (and (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@65) z $allocated) (= Mask@0 (PolymorphicMapType_10003 (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| ZeroMask) (store (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| ZeroMask) null (p3_1 x@@20 y@@11) (+ (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| ZeroMask) null (p3_1 x@@20 y@@11)) FullPerm)) (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| ZeroMask) (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| ZeroMask)))) (and (state Heap@@65 Mask@0) (state Heap@@65 Mask@0)))) (and (and (and (state Heap@@65 Mask@0) (= Mask@1 (PolymorphicMapType_10003 (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| Mask@0) (store (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| Mask@0) null (p3_1 y@@11 z) (+ (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| Mask@0) null (p3_1 y@@11 z)) FullPerm)) (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| Mask@0) (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| Mask@0)))) (and (state Heap@@65 Mask@1) (state Heap@@65 Mask@1))) (and (and (state Heap@@65 Mask@1) (not (= z y@@11))) (and (state Heap@@65 Mask@1) (state Heap@@65 Mask@1))))) (and (and (=> (= (ControlFlow 0 7) 2) anon5_Else_correct) (=> (= (ControlFlow 0 7) 4) anon6_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
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
(declare-sort T@Field_10042_53 0)
(declare-sort T@Field_10055_10056 0)
(declare-sort T@Field_13369_1189 0)
(declare-sort T@Field_13888_13889 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14983_14984 0)
(declare-sort T@Field_16316_16317 0)
(declare-sort T@Field_5154_5182 0)
(declare-sort T@Field_5154_13906 0)
(declare-sort T@Field_5181_1189 0)
(declare-sort T@Field_5181_53 0)
(declare-sort T@Field_5181_10056 0)
(declare-sort T@Field_13901_13906 0)
(declare-sort T@Field_5207_1189 0)
(declare-sort T@Field_5207_53 0)
(declare-sort T@Field_5207_10056 0)
(declare-sort T@Field_14997_15002 0)
(declare-sort T@Field_5244_1189 0)
(declare-sort T@Field_5244_53 0)
(declare-sort T@Field_5244_10056 0)
(declare-sort T@Field_16330_16335 0)
(declare-datatypes ((T@PolymorphicMapType_10003 0)) (((PolymorphicMapType_10003 (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| (Array T@Ref T@Field_13369_1189 Real)) (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| (Array T@Ref T@Field_13888_13889 Real)) (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| (Array T@Ref T@Field_14983_14984 Real)) (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| (Array T@Ref T@Field_16316_16317 Real)) (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| (Array T@Ref T@Field_5154_5182 Real)) (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| (Array T@Ref T@Field_10042_53 Real)) (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| (Array T@Ref T@Field_10055_10056 Real)) (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| (Array T@Ref T@Field_5154_13906 Real)) (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| (Array T@Ref T@Field_5181_1189 Real)) (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| (Array T@Ref T@Field_5181_53 Real)) (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| (Array T@Ref T@Field_5181_10056 Real)) (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| (Array T@Ref T@Field_13901_13906 Real)) (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| (Array T@Ref T@Field_5207_1189 Real)) (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| (Array T@Ref T@Field_5207_53 Real)) (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| (Array T@Ref T@Field_5207_10056 Real)) (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| (Array T@Ref T@Field_14997_15002 Real)) (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| (Array T@Ref T@Field_5244_1189 Real)) (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| (Array T@Ref T@Field_5244_53 Real)) (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| (Array T@Ref T@Field_5244_10056 Real)) (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| (Array T@Ref T@Field_16330_16335 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10531 0)) (((PolymorphicMapType_10531 (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (Array T@Ref T@Field_10042_53 Bool)) (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (Array T@Ref T@Field_10055_10056 Bool)) (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (Array T@Ref T@Field_13369_1189 Bool)) (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (Array T@Ref T@Field_5154_5182 Bool)) (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (Array T@Ref T@Field_5154_13906 Bool)) (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (Array T@Ref T@Field_5181_53 Bool)) (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (Array T@Ref T@Field_5181_10056 Bool)) (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (Array T@Ref T@Field_5181_1189 Bool)) (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (Array T@Ref T@Field_13888_13889 Bool)) (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (Array T@Ref T@Field_13901_13906 Bool)) (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (Array T@Ref T@Field_5207_53 Bool)) (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (Array T@Ref T@Field_5207_10056 Bool)) (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (Array T@Ref T@Field_5207_1189 Bool)) (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (Array T@Ref T@Field_14983_14984 Bool)) (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (Array T@Ref T@Field_14997_15002 Bool)) (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (Array T@Ref T@Field_5244_53 Bool)) (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (Array T@Ref T@Field_5244_10056 Bool)) (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (Array T@Ref T@Field_5244_1189 Bool)) (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (Array T@Ref T@Field_16316_16317 Bool)) (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (Array T@Ref T@Field_16330_16335 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9982 0)) (((PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| (Array T@Ref T@Field_10042_53 Bool)) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| (Array T@Ref T@Field_10055_10056 T@Ref)) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| (Array T@Ref T@Field_13369_1189 Int)) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| (Array T@Ref T@Field_13888_13889 T@FrameType)) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| (Array T@Ref T@Field_14983_14984 T@FrameType)) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| (Array T@Ref T@Field_16316_16317 T@FrameType)) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| (Array T@Ref T@Field_5154_5182 T@FrameType)) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| (Array T@Ref T@Field_5154_13906 T@PolymorphicMapType_10531)) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| (Array T@Ref T@Field_5181_1189 Int)) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| (Array T@Ref T@Field_5181_53 Bool)) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| (Array T@Ref T@Field_5181_10056 T@Ref)) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| (Array T@Ref T@Field_13901_13906 T@PolymorphicMapType_10531)) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| (Array T@Ref T@Field_5207_1189 Int)) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| (Array T@Ref T@Field_5207_53 Bool)) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| (Array T@Ref T@Field_5207_10056 T@Ref)) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| (Array T@Ref T@Field_14997_15002 T@PolymorphicMapType_10531)) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| (Array T@Ref T@Field_5244_1189 Int)) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| (Array T@Ref T@Field_5244_53 Bool)) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| (Array T@Ref T@Field_5244_10056 T@Ref)) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| (Array T@Ref T@Field_16330_16335 T@PolymorphicMapType_10531)) ) ) ))
(declare-fun $allocated () T@Field_10042_53)
(declare-fun f_7 () T@Field_13369_1189)
(declare-fun succHeap (T@PolymorphicMapType_9982 T@PolymorphicMapType_9982) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9982 T@PolymorphicMapType_9982) Bool)
(declare-fun state (T@PolymorphicMapType_9982 T@PolymorphicMapType_10003) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10003) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10531)
(declare-fun p1 (T@Ref Int) T@Field_13888_13889)
(declare-fun IsPredicateField_5181_5182 (T@Field_13888_13889) Bool)
(declare-fun p2 (T@Ref T@Ref) T@Field_14983_14984)
(declare-fun IsPredicateField_5207_5208 (T@Field_14983_14984) Bool)
(declare-fun p3_1 (T@Ref T@Ref) T@Field_16316_16317)
(declare-fun IsPredicateField_5244_5245 (T@Field_16316_16317) Bool)
(declare-fun |p1#trigger_5181| (T@PolymorphicMapType_9982 T@Field_13888_13889) Bool)
(declare-fun |p1#everUsed_5181| (T@Field_13888_13889) Bool)
(declare-fun |p2#trigger_5207| (T@PolymorphicMapType_9982 T@Field_14983_14984) Bool)
(declare-fun |p2#everUsed_5207| (T@Field_14983_14984) Bool)
(declare-fun |p3#trigger_5244| (T@PolymorphicMapType_9982 T@Field_16316_16317) Bool)
(declare-fun |p3#everUsed_5244| (T@Field_16316_16317) Bool)
(declare-fun |fun'| (T@PolymorphicMapType_9982 T@Ref) T@Ref)
(declare-fun dummyFunction_5175 (T@Ref) Bool)
(declare-fun |fun#triggerStateless| (T@Ref) T@Ref)
(declare-fun fun (T@PolymorphicMapType_9982 T@Ref) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9982 T@PolymorphicMapType_9982 T@PolymorphicMapType_10003) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5244 (T@Field_16316_16317) T@Field_16330_16335)
(declare-fun HasDirectPerm_5244_5245 (T@PolymorphicMapType_10003 T@Ref T@Field_16316_16317) Bool)
(declare-fun PredicateMaskField_5207 (T@Field_14983_14984) T@Field_14997_15002)
(declare-fun HasDirectPerm_5207_5208 (T@PolymorphicMapType_10003 T@Ref T@Field_14983_14984) Bool)
(declare-fun PredicateMaskField_5181 (T@Field_13888_13889) T@Field_13901_13906)
(declare-fun HasDirectPerm_5181_5182 (T@PolymorphicMapType_10003 T@Ref T@Field_13888_13889) Bool)
(declare-fun IsPredicateField_5154_35776 (T@Field_5154_5182) Bool)
(declare-fun PredicateMaskField_5154 (T@Field_5154_5182) T@Field_5154_13906)
(declare-fun HasDirectPerm_5154_5182 (T@PolymorphicMapType_10003 T@Ref T@Field_5154_5182) Bool)
(declare-fun IsWandField_5244_43495 (T@Field_16316_16317) Bool)
(declare-fun WandMaskField_5244 (T@Field_16316_16317) T@Field_16330_16335)
(declare-fun IsWandField_5207_43138 (T@Field_14983_14984) Bool)
(declare-fun WandMaskField_5207 (T@Field_14983_14984) T@Field_14997_15002)
(declare-fun IsWandField_5181_42781 (T@Field_13888_13889) Bool)
(declare-fun WandMaskField_5181 (T@Field_13888_13889) T@Field_13901_13906)
(declare-fun IsWandField_5154_42424 (T@Field_5154_5182) Bool)
(declare-fun WandMaskField_5154 (T@Field_5154_5182) T@Field_5154_13906)
(declare-fun |p1#sm| (T@Ref Int) T@Field_13901_13906)
(declare-fun |p2#sm| (T@Ref T@Ref) T@Field_14997_15002)
(declare-fun |p3#sm| (T@Ref T@Ref) T@Field_16330_16335)
(declare-fun dummyHeap () T@PolymorphicMapType_9982)
(declare-fun ZeroMask () T@PolymorphicMapType_10003)
(declare-fun InsidePredicate_16316_16316 (T@Field_16316_16317 T@FrameType T@Field_16316_16317 T@FrameType) Bool)
(declare-fun InsidePredicate_14983_14983 (T@Field_14983_14984 T@FrameType T@Field_14983_14984 T@FrameType) Bool)
(declare-fun InsidePredicate_13888_13888 (T@Field_13888_13889 T@FrameType T@Field_13888_13889 T@FrameType) Bool)
(declare-fun InsidePredicate_10042_10042 (T@Field_5154_5182 T@FrameType T@Field_5154_5182 T@FrameType) Bool)
(declare-fun IsPredicateField_5154_1189 (T@Field_13369_1189) Bool)
(declare-fun IsWandField_5154_1189 (T@Field_13369_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5244_57199 (T@Field_16330_16335) Bool)
(declare-fun IsWandField_5244_57215 (T@Field_16330_16335) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5244_10056 (T@Field_5244_10056) Bool)
(declare-fun IsWandField_5244_10056 (T@Field_5244_10056) Bool)
(declare-fun IsPredicateField_5244_53 (T@Field_5244_53) Bool)
(declare-fun IsWandField_5244_53 (T@Field_5244_53) Bool)
(declare-fun IsPredicateField_5244_1189 (T@Field_5244_1189) Bool)
(declare-fun IsWandField_5244_1189 (T@Field_5244_1189) Bool)
(declare-fun IsPredicateField_5207_56368 (T@Field_14997_15002) Bool)
(declare-fun IsWandField_5207_56384 (T@Field_14997_15002) Bool)
(declare-fun IsPredicateField_5207_10056 (T@Field_5207_10056) Bool)
(declare-fun IsWandField_5207_10056 (T@Field_5207_10056) Bool)
(declare-fun IsPredicateField_5207_53 (T@Field_5207_53) Bool)
(declare-fun IsWandField_5207_53 (T@Field_5207_53) Bool)
(declare-fun IsPredicateField_5207_1189 (T@Field_5207_1189) Bool)
(declare-fun IsWandField_5207_1189 (T@Field_5207_1189) Bool)
(declare-fun IsPredicateField_5181_55537 (T@Field_13901_13906) Bool)
(declare-fun IsWandField_5181_55553 (T@Field_13901_13906) Bool)
(declare-fun IsPredicateField_5181_10056 (T@Field_5181_10056) Bool)
(declare-fun IsWandField_5181_10056 (T@Field_5181_10056) Bool)
(declare-fun IsPredicateField_5181_53 (T@Field_5181_53) Bool)
(declare-fun IsWandField_5181_53 (T@Field_5181_53) Bool)
(declare-fun IsPredicateField_5181_1189 (T@Field_5181_1189) Bool)
(declare-fun IsWandField_5181_1189 (T@Field_5181_1189) Bool)
(declare-fun IsPredicateField_5154_54706 (T@Field_5154_13906) Bool)
(declare-fun IsWandField_5154_54722 (T@Field_5154_13906) Bool)
(declare-fun IsPredicateField_5154_10056 (T@Field_10055_10056) Bool)
(declare-fun IsWandField_5154_10056 (T@Field_10055_10056) Bool)
(declare-fun IsPredicateField_5154_53 (T@Field_10042_53) Bool)
(declare-fun IsWandField_5154_53 (T@Field_10042_53) Bool)
(declare-fun HasDirectPerm_5244_35488 (T@PolymorphicMapType_10003 T@Ref T@Field_16330_16335) Bool)
(declare-fun HasDirectPerm_5244_10056 (T@PolymorphicMapType_10003 T@Ref T@Field_5244_10056) Bool)
(declare-fun HasDirectPerm_5244_53 (T@PolymorphicMapType_10003 T@Ref T@Field_5244_53) Bool)
(declare-fun HasDirectPerm_5244_1189 (T@PolymorphicMapType_10003 T@Ref T@Field_5244_1189) Bool)
(declare-fun HasDirectPerm_5207_34347 (T@PolymorphicMapType_10003 T@Ref T@Field_14997_15002) Bool)
(declare-fun HasDirectPerm_5207_10056 (T@PolymorphicMapType_10003 T@Ref T@Field_5207_10056) Bool)
(declare-fun HasDirectPerm_5207_53 (T@PolymorphicMapType_10003 T@Ref T@Field_5207_53) Bool)
(declare-fun HasDirectPerm_5207_1189 (T@PolymorphicMapType_10003 T@Ref T@Field_5207_1189) Bool)
(declare-fun HasDirectPerm_5181_33206 (T@PolymorphicMapType_10003 T@Ref T@Field_13901_13906) Bool)
(declare-fun HasDirectPerm_5181_10056 (T@PolymorphicMapType_10003 T@Ref T@Field_5181_10056) Bool)
(declare-fun HasDirectPerm_5181_53 (T@PolymorphicMapType_10003 T@Ref T@Field_5181_53) Bool)
(declare-fun HasDirectPerm_5181_1189 (T@PolymorphicMapType_10003 T@Ref T@Field_5181_1189) Bool)
(declare-fun HasDirectPerm_5154_32065 (T@PolymorphicMapType_10003 T@Ref T@Field_5154_13906) Bool)
(declare-fun HasDirectPerm_5154_10056 (T@PolymorphicMapType_10003 T@Ref T@Field_10055_10056) Bool)
(declare-fun HasDirectPerm_5154_53 (T@PolymorphicMapType_10003 T@Ref T@Field_10042_53) Bool)
(declare-fun HasDirectPerm_5154_1189 (T@PolymorphicMapType_10003 T@Ref T@Field_13369_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10003 T@PolymorphicMapType_10003 T@PolymorphicMapType_10003) Bool)
(declare-fun getPredWandId_5181_5182 (T@Field_13888_13889) Int)
(declare-fun getPredWandId_5207_5208 (T@Field_14983_14984) Int)
(declare-fun getPredWandId_5244_5245 (T@Field_16316_16317) Int)
(declare-fun |fun#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun InsidePredicate_16316_14983 (T@Field_16316_16317 T@FrameType T@Field_14983_14984 T@FrameType) Bool)
(declare-fun InsidePredicate_16316_13888 (T@Field_16316_16317 T@FrameType T@Field_13888_13889 T@FrameType) Bool)
(declare-fun InsidePredicate_16316_10042 (T@Field_16316_16317 T@FrameType T@Field_5154_5182 T@FrameType) Bool)
(declare-fun InsidePredicate_14983_16316 (T@Field_14983_14984 T@FrameType T@Field_16316_16317 T@FrameType) Bool)
(declare-fun InsidePredicate_14983_13888 (T@Field_14983_14984 T@FrameType T@Field_13888_13889 T@FrameType) Bool)
(declare-fun InsidePredicate_14983_10042 (T@Field_14983_14984 T@FrameType T@Field_5154_5182 T@FrameType) Bool)
(declare-fun InsidePredicate_13888_16316 (T@Field_13888_13889 T@FrameType T@Field_16316_16317 T@FrameType) Bool)
(declare-fun InsidePredicate_13888_14983 (T@Field_13888_13889 T@FrameType T@Field_14983_14984 T@FrameType) Bool)
(declare-fun InsidePredicate_13888_10042 (T@Field_13888_13889 T@FrameType T@Field_5154_5182 T@FrameType) Bool)
(declare-fun InsidePredicate_10042_16316 (T@Field_5154_5182 T@FrameType T@Field_16316_16317 T@FrameType) Bool)
(declare-fun InsidePredicate_10042_14983 (T@Field_5154_5182 T@FrameType T@Field_14983_14984 T@FrameType) Bool)
(declare-fun InsidePredicate_10042_13888 (T@Field_5154_5182 T@FrameType T@Field_13888_13889 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9982) (Heap1 T@PolymorphicMapType_9982) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9982) (Mask T@PolymorphicMapType_10003) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9982) (Heap1@@0 T@PolymorphicMapType_9982) (Heap2 T@PolymorphicMapType_9982) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16330_16335) ) (!  (not (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16316_16317) ) (!  (not (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5244_1189) ) (!  (not (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5244_10056) ) (!  (not (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5244_53) ) (!  (not (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_14997_15002) ) (!  (not (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_14983_14984) ) (!  (not (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5207_1189) ) (!  (not (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_5207_10056) ) (!  (not (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_5207_53) ) (!  (not (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_13901_13906) ) (!  (not (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_13888_13889) ) (!  (not (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5181_1189) ) (!  (not (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5181_10056) ) (!  (not (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5181_53) ) (!  (not (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5154_13906) ) (!  (not (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5154_5182) ) (!  (not (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_13369_1189) ) (!  (not (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10055_10056) ) (!  (not (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10042_53) ) (!  (not (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((x T@Ref) (i Int) ) (! (IsPredicateField_5181_5182 (p1 x i))
 :qid |stdinbpl.240:15|
 :skolemid |26|
 :pattern ( (p1 x i))
)))
(assert (forall ((x@@0 T@Ref) (y T@Ref) ) (! (IsPredicateField_5207_5208 (p2 x@@0 y))
 :qid |stdinbpl.300:15|
 :skolemid |32|
 :pattern ( (p2 x@@0 y))
)))
(assert (forall ((x@@1 T@Ref) (y@@0 T@Ref) ) (! (IsPredicateField_5244_5245 (p3_1 x@@1 y@@0))
 :qid |stdinbpl.367:15|
 :skolemid |38|
 :pattern ( (p3_1 x@@1 y@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9982) (x@@2 T@Ref) (i@@0 Int) ) (! (|p1#everUsed_5181| (p1 x@@2 i@@0))
 :qid |stdinbpl.259:15|
 :skolemid |30|
 :pattern ( (|p1#trigger_5181| Heap@@0 (p1 x@@2 i@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9982) (x@@3 T@Ref) (y@@1 T@Ref) ) (! (|p2#everUsed_5207| (p2 x@@3 y@@1))
 :qid |stdinbpl.319:15|
 :skolemid |36|
 :pattern ( (|p2#trigger_5207| Heap@@1 (p2 x@@3 y@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9982) (x@@4 T@Ref) (y@@2 T@Ref) ) (! (|p3#everUsed_5244| (p3_1 x@@4 y@@2))
 :qid |stdinbpl.386:15|
 :skolemid |42|
 :pattern ( (|p3#trigger_5244| Heap@@2 (p3_1 x@@4 y@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9982) (x@@5 T@Ref) ) (! (dummyFunction_5175 (|fun#triggerStateless| x@@5))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|fun'| Heap@@3 x@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9982) (x@@6 T@Ref) ) (!  (and (= (fun Heap@@4 x@@6) (|fun'| Heap@@4 x@@6)) (dummyFunction_5175 (|fun#triggerStateless| x@@6)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (fun Heap@@4 x@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9982) (ExhaleHeap T@PolymorphicMapType_9982) (Mask@@0 T@PolymorphicMapType_10003) (pm_f_10 T@Field_16316_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5244_5245 Mask@@0 null pm_f_10) (IsPredicateField_5244_5245 pm_f_10)) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@5) null (PredicateMaskField_5244 pm_f_10)) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap) null (PredicateMaskField_5244 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (IsPredicateField_5244_5245 pm_f_10) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap) null (PredicateMaskField_5244 pm_f_10)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9982) (ExhaleHeap@@0 T@PolymorphicMapType_9982) (Mask@@1 T@PolymorphicMapType_10003) (pm_f_10@@0 T@Field_14983_14984) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5207_5208 Mask@@1 null pm_f_10@@0) (IsPredicateField_5207_5208 pm_f_10@@0)) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@6) null (PredicateMaskField_5207 pm_f_10@@0)) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@0) null (PredicateMaskField_5207 pm_f_10@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5207_5208 pm_f_10@@0) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@0) null (PredicateMaskField_5207 pm_f_10@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9982) (ExhaleHeap@@1 T@PolymorphicMapType_9982) (Mask@@2 T@PolymorphicMapType_10003) (pm_f_10@@1 T@Field_13888_13889) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5181_5182 Mask@@2 null pm_f_10@@1) (IsPredicateField_5181_5182 pm_f_10@@1)) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@7) null (PredicateMaskField_5181 pm_f_10@@1)) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@1) null (PredicateMaskField_5181 pm_f_10@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5181_5182 pm_f_10@@1) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@1) null (PredicateMaskField_5181 pm_f_10@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9982) (ExhaleHeap@@2 T@PolymorphicMapType_9982) (Mask@@3 T@PolymorphicMapType_10003) (pm_f_10@@2 T@Field_5154_5182) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5154_5182 Mask@@3 null pm_f_10@@2) (IsPredicateField_5154_35776 pm_f_10@@2)) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@8) null (PredicateMaskField_5154 pm_f_10@@2)) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@2) null (PredicateMaskField_5154 pm_f_10@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (IsPredicateField_5154_35776 pm_f_10@@2) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@2) null (PredicateMaskField_5154 pm_f_10@@2)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9982) (ExhaleHeap@@3 T@PolymorphicMapType_9982) (Mask@@4 T@PolymorphicMapType_10003) (pm_f_10@@3 T@Field_16316_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5244_5245 Mask@@4 null pm_f_10@@3) (IsWandField_5244_43495 pm_f_10@@3)) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@9) null (WandMaskField_5244 pm_f_10@@3)) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@3) null (WandMaskField_5244 pm_f_10@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (IsWandField_5244_43495 pm_f_10@@3) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@3) null (WandMaskField_5244 pm_f_10@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9982) (ExhaleHeap@@4 T@PolymorphicMapType_9982) (Mask@@5 T@PolymorphicMapType_10003) (pm_f_10@@4 T@Field_14983_14984) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5207_5208 Mask@@5 null pm_f_10@@4) (IsWandField_5207_43138 pm_f_10@@4)) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@10) null (WandMaskField_5207 pm_f_10@@4)) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@4) null (WandMaskField_5207 pm_f_10@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (IsWandField_5207_43138 pm_f_10@@4) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@4) null (WandMaskField_5207 pm_f_10@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9982) (ExhaleHeap@@5 T@PolymorphicMapType_9982) (Mask@@6 T@PolymorphicMapType_10003) (pm_f_10@@5 T@Field_13888_13889) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5181_5182 Mask@@6 null pm_f_10@@5) (IsWandField_5181_42781 pm_f_10@@5)) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@11) null (WandMaskField_5181 pm_f_10@@5)) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@5) null (WandMaskField_5181 pm_f_10@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (IsWandField_5181_42781 pm_f_10@@5) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@5) null (WandMaskField_5181 pm_f_10@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9982) (ExhaleHeap@@6 T@PolymorphicMapType_9982) (Mask@@7 T@PolymorphicMapType_10003) (pm_f_10@@6 T@Field_5154_5182) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5154_5182 Mask@@7 null pm_f_10@@6) (IsWandField_5154_42424 pm_f_10@@6)) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@12) null (WandMaskField_5154 pm_f_10@@6)) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@6) null (WandMaskField_5154 pm_f_10@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (IsWandField_5154_42424 pm_f_10@@6) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@6) null (WandMaskField_5154 pm_f_10@@6)))
)))
(assert (forall ((x@@7 T@Ref) (i@@1 Int) (x2 T@Ref) (i2 Int) ) (!  (=> (= (p1 x@@7 i@@1) (p1 x2 i2)) (and (= x@@7 x2) (= i@@1 i2)))
 :qid |stdinbpl.250:15|
 :skolemid |28|
 :pattern ( (p1 x@@7 i@@1) (p1 x2 i2))
)))
(assert (forall ((x@@8 T@Ref) (i@@2 Int) (x2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|p1#sm| x@@8 i@@2) (|p1#sm| x2@@0 i2@@0)) (and (= x@@8 x2@@0) (= i@@2 i2@@0)))
 :qid |stdinbpl.254:15|
 :skolemid |29|
 :pattern ( (|p1#sm| x@@8 i@@2) (|p1#sm| x2@@0 i2@@0))
)))
(assert (forall ((x@@9 T@Ref) (y@@3 T@Ref) (x2@@1 T@Ref) (y2 T@Ref) ) (!  (=> (= (p2 x@@9 y@@3) (p2 x2@@1 y2)) (and (= x@@9 x2@@1) (= y@@3 y2)))
 :qid |stdinbpl.310:15|
 :skolemid |34|
 :pattern ( (p2 x@@9 y@@3) (p2 x2@@1 y2))
)))
(assert (forall ((x@@10 T@Ref) (y@@4 T@Ref) (x2@@2 T@Ref) (y2@@0 T@Ref) ) (!  (=> (= (|p2#sm| x@@10 y@@4) (|p2#sm| x2@@2 y2@@0)) (and (= x@@10 x2@@2) (= y@@4 y2@@0)))
 :qid |stdinbpl.314:15|
 :skolemid |35|
 :pattern ( (|p2#sm| x@@10 y@@4) (|p2#sm| x2@@2 y2@@0))
)))
(assert (forall ((x@@11 T@Ref) (y@@5 T@Ref) (x2@@3 T@Ref) (y2@@1 T@Ref) ) (!  (=> (= (p3_1 x@@11 y@@5) (p3_1 x2@@3 y2@@1)) (and (= x@@11 x2@@3) (= y@@5 y2@@1)))
 :qid |stdinbpl.377:15|
 :skolemid |40|
 :pattern ( (p3_1 x@@11 y@@5) (p3_1 x2@@3 y2@@1))
)))
(assert (forall ((x@@12 T@Ref) (y@@6 T@Ref) (x2@@4 T@Ref) (y2@@2 T@Ref) ) (!  (=> (= (|p3#sm| x@@12 y@@6) (|p3#sm| x2@@4 y2@@2)) (and (= x@@12 x2@@4) (= y@@6 y2@@2)))
 :qid |stdinbpl.381:15|
 :skolemid |41|
 :pattern ( (|p3#sm| x@@12 y@@6) (|p3#sm| x2@@4 y2@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9982) (ExhaleHeap@@7 T@PolymorphicMapType_9982) (Mask@@8 T@PolymorphicMapType_10003) (pm_f_10@@7 T@Field_16316_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_5244_5245 Mask@@8 null pm_f_10@@7) (IsPredicateField_5244_5245 pm_f_10@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10 f_15) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@13) o2_10 f_15) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@13) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@13) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@13) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@13) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@3 f_15@@3))
))) (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@13) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@4 f_15@@4))
))) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@13) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@13) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@13) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@13) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@8 f_15@@8))
))) (forall ((o2_10@@9 T@Ref) (f_15@@9 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@9 f_15@@9) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@13) o2_10@@9 f_15@@9) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@9 f_15@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@9 f_15@@9))
))) (forall ((o2_10@@10 T@Ref) (f_15@@10 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@10 f_15@@10) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@13) o2_10@@10 f_15@@10) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@10 f_15@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@10 f_15@@10))
))) (forall ((o2_10@@11 T@Ref) (f_15@@11 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@11 f_15@@11) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@13) o2_10@@11 f_15@@11) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@11 f_15@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@11 f_15@@11))
))) (forall ((o2_10@@12 T@Ref) (f_15@@12 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@12 f_15@@12) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@13) o2_10@@12 f_15@@12) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@12 f_15@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@12 f_15@@12))
))) (forall ((o2_10@@13 T@Ref) (f_15@@13 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@13 f_15@@13) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@13) o2_10@@13 f_15@@13) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@13 f_15@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@13 f_15@@13))
))) (forall ((o2_10@@14 T@Ref) (f_15@@14 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@14 f_15@@14) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@13) o2_10@@14 f_15@@14) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@14 f_15@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@14 f_15@@14))
))) (forall ((o2_10@@15 T@Ref) (f_15@@15 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@15 f_15@@15) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@13) o2_10@@15 f_15@@15) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@15 f_15@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@15 f_15@@15))
))) (forall ((o2_10@@16 T@Ref) (f_15@@16 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@16 f_15@@16) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@13) o2_10@@16 f_15@@16) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@16 f_15@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@16 f_15@@16))
))) (forall ((o2_10@@17 T@Ref) (f_15@@17 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@17 f_15@@17) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@13) o2_10@@17 f_15@@17) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@17 f_15@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@17 f_15@@17))
))) (forall ((o2_10@@18 T@Ref) (f_15@@18 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) null (PredicateMaskField_5244 pm_f_10@@7))) o2_10@@18 f_15@@18) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@13) o2_10@@18 f_15@@18) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@18 f_15@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@7) o2_10@@18 f_15@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (IsPredicateField_5244_5245 pm_f_10@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9982) (ExhaleHeap@@8 T@PolymorphicMapType_9982) (Mask@@9 T@PolymorphicMapType_10003) (pm_f_10@@8 T@Field_14983_14984) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_5207_5208 Mask@@9 null pm_f_10@@8) (IsPredicateField_5207_5208 pm_f_10@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@19 T@Ref) (f_15@@19 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@19 f_15@@19) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@14) o2_10@@19 f_15@@19) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@19 f_15@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@19 f_15@@19))
)) (forall ((o2_10@@20 T@Ref) (f_15@@20 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@20 f_15@@20) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@14) o2_10@@20 f_15@@20) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@20 f_15@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@20 f_15@@20))
))) (forall ((o2_10@@21 T@Ref) (f_15@@21 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@21 f_15@@21) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@14) o2_10@@21 f_15@@21) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@21 f_15@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@21 f_15@@21))
))) (forall ((o2_10@@22 T@Ref) (f_15@@22 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@22 f_15@@22) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@14) o2_10@@22 f_15@@22) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@22 f_15@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@22 f_15@@22))
))) (forall ((o2_10@@23 T@Ref) (f_15@@23 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@23 f_15@@23) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@14) o2_10@@23 f_15@@23) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@23 f_15@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@23 f_15@@23))
))) (forall ((o2_10@@24 T@Ref) (f_15@@24 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@24 f_15@@24) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@14) o2_10@@24 f_15@@24) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@24 f_15@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@24 f_15@@24))
))) (forall ((o2_10@@25 T@Ref) (f_15@@25 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@25 f_15@@25) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@14) o2_10@@25 f_15@@25) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@25 f_15@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@25 f_15@@25))
))) (forall ((o2_10@@26 T@Ref) (f_15@@26 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@26 f_15@@26) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@14) o2_10@@26 f_15@@26) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@26 f_15@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@26 f_15@@26))
))) (forall ((o2_10@@27 T@Ref) (f_15@@27 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@27 f_15@@27) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@14) o2_10@@27 f_15@@27) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@27 f_15@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@27 f_15@@27))
))) (forall ((o2_10@@28 T@Ref) (f_15@@28 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@28 f_15@@28) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@14) o2_10@@28 f_15@@28) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@28 f_15@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@28 f_15@@28))
))) (forall ((o2_10@@29 T@Ref) (f_15@@29 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@29 f_15@@29) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@14) o2_10@@29 f_15@@29) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@29 f_15@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@29 f_15@@29))
))) (forall ((o2_10@@30 T@Ref) (f_15@@30 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@30 f_15@@30) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@14) o2_10@@30 f_15@@30) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@30 f_15@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@30 f_15@@30))
))) (forall ((o2_10@@31 T@Ref) (f_15@@31 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@31 f_15@@31) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@14) o2_10@@31 f_15@@31) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@31 f_15@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@31 f_15@@31))
))) (forall ((o2_10@@32 T@Ref) (f_15@@32 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@32 f_15@@32) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@14) o2_10@@32 f_15@@32) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@32 f_15@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@32 f_15@@32))
))) (forall ((o2_10@@33 T@Ref) (f_15@@33 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@33 f_15@@33) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) o2_10@@33 f_15@@33) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@33 f_15@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@33 f_15@@33))
))) (forall ((o2_10@@34 T@Ref) (f_15@@34 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@34 f_15@@34) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@14) o2_10@@34 f_15@@34) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@34 f_15@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@34 f_15@@34))
))) (forall ((o2_10@@35 T@Ref) (f_15@@35 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@35 f_15@@35) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@14) o2_10@@35 f_15@@35) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@35 f_15@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@35 f_15@@35))
))) (forall ((o2_10@@36 T@Ref) (f_15@@36 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@36 f_15@@36) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@14) o2_10@@36 f_15@@36) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@36 f_15@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@36 f_15@@36))
))) (forall ((o2_10@@37 T@Ref) (f_15@@37 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@37 f_15@@37) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@14) o2_10@@37 f_15@@37) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@37 f_15@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@37 f_15@@37))
))) (forall ((o2_10@@38 T@Ref) (f_15@@38 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@14) null (PredicateMaskField_5207 pm_f_10@@8))) o2_10@@38 f_15@@38) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@14) o2_10@@38 f_15@@38) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@38 f_15@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@8) o2_10@@38 f_15@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (IsPredicateField_5207_5208 pm_f_10@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9982) (ExhaleHeap@@9 T@PolymorphicMapType_9982) (Mask@@10 T@PolymorphicMapType_10003) (pm_f_10@@9 T@Field_13888_13889) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_5181_5182 Mask@@10 null pm_f_10@@9) (IsPredicateField_5181_5182 pm_f_10@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@39 T@Ref) (f_15@@39 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@39 f_15@@39) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@15) o2_10@@39 f_15@@39) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@39 f_15@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@39 f_15@@39))
)) (forall ((o2_10@@40 T@Ref) (f_15@@40 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@40 f_15@@40) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@15) o2_10@@40 f_15@@40) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@40 f_15@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@40 f_15@@40))
))) (forall ((o2_10@@41 T@Ref) (f_15@@41 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@41 f_15@@41) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@15) o2_10@@41 f_15@@41) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@41 f_15@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@41 f_15@@41))
))) (forall ((o2_10@@42 T@Ref) (f_15@@42 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@42 f_15@@42) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@15) o2_10@@42 f_15@@42) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@42 f_15@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@42 f_15@@42))
))) (forall ((o2_10@@43 T@Ref) (f_15@@43 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@43 f_15@@43) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@15) o2_10@@43 f_15@@43) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@43 f_15@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@43 f_15@@43))
))) (forall ((o2_10@@44 T@Ref) (f_15@@44 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@44 f_15@@44) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@15) o2_10@@44 f_15@@44) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@44 f_15@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@44 f_15@@44))
))) (forall ((o2_10@@45 T@Ref) (f_15@@45 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@45 f_15@@45) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@15) o2_10@@45 f_15@@45) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@45 f_15@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@45 f_15@@45))
))) (forall ((o2_10@@46 T@Ref) (f_15@@46 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@46 f_15@@46) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@15) o2_10@@46 f_15@@46) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@46 f_15@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@46 f_15@@46))
))) (forall ((o2_10@@47 T@Ref) (f_15@@47 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@47 f_15@@47) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@15) o2_10@@47 f_15@@47) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@47 f_15@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@47 f_15@@47))
))) (forall ((o2_10@@48 T@Ref) (f_15@@48 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@48 f_15@@48) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) o2_10@@48 f_15@@48) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@48 f_15@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@48 f_15@@48))
))) (forall ((o2_10@@49 T@Ref) (f_15@@49 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@49 f_15@@49) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@15) o2_10@@49 f_15@@49) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@49 f_15@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@49 f_15@@49))
))) (forall ((o2_10@@50 T@Ref) (f_15@@50 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@50 f_15@@50) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@15) o2_10@@50 f_15@@50) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@50 f_15@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@50 f_15@@50))
))) (forall ((o2_10@@51 T@Ref) (f_15@@51 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@51 f_15@@51) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@15) o2_10@@51 f_15@@51) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@51 f_15@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@51 f_15@@51))
))) (forall ((o2_10@@52 T@Ref) (f_15@@52 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@52 f_15@@52) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@15) o2_10@@52 f_15@@52) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@52 f_15@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@52 f_15@@52))
))) (forall ((o2_10@@53 T@Ref) (f_15@@53 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@53 f_15@@53) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@15) o2_10@@53 f_15@@53) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@53 f_15@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@53 f_15@@53))
))) (forall ((o2_10@@54 T@Ref) (f_15@@54 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@54 f_15@@54) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@15) o2_10@@54 f_15@@54) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@54 f_15@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@54 f_15@@54))
))) (forall ((o2_10@@55 T@Ref) (f_15@@55 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@55 f_15@@55) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@15) o2_10@@55 f_15@@55) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@55 f_15@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@55 f_15@@55))
))) (forall ((o2_10@@56 T@Ref) (f_15@@56 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@56 f_15@@56) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@15) o2_10@@56 f_15@@56) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@56 f_15@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@56 f_15@@56))
))) (forall ((o2_10@@57 T@Ref) (f_15@@57 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@57 f_15@@57) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@15) o2_10@@57 f_15@@57) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@57 f_15@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@57 f_15@@57))
))) (forall ((o2_10@@58 T@Ref) (f_15@@58 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@15) null (PredicateMaskField_5181 pm_f_10@@9))) o2_10@@58 f_15@@58) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@15) o2_10@@58 f_15@@58) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@58 f_15@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@9) o2_10@@58 f_15@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (IsPredicateField_5181_5182 pm_f_10@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9982) (ExhaleHeap@@10 T@PolymorphicMapType_9982) (Mask@@11 T@PolymorphicMapType_10003) (pm_f_10@@10 T@Field_5154_5182) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_5154_5182 Mask@@11 null pm_f_10@@10) (IsPredicateField_5154_35776 pm_f_10@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@59 T@Ref) (f_15@@59 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@59 f_15@@59) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@16) o2_10@@59 f_15@@59) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@59 f_15@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@59 f_15@@59))
)) (forall ((o2_10@@60 T@Ref) (f_15@@60 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@60 f_15@@60) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@16) o2_10@@60 f_15@@60) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@60 f_15@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@60 f_15@@60))
))) (forall ((o2_10@@61 T@Ref) (f_15@@61 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@61 f_15@@61) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@16) o2_10@@61 f_15@@61) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@61 f_15@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@61 f_15@@61))
))) (forall ((o2_10@@62 T@Ref) (f_15@@62 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@62 f_15@@62) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@16) o2_10@@62 f_15@@62) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@62 f_15@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@62 f_15@@62))
))) (forall ((o2_10@@63 T@Ref) (f_15@@63 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@63 f_15@@63) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) o2_10@@63 f_15@@63) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@63 f_15@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@63 f_15@@63))
))) (forall ((o2_10@@64 T@Ref) (f_15@@64 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@64 f_15@@64) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@16) o2_10@@64 f_15@@64) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@64 f_15@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@64 f_15@@64))
))) (forall ((o2_10@@65 T@Ref) (f_15@@65 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@65 f_15@@65) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@16) o2_10@@65 f_15@@65) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@65 f_15@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@65 f_15@@65))
))) (forall ((o2_10@@66 T@Ref) (f_15@@66 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@66 f_15@@66) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@16) o2_10@@66 f_15@@66) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@66 f_15@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@66 f_15@@66))
))) (forall ((o2_10@@67 T@Ref) (f_15@@67 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@67 f_15@@67) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@16) o2_10@@67 f_15@@67) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@67 f_15@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@67 f_15@@67))
))) (forall ((o2_10@@68 T@Ref) (f_15@@68 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@68 f_15@@68) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@16) o2_10@@68 f_15@@68) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@68 f_15@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@68 f_15@@68))
))) (forall ((o2_10@@69 T@Ref) (f_15@@69 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@69 f_15@@69) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@16) o2_10@@69 f_15@@69) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@69 f_15@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@69 f_15@@69))
))) (forall ((o2_10@@70 T@Ref) (f_15@@70 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@70 f_15@@70) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@16) o2_10@@70 f_15@@70) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@70 f_15@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@70 f_15@@70))
))) (forall ((o2_10@@71 T@Ref) (f_15@@71 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@71 f_15@@71) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@16) o2_10@@71 f_15@@71) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@71 f_15@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@71 f_15@@71))
))) (forall ((o2_10@@72 T@Ref) (f_15@@72 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@72 f_15@@72) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@16) o2_10@@72 f_15@@72) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@72 f_15@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@72 f_15@@72))
))) (forall ((o2_10@@73 T@Ref) (f_15@@73 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@73 f_15@@73) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@16) o2_10@@73 f_15@@73) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@73 f_15@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@73 f_15@@73))
))) (forall ((o2_10@@74 T@Ref) (f_15@@74 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@74 f_15@@74) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@16) o2_10@@74 f_15@@74) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@74 f_15@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@74 f_15@@74))
))) (forall ((o2_10@@75 T@Ref) (f_15@@75 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@75 f_15@@75) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@16) o2_10@@75 f_15@@75) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@75 f_15@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@75 f_15@@75))
))) (forall ((o2_10@@76 T@Ref) (f_15@@76 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@76 f_15@@76) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@16) o2_10@@76 f_15@@76) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@76 f_15@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@76 f_15@@76))
))) (forall ((o2_10@@77 T@Ref) (f_15@@77 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@77 f_15@@77) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@16) o2_10@@77 f_15@@77) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@77 f_15@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@77 f_15@@77))
))) (forall ((o2_10@@78 T@Ref) (f_15@@78 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@16) null (PredicateMaskField_5154 pm_f_10@@10))) o2_10@@78 f_15@@78) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@16) o2_10@@78 f_15@@78) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@78 f_15@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@10) o2_10@@78 f_15@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (IsPredicateField_5154_35776 pm_f_10@@10))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9982) (ExhaleHeap@@11 T@PolymorphicMapType_9982) (Mask@@12 T@PolymorphicMapType_10003) (pm_f_10@@11 T@Field_16316_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_5244_5245 Mask@@12 null pm_f_10@@11) (IsWandField_5244_43495 pm_f_10@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@79 T@Ref) (f_15@@79 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@79 f_15@@79) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@17) o2_10@@79 f_15@@79) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@79 f_15@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@79 f_15@@79))
)) (forall ((o2_10@@80 T@Ref) (f_15@@80 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@80 f_15@@80) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@17) o2_10@@80 f_15@@80) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@80 f_15@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@80 f_15@@80))
))) (forall ((o2_10@@81 T@Ref) (f_15@@81 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@81 f_15@@81) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@17) o2_10@@81 f_15@@81) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@81 f_15@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@81 f_15@@81))
))) (forall ((o2_10@@82 T@Ref) (f_15@@82 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@82 f_15@@82) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@17) o2_10@@82 f_15@@82) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@82 f_15@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@82 f_15@@82))
))) (forall ((o2_10@@83 T@Ref) (f_15@@83 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@83 f_15@@83) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@17) o2_10@@83 f_15@@83) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@83 f_15@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@83 f_15@@83))
))) (forall ((o2_10@@84 T@Ref) (f_15@@84 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@84 f_15@@84) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@17) o2_10@@84 f_15@@84) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@84 f_15@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@84 f_15@@84))
))) (forall ((o2_10@@85 T@Ref) (f_15@@85 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@85 f_15@@85) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@17) o2_10@@85 f_15@@85) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@85 f_15@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@85 f_15@@85))
))) (forall ((o2_10@@86 T@Ref) (f_15@@86 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@86 f_15@@86) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@17) o2_10@@86 f_15@@86) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@86 f_15@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@86 f_15@@86))
))) (forall ((o2_10@@87 T@Ref) (f_15@@87 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@87 f_15@@87) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@17) o2_10@@87 f_15@@87) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@87 f_15@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@87 f_15@@87))
))) (forall ((o2_10@@88 T@Ref) (f_15@@88 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@88 f_15@@88) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@17) o2_10@@88 f_15@@88) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@88 f_15@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@88 f_15@@88))
))) (forall ((o2_10@@89 T@Ref) (f_15@@89 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@89 f_15@@89) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@17) o2_10@@89 f_15@@89) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@89 f_15@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@89 f_15@@89))
))) (forall ((o2_10@@90 T@Ref) (f_15@@90 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@90 f_15@@90) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@17) o2_10@@90 f_15@@90) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@90 f_15@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@90 f_15@@90))
))) (forall ((o2_10@@91 T@Ref) (f_15@@91 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@91 f_15@@91) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@17) o2_10@@91 f_15@@91) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@91 f_15@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@91 f_15@@91))
))) (forall ((o2_10@@92 T@Ref) (f_15@@92 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@92 f_15@@92) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@17) o2_10@@92 f_15@@92) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@92 f_15@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@92 f_15@@92))
))) (forall ((o2_10@@93 T@Ref) (f_15@@93 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@93 f_15@@93) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@17) o2_10@@93 f_15@@93) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@93 f_15@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@93 f_15@@93))
))) (forall ((o2_10@@94 T@Ref) (f_15@@94 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@94 f_15@@94) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@17) o2_10@@94 f_15@@94) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@94 f_15@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@94 f_15@@94))
))) (forall ((o2_10@@95 T@Ref) (f_15@@95 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@95 f_15@@95) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@17) o2_10@@95 f_15@@95) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@95 f_15@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@95 f_15@@95))
))) (forall ((o2_10@@96 T@Ref) (f_15@@96 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@96 f_15@@96) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@17) o2_10@@96 f_15@@96) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@96 f_15@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@96 f_15@@96))
))) (forall ((o2_10@@97 T@Ref) (f_15@@97 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@97 f_15@@97) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@17) o2_10@@97 f_15@@97) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@97 f_15@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@97 f_15@@97))
))) (forall ((o2_10@@98 T@Ref) (f_15@@98 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) null (WandMaskField_5244 pm_f_10@@11))) o2_10@@98 f_15@@98) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@17) o2_10@@98 f_15@@98) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@98 f_15@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@11) o2_10@@98 f_15@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (IsWandField_5244_43495 pm_f_10@@11))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9982) (ExhaleHeap@@12 T@PolymorphicMapType_9982) (Mask@@13 T@PolymorphicMapType_10003) (pm_f_10@@12 T@Field_14983_14984) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_5207_5208 Mask@@13 null pm_f_10@@12) (IsWandField_5207_43138 pm_f_10@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@99 T@Ref) (f_15@@99 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@99 f_15@@99) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@18) o2_10@@99 f_15@@99) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@99 f_15@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@99 f_15@@99))
)) (forall ((o2_10@@100 T@Ref) (f_15@@100 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@100 f_15@@100) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@18) o2_10@@100 f_15@@100) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@100 f_15@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@100 f_15@@100))
))) (forall ((o2_10@@101 T@Ref) (f_15@@101 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@101 f_15@@101) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@18) o2_10@@101 f_15@@101) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@101 f_15@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@101 f_15@@101))
))) (forall ((o2_10@@102 T@Ref) (f_15@@102 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@102 f_15@@102) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@18) o2_10@@102 f_15@@102) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@102 f_15@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@102 f_15@@102))
))) (forall ((o2_10@@103 T@Ref) (f_15@@103 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@103 f_15@@103) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@18) o2_10@@103 f_15@@103) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@103 f_15@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@103 f_15@@103))
))) (forall ((o2_10@@104 T@Ref) (f_15@@104 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@104 f_15@@104) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@18) o2_10@@104 f_15@@104) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@104 f_15@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@104 f_15@@104))
))) (forall ((o2_10@@105 T@Ref) (f_15@@105 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@105 f_15@@105) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@18) o2_10@@105 f_15@@105) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@105 f_15@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@105 f_15@@105))
))) (forall ((o2_10@@106 T@Ref) (f_15@@106 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@106 f_15@@106) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@18) o2_10@@106 f_15@@106) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@106 f_15@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@106 f_15@@106))
))) (forall ((o2_10@@107 T@Ref) (f_15@@107 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@107 f_15@@107) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@18) o2_10@@107 f_15@@107) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@107 f_15@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@107 f_15@@107))
))) (forall ((o2_10@@108 T@Ref) (f_15@@108 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@108 f_15@@108) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@18) o2_10@@108 f_15@@108) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@108 f_15@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@108 f_15@@108))
))) (forall ((o2_10@@109 T@Ref) (f_15@@109 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@109 f_15@@109) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@18) o2_10@@109 f_15@@109) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@109 f_15@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@109 f_15@@109))
))) (forall ((o2_10@@110 T@Ref) (f_15@@110 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@110 f_15@@110) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@18) o2_10@@110 f_15@@110) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@110 f_15@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@110 f_15@@110))
))) (forall ((o2_10@@111 T@Ref) (f_15@@111 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@111 f_15@@111) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@18) o2_10@@111 f_15@@111) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@111 f_15@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@111 f_15@@111))
))) (forall ((o2_10@@112 T@Ref) (f_15@@112 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@112 f_15@@112) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@18) o2_10@@112 f_15@@112) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@112 f_15@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@112 f_15@@112))
))) (forall ((o2_10@@113 T@Ref) (f_15@@113 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@113 f_15@@113) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) o2_10@@113 f_15@@113) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@113 f_15@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@113 f_15@@113))
))) (forall ((o2_10@@114 T@Ref) (f_15@@114 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@114 f_15@@114) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@18) o2_10@@114 f_15@@114) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@114 f_15@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@114 f_15@@114))
))) (forall ((o2_10@@115 T@Ref) (f_15@@115 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@115 f_15@@115) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@18) o2_10@@115 f_15@@115) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@115 f_15@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@115 f_15@@115))
))) (forall ((o2_10@@116 T@Ref) (f_15@@116 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@116 f_15@@116) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@18) o2_10@@116 f_15@@116) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@116 f_15@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@116 f_15@@116))
))) (forall ((o2_10@@117 T@Ref) (f_15@@117 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@117 f_15@@117) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@18) o2_10@@117 f_15@@117) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@117 f_15@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@117 f_15@@117))
))) (forall ((o2_10@@118 T@Ref) (f_15@@118 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@18) null (WandMaskField_5207 pm_f_10@@12))) o2_10@@118 f_15@@118) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@18) o2_10@@118 f_15@@118) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@118 f_15@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@12) o2_10@@118 f_15@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13) (IsWandField_5207_43138 pm_f_10@@12))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9982) (ExhaleHeap@@13 T@PolymorphicMapType_9982) (Mask@@14 T@PolymorphicMapType_10003) (pm_f_10@@13 T@Field_13888_13889) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_5181_5182 Mask@@14 null pm_f_10@@13) (IsWandField_5181_42781 pm_f_10@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@119 T@Ref) (f_15@@119 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@119 f_15@@119) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@19) o2_10@@119 f_15@@119) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@119 f_15@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@119 f_15@@119))
)) (forall ((o2_10@@120 T@Ref) (f_15@@120 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@120 f_15@@120) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@19) o2_10@@120 f_15@@120) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@120 f_15@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@120 f_15@@120))
))) (forall ((o2_10@@121 T@Ref) (f_15@@121 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@121 f_15@@121) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@19) o2_10@@121 f_15@@121) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@121 f_15@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@121 f_15@@121))
))) (forall ((o2_10@@122 T@Ref) (f_15@@122 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@122 f_15@@122) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@19) o2_10@@122 f_15@@122) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@122 f_15@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@122 f_15@@122))
))) (forall ((o2_10@@123 T@Ref) (f_15@@123 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@123 f_15@@123) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@19) o2_10@@123 f_15@@123) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@123 f_15@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@123 f_15@@123))
))) (forall ((o2_10@@124 T@Ref) (f_15@@124 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@124 f_15@@124) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@19) o2_10@@124 f_15@@124) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@124 f_15@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@124 f_15@@124))
))) (forall ((o2_10@@125 T@Ref) (f_15@@125 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@125 f_15@@125) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@19) o2_10@@125 f_15@@125) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@125 f_15@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@125 f_15@@125))
))) (forall ((o2_10@@126 T@Ref) (f_15@@126 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@126 f_15@@126) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@19) o2_10@@126 f_15@@126) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@126 f_15@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@126 f_15@@126))
))) (forall ((o2_10@@127 T@Ref) (f_15@@127 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@127 f_15@@127) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@19) o2_10@@127 f_15@@127) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@127 f_15@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@127 f_15@@127))
))) (forall ((o2_10@@128 T@Ref) (f_15@@128 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@128 f_15@@128) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) o2_10@@128 f_15@@128) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@128 f_15@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@128 f_15@@128))
))) (forall ((o2_10@@129 T@Ref) (f_15@@129 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@129 f_15@@129) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@19) o2_10@@129 f_15@@129) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@129 f_15@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@129 f_15@@129))
))) (forall ((o2_10@@130 T@Ref) (f_15@@130 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@130 f_15@@130) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@19) o2_10@@130 f_15@@130) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@130 f_15@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@130 f_15@@130))
))) (forall ((o2_10@@131 T@Ref) (f_15@@131 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@131 f_15@@131) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@19) o2_10@@131 f_15@@131) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@131 f_15@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@131 f_15@@131))
))) (forall ((o2_10@@132 T@Ref) (f_15@@132 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@132 f_15@@132) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@19) o2_10@@132 f_15@@132) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@132 f_15@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@132 f_15@@132))
))) (forall ((o2_10@@133 T@Ref) (f_15@@133 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@133 f_15@@133) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@19) o2_10@@133 f_15@@133) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@133 f_15@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@133 f_15@@133))
))) (forall ((o2_10@@134 T@Ref) (f_15@@134 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@134 f_15@@134) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@19) o2_10@@134 f_15@@134) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@134 f_15@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@134 f_15@@134))
))) (forall ((o2_10@@135 T@Ref) (f_15@@135 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@135 f_15@@135) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@19) o2_10@@135 f_15@@135) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@135 f_15@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@135 f_15@@135))
))) (forall ((o2_10@@136 T@Ref) (f_15@@136 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@136 f_15@@136) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@19) o2_10@@136 f_15@@136) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@136 f_15@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@136 f_15@@136))
))) (forall ((o2_10@@137 T@Ref) (f_15@@137 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@137 f_15@@137) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@19) o2_10@@137 f_15@@137) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@137 f_15@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@137 f_15@@137))
))) (forall ((o2_10@@138 T@Ref) (f_15@@138 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@19) null (WandMaskField_5181 pm_f_10@@13))) o2_10@@138 f_15@@138) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@19) o2_10@@138 f_15@@138) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@138 f_15@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@13) o2_10@@138 f_15@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@14) (IsWandField_5181_42781 pm_f_10@@13))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9982) (ExhaleHeap@@14 T@PolymorphicMapType_9982) (Mask@@15 T@PolymorphicMapType_10003) (pm_f_10@@14 T@Field_5154_5182) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_5154_5182 Mask@@15 null pm_f_10@@14) (IsWandField_5154_42424 pm_f_10@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_10@@139 T@Ref) (f_15@@139 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@139 f_15@@139) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@20) o2_10@@139 f_15@@139) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@139 f_15@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@139 f_15@@139))
)) (forall ((o2_10@@140 T@Ref) (f_15@@140 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@140 f_15@@140) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@20) o2_10@@140 f_15@@140) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@140 f_15@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@140 f_15@@140))
))) (forall ((o2_10@@141 T@Ref) (f_15@@141 T@Field_13369_1189) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@141 f_15@@141) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@20) o2_10@@141 f_15@@141) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@141 f_15@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@141 f_15@@141))
))) (forall ((o2_10@@142 T@Ref) (f_15@@142 T@Field_5154_5182) ) (!  (=> (select (|PolymorphicMapType_10531_10042_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@142 f_15@@142) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@20) o2_10@@142 f_15@@142) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@142 f_15@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@142 f_15@@142))
))) (forall ((o2_10@@143 T@Ref) (f_15@@143 T@Field_5154_13906) ) (!  (=> (select (|PolymorphicMapType_10531_10042_37910#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@143 f_15@@143) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) o2_10@@143 f_15@@143) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@143 f_15@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@143 f_15@@143))
))) (forall ((o2_10@@144 T@Ref) (f_15@@144 T@Field_5181_53) ) (!  (=> (select (|PolymorphicMapType_10531_13888_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@144 f_15@@144) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@20) o2_10@@144 f_15@@144) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@144 f_15@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@144 f_15@@144))
))) (forall ((o2_10@@145 T@Ref) (f_15@@145 T@Field_5181_10056) ) (!  (=> (select (|PolymorphicMapType_10531_13888_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@145 f_15@@145) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@20) o2_10@@145 f_15@@145) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@145 f_15@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@145 f_15@@145))
))) (forall ((o2_10@@146 T@Ref) (f_15@@146 T@Field_5181_1189) ) (!  (=> (select (|PolymorphicMapType_10531_13888_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@146 f_15@@146) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@20) o2_10@@146 f_15@@146) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@146 f_15@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@146 f_15@@146))
))) (forall ((o2_10@@147 T@Ref) (f_15@@147 T@Field_13888_13889) ) (!  (=> (select (|PolymorphicMapType_10531_13888_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@147 f_15@@147) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@20) o2_10@@147 f_15@@147) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@147 f_15@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@147 f_15@@147))
))) (forall ((o2_10@@148 T@Ref) (f_15@@148 T@Field_13901_13906) ) (!  (=> (select (|PolymorphicMapType_10531_13888_38958#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@148 f_15@@148) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@20) o2_10@@148 f_15@@148) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@148 f_15@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@148 f_15@@148))
))) (forall ((o2_10@@149 T@Ref) (f_15@@149 T@Field_5207_53) ) (!  (=> (select (|PolymorphicMapType_10531_14983_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@149 f_15@@149) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@20) o2_10@@149 f_15@@149) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@149 f_15@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@149 f_15@@149))
))) (forall ((o2_10@@150 T@Ref) (f_15@@150 T@Field_5207_10056) ) (!  (=> (select (|PolymorphicMapType_10531_14983_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@150 f_15@@150) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@20) o2_10@@150 f_15@@150) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@150 f_15@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@150 f_15@@150))
))) (forall ((o2_10@@151 T@Ref) (f_15@@151 T@Field_5207_1189) ) (!  (=> (select (|PolymorphicMapType_10531_14983_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@151 f_15@@151) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@20) o2_10@@151 f_15@@151) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@151 f_15@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@151 f_15@@151))
))) (forall ((o2_10@@152 T@Ref) (f_15@@152 T@Field_14983_14984) ) (!  (=> (select (|PolymorphicMapType_10531_14983_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@152 f_15@@152) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@20) o2_10@@152 f_15@@152) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@152 f_15@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@152 f_15@@152))
))) (forall ((o2_10@@153 T@Ref) (f_15@@153 T@Field_14997_15002) ) (!  (=> (select (|PolymorphicMapType_10531_14983_40006#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@153 f_15@@153) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@20) o2_10@@153 f_15@@153) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@153 f_15@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@153 f_15@@153))
))) (forall ((o2_10@@154 T@Ref) (f_15@@154 T@Field_5244_53) ) (!  (=> (select (|PolymorphicMapType_10531_16316_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@154 f_15@@154) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@20) o2_10@@154 f_15@@154) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@154 f_15@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@154 f_15@@154))
))) (forall ((o2_10@@155 T@Ref) (f_15@@155 T@Field_5244_10056) ) (!  (=> (select (|PolymorphicMapType_10531_16316_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@155 f_15@@155) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@20) o2_10@@155 f_15@@155) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@155 f_15@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@155 f_15@@155))
))) (forall ((o2_10@@156 T@Ref) (f_15@@156 T@Field_5244_1189) ) (!  (=> (select (|PolymorphicMapType_10531_16316_1189#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@156 f_15@@156) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@20) o2_10@@156 f_15@@156) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@156 f_15@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@156 f_15@@156))
))) (forall ((o2_10@@157 T@Ref) (f_15@@157 T@Field_16316_16317) ) (!  (=> (select (|PolymorphicMapType_10531_16316_13889#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@157 f_15@@157) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@20) o2_10@@157 f_15@@157) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@157 f_15@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@157 f_15@@157))
))) (forall ((o2_10@@158 T@Ref) (f_15@@158 T@Field_16330_16335) ) (!  (=> (select (|PolymorphicMapType_10531_16316_41054#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@20) null (WandMaskField_5154 pm_f_10@@14))) o2_10@@158 f_15@@158) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@20) o2_10@@158 f_15@@158) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@158 f_15@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@14) o2_10@@158 f_15@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@15) (IsWandField_5154_42424 pm_f_10@@14))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9982) (ExhaleHeap@@15 T@PolymorphicMapType_9982) (Mask@@16 T@PolymorphicMapType_10003) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@21) o_23 $allocated) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@15) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@15) o_23 $allocated))
)))
(assert (forall ((p T@Field_16316_16317) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16316_16316 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16316_16316 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14983_14984) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_14983_14983 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14983_14983 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_13888_13889) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_13888_13888 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13888_13888 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_5154_5182) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_10042_10042 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10042_10042 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_5154_1189 f_7)))
(assert  (not (IsWandField_5154_1189 f_7)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9982) (ExhaleHeap@@16 T@PolymorphicMapType_9982) (Mask@@17 T@PolymorphicMapType_10003) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@22 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10003) (o_2@@19 T@Ref) (f_4@@19 T@Field_16330_16335) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5244_57199 f_4@@19))) (not (IsWandField_5244_57215 f_4@@19))) (<= (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10003) (o_2@@20 T@Ref) (f_4@@20 T@Field_5244_10056) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5244_10056 f_4@@20))) (not (IsWandField_5244_10056 f_4@@20))) (<= (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10003) (o_2@@21 T@Ref) (f_4@@21 T@Field_5244_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5244_53 f_4@@21))) (not (IsWandField_5244_53 f_4@@21))) (<= (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10003) (o_2@@22 T@Ref) (f_4@@22 T@Field_16316_16317) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5244_5245 f_4@@22))) (not (IsWandField_5244_43495 f_4@@22))) (<= (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10003) (o_2@@23 T@Ref) (f_4@@23 T@Field_5244_1189) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5244_1189 f_4@@23))) (not (IsWandField_5244_1189 f_4@@23))) (<= (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10003) (o_2@@24 T@Ref) (f_4@@24 T@Field_14997_15002) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5207_56368 f_4@@24))) (not (IsWandField_5207_56384 f_4@@24))) (<= (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10003) (o_2@@25 T@Ref) (f_4@@25 T@Field_5207_10056) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5207_10056 f_4@@25))) (not (IsWandField_5207_10056 f_4@@25))) (<= (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10003) (o_2@@26 T@Ref) (f_4@@26 T@Field_5207_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5207_53 f_4@@26))) (not (IsWandField_5207_53 f_4@@26))) (<= (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10003) (o_2@@27 T@Ref) (f_4@@27 T@Field_14983_14984) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_5207_5208 f_4@@27))) (not (IsWandField_5207_43138 f_4@@27))) (<= (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10003) (o_2@@28 T@Ref) (f_4@@28 T@Field_5207_1189) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_5207_1189 f_4@@28))) (not (IsWandField_5207_1189 f_4@@28))) (<= (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10003) (o_2@@29 T@Ref) (f_4@@29 T@Field_13901_13906) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_5181_55537 f_4@@29))) (not (IsWandField_5181_55553 f_4@@29))) (<= (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10003) (o_2@@30 T@Ref) (f_4@@30 T@Field_5181_10056) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_5181_10056 f_4@@30))) (not (IsWandField_5181_10056 f_4@@30))) (<= (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10003) (o_2@@31 T@Ref) (f_4@@31 T@Field_5181_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_5181_53 f_4@@31))) (not (IsWandField_5181_53 f_4@@31))) (<= (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_10003) (o_2@@32 T@Ref) (f_4@@32 T@Field_13888_13889) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_5181_5182 f_4@@32))) (not (IsWandField_5181_42781 f_4@@32))) (<= (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_10003) (o_2@@33 T@Ref) (f_4@@33 T@Field_5181_1189) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_5181_1189 f_4@@33))) (not (IsWandField_5181_1189 f_4@@33))) (<= (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_10003) (o_2@@34 T@Ref) (f_4@@34 T@Field_5154_13906) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_5154_54706 f_4@@34))) (not (IsWandField_5154_54722 f_4@@34))) (<= (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_10003) (o_2@@35 T@Ref) (f_4@@35 T@Field_10055_10056) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_5154_10056 f_4@@35))) (not (IsWandField_5154_10056 f_4@@35))) (<= (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_10003) (o_2@@36 T@Ref) (f_4@@36 T@Field_10042_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_5154_53 f_4@@36))) (not (IsWandField_5154_53 f_4@@36))) (<= (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_10003) (o_2@@37 T@Ref) (f_4@@37 T@Field_5154_5182) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_5154_35776 f_4@@37))) (not (IsWandField_5154_42424 f_4@@37))) (<= (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_10003) (o_2@@38 T@Ref) (f_4@@38 T@Field_13369_1189) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_5154_1189 f_4@@38))) (not (IsWandField_5154_1189 f_4@@38))) (<= (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_10003) (o_2@@39 T@Ref) (f_4@@39 T@Field_16330_16335) ) (! (= (HasDirectPerm_5244_35488 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5244_35488 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_10003) (o_2@@40 T@Ref) (f_4@@40 T@Field_5244_10056) ) (! (= (HasDirectPerm_5244_10056 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5244_10056 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_10003) (o_2@@41 T@Ref) (f_4@@41 T@Field_5244_53) ) (! (= (HasDirectPerm_5244_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5244_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_10003) (o_2@@42 T@Ref) (f_4@@42 T@Field_16316_16317) ) (! (= (HasDirectPerm_5244_5245 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5244_5245 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_10003) (o_2@@43 T@Ref) (f_4@@43 T@Field_5244_1189) ) (! (= (HasDirectPerm_5244_1189 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5244_1189 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_10003) (o_2@@44 T@Ref) (f_4@@44 T@Field_14997_15002) ) (! (= (HasDirectPerm_5207_34347 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_34347 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_10003) (o_2@@45 T@Ref) (f_4@@45 T@Field_5207_10056) ) (! (= (HasDirectPerm_5207_10056 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_10056 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_10003) (o_2@@46 T@Ref) (f_4@@46 T@Field_5207_53) ) (! (= (HasDirectPerm_5207_53 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_53 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_10003) (o_2@@47 T@Ref) (f_4@@47 T@Field_14983_14984) ) (! (= (HasDirectPerm_5207_5208 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_5208 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_10003) (o_2@@48 T@Ref) (f_4@@48 T@Field_5207_1189) ) (! (= (HasDirectPerm_5207_1189 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_1189 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_10003) (o_2@@49 T@Ref) (f_4@@49 T@Field_13901_13906) ) (! (= (HasDirectPerm_5181_33206 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5181_33206 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_10003) (o_2@@50 T@Ref) (f_4@@50 T@Field_5181_10056) ) (! (= (HasDirectPerm_5181_10056 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5181_10056 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_10003) (o_2@@51 T@Ref) (f_4@@51 T@Field_5181_53) ) (! (= (HasDirectPerm_5181_53 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5181_53 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_10003) (o_2@@52 T@Ref) (f_4@@52 T@Field_13888_13889) ) (! (= (HasDirectPerm_5181_5182 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5181_5182 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_10003) (o_2@@53 T@Ref) (f_4@@53 T@Field_5181_1189) ) (! (= (HasDirectPerm_5181_1189 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5181_1189 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_10003) (o_2@@54 T@Ref) (f_4@@54 T@Field_5154_13906) ) (! (= (HasDirectPerm_5154_32065 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5154_32065 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_10003) (o_2@@55 T@Ref) (f_4@@55 T@Field_10055_10056) ) (! (= (HasDirectPerm_5154_10056 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5154_10056 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_10003) (o_2@@56 T@Ref) (f_4@@56 T@Field_10042_53) ) (! (= (HasDirectPerm_5154_53 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5154_53 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_10003) (o_2@@57 T@Ref) (f_4@@57 T@Field_5154_5182) ) (! (= (HasDirectPerm_5154_5182 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5154_5182 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_10003) (o_2@@58 T@Ref) (f_4@@58 T@Field_13369_1189) ) (! (= (HasDirectPerm_5154_1189 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5154_1189 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9982) (ExhaleHeap@@17 T@PolymorphicMapType_9982) (Mask@@58 T@PolymorphicMapType_10003) (o_23@@0 T@Ref) (f_15@@159 T@Field_16330_16335) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_5244_35488 Mask@@58 o_23@@0 f_15@@159) (= (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@23) o_23@@0 f_15@@159) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@17) o_23@@0 f_15@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| ExhaleHeap@@17) o_23@@0 f_15@@159))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9982) (ExhaleHeap@@18 T@PolymorphicMapType_9982) (Mask@@59 T@PolymorphicMapType_10003) (o_23@@1 T@Ref) (f_15@@160 T@Field_5244_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_5244_10056 Mask@@59 o_23@@1 f_15@@160) (= (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@24) o_23@@1 f_15@@160) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@18) o_23@@1 f_15@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| ExhaleHeap@@18) o_23@@1 f_15@@160))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9982) (ExhaleHeap@@19 T@PolymorphicMapType_9982) (Mask@@60 T@PolymorphicMapType_10003) (o_23@@2 T@Ref) (f_15@@161 T@Field_5244_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_5244_53 Mask@@60 o_23@@2 f_15@@161) (= (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@25) o_23@@2 f_15@@161) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@19) o_23@@2 f_15@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| ExhaleHeap@@19) o_23@@2 f_15@@161))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9982) (ExhaleHeap@@20 T@PolymorphicMapType_9982) (Mask@@61 T@PolymorphicMapType_10003) (o_23@@3 T@Ref) (f_15@@162 T@Field_16316_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_5244_5245 Mask@@61 o_23@@3 f_15@@162) (= (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@26) o_23@@3 f_15@@162) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@20) o_23@@3 f_15@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| ExhaleHeap@@20) o_23@@3 f_15@@162))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9982) (ExhaleHeap@@21 T@PolymorphicMapType_9982) (Mask@@62 T@PolymorphicMapType_10003) (o_23@@4 T@Ref) (f_15@@163 T@Field_5244_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_5244_1189 Mask@@62 o_23@@4 f_15@@163) (= (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@27) o_23@@4 f_15@@163) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@21) o_23@@4 f_15@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| ExhaleHeap@@21) o_23@@4 f_15@@163))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9982) (ExhaleHeap@@22 T@PolymorphicMapType_9982) (Mask@@63 T@PolymorphicMapType_10003) (o_23@@5 T@Ref) (f_15@@164 T@Field_14997_15002) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_5207_34347 Mask@@63 o_23@@5 f_15@@164) (= (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@28) o_23@@5 f_15@@164) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@22) o_23@@5 f_15@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| ExhaleHeap@@22) o_23@@5 f_15@@164))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9982) (ExhaleHeap@@23 T@PolymorphicMapType_9982) (Mask@@64 T@PolymorphicMapType_10003) (o_23@@6 T@Ref) (f_15@@165 T@Field_5207_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_5207_10056 Mask@@64 o_23@@6 f_15@@165) (= (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@29) o_23@@6 f_15@@165) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@23) o_23@@6 f_15@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| ExhaleHeap@@23) o_23@@6 f_15@@165))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9982) (ExhaleHeap@@24 T@PolymorphicMapType_9982) (Mask@@65 T@PolymorphicMapType_10003) (o_23@@7 T@Ref) (f_15@@166 T@Field_5207_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_5207_53 Mask@@65 o_23@@7 f_15@@166) (= (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@30) o_23@@7 f_15@@166) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@24) o_23@@7 f_15@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| ExhaleHeap@@24) o_23@@7 f_15@@166))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9982) (ExhaleHeap@@25 T@PolymorphicMapType_9982) (Mask@@66 T@PolymorphicMapType_10003) (o_23@@8 T@Ref) (f_15@@167 T@Field_14983_14984) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_5207_5208 Mask@@66 o_23@@8 f_15@@167) (= (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@31) o_23@@8 f_15@@167) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@25) o_23@@8 f_15@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| ExhaleHeap@@25) o_23@@8 f_15@@167))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9982) (ExhaleHeap@@26 T@PolymorphicMapType_9982) (Mask@@67 T@PolymorphicMapType_10003) (o_23@@9 T@Ref) (f_15@@168 T@Field_5207_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_5207_1189 Mask@@67 o_23@@9 f_15@@168) (= (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@32) o_23@@9 f_15@@168) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@26) o_23@@9 f_15@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| ExhaleHeap@@26) o_23@@9 f_15@@168))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9982) (ExhaleHeap@@27 T@PolymorphicMapType_9982) (Mask@@68 T@PolymorphicMapType_10003) (o_23@@10 T@Ref) (f_15@@169 T@Field_13901_13906) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_5181_33206 Mask@@68 o_23@@10 f_15@@169) (= (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@33) o_23@@10 f_15@@169) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@27) o_23@@10 f_15@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| ExhaleHeap@@27) o_23@@10 f_15@@169))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9982) (ExhaleHeap@@28 T@PolymorphicMapType_9982) (Mask@@69 T@PolymorphicMapType_10003) (o_23@@11 T@Ref) (f_15@@170 T@Field_5181_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_5181_10056 Mask@@69 o_23@@11 f_15@@170) (= (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@34) o_23@@11 f_15@@170) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@28) o_23@@11 f_15@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| ExhaleHeap@@28) o_23@@11 f_15@@170))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9982) (ExhaleHeap@@29 T@PolymorphicMapType_9982) (Mask@@70 T@PolymorphicMapType_10003) (o_23@@12 T@Ref) (f_15@@171 T@Field_5181_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_5181_53 Mask@@70 o_23@@12 f_15@@171) (= (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@35) o_23@@12 f_15@@171) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@29) o_23@@12 f_15@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| ExhaleHeap@@29) o_23@@12 f_15@@171))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9982) (ExhaleHeap@@30 T@PolymorphicMapType_9982) (Mask@@71 T@PolymorphicMapType_10003) (o_23@@13 T@Ref) (f_15@@172 T@Field_13888_13889) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_5181_5182 Mask@@71 o_23@@13 f_15@@172) (= (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@36) o_23@@13 f_15@@172) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@30) o_23@@13 f_15@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| ExhaleHeap@@30) o_23@@13 f_15@@172))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9982) (ExhaleHeap@@31 T@PolymorphicMapType_9982) (Mask@@72 T@PolymorphicMapType_10003) (o_23@@14 T@Ref) (f_15@@173 T@Field_5181_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_5181_1189 Mask@@72 o_23@@14 f_15@@173) (= (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@37) o_23@@14 f_15@@173) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@31) o_23@@14 f_15@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| ExhaleHeap@@31) o_23@@14 f_15@@173))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9982) (ExhaleHeap@@32 T@PolymorphicMapType_9982) (Mask@@73 T@PolymorphicMapType_10003) (o_23@@15 T@Ref) (f_15@@174 T@Field_5154_13906) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_5154_32065 Mask@@73 o_23@@15 f_15@@174) (= (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@38) o_23@@15 f_15@@174) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@32) o_23@@15 f_15@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| ExhaleHeap@@32) o_23@@15 f_15@@174))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9982) (ExhaleHeap@@33 T@PolymorphicMapType_9982) (Mask@@74 T@PolymorphicMapType_10003) (o_23@@16 T@Ref) (f_15@@175 T@Field_10055_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_5154_10056 Mask@@74 o_23@@16 f_15@@175) (= (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@39) o_23@@16 f_15@@175) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@33) o_23@@16 f_15@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| ExhaleHeap@@33) o_23@@16 f_15@@175))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9982) (ExhaleHeap@@34 T@PolymorphicMapType_9982) (Mask@@75 T@PolymorphicMapType_10003) (o_23@@17 T@Ref) (f_15@@176 T@Field_10042_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_5154_53 Mask@@75 o_23@@17 f_15@@176) (= (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@40) o_23@@17 f_15@@176) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@34) o_23@@17 f_15@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| ExhaleHeap@@34) o_23@@17 f_15@@176))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9982) (ExhaleHeap@@35 T@PolymorphicMapType_9982) (Mask@@76 T@PolymorphicMapType_10003) (o_23@@18 T@Ref) (f_15@@177 T@Field_5154_5182) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_5154_5182 Mask@@76 o_23@@18 f_15@@177) (= (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@41) o_23@@18 f_15@@177) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@35) o_23@@18 f_15@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| ExhaleHeap@@35) o_23@@18 f_15@@177))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9982) (ExhaleHeap@@36 T@PolymorphicMapType_9982) (Mask@@77 T@PolymorphicMapType_10003) (o_23@@19 T@Ref) (f_15@@178 T@Field_13369_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_5154_1189 Mask@@77 o_23@@19 f_15@@178) (= (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@42) o_23@@19 f_15@@178) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@36) o_23@@19 f_15@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| ExhaleHeap@@36) o_23@@19 f_15@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_16330_16335) ) (! (= (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_5244_10056) ) (! (= (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_5244_53) ) (! (= (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_16316_16317) ) (! (= (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_5244_1189) ) (! (= (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_14997_15002) ) (! (= (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_5207_10056) ) (! (= (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_5207_53) ) (! (= (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_14983_14984) ) (! (= (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_5207_1189) ) (! (= (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_13901_13906) ) (! (= (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_5181_10056) ) (! (= (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_5181_53) ) (! (= (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_13888_13889) ) (! (= (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_5181_1189) ) (! (= (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_5154_13906) ) (! (= (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_10055_10056) ) (! (= (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_10042_53) ) (! (= (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_5154_5182) ) (! (= (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_13369_1189) ) (! (= (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10003) (SummandMask1 T@PolymorphicMapType_10003) (SummandMask2 T@PolymorphicMapType_10003) (o_2@@79 T@Ref) (f_4@@79 T@Field_16330_16335) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10003_5244_52581#PolymorphicMapType_10003| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10003) (SummandMask1@@0 T@PolymorphicMapType_10003) (SummandMask2@@0 T@PolymorphicMapType_10003) (o_2@@80 T@Ref) (f_4@@80 T@Field_5244_10056) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10003_5244_10056#PolymorphicMapType_10003| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10003) (SummandMask1@@1 T@PolymorphicMapType_10003) (SummandMask2@@1 T@PolymorphicMapType_10003) (o_2@@81 T@Ref) (f_4@@81 T@Field_5244_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10003_5244_53#PolymorphicMapType_10003| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10003) (SummandMask1@@2 T@PolymorphicMapType_10003) (SummandMask2@@2 T@PolymorphicMapType_10003) (o_2@@82 T@Ref) (f_4@@82 T@Field_16316_16317) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10003_5244_5245#PolymorphicMapType_10003| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10003) (SummandMask1@@3 T@PolymorphicMapType_10003) (SummandMask2@@3 T@PolymorphicMapType_10003) (o_2@@83 T@Ref) (f_4@@83 T@Field_5244_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10003_5244_1189#PolymorphicMapType_10003| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10003) (SummandMask1@@4 T@PolymorphicMapType_10003) (SummandMask2@@4 T@PolymorphicMapType_10003) (o_2@@84 T@Ref) (f_4@@84 T@Field_14997_15002) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10003_5207_52170#PolymorphicMapType_10003| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10003) (SummandMask1@@5 T@PolymorphicMapType_10003) (SummandMask2@@5 T@PolymorphicMapType_10003) (o_2@@85 T@Ref) (f_4@@85 T@Field_5207_10056) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10003_5207_10056#PolymorphicMapType_10003| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10003) (SummandMask1@@6 T@PolymorphicMapType_10003) (SummandMask2@@6 T@PolymorphicMapType_10003) (o_2@@86 T@Ref) (f_4@@86 T@Field_5207_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10003_5207_53#PolymorphicMapType_10003| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10003) (SummandMask1@@7 T@PolymorphicMapType_10003) (SummandMask2@@7 T@PolymorphicMapType_10003) (o_2@@87 T@Ref) (f_4@@87 T@Field_14983_14984) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10003_5207_5208#PolymorphicMapType_10003| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10003) (SummandMask1@@8 T@PolymorphicMapType_10003) (SummandMask2@@8 T@PolymorphicMapType_10003) (o_2@@88 T@Ref) (f_4@@88 T@Field_5207_1189) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10003_5207_1189#PolymorphicMapType_10003| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_10003) (SummandMask1@@9 T@PolymorphicMapType_10003) (SummandMask2@@9 T@PolymorphicMapType_10003) (o_2@@89 T@Ref) (f_4@@89 T@Field_13901_13906) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10003_5181_51759#PolymorphicMapType_10003| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_10003) (SummandMask1@@10 T@PolymorphicMapType_10003) (SummandMask2@@10 T@PolymorphicMapType_10003) (o_2@@90 T@Ref) (f_4@@90 T@Field_5181_10056) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10003_5181_10056#PolymorphicMapType_10003| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_10003) (SummandMask1@@11 T@PolymorphicMapType_10003) (SummandMask2@@11 T@PolymorphicMapType_10003) (o_2@@91 T@Ref) (f_4@@91 T@Field_5181_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10003_5181_53#PolymorphicMapType_10003| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_10003) (SummandMask1@@12 T@PolymorphicMapType_10003) (SummandMask2@@12 T@PolymorphicMapType_10003) (o_2@@92 T@Ref) (f_4@@92 T@Field_13888_13889) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10003_5181_5182#PolymorphicMapType_10003| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_10003) (SummandMask1@@13 T@PolymorphicMapType_10003) (SummandMask2@@13 T@PolymorphicMapType_10003) (o_2@@93 T@Ref) (f_4@@93 T@Field_5181_1189) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10003_5181_1189#PolymorphicMapType_10003| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_10003) (SummandMask1@@14 T@PolymorphicMapType_10003) (SummandMask2@@14 T@PolymorphicMapType_10003) (o_2@@94 T@Ref) (f_4@@94 T@Field_5154_13906) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10003_5154_51348#PolymorphicMapType_10003| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_10003) (SummandMask1@@15 T@PolymorphicMapType_10003) (SummandMask2@@15 T@PolymorphicMapType_10003) (o_2@@95 T@Ref) (f_4@@95 T@Field_10055_10056) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10003_5154_10056#PolymorphicMapType_10003| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_10003) (SummandMask1@@16 T@PolymorphicMapType_10003) (SummandMask2@@16 T@PolymorphicMapType_10003) (o_2@@96 T@Ref) (f_4@@96 T@Field_10042_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10003_5154_53#PolymorphicMapType_10003| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_10003) (SummandMask1@@17 T@PolymorphicMapType_10003) (SummandMask2@@17 T@PolymorphicMapType_10003) (o_2@@97 T@Ref) (f_4@@97 T@Field_5154_5182) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_10003_5154_5182#PolymorphicMapType_10003| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_10003) (SummandMask1@@18 T@PolymorphicMapType_10003) (SummandMask2@@18 T@PolymorphicMapType_10003) (o_2@@98 T@Ref) (f_4@@98 T@Field_13369_1189) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_10003_5154_1189#PolymorphicMapType_10003| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((x@@13 T@Ref) (i@@3 Int) ) (! (= (getPredWandId_5181_5182 (p1 x@@13 i@@3)) 0)
 :qid |stdinbpl.244:15|
 :skolemid |27|
 :pattern ( (p1 x@@13 i@@3))
)))
(assert (forall ((x@@14 T@Ref) (y@@7 T@Ref) ) (! (= (getPredWandId_5207_5208 (p2 x@@14 y@@7)) 1)
 :qid |stdinbpl.304:15|
 :skolemid |33|
 :pattern ( (p2 x@@14 y@@7))
)))
(assert (forall ((x@@15 T@Ref) (y@@8 T@Ref) ) (! (= (getPredWandId_5244_5245 (p3_1 x@@15 y@@8)) 2)
 :qid |stdinbpl.371:15|
 :skolemid |39|
 :pattern ( (p3_1 x@@15 y@@8))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9982) (Mask@@78 T@PolymorphicMapType_10003) (x@@16 T@Ref) ) (!  (=> (state Heap@@43 Mask@@78) (= (|fun'| Heap@@43 x@@16) (|fun#frame| EmptyFrame x@@16)))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@43 Mask@@78) (|fun'| Heap@@43 x@@16))
)))
(assert (forall ((x@@17 T@Ref) (i@@4 Int) ) (! (= (PredicateMaskField_5181 (p1 x@@17 i@@4)) (|p1#sm| x@@17 i@@4))
 :qid |stdinbpl.236:15|
 :skolemid |25|
 :pattern ( (PredicateMaskField_5181 (p1 x@@17 i@@4)))
)))
(assert (forall ((x@@18 T@Ref) (y@@9 T@Ref) ) (! (= (PredicateMaskField_5207 (p2 x@@18 y@@9)) (|p2#sm| x@@18 y@@9))
 :qid |stdinbpl.296:15|
 :skolemid |31|
 :pattern ( (PredicateMaskField_5207 (p2 x@@18 y@@9)))
)))
(assert (forall ((x@@19 T@Ref) (y@@10 T@Ref) ) (! (= (PredicateMaskField_5244 (p3_1 x@@19 y@@10)) (|p3#sm| x@@19 y@@10))
 :qid |stdinbpl.363:15|
 :skolemid |37|
 :pattern ( (PredicateMaskField_5244 (p3_1 x@@19 y@@10)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9982) (o_4 T@Ref) (f_25 T@Field_16330_16335) (v T@PolymorphicMapType_10531) ) (! (succHeap Heap@@44 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@44) (store (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@44) o_4 f_25 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@44) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@44) (store (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@44) o_4 f_25 v)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_9982) (o_4@@0 T@Ref) (f_25@@0 T@Field_16316_16317) (v@@0 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@45) (store (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@45) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@45) (store (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@45) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@45) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_9982) (o_4@@1 T@Ref) (f_25@@1 T@Field_5244_1189) (v@@1 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@46) (store (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@46) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@46) (store (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@46) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@46) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_9982) (o_4@@2 T@Ref) (f_25@@2 T@Field_5244_10056) (v@@2 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@47) (store (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@47) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@47) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@47) (store (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@47) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_9982) (o_4@@3 T@Ref) (f_25@@3 T@Field_5244_53) (v@@3 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@48) (store (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@48) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@48) (store (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@48) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@48) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_9982) (o_4@@4 T@Ref) (f_25@@4 T@Field_14997_15002) (v@@4 T@PolymorphicMapType_10531) ) (! (succHeap Heap@@49 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@49) (store (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@49) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@49) (store (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@49) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@49) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_9982) (o_4@@5 T@Ref) (f_25@@5 T@Field_14983_14984) (v@@5 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@50) (store (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@50) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@50) (store (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@50) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@50) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_9982) (o_4@@6 T@Ref) (f_25@@6 T@Field_5207_1189) (v@@6 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@51) (store (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@51) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@51) (store (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@51) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@51) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_9982) (o_4@@7 T@Ref) (f_25@@7 T@Field_5207_10056) (v@@7 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@52) (store (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@52) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@52) (store (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@52) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@52) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_9982) (o_4@@8 T@Ref) (f_25@@8 T@Field_5207_53) (v@@8 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@53) (store (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@53) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@53) (store (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@53) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@53) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_9982) (o_4@@9 T@Ref) (f_25@@9 T@Field_13901_13906) (v@@9 T@PolymorphicMapType_10531) ) (! (succHeap Heap@@54 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@54) (store (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@54) o_4@@9 f_25@@9 v@@9) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@54) (store (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@54) o_4@@9 f_25@@9 v@@9) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@54) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_9982) (o_4@@10 T@Ref) (f_25@@10 T@Field_13888_13889) (v@@10 T@FrameType) ) (! (succHeap Heap@@55 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@55) (store (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@55) o_4@@10 f_25@@10 v@@10) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@55) (store (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@55) o_4@@10 f_25@@10 v@@10) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@55) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_9982) (o_4@@11 T@Ref) (f_25@@11 T@Field_5181_1189) (v@@11 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@56) (store (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@56) o_4@@11 f_25@@11 v@@11) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@56) (store (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@56) o_4@@11 f_25@@11 v@@11) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@56) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_9982) (o_4@@12 T@Ref) (f_25@@12 T@Field_5181_10056) (v@@12 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@57) (store (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@57) o_4@@12 f_25@@12 v@@12) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@57) (store (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@57) o_4@@12 f_25@@12 v@@12) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@57) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_9982) (o_4@@13 T@Ref) (f_25@@13 T@Field_5181_53) (v@@13 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@58) (store (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@58) o_4@@13 f_25@@13 v@@13) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@58) (store (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@58) o_4@@13 f_25@@13 v@@13) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@58) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_9982) (o_4@@14 T@Ref) (f_25@@14 T@Field_5154_13906) (v@@14 T@PolymorphicMapType_10531) ) (! (succHeap Heap@@59 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@59) (store (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@59) o_4@@14 f_25@@14 v@@14) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@59) (store (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@59) o_4@@14 f_25@@14 v@@14) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@59) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_9982) (o_4@@15 T@Ref) (f_25@@15 T@Field_5154_5182) (v@@15 T@FrameType) ) (! (succHeap Heap@@60 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@60) (store (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@60) o_4@@15 f_25@@15 v@@15) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@60) (store (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@60) o_4@@15 f_25@@15 v@@15) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@60) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_9982) (o_4@@16 T@Ref) (f_25@@16 T@Field_13369_1189) (v@@16 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@61) (store (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@61) o_4@@16 f_25@@16 v@@16) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@61) (store (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@61) o_4@@16 f_25@@16 v@@16) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@61) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_9982) (o_4@@17 T@Ref) (f_25@@17 T@Field_10055_10056) (v@@17 T@Ref) ) (! (succHeap Heap@@62 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@62) (store (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@62) o_4@@17 f_25@@17 v@@17) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@62) (store (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@62) o_4@@17 f_25@@17 v@@17) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@62) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_9982) (o_4@@18 T@Ref) (f_25@@18 T@Field_10042_53) (v@@18 Bool) ) (! (succHeap Heap@@63 (PolymorphicMapType_9982 (store (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@63) o_4@@18 f_25@@18 v@@18) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (store (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@63) o_4@@18 f_25@@18 v@@18) (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_5182#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_5208#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_5245#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_5182#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5154_32107#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5181_33248#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5207_34389#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_1189#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_53#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_10056#PolymorphicMapType_9982| Heap@@63) (|PolymorphicMapType_9982_5244_35530#PolymorphicMapType_9982| Heap@@63)))
)))
(assert (forall ((o_4@@19 T@Ref) (f_9 T@Field_10055_10056) (Heap@@64 T@PolymorphicMapType_9982) ) (!  (=> (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@64) o_4@@19 $allocated) (select (|PolymorphicMapType_9982_5026_53#PolymorphicMapType_9982| Heap@@64) (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@64) o_4@@19 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9982_5029_5030#PolymorphicMapType_9982| Heap@@64) o_4@@19 f_9))
)))
(assert (forall ((p@@4 T@Field_16316_16317) (v_1@@3 T@FrameType) (q T@Field_16316_16317) (w@@3 T@FrameType) (r T@Field_16316_16317) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16316_16316 p@@4 v_1@@3 q w@@3) (InsidePredicate_16316_16316 q w@@3 r u)) (InsidePredicate_16316_16316 p@@4 v_1@@3 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_16316 p@@4 v_1@@3 q w@@3) (InsidePredicate_16316_16316 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_16316_16317) (v_1@@4 T@FrameType) (q@@0 T@Field_16316_16317) (w@@4 T@FrameType) (r@@0 T@Field_14983_14984) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_16316 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_16316_14983 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_16316_14983 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_16316 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_16316_14983 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_16316_16317) (v_1@@5 T@FrameType) (q@@1 T@Field_16316_16317) (w@@5 T@FrameType) (r@@1 T@Field_13888_13889) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_16316 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_16316_13888 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_16316_13888 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_16316 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_16316_13888 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_16316_16317) (v_1@@6 T@FrameType) (q@@2 T@Field_16316_16317) (w@@6 T@FrameType) (r@@2 T@Field_5154_5182) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_16316 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_16316_10042 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_16316_10042 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_16316 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_16316_10042 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_16316_16317) (v_1@@7 T@FrameType) (q@@3 T@Field_14983_14984) (w@@7 T@FrameType) (r@@3 T@Field_16316_16317) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_14983 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_14983_16316 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_16316_16316 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_14983 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_14983_16316 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_16316_16317) (v_1@@8 T@FrameType) (q@@4 T@Field_14983_14984) (w@@8 T@FrameType) (r@@4 T@Field_14983_14984) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_14983 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_14983_14983 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_16316_14983 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_14983 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_14983_14983 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_16316_16317) (v_1@@9 T@FrameType) (q@@5 T@Field_14983_14984) (w@@9 T@FrameType) (r@@5 T@Field_13888_13889) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_14983 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_14983_13888 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_16316_13888 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_14983 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_14983_13888 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_16316_16317) (v_1@@10 T@FrameType) (q@@6 T@Field_14983_14984) (w@@10 T@FrameType) (r@@6 T@Field_5154_5182) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_14983 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_14983_10042 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_16316_10042 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_14983 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_14983_10042 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_16316_16317) (v_1@@11 T@FrameType) (q@@7 T@Field_13888_13889) (w@@11 T@FrameType) (r@@7 T@Field_16316_16317) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_13888 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_13888_16316 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_16316_16316 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_13888 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_13888_16316 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_16316_16317) (v_1@@12 T@FrameType) (q@@8 T@Field_13888_13889) (w@@12 T@FrameType) (r@@8 T@Field_14983_14984) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_13888 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_13888_14983 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_16316_14983 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_13888 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_13888_14983 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_16316_16317) (v_1@@13 T@FrameType) (q@@9 T@Field_13888_13889) (w@@13 T@FrameType) (r@@9 T@Field_13888_13889) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_13888 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_13888_13888 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_16316_13888 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_13888 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_13888_13888 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_16316_16317) (v_1@@14 T@FrameType) (q@@10 T@Field_13888_13889) (w@@14 T@FrameType) (r@@10 T@Field_5154_5182) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_13888 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_13888_10042 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_16316_10042 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_13888 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_13888_10042 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_16316_16317) (v_1@@15 T@FrameType) (q@@11 T@Field_5154_5182) (w@@15 T@FrameType) (r@@11 T@Field_16316_16317) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_10042 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_10042_16316 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_16316_16316 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_10042 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_10042_16316 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_16316_16317) (v_1@@16 T@FrameType) (q@@12 T@Field_5154_5182) (w@@16 T@FrameType) (r@@12 T@Field_14983_14984) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_10042 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_10042_14983 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_16316_14983 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_10042 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_10042_14983 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_16316_16317) (v_1@@17 T@FrameType) (q@@13 T@Field_5154_5182) (w@@17 T@FrameType) (r@@13 T@Field_13888_13889) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_10042 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_10042_13888 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_16316_13888 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_10042 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_10042_13888 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_16316_16317) (v_1@@18 T@FrameType) (q@@14 T@Field_5154_5182) (w@@18 T@FrameType) (r@@14 T@Field_5154_5182) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16316_10042 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_10042_10042 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_16316_10042 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16316_10042 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_10042_10042 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_14983_14984) (v_1@@19 T@FrameType) (q@@15 T@Field_16316_16317) (w@@19 T@FrameType) (r@@15 T@Field_16316_16317) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_16316 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_16316_16316 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_14983_16316 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_16316 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_16316_16316 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_14983_14984) (v_1@@20 T@FrameType) (q@@16 T@Field_16316_16317) (w@@20 T@FrameType) (r@@16 T@Field_14983_14984) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_16316 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_16316_14983 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_14983_14983 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_16316 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_16316_14983 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_14983_14984) (v_1@@21 T@FrameType) (q@@17 T@Field_16316_16317) (w@@21 T@FrameType) (r@@17 T@Field_13888_13889) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_16316 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_16316_13888 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_14983_13888 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_16316 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_16316_13888 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_14983_14984) (v_1@@22 T@FrameType) (q@@18 T@Field_16316_16317) (w@@22 T@FrameType) (r@@18 T@Field_5154_5182) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_16316 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_16316_10042 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_14983_10042 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_16316 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_16316_10042 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_14983_14984) (v_1@@23 T@FrameType) (q@@19 T@Field_14983_14984) (w@@23 T@FrameType) (r@@19 T@Field_16316_16317) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_14983 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_14983_16316 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_14983_16316 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_14983 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_14983_16316 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_14983_14984) (v_1@@24 T@FrameType) (q@@20 T@Field_14983_14984) (w@@24 T@FrameType) (r@@20 T@Field_14983_14984) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_14983 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_14983_14983 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_14983_14983 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_14983 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_14983_14983 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_14983_14984) (v_1@@25 T@FrameType) (q@@21 T@Field_14983_14984) (w@@25 T@FrameType) (r@@21 T@Field_13888_13889) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_14983 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_14983_13888 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_14983_13888 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_14983 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_14983_13888 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_14983_14984) (v_1@@26 T@FrameType) (q@@22 T@Field_14983_14984) (w@@26 T@FrameType) (r@@22 T@Field_5154_5182) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_14983 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_14983_10042 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_14983_10042 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_14983 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_14983_10042 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_14983_14984) (v_1@@27 T@FrameType) (q@@23 T@Field_13888_13889) (w@@27 T@FrameType) (r@@23 T@Field_16316_16317) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_13888 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_13888_16316 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_14983_16316 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_13888 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_13888_16316 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_14983_14984) (v_1@@28 T@FrameType) (q@@24 T@Field_13888_13889) (w@@28 T@FrameType) (r@@24 T@Field_14983_14984) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_13888 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_13888_14983 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_14983_14983 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_13888 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_13888_14983 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_14983_14984) (v_1@@29 T@FrameType) (q@@25 T@Field_13888_13889) (w@@29 T@FrameType) (r@@25 T@Field_13888_13889) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_13888 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_13888_13888 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_14983_13888 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_13888 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_13888_13888 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_14983_14984) (v_1@@30 T@FrameType) (q@@26 T@Field_13888_13889) (w@@30 T@FrameType) (r@@26 T@Field_5154_5182) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_13888 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_13888_10042 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_14983_10042 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_13888 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_13888_10042 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_14983_14984) (v_1@@31 T@FrameType) (q@@27 T@Field_5154_5182) (w@@31 T@FrameType) (r@@27 T@Field_16316_16317) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_10042 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_10042_16316 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_14983_16316 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_10042 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_10042_16316 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_14983_14984) (v_1@@32 T@FrameType) (q@@28 T@Field_5154_5182) (w@@32 T@FrameType) (r@@28 T@Field_14983_14984) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_10042 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_10042_14983 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_14983_14983 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_10042 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_10042_14983 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_14983_14984) (v_1@@33 T@FrameType) (q@@29 T@Field_5154_5182) (w@@33 T@FrameType) (r@@29 T@Field_13888_13889) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_10042 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_10042_13888 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_14983_13888 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_10042 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_10042_13888 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_14983_14984) (v_1@@34 T@FrameType) (q@@30 T@Field_5154_5182) (w@@34 T@FrameType) (r@@30 T@Field_5154_5182) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_14983_10042 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_10042_10042 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_14983_10042 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14983_10042 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_10042_10042 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_13888_13889) (v_1@@35 T@FrameType) (q@@31 T@Field_16316_16317) (w@@35 T@FrameType) (r@@31 T@Field_16316_16317) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_16316 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_16316_16316 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_13888_16316 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_16316 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_16316_16316 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_13888_13889) (v_1@@36 T@FrameType) (q@@32 T@Field_16316_16317) (w@@36 T@FrameType) (r@@32 T@Field_14983_14984) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_16316 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_16316_14983 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_13888_14983 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_16316 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_16316_14983 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_13888_13889) (v_1@@37 T@FrameType) (q@@33 T@Field_16316_16317) (w@@37 T@FrameType) (r@@33 T@Field_13888_13889) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_16316 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_16316_13888 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_13888_13888 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_16316 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_16316_13888 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_13888_13889) (v_1@@38 T@FrameType) (q@@34 T@Field_16316_16317) (w@@38 T@FrameType) (r@@34 T@Field_5154_5182) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_16316 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_16316_10042 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_13888_10042 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_16316 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_16316_10042 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_13888_13889) (v_1@@39 T@FrameType) (q@@35 T@Field_14983_14984) (w@@39 T@FrameType) (r@@35 T@Field_16316_16317) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_14983 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_14983_16316 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_13888_16316 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_14983 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_14983_16316 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_13888_13889) (v_1@@40 T@FrameType) (q@@36 T@Field_14983_14984) (w@@40 T@FrameType) (r@@36 T@Field_14983_14984) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_14983 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_14983_14983 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_13888_14983 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_14983 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_14983_14983 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_13888_13889) (v_1@@41 T@FrameType) (q@@37 T@Field_14983_14984) (w@@41 T@FrameType) (r@@37 T@Field_13888_13889) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_14983 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_14983_13888 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_13888_13888 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_14983 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_14983_13888 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_13888_13889) (v_1@@42 T@FrameType) (q@@38 T@Field_14983_14984) (w@@42 T@FrameType) (r@@38 T@Field_5154_5182) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_14983 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_14983_10042 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_13888_10042 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_14983 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_14983_10042 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_13888_13889) (v_1@@43 T@FrameType) (q@@39 T@Field_13888_13889) (w@@43 T@FrameType) (r@@39 T@Field_16316_16317) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_13888 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_13888_16316 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_13888_16316 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_13888 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_13888_16316 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_13888_13889) (v_1@@44 T@FrameType) (q@@40 T@Field_13888_13889) (w@@44 T@FrameType) (r@@40 T@Field_14983_14984) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_13888 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_13888_14983 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_13888_14983 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_13888 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_13888_14983 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_13888_13889) (v_1@@45 T@FrameType) (q@@41 T@Field_13888_13889) (w@@45 T@FrameType) (r@@41 T@Field_13888_13889) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_13888 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_13888_13888 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_13888_13888 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_13888 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_13888_13888 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_13888_13889) (v_1@@46 T@FrameType) (q@@42 T@Field_13888_13889) (w@@46 T@FrameType) (r@@42 T@Field_5154_5182) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_13888 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_13888_10042 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_13888_10042 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_13888 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_13888_10042 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_13888_13889) (v_1@@47 T@FrameType) (q@@43 T@Field_5154_5182) (w@@47 T@FrameType) (r@@43 T@Field_16316_16317) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_10042 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_10042_16316 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_13888_16316 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_10042 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_10042_16316 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_13888_13889) (v_1@@48 T@FrameType) (q@@44 T@Field_5154_5182) (w@@48 T@FrameType) (r@@44 T@Field_14983_14984) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_10042 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_10042_14983 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_13888_14983 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_10042 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_10042_14983 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_13888_13889) (v_1@@49 T@FrameType) (q@@45 T@Field_5154_5182) (w@@49 T@FrameType) (r@@45 T@Field_13888_13889) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_10042 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_10042_13888 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_13888_13888 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_10042 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_10042_13888 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_13888_13889) (v_1@@50 T@FrameType) (q@@46 T@Field_5154_5182) (w@@50 T@FrameType) (r@@46 T@Field_5154_5182) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_13888_10042 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_10042_10042 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_13888_10042 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13888_10042 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_10042_10042 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_5154_5182) (v_1@@51 T@FrameType) (q@@47 T@Field_16316_16317) (w@@51 T@FrameType) (r@@47 T@Field_16316_16317) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_16316 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_16316_16316 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_10042_16316 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_16316 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_16316_16316 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_5154_5182) (v_1@@52 T@FrameType) (q@@48 T@Field_16316_16317) (w@@52 T@FrameType) (r@@48 T@Field_14983_14984) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_16316 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_16316_14983 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_10042_14983 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_16316 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_16316_14983 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_5154_5182) (v_1@@53 T@FrameType) (q@@49 T@Field_16316_16317) (w@@53 T@FrameType) (r@@49 T@Field_13888_13889) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_16316 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_16316_13888 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_10042_13888 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_16316 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_16316_13888 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_5154_5182) (v_1@@54 T@FrameType) (q@@50 T@Field_16316_16317) (w@@54 T@FrameType) (r@@50 T@Field_5154_5182) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_16316 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_16316_10042 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_10042_10042 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_16316 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_16316_10042 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_5154_5182) (v_1@@55 T@FrameType) (q@@51 T@Field_14983_14984) (w@@55 T@FrameType) (r@@51 T@Field_16316_16317) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_14983 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_14983_16316 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_10042_16316 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_14983 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_14983_16316 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_5154_5182) (v_1@@56 T@FrameType) (q@@52 T@Field_14983_14984) (w@@56 T@FrameType) (r@@52 T@Field_14983_14984) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_14983 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_14983_14983 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_10042_14983 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_14983 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_14983_14983 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_5154_5182) (v_1@@57 T@FrameType) (q@@53 T@Field_14983_14984) (w@@57 T@FrameType) (r@@53 T@Field_13888_13889) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_14983 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_14983_13888 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_10042_13888 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_14983 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_14983_13888 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_5154_5182) (v_1@@58 T@FrameType) (q@@54 T@Field_14983_14984) (w@@58 T@FrameType) (r@@54 T@Field_5154_5182) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_14983 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_14983_10042 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_10042_10042 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_14983 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_14983_10042 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_5154_5182) (v_1@@59 T@FrameType) (q@@55 T@Field_13888_13889) (w@@59 T@FrameType) (r@@55 T@Field_16316_16317) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_13888 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_13888_16316 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_10042_16316 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_13888 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_13888_16316 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_5154_5182) (v_1@@60 T@FrameType) (q@@56 T@Field_13888_13889) (w@@60 T@FrameType) (r@@56 T@Field_14983_14984) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_13888 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_13888_14983 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_10042_14983 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_13888 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_13888_14983 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_5154_5182) (v_1@@61 T@FrameType) (q@@57 T@Field_13888_13889) (w@@61 T@FrameType) (r@@57 T@Field_13888_13889) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_13888 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_13888_13888 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_10042_13888 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_13888 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_13888_13888 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_5154_5182) (v_1@@62 T@FrameType) (q@@58 T@Field_13888_13889) (w@@62 T@FrameType) (r@@58 T@Field_5154_5182) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_13888 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_13888_10042 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_10042_10042 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_13888 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_13888_10042 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_5154_5182) (v_1@@63 T@FrameType) (q@@59 T@Field_5154_5182) (w@@63 T@FrameType) (r@@59 T@Field_16316_16317) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_10042 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_10042_16316 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_10042_16316 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_10042 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_10042_16316 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_5154_5182) (v_1@@64 T@FrameType) (q@@60 T@Field_5154_5182) (w@@64 T@FrameType) (r@@60 T@Field_14983_14984) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_10042 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_10042_14983 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_10042_14983 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_10042 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_10042_14983 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_5154_5182) (v_1@@65 T@FrameType) (q@@61 T@Field_5154_5182) (w@@65 T@FrameType) (r@@61 T@Field_13888_13889) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_10042 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_10042_13888 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_10042_13888 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_10042 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_10042_13888 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_5154_5182) (v_1@@66 T@FrameType) (q@@62 T@Field_5154_5182) (w@@66 T@FrameType) (r@@62 T@Field_5154_5182) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_10042_10042 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_10042_10042 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_10042_10042 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_10042 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_10042_10042 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

