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
(declare-fun node_1 (T@Ref) T@Field_16735_16736)
(declare-fun |length'| (T@PolymorphicMapType_12959 T@Ref) Int)
(declare-fun dummyFunction_1464 (Int) Bool)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |node#trigger_6419| (T@PolymorphicMapType_12959 T@Field_16735_16736) Bool)
(declare-fun |node#everUsed_6419| (T@Field_16735_16736) Bool)
(declare-fun length_1 (T@PolymorphicMapType_12959 T@Ref) Int)
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_12959) (ExhaleHeap T@PolymorphicMapType_12959) (Mask@@0 T@PolymorphicMapType_12980) (pm_f_27 T@Field_16735_16736) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6419_6420 Mask@@0 null pm_f_27) (IsPredicateField_6419_6420 pm_f_27)) (and (and (and (and (and (and (and (forall ((o2_27 T@Ref) (f_62 T@Field_13032_13033) ) (!  (=> (select (|PolymorphicMapType_13508_6380_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_27))) o2_27 f_62) (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@0) o2_27 f_62) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap) o2_27 f_62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap) o2_27 f_62))
)) (forall ((o2_27@@0 T@Ref) (f_62@@0 T@Field_13019_53) ) (!  (=> (select (|PolymorphicMapType_13508_6380_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_27))) o2_27@@0 f_62@@0) (= (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@0) o2_27@@0 f_62@@0) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap) o2_27@@0 f_62@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap) o2_27@@0 f_62@@0))
))) (forall ((o2_27@@1 T@Ref) (f_62@@1 T@Field_6380_6420) ) (!  (=> (select (|PolymorphicMapType_13508_6380_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_27))) o2_27@@1 f_62@@1) (= (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@0) o2_27@@1 f_62@@1) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap) o2_27@@1 f_62@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap) o2_27@@1 f_62@@1))
))) (forall ((o2_27@@2 T@Ref) (f_62@@2 T@Field_6380_19369) ) (!  (=> (select (|PolymorphicMapType_13508_6380_50739#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_27))) o2_27@@2 f_62@@2) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@0) o2_27@@2 f_62@@2) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap) o2_27@@2 f_62@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap) o2_27@@2 f_62@@2))
))) (forall ((o2_27@@3 T@Ref) (f_62@@3 T@Field_6419_6381) ) (!  (=> (select (|PolymorphicMapType_13508_16735_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_27))) o2_27@@3 f_62@@3) (= (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@0) o2_27@@3 f_62@@3) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap) o2_27@@3 f_62@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap) o2_27@@3 f_62@@3))
))) (forall ((o2_27@@4 T@Ref) (f_62@@4 T@Field_6419_53) ) (!  (=> (select (|PolymorphicMapType_13508_16735_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_27))) o2_27@@4 f_62@@4) (= (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@0) o2_27@@4 f_62@@4) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap) o2_27@@4 f_62@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap) o2_27@@4 f_62@@4))
))) (forall ((o2_27@@5 T@Ref) (f_62@@5 T@Field_16735_16736) ) (!  (=> (select (|PolymorphicMapType_13508_16735_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_27))) o2_27@@5 f_62@@5) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@0) o2_27@@5 f_62@@5) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap) o2_27@@5 f_62@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap) o2_27@@5 f_62@@5))
))) (forall ((o2_27@@6 T@Ref) (f_62@@6 T@Field_19364_19369) ) (!  (=> (select (|PolymorphicMapType_13508_16735_51589#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) null (PredicateMaskField_6419 pm_f_27))) o2_27@@6 f_62@@6) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@0) o2_27@@6 f_62@@6) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap) o2_27@@6 f_62@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap) o2_27@@6 f_62@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6419_6420 pm_f_27))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12959) (ExhaleHeap@@0 T@PolymorphicMapType_12959) (Mask@@1 T@PolymorphicMapType_12980) (pm_f_27@@0 T@Field_6380_6420) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6380_6420 Mask@@1 null pm_f_27@@0) (IsPredicateField_6380_49468 pm_f_27@@0)) (and (and (and (and (and (and (and (forall ((o2_27@@7 T@Ref) (f_62@@7 T@Field_13032_13033) ) (!  (=> (select (|PolymorphicMapType_13508_6380_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_27@@0))) o2_27@@7 f_62@@7) (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@1) o2_27@@7 f_62@@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@7 f_62@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@7 f_62@@7))
)) (forall ((o2_27@@8 T@Ref) (f_62@@8 T@Field_13019_53) ) (!  (=> (select (|PolymorphicMapType_13508_6380_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_27@@0))) o2_27@@8 f_62@@8) (= (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@1) o2_27@@8 f_62@@8) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@8 f_62@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@8 f_62@@8))
))) (forall ((o2_27@@9 T@Ref) (f_62@@9 T@Field_6380_6420) ) (!  (=> (select (|PolymorphicMapType_13508_6380_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_27@@0))) o2_27@@9 f_62@@9) (= (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@1) o2_27@@9 f_62@@9) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@9 f_62@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@9 f_62@@9))
))) (forall ((o2_27@@10 T@Ref) (f_62@@10 T@Field_6380_19369) ) (!  (=> (select (|PolymorphicMapType_13508_6380_50739#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_27@@0))) o2_27@@10 f_62@@10) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) o2_27@@10 f_62@@10) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@10 f_62@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@10 f_62@@10))
))) (forall ((o2_27@@11 T@Ref) (f_62@@11 T@Field_6419_6381) ) (!  (=> (select (|PolymorphicMapType_13508_16735_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_27@@0))) o2_27@@11 f_62@@11) (= (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@1) o2_27@@11 f_62@@11) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@11 f_62@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@11 f_62@@11))
))) (forall ((o2_27@@12 T@Ref) (f_62@@12 T@Field_6419_53) ) (!  (=> (select (|PolymorphicMapType_13508_16735_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_27@@0))) o2_27@@12 f_62@@12) (= (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@1) o2_27@@12 f_62@@12) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@12 f_62@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@12 f_62@@12))
))) (forall ((o2_27@@13 T@Ref) (f_62@@13 T@Field_16735_16736) ) (!  (=> (select (|PolymorphicMapType_13508_16735_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_27@@0))) o2_27@@13 f_62@@13) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@1) o2_27@@13 f_62@@13) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@13 f_62@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@13 f_62@@13))
))) (forall ((o2_27@@14 T@Ref) (f_62@@14 T@Field_19364_19369) ) (!  (=> (select (|PolymorphicMapType_13508_16735_51589#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@1) null (PredicateMaskField_6380 pm_f_27@@0))) o2_27@@14 f_62@@14) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@1) o2_27@@14 f_62@@14) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@14 f_62@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@0) o2_27@@14 f_62@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6380_49468 pm_f_27@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12959) (ExhaleHeap@@1 T@PolymorphicMapType_12959) (Mask@@2 T@PolymorphicMapType_12980) (pm_f_27@@1 T@Field_16735_16736) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6419_6420 Mask@@2 null pm_f_27@@1) (IsWandField_6419_52754 pm_f_27@@1)) (and (and (and (and (and (and (and (forall ((o2_27@@15 T@Ref) (f_62@@15 T@Field_13032_13033) ) (!  (=> (select (|PolymorphicMapType_13508_6380_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_27@@1))) o2_27@@15 f_62@@15) (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@2) o2_27@@15 f_62@@15) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@15 f_62@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@15 f_62@@15))
)) (forall ((o2_27@@16 T@Ref) (f_62@@16 T@Field_13019_53) ) (!  (=> (select (|PolymorphicMapType_13508_6380_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_27@@1))) o2_27@@16 f_62@@16) (= (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@2) o2_27@@16 f_62@@16) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@16 f_62@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@16 f_62@@16))
))) (forall ((o2_27@@17 T@Ref) (f_62@@17 T@Field_6380_6420) ) (!  (=> (select (|PolymorphicMapType_13508_6380_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_27@@1))) o2_27@@17 f_62@@17) (= (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@2) o2_27@@17 f_62@@17) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@17 f_62@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@17 f_62@@17))
))) (forall ((o2_27@@18 T@Ref) (f_62@@18 T@Field_6380_19369) ) (!  (=> (select (|PolymorphicMapType_13508_6380_50739#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_27@@1))) o2_27@@18 f_62@@18) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@2) o2_27@@18 f_62@@18) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@18 f_62@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@18 f_62@@18))
))) (forall ((o2_27@@19 T@Ref) (f_62@@19 T@Field_6419_6381) ) (!  (=> (select (|PolymorphicMapType_13508_16735_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_27@@1))) o2_27@@19 f_62@@19) (= (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@2) o2_27@@19 f_62@@19) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@19 f_62@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@19 f_62@@19))
))) (forall ((o2_27@@20 T@Ref) (f_62@@20 T@Field_6419_53) ) (!  (=> (select (|PolymorphicMapType_13508_16735_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_27@@1))) o2_27@@20 f_62@@20) (= (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@2) o2_27@@20 f_62@@20) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@20 f_62@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@20 f_62@@20))
))) (forall ((o2_27@@21 T@Ref) (f_62@@21 T@Field_16735_16736) ) (!  (=> (select (|PolymorphicMapType_13508_16735_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_27@@1))) o2_27@@21 f_62@@21) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@2) o2_27@@21 f_62@@21) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@21 f_62@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@21 f_62@@21))
))) (forall ((o2_27@@22 T@Ref) (f_62@@22 T@Field_19364_19369) ) (!  (=> (select (|PolymorphicMapType_13508_16735_51589#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) null (WandMaskField_6419 pm_f_27@@1))) o2_27@@22 f_62@@22) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@2) o2_27@@22 f_62@@22) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@22 f_62@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@1) o2_27@@22 f_62@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_6419_52754 pm_f_27@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12959) (ExhaleHeap@@2 T@PolymorphicMapType_12959) (Mask@@3 T@PolymorphicMapType_12980) (pm_f_27@@2 T@Field_6380_6420) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6380_6420 Mask@@3 null pm_f_27@@2) (IsWandField_6380_52397 pm_f_27@@2)) (and (and (and (and (and (and (and (forall ((o2_27@@23 T@Ref) (f_62@@23 T@Field_13032_13033) ) (!  (=> (select (|PolymorphicMapType_13508_6380_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_27@@2))) o2_27@@23 f_62@@23) (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@3) o2_27@@23 f_62@@23) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@23 f_62@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@23 f_62@@23))
)) (forall ((o2_27@@24 T@Ref) (f_62@@24 T@Field_13019_53) ) (!  (=> (select (|PolymorphicMapType_13508_6380_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_27@@2))) o2_27@@24 f_62@@24) (= (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@3) o2_27@@24 f_62@@24) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@24 f_62@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@24 f_62@@24))
))) (forall ((o2_27@@25 T@Ref) (f_62@@25 T@Field_6380_6420) ) (!  (=> (select (|PolymorphicMapType_13508_6380_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_27@@2))) o2_27@@25 f_62@@25) (= (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@3) o2_27@@25 f_62@@25) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@25 f_62@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@25 f_62@@25))
))) (forall ((o2_27@@26 T@Ref) (f_62@@26 T@Field_6380_19369) ) (!  (=> (select (|PolymorphicMapType_13508_6380_50739#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_27@@2))) o2_27@@26 f_62@@26) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) o2_27@@26 f_62@@26) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@26 f_62@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@26 f_62@@26))
))) (forall ((o2_27@@27 T@Ref) (f_62@@27 T@Field_6419_6381) ) (!  (=> (select (|PolymorphicMapType_13508_16735_6381#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_27@@2))) o2_27@@27 f_62@@27) (= (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@3) o2_27@@27 f_62@@27) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@27 f_62@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@27 f_62@@27))
))) (forall ((o2_27@@28 T@Ref) (f_62@@28 T@Field_6419_53) ) (!  (=> (select (|PolymorphicMapType_13508_16735_53#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_27@@2))) o2_27@@28 f_62@@28) (= (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@3) o2_27@@28 f_62@@28) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@28 f_62@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@28 f_62@@28))
))) (forall ((o2_27@@29 T@Ref) (f_62@@29 T@Field_16735_16736) ) (!  (=> (select (|PolymorphicMapType_13508_16735_16736#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_27@@2))) o2_27@@29 f_62@@29) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@3) o2_27@@29 f_62@@29) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@29 f_62@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@29 f_62@@29))
))) (forall ((o2_27@@30 T@Ref) (f_62@@30 T@Field_19364_19369) ) (!  (=> (select (|PolymorphicMapType_13508_16735_51589#PolymorphicMapType_13508| (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@3) null (WandMaskField_6380 pm_f_27@@2))) o2_27@@30 f_62@@30) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@3) o2_27@@30 f_62@@30) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@30 f_62@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@2) o2_27@@30 f_62@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6380_52397 pm_f_27@@2))
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
(assert (forall ((this T@Ref) ) (! (IsPredicateField_6419_6420 (node_1 this))
 :qid |stdinbpl.348:15|
 :skolemid |30|
 :pattern ( (node_1 this))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12959) (this@@0 T@Ref) ) (! (dummyFunction_1464 (|length#triggerStateless| this@@0))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|length'| Heap@@4 this@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12959) (this@@1 T@Ref) ) (! (|node#everUsed_6419| (node_1 this@@1))
 :qid |stdinbpl.367:15|
 :skolemid |34|
 :pattern ( (|node#trigger_6419| Heap@@5 (node_1 this@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12959) (this@@2 T@Ref) ) (!  (and (= (length_1 Heap@@6 this@@2) (|length'| Heap@@6 this@@2)) (dummyFunction_1464 (|length#triggerStateless| this@@2)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (length_1 Heap@@6 this@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12959) (ExhaleHeap@@3 T@PolymorphicMapType_12959) (Mask@@4 T@PolymorphicMapType_12980) (pm_f_27@@3 T@Field_16735_16736) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6419_6420 Mask@@4 null pm_f_27@@3) (IsPredicateField_6419_6420 pm_f_27@@3)) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@7) null (PredicateMaskField_6419 pm_f_27@@3)) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@3) null (PredicateMaskField_6419 pm_f_27@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6419_6420 pm_f_27@@3) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@3) null (PredicateMaskField_6419 pm_f_27@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12959) (ExhaleHeap@@4 T@PolymorphicMapType_12959) (Mask@@5 T@PolymorphicMapType_12980) (pm_f_27@@4 T@Field_6380_6420) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6380_6420 Mask@@5 null pm_f_27@@4) (IsPredicateField_6380_49468 pm_f_27@@4)) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@8) null (PredicateMaskField_6380 pm_f_27@@4)) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@4) null (PredicateMaskField_6380 pm_f_27@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6380_49468 pm_f_27@@4) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@4) null (PredicateMaskField_6380 pm_f_27@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12959) (ExhaleHeap@@5 T@PolymorphicMapType_12959) (Mask@@6 T@PolymorphicMapType_12980) (pm_f_27@@5 T@Field_16735_16736) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6419_6420 Mask@@6 null pm_f_27@@5) (IsWandField_6419_52754 pm_f_27@@5)) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@9) null (WandMaskField_6419 pm_f_27@@5)) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@5) null (WandMaskField_6419 pm_f_27@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_6419_52754 pm_f_27@@5) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@5) null (WandMaskField_6419 pm_f_27@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12959) (ExhaleHeap@@6 T@PolymorphicMapType_12959) (Mask@@7 T@PolymorphicMapType_12980) (pm_f_27@@6 T@Field_6380_6420) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6380_6420 Mask@@7 null pm_f_27@@6) (IsWandField_6380_52397 pm_f_27@@6)) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@10) null (WandMaskField_6380 pm_f_27@@6)) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@6) null (WandMaskField_6380 pm_f_27@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_6380_52397 pm_f_27@@6) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@6) null (WandMaskField_6380 pm_f_27@@6)))
)))
(assert (forall ((this@@3 T@Ref) (this2 T@Ref) ) (!  (=> (= (node_1 this@@3) (node_1 this2)) (= this@@3 this2))
 :qid |stdinbpl.358:15|
 :skolemid |32|
 :pattern ( (node_1 this@@3) (node_1 this2))
)))
(assert (forall ((this@@4 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|node#sm| this@@4) (|node#sm| this2@@0)) (= this@@4 this2@@0))
 :qid |stdinbpl.362:15|
 :skolemid |33|
 :pattern ( (|node#sm| this@@4) (|node#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12959) (ExhaleHeap@@7 T@PolymorphicMapType_12959) (Mask@@8 T@PolymorphicMapType_12980) (o_51 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@11) o_51 $allocated) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@7) o_51 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@7) o_51 $allocated))
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
(assert (forall ((Heap@@13 T@PolymorphicMapType_12959) (ExhaleHeap@@9 T@PolymorphicMapType_12959) (Mask@@26 T@PolymorphicMapType_12980) (o_51@@0 T@Ref) (f_62@@31 T@Field_19364_19369) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_6419_49223 Mask@@26 o_51@@0 f_62@@31) (= (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@13) o_51@@0 f_62@@31) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@9) o_51@@0 f_62@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| ExhaleHeap@@9) o_51@@0 f_62@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12959) (ExhaleHeap@@10 T@PolymorphicMapType_12959) (Mask@@27 T@PolymorphicMapType_12980) (o_51@@1 T@Ref) (f_62@@32 T@Field_6419_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_6419_53 Mask@@27 o_51@@1 f_62@@32) (= (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@14) o_51@@1 f_62@@32) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@10) o_51@@1 f_62@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| ExhaleHeap@@10) o_51@@1 f_62@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12959) (ExhaleHeap@@11 T@PolymorphicMapType_12959) (Mask@@28 T@PolymorphicMapType_12980) (o_51@@2 T@Ref) (f_62@@33 T@Field_16735_16736) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_6419_6420 Mask@@28 o_51@@2 f_62@@33) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@15) o_51@@2 f_62@@33) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@11) o_51@@2 f_62@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| ExhaleHeap@@11) o_51@@2 f_62@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12959) (ExhaleHeap@@12 T@PolymorphicMapType_12959) (Mask@@29 T@PolymorphicMapType_12980) (o_51@@3 T@Ref) (f_62@@34 T@Field_6419_6381) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_6419_6381 Mask@@29 o_51@@3 f_62@@34) (= (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@16) o_51@@3 f_62@@34) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@12) o_51@@3 f_62@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| ExhaleHeap@@12) o_51@@3 f_62@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12959) (ExhaleHeap@@13 T@PolymorphicMapType_12959) (Mask@@30 T@PolymorphicMapType_12980) (o_51@@4 T@Ref) (f_62@@35 T@Field_6380_19369) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_6380_48303 Mask@@30 o_51@@4 f_62@@35) (= (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@17) o_51@@4 f_62@@35) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@13) o_51@@4 f_62@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| ExhaleHeap@@13) o_51@@4 f_62@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12959) (ExhaleHeap@@14 T@PolymorphicMapType_12959) (Mask@@31 T@PolymorphicMapType_12980) (o_51@@5 T@Ref) (f_62@@36 T@Field_13019_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_6380_53 Mask@@31 o_51@@5 f_62@@36) (= (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@18) o_51@@5 f_62@@36) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@14) o_51@@5 f_62@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| ExhaleHeap@@14) o_51@@5 f_62@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12959) (ExhaleHeap@@15 T@PolymorphicMapType_12959) (Mask@@32 T@PolymorphicMapType_12980) (o_51@@6 T@Ref) (f_62@@37 T@Field_6380_6420) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_6380_6420 Mask@@32 o_51@@6 f_62@@37) (= (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@19) o_51@@6 f_62@@37) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@15) o_51@@6 f_62@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| ExhaleHeap@@15) o_51@@6 f_62@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12959) (ExhaleHeap@@16 T@PolymorphicMapType_12959) (Mask@@33 T@PolymorphicMapType_12980) (o_51@@7 T@Ref) (f_62@@38 T@Field_13032_13033) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_6380_6381 Mask@@33 o_51@@7 f_62@@38) (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@20) o_51@@7 f_62@@38) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@16) o_51@@7 f_62@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| ExhaleHeap@@16) o_51@@7 f_62@@38))
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
(assert (forall ((Heap@@21 T@PolymorphicMapType_12959) (Mask@@34 T@PolymorphicMapType_12980) (this@@5 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@34) (< AssumeFunctionsAbove 0)) (= (length_1 Heap@@21 this@@5) (+ 1 (ite (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@21) this@@5 next) null) 0 (|length'| Heap@@21 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@21) this@@5 next))))))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap@@21 Mask@@34) (length_1 Heap@@21 this@@5))
 :pattern ( (state Heap@@21 Mask@@34) (|length#triggerStateless| this@@5) (|node#trigger_6419| Heap@@21 (node_1 this@@5)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12959) (Mask@@35 T@PolymorphicMapType_12980) (this@@6 T@Ref) ) (!  (=> (state Heap@@22 Mask@@35) (= (|length'| Heap@@22 this@@6) (|length#frame| (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@22) null (node_1 this@@6)) this@@6)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@22 Mask@@35) (|length'| Heap@@22 this@@6))
 :pattern ( (state Heap@@22 Mask@@35) (|length#triggerStateless| this@@6) (|node#trigger_6419| Heap@@22 (node_1 this@@6)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12959) (Mask@@36 T@PolymorphicMapType_12980) (this@@7 T@Ref) ) (!  (=> (and (state Heap@@23 Mask@@36) (or (< AssumeFunctionsAbove 0) (|length#trigger| (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@23) null (node_1 this@@7)) this@@7))) (> (|length'| Heap@@23 this@@7) 0))
 :qid |stdinbpl.217:15|
 :skolemid |26|
 :pattern ( (state Heap@@23 Mask@@36) (|length'| Heap@@23 this@@7))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (getPredWandId_6419_6420 (node_1 this@@8)) 0)
 :qid |stdinbpl.352:15|
 :skolemid |31|
 :pattern ( (node_1 this@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12959) (o_41 T@Ref) (f_13 T@Field_19364_19369) (v T@PolymorphicMapType_13508) ) (! (succHeap Heap@@24 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@24) (store (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@24) o_41 f_13 v) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@24) (store (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@24) o_41 f_13 v) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@24) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12959) (o_41@@0 T@Ref) (f_13@@0 T@Field_16735_16736) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@25) (store (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@25) o_41@@0 f_13@@0 v@@0) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@25) (store (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@25) o_41@@0 f_13@@0 v@@0) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@25) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12959) (o_41@@1 T@Ref) (f_13@@1 T@Field_6419_6381) (v@@1 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@26) (store (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@26) o_41@@1 f_13@@1 v@@1) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@26) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@26) (store (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@26) o_41@@1 f_13@@1 v@@1) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12959) (o_41@@2 T@Ref) (f_13@@2 T@Field_6419_53) (v@@2 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@27) (store (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@27) o_41@@2 f_13@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@27) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@27) (store (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@27) o_41@@2 f_13@@2 v@@2)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12959) (o_41@@3 T@Ref) (f_13@@3 T@Field_6380_19369) (v@@3 T@PolymorphicMapType_13508) ) (! (succHeap Heap@@28 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@28) (store (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@28) o_41@@3 f_13@@3 v@@3) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@28) (store (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@28) o_41@@3 f_13@@3 v@@3) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@28) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12959) (o_41@@4 T@Ref) (f_13@@4 T@Field_6380_6420) (v@@4 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@29) (store (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@29) o_41@@4 f_13@@4 v@@4) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@29) (store (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@29) o_41@@4 f_13@@4 v@@4) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@29) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12959) (o_41@@5 T@Ref) (f_13@@5 T@Field_13032_13033) (v@@5 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@30) (store (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@30) o_41@@5 f_13@@5 v@@5) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@30) (store (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@30) o_41@@5 f_13@@5 v@@5) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@30) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12959) (o_41@@6 T@Ref) (f_13@@6 T@Field_13019_53) (v@@6 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_12959 (store (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@31) o_41@@6 f_13@@6 v@@6) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12959 (store (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@31) o_41@@6 f_13@@6 v@@6) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@31) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@31)))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (PredicateMaskField_6419 (node_1 this@@9)) (|node#sm| this@@9))
 :qid |stdinbpl.344:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_6419 (node_1 this@@9)))
)))
(assert (forall ((o_41@@7 T@Ref) (f_53 T@Field_13032_13033) (Heap@@32 T@PolymorphicMapType_12959) ) (!  (=> (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@32) o_41@@7 $allocated) (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@32) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@32) o_41@@7 f_53) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@32) o_41@@7 f_53))
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
(declare-fun Heap@7 () T@PolymorphicMapType_12959)
(declare-fun Mask@16 () T@PolymorphicMapType_12980)
(declare-fun n4 () T@Ref)
(declare-fun Mask@14 () T@PolymorphicMapType_12980)
(declare-fun Mask@15 () T@PolymorphicMapType_12980)
(declare-fun Mask@13 () T@PolymorphicMapType_12980)
(declare-fun Heap@5 () T@PolymorphicMapType_12959)
(declare-fun Heap@6 () T@PolymorphicMapType_12959)
(declare-fun newVersion@3 () T@FrameType)
(declare-fun Mask@12 () T@PolymorphicMapType_12980)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_6381 (T@Ref) T@FrameType)
(declare-fun FrameFragment_6420 (T@FrameType) T@FrameType)
(declare-fun Mask@10 () T@PolymorphicMapType_12980)
(declare-fun Mask@11 () T@PolymorphicMapType_12980)
(declare-fun Mask@9 () T@PolymorphicMapType_12980)
(declare-fun Heap@3 () T@PolymorphicMapType_12959)
(declare-fun Heap@4 () T@PolymorphicMapType_12959)
(declare-fun newVersion@2 () T@FrameType)
(declare-fun Mask@8 () T@PolymorphicMapType_12980)
(declare-fun Mask@6 () T@PolymorphicMapType_12980)
(declare-fun Mask@7 () T@PolymorphicMapType_12980)
(declare-fun Mask@5 () T@PolymorphicMapType_12980)
(declare-fun Heap@1 () T@PolymorphicMapType_12959)
(declare-fun Heap@2 () T@PolymorphicMapType_12959)
(declare-fun newVersion@1 () T@FrameType)
(declare-fun Mask@4 () T@PolymorphicMapType_12980)
(declare-fun Mask@2 () T@PolymorphicMapType_12980)
(declare-fun Mask@3 () T@PolymorphicMapType_12980)
(declare-fun Mask@1 () T@PolymorphicMapType_12980)
(declare-fun Heap@@33 () T@PolymorphicMapType_12959)
(declare-fun Heap@0 () T@PolymorphicMapType_12959)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_12980)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 56) (let ((anon26_correct  (=> (and (state Heap@7 Mask@16) (state Heap@7 Mask@16)) (and (=> (= (ControlFlow 0 4) (- 0 8)) (HasDirectPerm_6380_6381 Mask@16 n4 next)) (=> (HasDirectPerm_6380_6381 Mask@16 n4 next) (and (=> (= (ControlFlow 0 4) (- 0 7)) (HasDirectPerm_6380_6381 Mask@16 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next)) (=> (HasDirectPerm_6380_6381 Mask@16 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) (and (=> (= (ControlFlow 0 4) (- 0 6)) (HasDirectPerm_6380_6381 Mask@16 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next)) (=> (HasDirectPerm_6380_6381 Mask@16 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_6380_6381 Mask@16 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) next)) (=> (HasDirectPerm_6380_6381 Mask@16 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) next) (=> (= (ControlFlow 0 4) (- 0 3)) (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) next) null)))))))))))))
(let ((anon39_Else_correct  (=> (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) next) null) (=> (and (= Mask@16 Mask@14) (= (ControlFlow 0 10) 4)) anon26_correct))))
(let ((anon39_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) next) null)) (= Mask@15 (PolymorphicMapType_12980 (store (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@14) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) next)) (+ (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@14) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) next))) FullPerm)) (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@14) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@14) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@14) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@14) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@14) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@14) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@14)))) (=> (and (and (InsidePredicate_6419_6419 (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next)) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@7) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next))) (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) next)) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@7) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) next)))) (state Heap@7 Mask@15)) (and (= Mask@16 Mask@15) (= (ControlFlow 0 9) 4))) anon26_correct))))
(let ((anon24_correct  (=> (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) null)) (=> (and (= Mask@14 (PolymorphicMapType_12980 (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@13) (store (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@13) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) next (+ (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@13) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@7) n4 next) next) next) next) FullPerm)) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@13) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@13) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@13) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@13) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@13) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@13))) (state Heap@7 Mask@14)) (and (=> (= (ControlFlow 0 11) 9) anon39_Then_correct) (=> (= (ControlFlow 0 11) 10) anon39_Else_correct))))))
(let ((anon38_Else_correct  (=> (HasDirectPerm_6419_6420 Mask@13 null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next))) (=> (and (= Heap@7 Heap@5) (= (ControlFlow 0 13) 11)) anon24_correct))))
(let ((anon38_Then_correct  (=> (and (and (not (HasDirectPerm_6419_6420 Mask@13 null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next)))) (= Heap@6 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@5) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (store (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@5) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next)) newVersion@3) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@5) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@5) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@5) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@5) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@5)))) (and (= Heap@7 Heap@6) (= (ControlFlow 0 12) 11))) anon24_correct)))
(let ((anon22_correct  (=> (= Mask@13 (PolymorphicMapType_12980 (store (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@12) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next)) (- (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@12) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next))) FullPerm)) (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@12) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@12) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@12) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@12) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@12) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@12) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@12))) (and (=> (= (ControlFlow 0 14) 12) anon38_Then_correct) (=> (= (ControlFlow 0 14) 13) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 17) 14)) anon22_correct)))
(let ((anon37_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= FullPerm (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@12) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next))))) (=> (<= FullPerm (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@12) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next)))) (=> (= (ControlFlow 0 15) 14) anon22_correct))))))
(let ((anon20_correct  (=> (and (state Heap@5 Mask@12) (state Heap@5 Mask@12)) (and (=> (= (ControlFlow 0 18) (- 0 21)) (HasDirectPerm_6380_6381 Mask@12 n4 next)) (=> (HasDirectPerm_6380_6381 Mask@12 n4 next) (and (=> (= (ControlFlow 0 18) (- 0 20)) (HasDirectPerm_6380_6381 Mask@12 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next)) (=> (HasDirectPerm_6380_6381 Mask@12 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_6380_6381 Mask@12 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next)) (=> (HasDirectPerm_6380_6381 Mask@12 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next) (=> (and (|node#trigger_6419| Heap@5 (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next))) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@5) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next))) (CombineFrames (FrameFragment_6381 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next) next)) (FrameFragment_6420 (ite (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next) next) null)) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@5) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next) next))) EmptyFrame))))) (and (=> (= (ControlFlow 0 18) 15) anon37_Then_correct) (=> (= (ControlFlow 0 18) 17) anon37_Else_correct))))))))))))
(let ((anon36_Else_correct  (=> (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next) null) (=> (and (= Mask@12 Mask@10) (= (ControlFlow 0 23) 18)) anon20_correct))))
(let ((anon36_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next) null)) (= Mask@11 (PolymorphicMapType_12980 (store (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@10) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next)) (+ (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@10) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next))) FullPerm)) (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@10) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@10) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@10) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@10) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@10) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@10) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@10)))) (=> (and (and (InsidePredicate_6419_6419 (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next)) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@5) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next))) (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next)) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@5) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next)))) (state Heap@5 Mask@11)) (and (= Mask@12 Mask@11) (= (ControlFlow 0 22) 18))) anon20_correct))))
(let ((anon18_correct  (=> (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) null)) (=> (and (= Mask@10 (PolymorphicMapType_12980 (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@9) (store (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@9) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next (+ (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@9) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@5) n4 next) next) next) FullPerm)) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@9) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@9) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@9) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@9) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@9) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@9))) (state Heap@5 Mask@10)) (and (=> (= (ControlFlow 0 24) 22) anon36_Then_correct) (=> (= (ControlFlow 0 24) 23) anon36_Else_correct))))))
(let ((anon35_Else_correct  (=> (HasDirectPerm_6419_6420 Mask@9 null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next))) (=> (and (= Heap@5 Heap@3) (= (ControlFlow 0 26) 24)) anon18_correct))))
(let ((anon35_Then_correct  (=> (and (and (not (HasDirectPerm_6419_6420 Mask@9 null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next)))) (= Heap@4 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@3) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (store (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@3) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next)) newVersion@2) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@3) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@3) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@3) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@3) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 25) 24))) anon18_correct)))
(let ((anon16_correct  (=> (= Mask@9 (PolymorphicMapType_12980 (store (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@8) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next)) (- (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@8) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next))) FullPerm)) (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@8) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@8) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@8) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@8) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@8) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@8) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@8))) (and (=> (= (ControlFlow 0 27) 25) anon35_Then_correct) (=> (= (ControlFlow 0 27) 26) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 30) 27)) anon16_correct)))
(let ((anon34_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= FullPerm (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@8) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next))))) (=> (<= FullPerm (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@8) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next)))) (=> (= (ControlFlow 0 28) 27) anon16_correct))))))
(let ((anon14_correct  (=> (and (state Heap@3 Mask@8) (state Heap@3 Mask@8)) (and (=> (= (ControlFlow 0 31) (- 0 33)) (HasDirectPerm_6380_6381 Mask@8 n4 next)) (=> (HasDirectPerm_6380_6381 Mask@8 n4 next) (and (=> (= (ControlFlow 0 31) (- 0 32)) (HasDirectPerm_6380_6381 Mask@8 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next)) (=> (HasDirectPerm_6380_6381 Mask@8 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next) (=> (and (|node#trigger_6419| Heap@3 (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next))) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@3) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next))) (CombineFrames (FrameFragment_6381 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next) next)) (FrameFragment_6420 (ite (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next) next) null)) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@3) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next) next))) EmptyFrame))))) (and (=> (= (ControlFlow 0 31) 28) anon34_Then_correct) (=> (= (ControlFlow 0 31) 30) anon34_Else_correct))))))))))
(let ((anon33_Else_correct  (=> (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next) null) (=> (and (= Mask@8 Mask@6) (= (ControlFlow 0 35) 31)) anon14_correct))))
(let ((anon33_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next) null)) (= Mask@7 (PolymorphicMapType_12980 (store (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@6) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next)) (+ (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@6) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next))) FullPerm)) (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@6) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@6) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@6) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@6) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@6) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@6) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@6)))) (=> (and (and (InsidePredicate_6419_6419 (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next)) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@3) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next))) (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next)) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@3) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next)))) (state Heap@3 Mask@7)) (and (= Mask@8 Mask@7) (= (ControlFlow 0 34) 31))) anon14_correct))))
(let ((anon12_correct  (=> (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) null)) (=> (and (= Mask@6 (PolymorphicMapType_12980 (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@5) (store (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next (+ (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@5) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@3) n4 next) next) FullPerm)) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@5) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@5) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@5) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@5) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@5) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@5))) (state Heap@3 Mask@6)) (and (=> (= (ControlFlow 0 36) 34) anon33_Then_correct) (=> (= (ControlFlow 0 36) 35) anon33_Else_correct))))))
(let ((anon32_Else_correct  (=> (HasDirectPerm_6419_6420 Mask@5 null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next))) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 38) 36)) anon12_correct))))
(let ((anon32_Then_correct  (=> (and (and (not (HasDirectPerm_6419_6420 Mask@5 null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next)))) (= Heap@2 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@1) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) (store (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@1) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next)) newVersion@1) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@1) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@1) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@1) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@1) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 37) 36))) anon12_correct)))
(let ((anon10_correct  (=> (= Mask@5 (PolymorphicMapType_12980 (store (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@4) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next)) (- (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@4) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next))) FullPerm)) (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@4) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@4) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@4) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@4) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@4) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@4) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@4))) (and (=> (= (ControlFlow 0 39) 37) anon32_Then_correct) (=> (= (ControlFlow 0 39) 38) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 42) 39)) anon10_correct)))
(let ((anon31_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (<= FullPerm (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@4) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next))))) (=> (<= FullPerm (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@4) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next)))) (=> (= (ControlFlow 0 40) 39) anon10_correct))))))
(let ((anon8_correct  (=> (and (state Heap@1 Mask@4) (state Heap@1 Mask@4)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (HasDirectPerm_6380_6381 Mask@4 n4 next)) (=> (HasDirectPerm_6380_6381 Mask@4 n4 next) (=> (and (|node#trigger_6419| Heap@1 (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next))) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@1) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next))) (CombineFrames (FrameFragment_6381 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next) next)) (FrameFragment_6420 (ite (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next) next) null)) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@1) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next) next))) EmptyFrame))))) (and (=> (= (ControlFlow 0 43) 40) anon31_Then_correct) (=> (= (ControlFlow 0 43) 42) anon31_Else_correct))))))))
(let ((anon30_Else_correct  (=> (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next) null) (=> (and (= Mask@4 Mask@2) (= (ControlFlow 0 46) 43)) anon8_correct))))
(let ((anon30_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next) null)) (= Mask@3 (PolymorphicMapType_12980 (store (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@2) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next)) (+ (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@2) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next))) FullPerm)) (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@2) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@2) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@2) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@2) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@2) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@2) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@2)))) (=> (and (and (InsidePredicate_6419_6419 (node_1 n4) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@1) null (node_1 n4)) (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next)) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@1) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@1) n4 next)))) (state Heap@1 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 45) 43))) anon8_correct))))
(let ((anon6_correct  (=> (not (= n4 null)) (=> (and (= Mask@2 (PolymorphicMapType_12980 (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@1) (store (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@1) n4 next (+ (select (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@1) n4 next) FullPerm)) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@1) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@1) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@1) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@1) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@1) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@1))) (state Heap@1 Mask@2)) (and (=> (= (ControlFlow 0 47) 45) anon30_Then_correct) (=> (= (ControlFlow 0 47) 46) anon30_Else_correct))))))
(let ((anon29_Else_correct  (=> (HasDirectPerm_6419_6420 Mask@1 null (node_1 n4)) (=> (and (= Heap@1 Heap@@33) (= (ControlFlow 0 49) 47)) anon6_correct))))
(let ((anon29_Then_correct  (=> (and (and (not (HasDirectPerm_6419_6420 Mask@1 null (node_1 n4))) (= Heap@0 (PolymorphicMapType_12959 (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@33) (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@33) (store (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@33) null (node_1 n4) newVersion@0) (|PolymorphicMapType_12959_6423_19456#PolymorphicMapType_12959| Heap@@33) (|PolymorphicMapType_12959_6380_6420#PolymorphicMapType_12959| Heap@@33) (|PolymorphicMapType_12959_6380_48345#PolymorphicMapType_12959| Heap@@33) (|PolymorphicMapType_12959_6419_6381#PolymorphicMapType_12959| Heap@@33) (|PolymorphicMapType_12959_6419_53#PolymorphicMapType_12959| Heap@@33)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 48) 47))) anon6_correct)))
(let ((anon4_correct  (=> (= Mask@1 (PolymorphicMapType_12980 (store (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@0) null (node_1 n4) (- (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@0) null (node_1 n4)) FullPerm)) (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| Mask@0) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| Mask@0))) (and (=> (= (ControlFlow 0 50) 48) anon29_Then_correct) (=> (= (ControlFlow 0 50) 49) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 53) 50)) anon4_correct)))
(let ((anon28_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (<= FullPerm (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@0) null (node_1 n4)))) (=> (<= FullPerm (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@0) null (node_1 n4))) (=> (= (ControlFlow 0 51) 50) anon4_correct))))))
(let ((anon27_Else_correct  (=> (and (and (= (length_1 Heap@@33 n4) 4) (state Heap@@33 Mask@0)) (and (|node#trigger_6419| Heap@@33 (node_1 n4)) (= (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@33) null (node_1 n4)) (CombineFrames (FrameFragment_6381 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@33) n4 next)) (FrameFragment_6420 (ite (not (= (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@33) n4 next) null)) (select (|PolymorphicMapType_12959_6419_6420#PolymorphicMapType_12959| Heap@@33) null (node_1 (select (|PolymorphicMapType_12959_6255_6256#PolymorphicMapType_12959| Heap@@33) n4 next))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 54) 51) anon28_Then_correct) (=> (= (ControlFlow 0 54) 53) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| Mask@0) null (node_1 n4)))))))
(let ((anon0_correct  (=> (state Heap@@33 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_12959_6252_53#PolymorphicMapType_12959| Heap@@33) n4 $allocated) (= Mask@0 (PolymorphicMapType_12980 (store (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| ZeroMask) null (node_1 n4) (+ (select (|PolymorphicMapType_12980_6419_6420#PolymorphicMapType_12980| ZeroMask) null (node_1 n4)) FullPerm)) (|PolymorphicMapType_12980_6380_6381#PolymorphicMapType_12980| ZeroMask) (|PolymorphicMapType_12980_6419_6381#PolymorphicMapType_12980| ZeroMask) (|PolymorphicMapType_12980_6419_53#PolymorphicMapType_12980| ZeroMask) (|PolymorphicMapType_12980_6419_56310#PolymorphicMapType_12980| ZeroMask) (|PolymorphicMapType_12980_6380_6420#PolymorphicMapType_12980| ZeroMask) (|PolymorphicMapType_12980_6380_53#PolymorphicMapType_12980| ZeroMask) (|PolymorphicMapType_12980_6380_56641#PolymorphicMapType_12980| ZeroMask)))) (and (state Heap@@33 Mask@0) (state Heap@@33 Mask@0))) (and (=> (= (ControlFlow 0 55) 2) anon27_Then_correct) (=> (= (ControlFlow 0 55) 54) anon27_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 56) 55) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
