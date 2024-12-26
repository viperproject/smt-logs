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
(declare-sort T@Field_13019_53 0)
(declare-sort T@Field_13032_13033 0)
(declare-sort T@Field_16735_16736 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_19364_19369 0)
(declare-sort T@Field_6380_6420 0)
(declare-sort T@Field_6380_19369 0)
(declare-sort T@Field_6419_6381 0)
(declare-sort T@Field_6419_53 0)
(declare-datatypes ((T@PolymorphicMapType_12980 0)) (((PolymorphicMapType_12980 (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| (Array T@Ref T@Field_16735_16736 Real)) (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| (Array T@Ref T@Field_13032_13033 Real)) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| (Array T@Ref T@Field_6419_6381 Real)) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| (Array T@Ref T@Field_6419_53 Real)) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| (Array T@Ref T@Field_19364_19369 Real)) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| (Array T@Ref T@Field_6380_6420 Real)) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| (Array T@Ref T@Field_13019_53 Real)) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| (Array T@Ref T@Field_6380_19369 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13508 0)) (((PolymorphicMapType_13508 (|PolymorphicMapType_13508_6380_6381#PolymorphicMapType_13508| (Array T@Ref T@Field_13032_13033 Bool)) (|PolymorphicMapType_13508_6380_53#PolymorphicMapType_13508| (Array T@Ref T@Field_13019_53 Bool)) (|PolymorphicMapType_13508_6380_16736#PolymorphicMapType_13508| (Array T@Ref T@Field_6380_6420 Bool)) (|PolymorphicMapType_13508_6380_50739#PolymorphicMapType_13508| (Array T@Ref T@Field_6380_19369 Bool)) (|PolymorphicMapType_13508_16735_6381#PolymorphicMapType_13508| (Array T@Ref T@Field_6419_6381 Bool)) (|PolymorphicMapType_13508_16735_53#PolymorphicMapType_13508| (Array T@Ref T@Field_6419_53 Bool)) (|PolymorphicMapType_13508_16735_16736#PolymorphicMapType_13508| (Array T@Ref T@Field_16735_16736 Bool)) (|PolymorphicMapType_13508_16735_51589#PolymorphicMapType_13508| (Array T@Ref T@Field_19364_19369 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12959 0)) (((PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| (Array T@Ref T@Field_13019_53 Bool)) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| (Array T@Ref T@Field_13032_13033 T@Ref)) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| (Array T@Ref T@Field_16735_16736 T@FrameType)) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| (Array T@Ref T@Field_19364_19369 T@PolymorphicMapType_13508)) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| (Array T@Ref T@Field_6380_6420 T@FrameType)) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| (Array T@Ref T@Field_6380_19369 T@PolymorphicMapType_13508)) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| (Array T@Ref T@Field_6419_6381 T@Ref)) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| (Array T@Ref T@Field_6419_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_13019_53)
(declare-fun next () T@Field_13032_13033)
(declare-fun succHeap (T@PolymorphicMapType_12959 T@PolymorphicMapType_12959) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12959 T@PolymorphicMapType_12959) Bool)
(declare-fun state (T@PolymorphicMapType_12959 T@PolymorphicMapType_12980) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12980) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12959 T@PolymorphicMapType_12959 T@PolymorphicMapType_12980) Bool)
(declare-fun IsPredicateField_6419_6420 (T@Field_16735_16736) Bool)
(declare-fun HasDirectPerm_6419_6420 (T@PolymorphicMapType_12980 T@Ref T@Field_16735_16736) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6419 (T@Field_16735_16736) T@Field_19364_19369)
(declare-fun IsPredicateField_6380_49468 (T@Field_6380_6420) Bool)
(declare-fun HasDirectPerm_6380_6420 (T@PolymorphicMapType_12980 T@Ref T@Field_6380_6420) Bool)
(declare-fun PredicateMaskField_6380 (T@Field_6380_6420) T@Field_6380_19369)
(declare-fun IsWandField_6419_52754 (T@Field_16735_16736) Bool)
(declare-fun WandMaskField_6419 (T@Field_16735_16736) T@Field_19364_19369)
(declare-fun IsWandField_6380_52397 (T@Field_6380_6420) Bool)
(declare-fun WandMaskField_6380 (T@Field_6380_6420) T@Field_6380_19369)
(declare-fun ZeroPMask () T@PolymorphicMapType_13508)
(declare-fun node_2 (T@Ref) T@Field_16735_16736)
(declare-fun |length'| (T@PolymorphicMapType_12959 T@Ref) Int)
(declare-fun dummyFunction_1464 (Int) Bool)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |node#trigger_6419| (T@PolymorphicMapType_12959 T@Field_16735_16736) Bool)
(declare-fun |node#everUsed_6419| (T@Field_16735_16736) Bool)
(declare-fun length (T@PolymorphicMapType_12959 T@Ref) Int)
(declare-fun |node#sm| (T@Ref) T@Field_19364_19369)
(declare-fun dummyHeap () T@PolymorphicMapType_12959)
(declare-fun ZeroMask () T@PolymorphicMapType_12980)
(declare-fun InsidePredicate_13019_13019 (T@Field_6380_6420 T@FrameType T@Field_6380_6420 T@FrameType) Bool)
(declare-fun InsidePredicate_6419_6419 (T@Field_16735_16736 T@FrameType T@Field_16735_16736 T@FrameType) Bool)
(declare-fun IsPredicateField_6380_6381 (T@Field_13032_13033) Bool)
(declare-fun IsWandField_6380_6381 (T@Field_13032_13033) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6380_58465 (T@Field_6380_19369) Bool)
(declare-fun IsWandField_6380_58481 (T@Field_6380_19369) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6380_53 (T@Field_13019_53) Bool)
(declare-fun IsWandField_6380_53 (T@Field_13019_53) Bool)
(declare-fun IsPredicateField_6419_57816 (T@Field_19364_19369) Bool)
(declare-fun IsWandField_6419_57832 (T@Field_19364_19369) Bool)
(declare-fun IsPredicateField_6419_53 (T@Field_6419_53) Bool)
(declare-fun IsWandField_6419_53 (T@Field_6419_53) Bool)
(declare-fun IsPredicateField_6419_6381 (T@Field_6419_6381) Bool)
(declare-fun IsWandField_6419_6381 (T@Field_6419_6381) Bool)
(declare-fun HasDirectPerm_6419_49223 (T@PolymorphicMapType_12980 T@Ref T@Field_19364_19369) Bool)
(declare-fun HasDirectPerm_6419_53 (T@PolymorphicMapType_12980 T@Ref T@Field_6419_53) Bool)
(declare-fun HasDirectPerm_6419_6381 (T@PolymorphicMapType_12980 T@Ref T@Field_6419_6381) Bool)
(declare-fun HasDirectPerm_6380_48303 (T@PolymorphicMapType_12980 T@Ref T@Field_6380_19369) Bool)
(declare-fun HasDirectPerm_6380_53 (T@PolymorphicMapType_12980 T@Ref T@Field_13019_53) Bool)
(declare-fun HasDirectPerm_6380_6381 (T@PolymorphicMapType_12980 T@Ref T@Field_13032_13033) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12980 T@PolymorphicMapType_12980 T@PolymorphicMapType_12980) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(declare-fun getPredWandId_6419_6420 (T@Field_16735_16736) Int)
(declare-fun InsidePredicate_13019_6419 (T@Field_6380_6420 T@FrameType T@Field_16735_16736 T@FrameType) Bool)
(declare-fun InsidePredicate_6419_13019 (T@Field_16735_16736 T@FrameType T@Field_6380_6420 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_12959) (Heap1 T@PolymorphicMapType_12959) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12959) (Mask T@PolymorphicMapType_12980) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12959) (ExhaleHeap T@PolymorphicMapType_12959) (Mask@@0 T@PolymorphicMapType_12980) (pm_f_48 T@Field_16735_16736) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6419_6420 Mask@@0 null pm_f_48) (IsPredicateField_6419_6420 pm_f_48)) (and (and (and (and (and (and (and (forall ((o2_48 T@Ref) (f_54 T@Field_13032_13033) ) (!  (=> (select (|PolymorphicMapType_13508_6380_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_48))) o2_48 f_54) (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@0) o2_48 f_54) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap) o2_48 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap) o2_48 f_54))
)) (forall ((o2_48@@0 T@Ref) (f_54@@0 T@Field_13019_53) ) (!  (=> (select (|PolymorphicMapType_13508_6380_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_48))) o2_48@@0 f_54@@0) (= (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@0) o2_48@@0 f_54@@0) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap) o2_48@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap) o2_48@@0 f_54@@0))
))) (forall ((o2_48@@1 T@Ref) (f_54@@1 T@Field_6380_6420) ) (!  (=> (select (|PolymorphicMapType_13508_6380_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_48))) o2_48@@1 f_54@@1) (= (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@0) o2_48@@1 f_54@@1) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap) o2_48@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap) o2_48@@1 f_54@@1))
))) (forall ((o2_48@@2 T@Ref) (f_54@@2 T@Field_6380_19369) ) (!  (=> (select (|PolymorphicMapType_13508_6380_50739#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_48))) o2_48@@2 f_54@@2) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@0) o2_48@@2 f_54@@2) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap) o2_48@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap) o2_48@@2 f_54@@2))
))) (forall ((o2_48@@3 T@Ref) (f_54@@3 T@Field_6419_6381) ) (!  (=> (select (|PolymorphicMapType_13508_16735_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_48))) o2_48@@3 f_54@@3) (= (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@0) o2_48@@3 f_54@@3) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap) o2_48@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap) o2_48@@3 f_54@@3))
))) (forall ((o2_48@@4 T@Ref) (f_54@@4 T@Field_6419_53) ) (!  (=> (select (|PolymorphicMapType_13508_16735_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_48))) o2_48@@4 f_54@@4) (= (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@0) o2_48@@4 f_54@@4) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap) o2_48@@4 f_54@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap) o2_48@@4 f_54@@4))
))) (forall ((o2_48@@5 T@Ref) (f_54@@5 T@Field_16735_16736) ) (!  (=> (select (|PolymorphicMapType_13508_16735_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_48))) o2_48@@5 f_54@@5) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@0) o2_48@@5 f_54@@5) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap) o2_48@@5 f_54@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap) o2_48@@5 f_54@@5))
))) (forall ((o2_48@@6 T@Ref) (f_54@@6 T@Field_19364_19369) ) (!  (=> (select (|PolymorphicMapType_13508_16735_51589#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_48))) o2_48@@6 f_54@@6) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) o2_48@@6 f_54@@6) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap) o2_48@@6 f_54@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap) o2_48@@6 f_54@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6419_6420 pm_f_48))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12959) (ExhaleHeap@@0 T@PolymorphicMapType_12959) (Mask@@1 T@PolymorphicMapType_12980) (pm_f_48@@0 T@Field_6380_6420) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6380_6420 Mask@@1 null pm_f_48@@0) (IsPredicateField_6380_49468 pm_f_48@@0)) (and (and (and (and (and (and (and (forall ((o2_48@@7 T@Ref) (f_54@@7 T@Field_13032_13033) ) (!  (=> (select (|PolymorphicMapType_13508_6380_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_48@@0))) o2_48@@7 f_54@@7) (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@1) o2_48@@7 f_54@@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@7 f_54@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@7 f_54@@7))
)) (forall ((o2_48@@8 T@Ref) (f_54@@8 T@Field_13019_53) ) (!  (=> (select (|PolymorphicMapType_13508_6380_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_48@@0))) o2_48@@8 f_54@@8) (= (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@1) o2_48@@8 f_54@@8) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@8 f_54@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@8 f_54@@8))
))) (forall ((o2_48@@9 T@Ref) (f_54@@9 T@Field_6380_6420) ) (!  (=> (select (|PolymorphicMapType_13508_6380_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_48@@0))) o2_48@@9 f_54@@9) (= (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@1) o2_48@@9 f_54@@9) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@9 f_54@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@9 f_54@@9))
))) (forall ((o2_48@@10 T@Ref) (f_54@@10 T@Field_6380_19369) ) (!  (=> (select (|PolymorphicMapType_13508_6380_50739#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_48@@0))) o2_48@@10 f_54@@10) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) o2_48@@10 f_54@@10) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@10 f_54@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@10 f_54@@10))
))) (forall ((o2_48@@11 T@Ref) (f_54@@11 T@Field_6419_6381) ) (!  (=> (select (|PolymorphicMapType_13508_16735_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_48@@0))) o2_48@@11 f_54@@11) (= (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@1) o2_48@@11 f_54@@11) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@11 f_54@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@11 f_54@@11))
))) (forall ((o2_48@@12 T@Ref) (f_54@@12 T@Field_6419_53) ) (!  (=> (select (|PolymorphicMapType_13508_16735_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_48@@0))) o2_48@@12 f_54@@12) (= (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@1) o2_48@@12 f_54@@12) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@12 f_54@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@12 f_54@@12))
))) (forall ((o2_48@@13 T@Ref) (f_54@@13 T@Field_16735_16736) ) (!  (=> (select (|PolymorphicMapType_13508_16735_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_48@@0))) o2_48@@13 f_54@@13) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@1) o2_48@@13 f_54@@13) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@13 f_54@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@13 f_54@@13))
))) (forall ((o2_48@@14 T@Ref) (f_54@@14 T@Field_19364_19369) ) (!  (=> (select (|PolymorphicMapType_13508_16735_51589#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_48@@0))) o2_48@@14 f_54@@14) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@1) o2_48@@14 f_54@@14) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@14 f_54@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@0) o2_48@@14 f_54@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6380_49468 pm_f_48@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12959) (ExhaleHeap@@1 T@PolymorphicMapType_12959) (Mask@@2 T@PolymorphicMapType_12980) (pm_f_48@@1 T@Field_16735_16736) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6419_6420 Mask@@2 null pm_f_48@@1) (IsWandField_6419_52754 pm_f_48@@1)) (and (and (and (and (and (and (and (forall ((o2_48@@15 T@Ref) (f_54@@15 T@Field_13032_13033) ) (!  (=> (select (|PolymorphicMapType_13508_6380_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_48@@1))) o2_48@@15 f_54@@15) (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@2) o2_48@@15 f_54@@15) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@15 f_54@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@15 f_54@@15))
)) (forall ((o2_48@@16 T@Ref) (f_54@@16 T@Field_13019_53) ) (!  (=> (select (|PolymorphicMapType_13508_6380_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_48@@1))) o2_48@@16 f_54@@16) (= (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@2) o2_48@@16 f_54@@16) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@16 f_54@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@16 f_54@@16))
))) (forall ((o2_48@@17 T@Ref) (f_54@@17 T@Field_6380_6420) ) (!  (=> (select (|PolymorphicMapType_13508_6380_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_48@@1))) o2_48@@17 f_54@@17) (= (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@2) o2_48@@17 f_54@@17) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@17 f_54@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@17 f_54@@17))
))) (forall ((o2_48@@18 T@Ref) (f_54@@18 T@Field_6380_19369) ) (!  (=> (select (|PolymorphicMapType_13508_6380_50739#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_48@@1))) o2_48@@18 f_54@@18) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@2) o2_48@@18 f_54@@18) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@18 f_54@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@18 f_54@@18))
))) (forall ((o2_48@@19 T@Ref) (f_54@@19 T@Field_6419_6381) ) (!  (=> (select (|PolymorphicMapType_13508_16735_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_48@@1))) o2_48@@19 f_54@@19) (= (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@2) o2_48@@19 f_54@@19) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@19 f_54@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@19 f_54@@19))
))) (forall ((o2_48@@20 T@Ref) (f_54@@20 T@Field_6419_53) ) (!  (=> (select (|PolymorphicMapType_13508_16735_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_48@@1))) o2_48@@20 f_54@@20) (= (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@2) o2_48@@20 f_54@@20) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@20 f_54@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@20 f_54@@20))
))) (forall ((o2_48@@21 T@Ref) (f_54@@21 T@Field_16735_16736) ) (!  (=> (select (|PolymorphicMapType_13508_16735_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_48@@1))) o2_48@@21 f_54@@21) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@2) o2_48@@21 f_54@@21) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@21 f_54@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@21 f_54@@21))
))) (forall ((o2_48@@22 T@Ref) (f_54@@22 T@Field_19364_19369) ) (!  (=> (select (|PolymorphicMapType_13508_16735_51589#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_48@@1))) o2_48@@22 f_54@@22) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) o2_48@@22 f_54@@22) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@22 f_54@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@1) o2_48@@22 f_54@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_6419_52754 pm_f_48@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12959) (ExhaleHeap@@2 T@PolymorphicMapType_12959) (Mask@@3 T@PolymorphicMapType_12980) (pm_f_48@@2 T@Field_6380_6420) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6380_6420 Mask@@3 null pm_f_48@@2) (IsWandField_6380_52397 pm_f_48@@2)) (and (and (and (and (and (and (and (forall ((o2_48@@23 T@Ref) (f_54@@23 T@Field_13032_13033) ) (!  (=> (select (|PolymorphicMapType_13508_6380_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_48@@2))) o2_48@@23 f_54@@23) (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@3) o2_48@@23 f_54@@23) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@23 f_54@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@23 f_54@@23))
)) (forall ((o2_48@@24 T@Ref) (f_54@@24 T@Field_13019_53) ) (!  (=> (select (|PolymorphicMapType_13508_6380_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_48@@2))) o2_48@@24 f_54@@24) (= (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@3) o2_48@@24 f_54@@24) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@24 f_54@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@24 f_54@@24))
))) (forall ((o2_48@@25 T@Ref) (f_54@@25 T@Field_6380_6420) ) (!  (=> (select (|PolymorphicMapType_13508_6380_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_48@@2))) o2_48@@25 f_54@@25) (= (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@3) o2_48@@25 f_54@@25) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@25 f_54@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@25 f_54@@25))
))) (forall ((o2_48@@26 T@Ref) (f_54@@26 T@Field_6380_19369) ) (!  (=> (select (|PolymorphicMapType_13508_6380_50739#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_48@@2))) o2_48@@26 f_54@@26) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) o2_48@@26 f_54@@26) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@26 f_54@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@26 f_54@@26))
))) (forall ((o2_48@@27 T@Ref) (f_54@@27 T@Field_6419_6381) ) (!  (=> (select (|PolymorphicMapType_13508_16735_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_48@@2))) o2_48@@27 f_54@@27) (= (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@3) o2_48@@27 f_54@@27) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@27 f_54@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@27 f_54@@27))
))) (forall ((o2_48@@28 T@Ref) (f_54@@28 T@Field_6419_53) ) (!  (=> (select (|PolymorphicMapType_13508_16735_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_48@@2))) o2_48@@28 f_54@@28) (= (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@3) o2_48@@28 f_54@@28) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@28 f_54@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@28 f_54@@28))
))) (forall ((o2_48@@29 T@Ref) (f_54@@29 T@Field_16735_16736) ) (!  (=> (select (|PolymorphicMapType_13508_16735_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_48@@2))) o2_48@@29 f_54@@29) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@3) o2_48@@29 f_54@@29) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@29 f_54@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@29 f_54@@29))
))) (forall ((o2_48@@30 T@Ref) (f_54@@30 T@Field_19364_19369) ) (!  (=> (select (|PolymorphicMapType_13508_16735_51589#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_48@@2))) o2_48@@30 f_54@@30) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@3) o2_48@@30 f_54@@30) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@30 f_54@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@2) o2_48@@30 f_54@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6380_52397 pm_f_48@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12959) (Heap1@@0 T@PolymorphicMapType_12959) (Heap2 T@PolymorphicMapType_12959) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19364_19369) ) (!  (not (select (|PolymorphicMapType_13508_16735_51589#PolymorphicMapType_13508| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13508_16735_51589#PolymorphicMapType_13508| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16735_16736) ) (!  (not (select (|PolymorphicMapType_13508_16735_16736#PolymorphicMapType_13508| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13508_16735_16736#PolymorphicMapType_13508| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6419_53) ) (!  (not (select (|PolymorphicMapType_13508_16735_53#PolymorphicMapType_13508| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13508_16735_53#PolymorphicMapType_13508| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6419_6381) ) (!  (not (select (|PolymorphicMapType_13508_16735_6381#PolymorphicMapType_13508| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13508_16735_6381#PolymorphicMapType_13508| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6380_19369) ) (!  (not (select (|PolymorphicMapType_13508_6380_50739#PolymorphicMapType_13508| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13508_6380_50739#PolymorphicMapType_13508| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6380_6420) ) (!  (not (select (|PolymorphicMapType_13508_6380_16736#PolymorphicMapType_13508| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13508_6380_16736#PolymorphicMapType_13508| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_13019_53) ) (!  (not (select (|PolymorphicMapType_13508_6380_53#PolymorphicMapType_13508| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13508_6380_53#PolymorphicMapType_13508| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_13032_13033) ) (!  (not (select (|PolymorphicMapType_13508_6380_6381#PolymorphicMapType_13508| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13508_6380_6381#PolymorphicMapType_13508| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_6419_6420 (node_2 this))
 :qid |stdinbpl.348:15|
 :skolemid |30|
 :pattern ( (node_2 this))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12959) (this@@0 T@Ref) ) (! (dummyFunction_1464 (|length#triggerStateless| this@@0))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|length'| Heap@@4 this@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12959) (this@@1 T@Ref) ) (! (|node#everUsed_6419| (node_2 this@@1))
 :qid |stdinbpl.367:15|
 :skolemid |34|
 :pattern ( (|node#trigger_6419| Heap@@5 (node_2 this@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12959) (this@@2 T@Ref) ) (!  (and (= (length Heap@@6 this@@2) (|length'| Heap@@6 this@@2)) (dummyFunction_1464 (|length#triggerStateless| this@@2)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (length Heap@@6 this@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12959) (ExhaleHeap@@3 T@PolymorphicMapType_12959) (Mask@@4 T@PolymorphicMapType_12980) (pm_f_48@@3 T@Field_16735_16736) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6419_6420 Mask@@4 null pm_f_48@@3) (IsPredicateField_6419_6420 pm_f_48@@3)) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@7) null (PredicateMaskField_6419 pm_f_48@@3)) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@3) null (PredicateMaskField_6419 pm_f_48@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6419_6420 pm_f_48@@3) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@3) null (PredicateMaskField_6419 pm_f_48@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12959) (ExhaleHeap@@4 T@PolymorphicMapType_12959) (Mask@@5 T@PolymorphicMapType_12980) (pm_f_48@@4 T@Field_6380_6420) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6380_6420 Mask@@5 null pm_f_48@@4) (IsPredicateField_6380_49468 pm_f_48@@4)) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@8) null (PredicateMaskField_6380 pm_f_48@@4)) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@4) null (PredicateMaskField_6380 pm_f_48@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6380_49468 pm_f_48@@4) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@4) null (PredicateMaskField_6380 pm_f_48@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12959) (ExhaleHeap@@5 T@PolymorphicMapType_12959) (Mask@@6 T@PolymorphicMapType_12980) (pm_f_48@@5 T@Field_16735_16736) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6419_6420 Mask@@6 null pm_f_48@@5) (IsWandField_6419_52754 pm_f_48@@5)) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@9) null (WandMaskField_6419 pm_f_48@@5)) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@5) null (WandMaskField_6419 pm_f_48@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_6419_52754 pm_f_48@@5) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@5) null (WandMaskField_6419 pm_f_48@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12959) (ExhaleHeap@@6 T@PolymorphicMapType_12959) (Mask@@7 T@PolymorphicMapType_12980) (pm_f_48@@6 T@Field_6380_6420) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6380_6420 Mask@@7 null pm_f_48@@6) (IsWandField_6380_52397 pm_f_48@@6)) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@10) null (WandMaskField_6380 pm_f_48@@6)) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@6) null (WandMaskField_6380 pm_f_48@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_6380_52397 pm_f_48@@6) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@6) null (WandMaskField_6380 pm_f_48@@6)))
)))
(assert (forall ((this@@3 T@Ref) (this2 T@Ref) ) (!  (=> (= (node_2 this@@3) (node_2 this2)) (= this@@3 this2))
 :qid |stdinbpl.358:15|
 :skolemid |32|
 :pattern ( (node_2 this@@3) (node_2 this2))
)))
(assert (forall ((this@@4 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|node#sm| this@@4) (|node#sm| this2@@0)) (= this@@4 this2@@0))
 :qid |stdinbpl.362:15|
 :skolemid |33|
 :pattern ( (|node#sm| this@@4) (|node#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12959) (ExhaleHeap@@7 T@PolymorphicMapType_12959) (Mask@@8 T@PolymorphicMapType_12980) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@11) o_55 $allocated) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@7) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@7) o_55 $allocated))
)))
(assert (forall ((p T@Field_6380_6420) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13019_13019 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13019_13019 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_16735_16736) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6419_6419 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6419_6419 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_6380_6381 next)))
(assert  (not (IsWandField_6380_6381 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12959) (ExhaleHeap@@8 T@PolymorphicMapType_12959) (Mask@@9 T@PolymorphicMapType_12980) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12980) (o_2@@7 T@Ref) (f_4@@7 T@Field_6380_19369) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6380_58465 f_4@@7))) (not (IsWandField_6380_58481 f_4@@7))) (<= (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12980) (o_2@@8 T@Ref) (f_4@@8 T@Field_13019_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6380_53 f_4@@8))) (not (IsWandField_6380_53 f_4@@8))) (<= (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12980) (o_2@@9 T@Ref) (f_4@@9 T@Field_13032_13033) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6380_6381 f_4@@9))) (not (IsWandField_6380_6381 f_4@@9))) (<= (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12980) (o_2@@10 T@Ref) (f_4@@10 T@Field_6380_6420) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6380_49468 f_4@@10))) (not (IsWandField_6380_52397 f_4@@10))) (<= (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12980) (o_2@@11 T@Ref) (f_4@@11 T@Field_19364_19369) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6419_57816 f_4@@11))) (not (IsWandField_6419_57832 f_4@@11))) (<= (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12980) (o_2@@12 T@Ref) (f_4@@12 T@Field_6419_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6419_53 f_4@@12))) (not (IsWandField_6419_53 f_4@@12))) (<= (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12980) (o_2@@13 T@Ref) (f_4@@13 T@Field_6419_6381) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6419_6381 f_4@@13))) (not (IsWandField_6419_6381 f_4@@13))) (<= (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12980) (o_2@@14 T@Ref) (f_4@@14 T@Field_16735_16736) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6419_6420 f_4@@14))) (not (IsWandField_6419_52754 f_4@@14))) (<= (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12980) (o_2@@15 T@Ref) (f_4@@15 T@Field_19364_19369) ) (! (= (HasDirectPerm_6419_49223 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6419_49223 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12980) (o_2@@16 T@Ref) (f_4@@16 T@Field_6419_53) ) (! (= (HasDirectPerm_6419_53 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6419_53 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12980) (o_2@@17 T@Ref) (f_4@@17 T@Field_16735_16736) ) (! (= (HasDirectPerm_6419_6420 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6419_6420 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12980) (o_2@@18 T@Ref) (f_4@@18 T@Field_6419_6381) ) (! (= (HasDirectPerm_6419_6381 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6419_6381 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12980) (o_2@@19 T@Ref) (f_4@@19 T@Field_6380_19369) ) (! (= (HasDirectPerm_6380_48303 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6380_48303 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12980) (o_2@@20 T@Ref) (f_4@@20 T@Field_13019_53) ) (! (= (HasDirectPerm_6380_53 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6380_53 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12980) (o_2@@21 T@Ref) (f_4@@21 T@Field_6380_6420) ) (! (= (HasDirectPerm_6380_6420 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6380_6420 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12980) (o_2@@22 T@Ref) (f_4@@22 T@Field_13032_13033) ) (! (= (HasDirectPerm_6380_6381 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6380_6381 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12959) (ExhaleHeap@@9 T@PolymorphicMapType_12959) (Mask@@26 T@PolymorphicMapType_12980) (o_55@@0 T@Ref) (f_54@@31 T@Field_19364_19369) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_6419_49223 Mask@@26 o_55@@0 f_54@@31) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@13) o_55@@0 f_54@@31) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@9) o_55@@0 f_54@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@9) o_55@@0 f_54@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12959) (ExhaleHeap@@10 T@PolymorphicMapType_12959) (Mask@@27 T@PolymorphicMapType_12980) (o_55@@1 T@Ref) (f_54@@32 T@Field_6419_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_6419_53 Mask@@27 o_55@@1 f_54@@32) (= (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@14) o_55@@1 f_54@@32) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@10) o_55@@1 f_54@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@10) o_55@@1 f_54@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12959) (ExhaleHeap@@11 T@PolymorphicMapType_12959) (Mask@@28 T@PolymorphicMapType_12980) (o_55@@2 T@Ref) (f_54@@33 T@Field_16735_16736) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_6419_6420 Mask@@28 o_55@@2 f_54@@33) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@15) o_55@@2 f_54@@33) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@11) o_55@@2 f_54@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@11) o_55@@2 f_54@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12959) (ExhaleHeap@@12 T@PolymorphicMapType_12959) (Mask@@29 T@PolymorphicMapType_12980) (o_55@@3 T@Ref) (f_54@@34 T@Field_6419_6381) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_6419_6381 Mask@@29 o_55@@3 f_54@@34) (= (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@16) o_55@@3 f_54@@34) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@12) o_55@@3 f_54@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@12) o_55@@3 f_54@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12959) (ExhaleHeap@@13 T@PolymorphicMapType_12959) (Mask@@30 T@PolymorphicMapType_12980) (o_55@@4 T@Ref) (f_54@@35 T@Field_6380_19369) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_6380_48303 Mask@@30 o_55@@4 f_54@@35) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@17) o_55@@4 f_54@@35) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@13) o_55@@4 f_54@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@13) o_55@@4 f_54@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12959) (ExhaleHeap@@14 T@PolymorphicMapType_12959) (Mask@@31 T@PolymorphicMapType_12980) (o_55@@5 T@Ref) (f_54@@36 T@Field_13019_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_6380_53 Mask@@31 o_55@@5 f_54@@36) (= (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@18) o_55@@5 f_54@@36) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@14) o_55@@5 f_54@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@14) o_55@@5 f_54@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12959) (ExhaleHeap@@15 T@PolymorphicMapType_12959) (Mask@@32 T@PolymorphicMapType_12980) (o_55@@6 T@Ref) (f_54@@37 T@Field_6380_6420) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_6380_6420 Mask@@32 o_55@@6 f_54@@37) (= (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@19) o_55@@6 f_54@@37) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@15) o_55@@6 f_54@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@15) o_55@@6 f_54@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12959) (ExhaleHeap@@16 T@PolymorphicMapType_12959) (Mask@@33 T@PolymorphicMapType_12980) (o_55@@7 T@Ref) (f_54@@38 T@Field_13032_13033) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_6380_6381 Mask@@33 o_55@@7 f_54@@38) (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@20) o_55@@7 f_54@@38) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@16) o_55@@7 f_54@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@16) o_55@@7 f_54@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_6380_19369) ) (! (= (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_13019_53) ) (! (= (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_13032_13033) ) (! (= (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_6380_6420) ) (! (= (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_19364_19369) ) (! (= (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_6419_53) ) (! (= (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_6419_6381) ) (! (= (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_16735_16736) ) (! (= (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12980) (SummandMask1 T@PolymorphicMapType_12980) (SummandMask2 T@PolymorphicMapType_12980) (o_2@@31 T@Ref) (f_4@@31 T@Field_6380_19369) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12980) (SummandMask1@@0 T@PolymorphicMapType_12980) (SummandMask2@@0 T@PolymorphicMapType_12980) (o_2@@32 T@Ref) (f_4@@32 T@Field_13019_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12980) (SummandMask1@@1 T@PolymorphicMapType_12980) (SummandMask2@@1 T@PolymorphicMapType_12980) (o_2@@33 T@Ref) (f_4@@33 T@Field_13032_13033) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12980) (SummandMask1@@2 T@PolymorphicMapType_12980) (SummandMask2@@2 T@PolymorphicMapType_12980) (o_2@@34 T@Ref) (f_4@@34 T@Field_6380_6420) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12980) (SummandMask1@@3 T@PolymorphicMapType_12980) (SummandMask2@@3 T@PolymorphicMapType_12980) (o_2@@35 T@Ref) (f_4@@35 T@Field_19364_19369) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12980) (SummandMask1@@4 T@PolymorphicMapType_12980) (SummandMask2@@4 T@PolymorphicMapType_12980) (o_2@@36 T@Ref) (f_4@@36 T@Field_6419_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_12980) (SummandMask1@@5 T@PolymorphicMapType_12980) (SummandMask2@@5 T@PolymorphicMapType_12980) (o_2@@37 T@Ref) (f_4@@37 T@Field_6419_6381) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_12980) (SummandMask1@@6 T@PolymorphicMapType_12980) (SummandMask2@@6 T@PolymorphicMapType_12980) (o_2@@38 T@Ref) (f_4@@38 T@Field_16735_16736) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12959) (Mask@@34 T@PolymorphicMapType_12980) (this@@5 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@34) (< AssumeFunctionsAbove 0)) (= (length Heap@@21 this@@5) (+ 1 (ite (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@21) this@@5 next) null) 0 (|length'| Heap@@21 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@21) this@@5 next))))))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap@@21 Mask@@34) (length Heap@@21 this@@5))
 :pattern ( (state Heap@@21 Mask@@34) (|length#triggerStateless| this@@5) (|node#trigger_6419| Heap@@21 (node_2 this@@5)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12959) (Mask@@35 T@PolymorphicMapType_12980) (this@@6 T@Ref) ) (!  (=> (state Heap@@22 Mask@@35) (= (|length'| Heap@@22 this@@6) (|length#frame| (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@22) null (node_2 this@@6)) this@@6)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@22 Mask@@35) (|length'| Heap@@22 this@@6))
 :pattern ( (state Heap@@22 Mask@@35) (|length#triggerStateless| this@@6) (|node#trigger_6419| Heap@@22 (node_2 this@@6)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12959) (Mask@@36 T@PolymorphicMapType_12980) (this@@7 T@Ref) ) (!  (=> (and (state Heap@@23 Mask@@36) (or (< AssumeFunctionsAbove 0) (|length#trigger| (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@23) null (node_2 this@@7)) this@@7))) (> (|length'| Heap@@23 this@@7) 0))
 :qid |stdinbpl.217:15|
 :skolemid |26|
 :pattern ( (state Heap@@23 Mask@@36) (|length'| Heap@@23 this@@7))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (getPredWandId_6419_6420 (node_2 this@@8)) 0)
 :qid |stdinbpl.352:15|
 :skolemid |31|
 :pattern ( (node_2 this@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12959) (o_46 T@Ref) (f_25 T@Field_19364_19369) (v T@PolymorphicMapType_13508) ) (! (succHeap Heap@@24 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@24) (store (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@24) o_46 f_25 v) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@24) (store (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@24) o_46 f_25 v) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12959) (o_46@@0 T@Ref) (f_25@@0 T@Field_16735_16736) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@25) (store (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@25) o_46@@0 f_25@@0 v@@0) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@25) (store (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@25) o_46@@0 f_25@@0 v@@0) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12959) (o_46@@1 T@Ref) (f_25@@1 T@Field_6419_6381) (v@@1 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@26) (store (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@26) o_46@@1 f_25@@1 v@@1) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@26) (store (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@26) o_46@@1 f_25@@1 v@@1) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12959) (o_46@@2 T@Ref) (f_25@@2 T@Field_6419_53) (v@@2 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@27) (store (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@27) o_46@@2 f_25@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@27) (store (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@27) o_46@@2 f_25@@2 v@@2)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12959) (o_46@@3 T@Ref) (f_25@@3 T@Field_6380_19369) (v@@3 T@PolymorphicMapType_13508) ) (! (succHeap Heap@@28 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@28) (store (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@28) o_46@@3 f_25@@3 v@@3) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@28) (store (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@28) o_46@@3 f_25@@3 v@@3) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12959) (o_46@@4 T@Ref) (f_25@@4 T@Field_6380_6420) (v@@4 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@29) (store (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@29) o_46@@4 f_25@@4 v@@4) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@29) (store (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@29) o_46@@4 f_25@@4 v@@4) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12959) (o_46@@5 T@Ref) (f_25@@5 T@Field_13032_13033) (v@@5 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@30) (store (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@30) o_46@@5 f_25@@5 v@@5) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@30) (store (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@30) o_46@@5 f_25@@5 v@@5) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12959) (o_46@@6 T@Ref) (f_25@@6 T@Field_13019_53) (v@@6 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_12959 (store (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@31) o_46@@6 f_25@@6 v@@6) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (store (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@31) o_46@@6 f_25@@6 v@@6) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@31)))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (PredicateMaskField_6419 (node_2 this@@9)) (|node#sm| this@@9))
 :qid |stdinbpl.344:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_6419 (node_2 this@@9)))
)))
(assert (forall ((o_46@@7 T@Ref) (f_37 T@Field_13032_13033) (Heap@@32 T@PolymorphicMapType_12959) ) (!  (=> (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@32) o_46@@7 $allocated) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@32) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@32) o_46@@7 f_37) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@32) o_46@@7 f_37))
)))
(assert (forall ((p@@2 T@Field_6380_6420) (v_1@@1 T@FrameType) (q T@Field_6380_6420) (w@@1 T@FrameType) (r T@Field_6380_6420) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13019_13019 p@@2 v_1@@1 q w@@1) (InsidePredicate_13019_13019 q w@@1 r u)) (InsidePredicate_13019_13019 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13019_13019 p@@2 v_1@@1 q w@@1) (InsidePredicate_13019_13019 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_6380_6420) (v_1@@2 T@FrameType) (q@@0 T@Field_6380_6420) (w@@2 T@FrameType) (r@@0 T@Field_16735_16736) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13019_13019 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13019_6419 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_13019_6419 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13019_13019 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13019_6419 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_6380_6420) (v_1@@3 T@FrameType) (q@@1 T@Field_16735_16736) (w@@3 T@FrameType) (r@@1 T@Field_6380_6420) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13019_6419 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6419_13019 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_13019_13019 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13019_6419 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6419_13019 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_6380_6420) (v_1@@4 T@FrameType) (q@@2 T@Field_16735_16736) (w@@4 T@FrameType) (r@@2 T@Field_16735_16736) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13019_6419 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6419_6419 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_13019_6419 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13019_6419 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6419_6419 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_16735_16736) (v_1@@5 T@FrameType) (q@@3 T@Field_6380_6420) (w@@5 T@FrameType) (r@@3 T@Field_6380_6420) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6419_13019 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13019_13019 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_6419_13019 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6419_13019 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13019_13019 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_16735_16736) (v_1@@6 T@FrameType) (q@@4 T@Field_6380_6420) (w@@6 T@FrameType) (r@@4 T@Field_16735_16736) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6419_13019 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13019_6419 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_6419_6419 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6419_13019 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13019_6419 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_16735_16736) (v_1@@7 T@FrameType) (q@@5 T@Field_16735_16736) (w@@7 T@FrameType) (r@@5 T@Field_6380_6420) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6419_6419 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6419_13019 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_6419_13019 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6419_6419 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6419_13019 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_16735_16736) (v_1@@8 T@FrameType) (q@@6 T@Field_16735_16736) (w@@8 T@FrameType) (r@@6 T@Field_16735_16736) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6419_6419 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6419_6419 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_6419_6419 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6419_6419 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6419_6419 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@33 () T@PolymorphicMapType_12959)
(declare-fun this@@10 () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_12980)
(declare-fun Mask@0 () T@PolymorphicMapType_12980)
(declare-fun Mask@1 () T@PolymorphicMapType_12980)
(set-info :boogie-vc-id |node#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@33) this@@10 next) null) (=> (and (= Mask@2 Mask@0) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@33) this@@10 next) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_6380_6381 Mask@0 this@@10 next)) (=> (HasDirectPerm_6380_6381 Mask@0 this@@10 next) (=> (and (and (= Mask@1 (PolymorphicMapType_12980 (store (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@0) null (node_2 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@33) this@@10 next)) (+ (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@0) null (node_2 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@33) this@@10 next))) FullPerm)) (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@0))) (state Heap@@33 Mask@1)) (and (= Mask@2 Mask@1) (= (ControlFlow 0 2) 1))) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@33 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@33) this@@10 $allocated) (not (= this@@10 null))) (and (= Mask@0 (PolymorphicMapType_12980 (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| ZeroMask) (store (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| ZeroMask) this@@10 next (+ (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| ZeroMask) this@@10 next) FullPerm)) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| ZeroMask) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| ZeroMask) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| ZeroMask) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| ZeroMask) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| ZeroMask) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| ZeroMask))) (state Heap@@33 Mask@0))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_6380_6381 Mask@0 this@@10 next)) (=> (HasDirectPerm_6380_6381 Mask@0 this@@10 next) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
