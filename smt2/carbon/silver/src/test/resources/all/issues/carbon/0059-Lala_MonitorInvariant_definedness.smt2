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
(declare-sort T@Field_4383_53 0)
(declare-sort T@Field_4396_4397 0)
(declare-sort T@Field_8699_8700 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_7816_1228 0)
(declare-sort T@Field_8712_8717 0)
(declare-sort T@Field_7725_645 0)
(declare-sort T@Field_2351_7947 0)
(declare-sort T@Field_2351_7964 0)
(declare-sort T@Field_7946_1228 0)
(declare-sort T@Field_7946_53 0)
(declare-sort T@Field_7946_4397 0)
(declare-sort T@Field_7946_645 0)
(declare-sort T@Field_7946_7947 0)
(declare-sort T@Field_7959_7964 0)
(declare-sort T@Field_8699_1228 0)
(declare-sort T@Field_8699_53 0)
(declare-sort T@Field_8699_4397 0)
(declare-sort T@Field_8699_645 0)
(declare-datatypes ((T@PolymorphicMapType_4344 0)) (((PolymorphicMapType_4344 (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| (Array T@Ref T@Field_7816_1228 Real)) (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| (Array T@Ref T@Field_8699_8700 Real)) (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| (Array T@Ref T@Field_2351_7947 Real)) (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| (Array T@Ref T@Field_4383_53 Real)) (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| (Array T@Ref T@Field_4396_4397 Real)) (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| (Array T@Ref T@Field_7725_645 Real)) (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| (Array T@Ref T@Field_2351_7964 Real)) (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| (Array T@Ref T@Field_8699_1228 Real)) (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| (Array T@Ref T@Field_8699_53 Real)) (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| (Array T@Ref T@Field_8699_4397 Real)) (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| (Array T@Ref T@Field_8699_645 Real)) (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| (Array T@Ref T@Field_8712_8717 Real)) (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| (Array T@Ref T@Field_7946_1228 Real)) (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| (Array T@Ref T@Field_7946_7947 Real)) (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| (Array T@Ref T@Field_7946_53 Real)) (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| (Array T@Ref T@Field_7946_4397 Real)) (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| (Array T@Ref T@Field_7946_645 Real)) (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| (Array T@Ref T@Field_7959_7964 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4872 0)) (((PolymorphicMapType_4872 (|PolymorphicMapType_4872_2351_1228#PolymorphicMapType_4872| (Array T@Ref T@Field_7816_1228 Bool)) (|PolymorphicMapType_4872_2351_53#PolymorphicMapType_4872| (Array T@Ref T@Field_4383_53 Bool)) (|PolymorphicMapType_4872_2351_4397#PolymorphicMapType_4872| (Array T@Ref T@Field_4396_4397 Bool)) (|PolymorphicMapType_4872_2351_645#PolymorphicMapType_4872| (Array T@Ref T@Field_7725_645 Bool)) (|PolymorphicMapType_4872_2351_7947#PolymorphicMapType_4872| (Array T@Ref T@Field_2351_7947 Bool)) (|PolymorphicMapType_4872_2351_18825#PolymorphicMapType_4872| (Array T@Ref T@Field_2351_7964 Bool)) (|PolymorphicMapType_4872_7946_1228#PolymorphicMapType_4872| (Array T@Ref T@Field_7946_1228 Bool)) (|PolymorphicMapType_4872_7946_53#PolymorphicMapType_4872| (Array T@Ref T@Field_7946_53 Bool)) (|PolymorphicMapType_4872_7946_4397#PolymorphicMapType_4872| (Array T@Ref T@Field_7946_4397 Bool)) (|PolymorphicMapType_4872_7946_645#PolymorphicMapType_4872| (Array T@Ref T@Field_7946_645 Bool)) (|PolymorphicMapType_4872_7946_7947#PolymorphicMapType_4872| (Array T@Ref T@Field_7946_7947 Bool)) (|PolymorphicMapType_4872_7946_20071#PolymorphicMapType_4872| (Array T@Ref T@Field_7959_7964 Bool)) (|PolymorphicMapType_4872_8699_1228#PolymorphicMapType_4872| (Array T@Ref T@Field_8699_1228 Bool)) (|PolymorphicMapType_4872_8699_53#PolymorphicMapType_4872| (Array T@Ref T@Field_8699_53 Bool)) (|PolymorphicMapType_4872_8699_4397#PolymorphicMapType_4872| (Array T@Ref T@Field_8699_4397 Bool)) (|PolymorphicMapType_4872_8699_645#PolymorphicMapType_4872| (Array T@Ref T@Field_8699_645 Bool)) (|PolymorphicMapType_4872_8699_7947#PolymorphicMapType_4872| (Array T@Ref T@Field_8699_8700 Bool)) (|PolymorphicMapType_4872_8699_21317#PolymorphicMapType_4872| (Array T@Ref T@Field_8712_8717 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4323 0)) (((PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| (Array T@Ref T@Field_4383_53 Bool)) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| (Array T@Ref T@Field_4396_4397 T@Ref)) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| (Array T@Ref T@Field_8699_8700 T@FrameType)) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| (Array T@Ref T@Field_7816_1228 Int)) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| (Array T@Ref T@Field_8712_8717 T@PolymorphicMapType_4872)) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| (Array T@Ref T@Field_7725_645 Real)) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| (Array T@Ref T@Field_2351_7947 T@FrameType)) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| (Array T@Ref T@Field_2351_7964 T@PolymorphicMapType_4872)) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| (Array T@Ref T@Field_7946_1228 Int)) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| (Array T@Ref T@Field_7946_53 Bool)) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| (Array T@Ref T@Field_7946_4397 T@Ref)) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| (Array T@Ref T@Field_7946_645 Real)) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| (Array T@Ref T@Field_7946_7947 T@FrameType)) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| (Array T@Ref T@Field_7959_7964 T@PolymorphicMapType_4872)) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| (Array T@Ref T@Field_8699_1228 Int)) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| (Array T@Ref T@Field_8699_53 Bool)) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| (Array T@Ref T@Field_8699_4397 T@Ref)) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| (Array T@Ref T@Field_8699_645 Real)) ) ) ))
(declare-fun $allocated () T@Field_4383_53)
(declare-fun globalK$ () Real)
(declare-fun old$methodPermission () T@Field_7725_645)
(declare-fun joinable$ () T@Field_4383_53)
(declare-fun Lalax$ () T@Field_7816_1228)
(declare-fun par$Lalakoko$this$_2 () T@Field_4396_4397)
(declare-fun par$Lalakoko$k$ () T@Field_7725_645)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4323 T@PolymorphicMapType_4323 T@PolymorphicMapType_4344) Bool)
(declare-fun IsPredicateField_2384_2385 (T@Field_8699_8700) Bool)
(declare-fun HasDirectPerm_8699_7947 (T@PolymorphicMapType_4344 T@Ref T@Field_8699_8700) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2384 (T@Field_8699_8700) T@Field_8712_8717)
(declare-fun IsPredicateField_2360_2361 (T@Field_7946_7947) Bool)
(declare-fun HasDirectPerm_7946_7947 (T@PolymorphicMapType_4344 T@Ref T@Field_7946_7947) Bool)
(declare-fun PredicateMaskField_2360 (T@Field_7946_7947) T@Field_7959_7964)
(declare-fun IsPredicateField_2351_16830 (T@Field_2351_7947) Bool)
(declare-fun HasDirectPerm_2351_7947 (T@PolymorphicMapType_4344 T@Ref T@Field_2351_7947) Bool)
(declare-fun PredicateMaskField_2351 (T@Field_2351_7947) T@Field_2351_7964)
(declare-fun IsWandField_8699_23120 (T@Field_8699_8700) Bool)
(declare-fun WandMaskField_8699 (T@Field_8699_8700) T@Field_8712_8717)
(declare-fun IsWandField_7946_22763 (T@Field_7946_7947) Bool)
(declare-fun WandMaskField_7946 (T@Field_7946_7947) T@Field_7959_7964)
(declare-fun IsWandField_2351_22406 (T@Field_2351_7947) Bool)
(declare-fun WandMaskField_2351 (T@Field_2351_7947) T@Field_2351_7964)
(declare-fun succHeap (T@PolymorphicMapType_4323 T@PolymorphicMapType_4323) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4323 T@PolymorphicMapType_4323) Bool)
(declare-fun state (T@PolymorphicMapType_4323 T@PolymorphicMapType_4344) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4344) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4872)
(declare-fun Lala$MonitorInvariant (T@Ref) T@Field_7946_7947)
(declare-fun Lalainv$ (T@Ref) T@Field_8699_8700)
(declare-fun |Lala$MonitorInvariant#trigger_2360| (T@PolymorphicMapType_4323 T@Field_7946_7947) Bool)
(declare-fun |Lala$MonitorInvariant#everUsed_2360| (T@Field_7946_7947) Bool)
(declare-fun |Lalainv$#trigger_2384| (T@PolymorphicMapType_4323 T@Field_8699_8700) Bool)
(declare-fun |Lalainv$#everUsed_2384| (T@Field_8699_8700) Bool)
(declare-fun |Lala$MonitorInvariant#sm| (T@Ref) T@Field_7959_7964)
(declare-fun |Lalainv$#sm| (T@Ref) T@Field_8712_8717)
(declare-fun dummyHeap () T@PolymorphicMapType_4323)
(declare-fun ZeroMask () T@PolymorphicMapType_4344)
(declare-fun InsidePredicate_8699_8699 (T@Field_8699_8700 T@FrameType T@Field_8699_8700 T@FrameType) Bool)
(declare-fun InsidePredicate_7946_7946 (T@Field_7946_7947 T@FrameType T@Field_7946_7947 T@FrameType) Bool)
(declare-fun InsidePredicate_4383_4383 (T@Field_2351_7947 T@FrameType T@Field_2351_7947 T@FrameType) Bool)
(declare-fun IsPredicateField_2346_645 (T@Field_7725_645) Bool)
(declare-fun IsWandField_2346_645 (T@Field_7725_645) Bool)
(declare-fun IsPredicateField_2349_1213 (T@Field_4383_53) Bool)
(declare-fun IsWandField_2349_1213 (T@Field_4383_53) Bool)
(declare-fun IsPredicateField_2351_1228 (T@Field_7816_1228) Bool)
(declare-fun IsWandField_2351_1228 (T@Field_7816_1228) Bool)
(declare-fun IsPredicateField_2353_2354 (T@Field_4396_4397) Bool)
(declare-fun IsWandField_2353_2354 (T@Field_4396_4397) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7946_35238 (T@Field_7959_7964) Bool)
(declare-fun IsWandField_7946_35254 (T@Field_7959_7964) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7946_645 (T@Field_7946_645) Bool)
(declare-fun IsWandField_7946_645 (T@Field_7946_645) Bool)
(declare-fun IsPredicateField_7946_4397 (T@Field_7946_4397) Bool)
(declare-fun IsWandField_7946_4397 (T@Field_7946_4397) Bool)
(declare-fun IsPredicateField_7946_53 (T@Field_7946_53) Bool)
(declare-fun IsWandField_7946_53 (T@Field_7946_53) Bool)
(declare-fun IsPredicateField_7946_1228 (T@Field_7946_1228) Bool)
(declare-fun IsWandField_7946_1228 (T@Field_7946_1228) Bool)
(declare-fun IsPredicateField_2384_34239 (T@Field_8712_8717) Bool)
(declare-fun IsWandField_2384_34255 (T@Field_8712_8717) Bool)
(declare-fun IsPredicateField_2384_645 (T@Field_8699_645) Bool)
(declare-fun IsWandField_2384_645 (T@Field_8699_645) Bool)
(declare-fun IsPredicateField_2384_4397 (T@Field_8699_4397) Bool)
(declare-fun IsWandField_2384_4397 (T@Field_8699_4397) Bool)
(declare-fun IsPredicateField_2384_53 (T@Field_8699_53) Bool)
(declare-fun IsWandField_2384_53 (T@Field_8699_53) Bool)
(declare-fun IsPredicateField_2384_1228 (T@Field_8699_1228) Bool)
(declare-fun IsWandField_2384_1228 (T@Field_8699_1228) Bool)
(declare-fun IsPredicateField_2351_33240 (T@Field_2351_7964) Bool)
(declare-fun IsWandField_2351_33256 (T@Field_2351_7964) Bool)
(declare-fun HasDirectPerm_8699_16585 (T@PolymorphicMapType_4344 T@Ref T@Field_8712_8717) Bool)
(declare-fun HasDirectPerm_8699_645 (T@PolymorphicMapType_4344 T@Ref T@Field_8699_645) Bool)
(declare-fun HasDirectPerm_8699_4397 (T@PolymorphicMapType_4344 T@Ref T@Field_8699_4397) Bool)
(declare-fun HasDirectPerm_8699_53 (T@PolymorphicMapType_4344 T@Ref T@Field_8699_53) Bool)
(declare-fun HasDirectPerm_8699_1228 (T@PolymorphicMapType_4344 T@Ref T@Field_8699_1228) Bool)
(declare-fun HasDirectPerm_7946_15203 (T@PolymorphicMapType_4344 T@Ref T@Field_7959_7964) Bool)
(declare-fun HasDirectPerm_7946_645 (T@PolymorphicMapType_4344 T@Ref T@Field_7946_645) Bool)
(declare-fun HasDirectPerm_7946_4397 (T@PolymorphicMapType_4344 T@Ref T@Field_7946_4397) Bool)
(declare-fun HasDirectPerm_7946_53 (T@PolymorphicMapType_4344 T@Ref T@Field_7946_53) Bool)
(declare-fun HasDirectPerm_7946_1228 (T@PolymorphicMapType_4344 T@Ref T@Field_7946_1228) Bool)
(declare-fun HasDirectPerm_2351_13804 (T@PolymorphicMapType_4344 T@Ref T@Field_2351_7964) Bool)
(declare-fun HasDirectPerm_2351_645 (T@PolymorphicMapType_4344 T@Ref T@Field_7725_645) Bool)
(declare-fun HasDirectPerm_2351_4397 (T@PolymorphicMapType_4344 T@Ref T@Field_4396_4397) Bool)
(declare-fun HasDirectPerm_2351_53 (T@PolymorphicMapType_4344 T@Ref T@Field_4383_53) Bool)
(declare-fun HasDirectPerm_2351_1228 (T@PolymorphicMapType_4344 T@Ref T@Field_7816_1228) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4344 T@PolymorphicMapType_4344 T@PolymorphicMapType_4344) Bool)
(declare-fun getPredWandId_2360_2361 (T@Field_7946_7947) Int)
(declare-fun getPredWandId_2384_2385 (T@Field_8699_8700) Int)
(declare-fun InsidePredicate_8699_7946 (T@Field_8699_8700 T@FrameType T@Field_7946_7947 T@FrameType) Bool)
(declare-fun InsidePredicate_8699_4383 (T@Field_8699_8700 T@FrameType T@Field_2351_7947 T@FrameType) Bool)
(declare-fun InsidePredicate_7946_8699 (T@Field_7946_7947 T@FrameType T@Field_8699_8700 T@FrameType) Bool)
(declare-fun InsidePredicate_7946_4383 (T@Field_7946_7947 T@FrameType T@Field_2351_7947 T@FrameType) Bool)
(declare-fun InsidePredicate_4383_8699 (T@Field_2351_7947 T@FrameType T@Field_8699_8700 T@FrameType) Bool)
(declare-fun InsidePredicate_4383_7946 (T@Field_2351_7947 T@FrameType T@Field_7946_7947 T@FrameType) Bool)
(assert (and (distinct $allocated joinable$)(distinct old$methodPermission par$Lalakoko$k$))
)
(assert (forall ((Heap T@PolymorphicMapType_4323) (ExhaleHeap T@PolymorphicMapType_4323) (Mask T@PolymorphicMapType_4344) (pm_f T@Field_8699_8700) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_8699_7947 Mask null pm_f) (IsPredicateField_2384_2385 pm_f)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_7816_1228) ) (!  (=> (select (|PolymorphicMapType_4872_2351_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap) o2 f_2) (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4383_53) ) (!  (=> (select (|PolymorphicMapType_4872_2351_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap) o2@@0 f_2@@0) (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4396_4397) ) (!  (=> (select (|PolymorphicMapType_4872_2351_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap) o2@@1 f_2@@1) (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_7725_645) ) (!  (=> (select (|PolymorphicMapType_4872_2351_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap) o2@@2 f_2@@2) (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_2351_7947) ) (!  (=> (select (|PolymorphicMapType_4872_2351_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap) o2@@3 f_2@@3) (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_2351_7964) ) (!  (=> (select (|PolymorphicMapType_4872_2351_18825#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap) o2@@4 f_2@@4) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_7946_1228) ) (!  (=> (select (|PolymorphicMapType_4872_7946_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap) o2@@5 f_2@@5) (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_7946_53) ) (!  (=> (select (|PolymorphicMapType_4872_7946_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap) o2@@6 f_2@@6) (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_7946_4397) ) (!  (=> (select (|PolymorphicMapType_4872_7946_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap) o2@@7 f_2@@7) (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_7946_645) ) (!  (=> (select (|PolymorphicMapType_4872_7946_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap) o2@@8 f_2@@8) (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_7946_7947) ) (!  (=> (select (|PolymorphicMapType_4872_7946_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap) o2@@9 f_2@@9) (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_7959_7964) ) (!  (=> (select (|PolymorphicMapType_4872_7946_20071#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap) o2@@10 f_2@@10) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_8699_1228) ) (!  (=> (select (|PolymorphicMapType_4872_8699_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap) o2@@11 f_2@@11) (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_8699_53) ) (!  (=> (select (|PolymorphicMapType_4872_8699_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap) o2@@12 f_2@@12) (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_8699_4397) ) (!  (=> (select (|PolymorphicMapType_4872_8699_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap) o2@@13 f_2@@13) (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_8699_645) ) (!  (=> (select (|PolymorphicMapType_4872_8699_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap) o2@@14 f_2@@14) (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_8699_8700) ) (!  (=> (select (|PolymorphicMapType_4872_8699_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap) o2@@15 f_2@@15) (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_8712_8717) ) (!  (=> (select (|PolymorphicMapType_4872_8699_21317#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) null (PredicateMaskField_2384 pm_f))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap) o2@@16 f_2@@16) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap) o2@@16 f_2@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_2384_2385 pm_f))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4323) (ExhaleHeap@@0 T@PolymorphicMapType_4323) (Mask@@0 T@PolymorphicMapType_4344) (pm_f@@0 T@Field_7946_7947) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_7946_7947 Mask@@0 null pm_f@@0) (IsPredicateField_2360_2361 pm_f@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_7816_1228) ) (!  (=> (select (|PolymorphicMapType_4872_2351_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@0) o2@@17 f_2@@17) (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@17 f_2@@17))
)) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_4383_53) ) (!  (=> (select (|PolymorphicMapType_4872_2351_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@0) o2@@18 f_2@@18) (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_4396_4397) ) (!  (=> (select (|PolymorphicMapType_4872_2351_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@0) o2@@19 f_2@@19) (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@19 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_7725_645) ) (!  (=> (select (|PolymorphicMapType_4872_2351_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@0) o2@@20 f_2@@20) (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@20 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_2351_7947) ) (!  (=> (select (|PolymorphicMapType_4872_2351_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@0) o2@@21 f_2@@21) (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@21 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_2351_7964) ) (!  (=> (select (|PolymorphicMapType_4872_2351_18825#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@0) o2@@22 f_2@@22) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@22 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_7946_1228) ) (!  (=> (select (|PolymorphicMapType_4872_7946_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@0) o2@@23 f_2@@23) (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@23 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_7946_53) ) (!  (=> (select (|PolymorphicMapType_4872_7946_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@0) o2@@24 f_2@@24) (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@24 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_7946_4397) ) (!  (=> (select (|PolymorphicMapType_4872_7946_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@0) o2@@25 f_2@@25) (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@25 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_7946_645) ) (!  (=> (select (|PolymorphicMapType_4872_7946_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@0) o2@@26 f_2@@26) (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@26 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_7946_7947) ) (!  (=> (select (|PolymorphicMapType_4872_7946_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@0) o2@@27 f_2@@27) (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@27 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_7959_7964) ) (!  (=> (select (|PolymorphicMapType_4872_7946_20071#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) o2@@28 f_2@@28) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@28 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_8699_1228) ) (!  (=> (select (|PolymorphicMapType_4872_8699_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@0) o2@@29 f_2@@29) (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@29 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_8699_53) ) (!  (=> (select (|PolymorphicMapType_4872_8699_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@0) o2@@30 f_2@@30) (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@30 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_8699_4397) ) (!  (=> (select (|PolymorphicMapType_4872_8699_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@0) o2@@31 f_2@@31) (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@31 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_8699_645) ) (!  (=> (select (|PolymorphicMapType_4872_8699_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@0) o2@@32 f_2@@32) (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@32 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_8699_8700) ) (!  (=> (select (|PolymorphicMapType_4872_8699_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@0) o2@@33 f_2@@33) (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@33 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_8712_8717) ) (!  (=> (select (|PolymorphicMapType_4872_8699_21317#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@0) null (PredicateMaskField_2360 pm_f@@0))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@0) o2@@34 f_2@@34) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@34 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@0) o2@@34 f_2@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_2360_2361 pm_f@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4323) (ExhaleHeap@@1 T@PolymorphicMapType_4323) (Mask@@1 T@PolymorphicMapType_4344) (pm_f@@1 T@Field_2351_7947) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_2351_7947 Mask@@1 null pm_f@@1) (IsPredicateField_2351_16830 pm_f@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_7816_1228) ) (!  (=> (select (|PolymorphicMapType_4872_2351_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@1) o2@@35 f_2@@35) (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@35 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@35 f_2@@35))
)) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_4383_53) ) (!  (=> (select (|PolymorphicMapType_4872_2351_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@1) o2@@36 f_2@@36) (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@36 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_4396_4397) ) (!  (=> (select (|PolymorphicMapType_4872_2351_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@1) o2@@37 f_2@@37) (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@37 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_7725_645) ) (!  (=> (select (|PolymorphicMapType_4872_2351_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@1) o2@@38 f_2@@38) (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@38 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@38 f_2@@38))
))) (forall ((o2@@39 T@Ref) (f_2@@39 T@Field_2351_7947) ) (!  (=> (select (|PolymorphicMapType_4872_2351_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@39 f_2@@39) (= (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@1) o2@@39 f_2@@39) (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@39 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@39 f_2@@39))
))) (forall ((o2@@40 T@Ref) (f_2@@40 T@Field_2351_7964) ) (!  (=> (select (|PolymorphicMapType_4872_2351_18825#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@40 f_2@@40) (= (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) o2@@40 f_2@@40) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@40 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@40 f_2@@40))
))) (forall ((o2@@41 T@Ref) (f_2@@41 T@Field_7946_1228) ) (!  (=> (select (|PolymorphicMapType_4872_7946_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@41 f_2@@41) (= (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@1) o2@@41 f_2@@41) (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@41 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@41 f_2@@41))
))) (forall ((o2@@42 T@Ref) (f_2@@42 T@Field_7946_53) ) (!  (=> (select (|PolymorphicMapType_4872_7946_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@42 f_2@@42) (= (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@1) o2@@42 f_2@@42) (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@42 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@42 f_2@@42))
))) (forall ((o2@@43 T@Ref) (f_2@@43 T@Field_7946_4397) ) (!  (=> (select (|PolymorphicMapType_4872_7946_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@43 f_2@@43) (= (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@1) o2@@43 f_2@@43) (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@43 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@43 f_2@@43))
))) (forall ((o2@@44 T@Ref) (f_2@@44 T@Field_7946_645) ) (!  (=> (select (|PolymorphicMapType_4872_7946_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@44 f_2@@44) (= (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@1) o2@@44 f_2@@44) (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@44 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@44 f_2@@44))
))) (forall ((o2@@45 T@Ref) (f_2@@45 T@Field_7946_7947) ) (!  (=> (select (|PolymorphicMapType_4872_7946_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@45 f_2@@45) (= (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@1) o2@@45 f_2@@45) (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@45 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@45 f_2@@45))
))) (forall ((o2@@46 T@Ref) (f_2@@46 T@Field_7959_7964) ) (!  (=> (select (|PolymorphicMapType_4872_7946_20071#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@46 f_2@@46) (= (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@1) o2@@46 f_2@@46) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@46 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@46 f_2@@46))
))) (forall ((o2@@47 T@Ref) (f_2@@47 T@Field_8699_1228) ) (!  (=> (select (|PolymorphicMapType_4872_8699_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@47 f_2@@47) (= (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@1) o2@@47 f_2@@47) (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@47 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@47 f_2@@47))
))) (forall ((o2@@48 T@Ref) (f_2@@48 T@Field_8699_53) ) (!  (=> (select (|PolymorphicMapType_4872_8699_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@48 f_2@@48) (= (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@1) o2@@48 f_2@@48) (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@48 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@48 f_2@@48))
))) (forall ((o2@@49 T@Ref) (f_2@@49 T@Field_8699_4397) ) (!  (=> (select (|PolymorphicMapType_4872_8699_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@49 f_2@@49) (= (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@1) o2@@49 f_2@@49) (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@49 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@49 f_2@@49))
))) (forall ((o2@@50 T@Ref) (f_2@@50 T@Field_8699_645) ) (!  (=> (select (|PolymorphicMapType_4872_8699_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@50 f_2@@50) (= (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@1) o2@@50 f_2@@50) (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@50 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@50 f_2@@50))
))) (forall ((o2@@51 T@Ref) (f_2@@51 T@Field_8699_8700) ) (!  (=> (select (|PolymorphicMapType_4872_8699_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@51 f_2@@51) (= (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@1) o2@@51 f_2@@51) (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@51 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@51 f_2@@51))
))) (forall ((o2@@52 T@Ref) (f_2@@52 T@Field_8712_8717) ) (!  (=> (select (|PolymorphicMapType_4872_8699_21317#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@1) null (PredicateMaskField_2351 pm_f@@1))) o2@@52 f_2@@52) (= (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@1) o2@@52 f_2@@52) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@52 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@1) o2@@52 f_2@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_2351_16830 pm_f@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4323) (ExhaleHeap@@2 T@PolymorphicMapType_4323) (Mask@@2 T@PolymorphicMapType_4344) (pm_f@@2 T@Field_8699_8700) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_8699_7947 Mask@@2 null pm_f@@2) (IsWandField_8699_23120 pm_f@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@53 T@Ref) (f_2@@53 T@Field_7816_1228) ) (!  (=> (select (|PolymorphicMapType_4872_2351_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@53 f_2@@53) (= (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@2) o2@@53 f_2@@53) (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@53 f_2@@53)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@53 f_2@@53))
)) (forall ((o2@@54 T@Ref) (f_2@@54 T@Field_4383_53) ) (!  (=> (select (|PolymorphicMapType_4872_2351_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@54 f_2@@54) (= (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@2) o2@@54 f_2@@54) (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@54 f_2@@54)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@54 f_2@@54))
))) (forall ((o2@@55 T@Ref) (f_2@@55 T@Field_4396_4397) ) (!  (=> (select (|PolymorphicMapType_4872_2351_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@55 f_2@@55) (= (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@2) o2@@55 f_2@@55) (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@55 f_2@@55)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@55 f_2@@55))
))) (forall ((o2@@56 T@Ref) (f_2@@56 T@Field_7725_645) ) (!  (=> (select (|PolymorphicMapType_4872_2351_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@56 f_2@@56) (= (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@2) o2@@56 f_2@@56) (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@56 f_2@@56)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@56 f_2@@56))
))) (forall ((o2@@57 T@Ref) (f_2@@57 T@Field_2351_7947) ) (!  (=> (select (|PolymorphicMapType_4872_2351_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@57 f_2@@57) (= (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@2) o2@@57 f_2@@57) (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@57 f_2@@57)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@57 f_2@@57))
))) (forall ((o2@@58 T@Ref) (f_2@@58 T@Field_2351_7964) ) (!  (=> (select (|PolymorphicMapType_4872_2351_18825#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@58 f_2@@58) (= (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@2) o2@@58 f_2@@58) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@58 f_2@@58)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@58 f_2@@58))
))) (forall ((o2@@59 T@Ref) (f_2@@59 T@Field_7946_1228) ) (!  (=> (select (|PolymorphicMapType_4872_7946_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@59 f_2@@59) (= (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@2) o2@@59 f_2@@59) (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@59 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@59 f_2@@59))
))) (forall ((o2@@60 T@Ref) (f_2@@60 T@Field_7946_53) ) (!  (=> (select (|PolymorphicMapType_4872_7946_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@60 f_2@@60) (= (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@2) o2@@60 f_2@@60) (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@60 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@60 f_2@@60))
))) (forall ((o2@@61 T@Ref) (f_2@@61 T@Field_7946_4397) ) (!  (=> (select (|PolymorphicMapType_4872_7946_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@61 f_2@@61) (= (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@2) o2@@61 f_2@@61) (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@61 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@61 f_2@@61))
))) (forall ((o2@@62 T@Ref) (f_2@@62 T@Field_7946_645) ) (!  (=> (select (|PolymorphicMapType_4872_7946_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@62 f_2@@62) (= (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@2) o2@@62 f_2@@62) (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@62 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@62 f_2@@62))
))) (forall ((o2@@63 T@Ref) (f_2@@63 T@Field_7946_7947) ) (!  (=> (select (|PolymorphicMapType_4872_7946_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@63 f_2@@63) (= (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@2) o2@@63 f_2@@63) (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@63 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@63 f_2@@63))
))) (forall ((o2@@64 T@Ref) (f_2@@64 T@Field_7959_7964) ) (!  (=> (select (|PolymorphicMapType_4872_7946_20071#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@64 f_2@@64) (= (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@2) o2@@64 f_2@@64) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@64 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@64 f_2@@64))
))) (forall ((o2@@65 T@Ref) (f_2@@65 T@Field_8699_1228) ) (!  (=> (select (|PolymorphicMapType_4872_8699_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@65 f_2@@65) (= (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@2) o2@@65 f_2@@65) (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@65 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@65 f_2@@65))
))) (forall ((o2@@66 T@Ref) (f_2@@66 T@Field_8699_53) ) (!  (=> (select (|PolymorphicMapType_4872_8699_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@66 f_2@@66) (= (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@2) o2@@66 f_2@@66) (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@66 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@66 f_2@@66))
))) (forall ((o2@@67 T@Ref) (f_2@@67 T@Field_8699_4397) ) (!  (=> (select (|PolymorphicMapType_4872_8699_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@67 f_2@@67) (= (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@2) o2@@67 f_2@@67) (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@67 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@67 f_2@@67))
))) (forall ((o2@@68 T@Ref) (f_2@@68 T@Field_8699_645) ) (!  (=> (select (|PolymorphicMapType_4872_8699_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@68 f_2@@68) (= (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@2) o2@@68 f_2@@68) (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@68 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@68 f_2@@68))
))) (forall ((o2@@69 T@Ref) (f_2@@69 T@Field_8699_8700) ) (!  (=> (select (|PolymorphicMapType_4872_8699_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@69 f_2@@69) (= (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@2) o2@@69 f_2@@69) (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@69 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@69 f_2@@69))
))) (forall ((o2@@70 T@Ref) (f_2@@70 T@Field_8712_8717) ) (!  (=> (select (|PolymorphicMapType_4872_8699_21317#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) null (WandMaskField_8699 pm_f@@2))) o2@@70 f_2@@70) (= (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@2) o2@@70 f_2@@70) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@70 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@2) o2@@70 f_2@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_8699_23120 pm_f@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4323) (ExhaleHeap@@3 T@PolymorphicMapType_4323) (Mask@@3 T@PolymorphicMapType_4344) (pm_f@@3 T@Field_7946_7947) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_7946_7947 Mask@@3 null pm_f@@3) (IsWandField_7946_22763 pm_f@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@71 T@Ref) (f_2@@71 T@Field_7816_1228) ) (!  (=> (select (|PolymorphicMapType_4872_2351_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@71 f_2@@71) (= (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@3) o2@@71 f_2@@71) (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@71 f_2@@71)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@71 f_2@@71))
)) (forall ((o2@@72 T@Ref) (f_2@@72 T@Field_4383_53) ) (!  (=> (select (|PolymorphicMapType_4872_2351_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@72 f_2@@72) (= (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@3) o2@@72 f_2@@72) (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@72 f_2@@72)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@72 f_2@@72))
))) (forall ((o2@@73 T@Ref) (f_2@@73 T@Field_4396_4397) ) (!  (=> (select (|PolymorphicMapType_4872_2351_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@73 f_2@@73) (= (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@3) o2@@73 f_2@@73) (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@73 f_2@@73)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@73 f_2@@73))
))) (forall ((o2@@74 T@Ref) (f_2@@74 T@Field_7725_645) ) (!  (=> (select (|PolymorphicMapType_4872_2351_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@74 f_2@@74) (= (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@3) o2@@74 f_2@@74) (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@74 f_2@@74)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@74 f_2@@74))
))) (forall ((o2@@75 T@Ref) (f_2@@75 T@Field_2351_7947) ) (!  (=> (select (|PolymorphicMapType_4872_2351_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@75 f_2@@75) (= (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@3) o2@@75 f_2@@75) (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@75 f_2@@75)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@75 f_2@@75))
))) (forall ((o2@@76 T@Ref) (f_2@@76 T@Field_2351_7964) ) (!  (=> (select (|PolymorphicMapType_4872_2351_18825#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@76 f_2@@76) (= (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@3) o2@@76 f_2@@76) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@76 f_2@@76)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@76 f_2@@76))
))) (forall ((o2@@77 T@Ref) (f_2@@77 T@Field_7946_1228) ) (!  (=> (select (|PolymorphicMapType_4872_7946_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@77 f_2@@77) (= (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@3) o2@@77 f_2@@77) (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@77 f_2@@77)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@77 f_2@@77))
))) (forall ((o2@@78 T@Ref) (f_2@@78 T@Field_7946_53) ) (!  (=> (select (|PolymorphicMapType_4872_7946_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@78 f_2@@78) (= (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@3) o2@@78 f_2@@78) (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@78 f_2@@78)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@78 f_2@@78))
))) (forall ((o2@@79 T@Ref) (f_2@@79 T@Field_7946_4397) ) (!  (=> (select (|PolymorphicMapType_4872_7946_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@79 f_2@@79) (= (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@3) o2@@79 f_2@@79) (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@79 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@79 f_2@@79))
))) (forall ((o2@@80 T@Ref) (f_2@@80 T@Field_7946_645) ) (!  (=> (select (|PolymorphicMapType_4872_7946_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@80 f_2@@80) (= (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@3) o2@@80 f_2@@80) (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@80 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@80 f_2@@80))
))) (forall ((o2@@81 T@Ref) (f_2@@81 T@Field_7946_7947) ) (!  (=> (select (|PolymorphicMapType_4872_7946_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@81 f_2@@81) (= (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@3) o2@@81 f_2@@81) (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@81 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@81 f_2@@81))
))) (forall ((o2@@82 T@Ref) (f_2@@82 T@Field_7959_7964) ) (!  (=> (select (|PolymorphicMapType_4872_7946_20071#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@82 f_2@@82) (= (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) o2@@82 f_2@@82) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@82 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@82 f_2@@82))
))) (forall ((o2@@83 T@Ref) (f_2@@83 T@Field_8699_1228) ) (!  (=> (select (|PolymorphicMapType_4872_8699_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@83 f_2@@83) (= (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@3) o2@@83 f_2@@83) (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@83 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@83 f_2@@83))
))) (forall ((o2@@84 T@Ref) (f_2@@84 T@Field_8699_53) ) (!  (=> (select (|PolymorphicMapType_4872_8699_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@84 f_2@@84) (= (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@3) o2@@84 f_2@@84) (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@84 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@84 f_2@@84))
))) (forall ((o2@@85 T@Ref) (f_2@@85 T@Field_8699_4397) ) (!  (=> (select (|PolymorphicMapType_4872_8699_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@85 f_2@@85) (= (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@3) o2@@85 f_2@@85) (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@85 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@85 f_2@@85))
))) (forall ((o2@@86 T@Ref) (f_2@@86 T@Field_8699_645) ) (!  (=> (select (|PolymorphicMapType_4872_8699_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@86 f_2@@86) (= (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@3) o2@@86 f_2@@86) (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@86 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@86 f_2@@86))
))) (forall ((o2@@87 T@Ref) (f_2@@87 T@Field_8699_8700) ) (!  (=> (select (|PolymorphicMapType_4872_8699_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@87 f_2@@87) (= (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@3) o2@@87 f_2@@87) (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@87 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@87 f_2@@87))
))) (forall ((o2@@88 T@Ref) (f_2@@88 T@Field_8712_8717) ) (!  (=> (select (|PolymorphicMapType_4872_8699_21317#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@3) null (WandMaskField_7946 pm_f@@3))) o2@@88 f_2@@88) (= (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@3) o2@@88 f_2@@88) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@88 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@3) o2@@88 f_2@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_7946_22763 pm_f@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4323) (ExhaleHeap@@4 T@PolymorphicMapType_4323) (Mask@@4 T@PolymorphicMapType_4344) (pm_f@@4 T@Field_2351_7947) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_2351_7947 Mask@@4 null pm_f@@4) (IsWandField_2351_22406 pm_f@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@89 T@Ref) (f_2@@89 T@Field_7816_1228) ) (!  (=> (select (|PolymorphicMapType_4872_2351_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@89 f_2@@89) (= (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@4) o2@@89 f_2@@89) (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@89 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@89 f_2@@89))
)) (forall ((o2@@90 T@Ref) (f_2@@90 T@Field_4383_53) ) (!  (=> (select (|PolymorphicMapType_4872_2351_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@90 f_2@@90) (= (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@4) o2@@90 f_2@@90) (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@90 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@90 f_2@@90))
))) (forall ((o2@@91 T@Ref) (f_2@@91 T@Field_4396_4397) ) (!  (=> (select (|PolymorphicMapType_4872_2351_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@91 f_2@@91) (= (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@4) o2@@91 f_2@@91) (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@91 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@91 f_2@@91))
))) (forall ((o2@@92 T@Ref) (f_2@@92 T@Field_7725_645) ) (!  (=> (select (|PolymorphicMapType_4872_2351_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@92 f_2@@92) (= (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@4) o2@@92 f_2@@92) (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@92 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@92 f_2@@92))
))) (forall ((o2@@93 T@Ref) (f_2@@93 T@Field_2351_7947) ) (!  (=> (select (|PolymorphicMapType_4872_2351_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@93 f_2@@93) (= (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@4) o2@@93 f_2@@93) (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@93 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@93 f_2@@93))
))) (forall ((o2@@94 T@Ref) (f_2@@94 T@Field_2351_7964) ) (!  (=> (select (|PolymorphicMapType_4872_2351_18825#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@94 f_2@@94) (= (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) o2@@94 f_2@@94) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@94 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@94 f_2@@94))
))) (forall ((o2@@95 T@Ref) (f_2@@95 T@Field_7946_1228) ) (!  (=> (select (|PolymorphicMapType_4872_7946_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@95 f_2@@95) (= (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@4) o2@@95 f_2@@95) (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@95 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@95 f_2@@95))
))) (forall ((o2@@96 T@Ref) (f_2@@96 T@Field_7946_53) ) (!  (=> (select (|PolymorphicMapType_4872_7946_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@96 f_2@@96) (= (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@4) o2@@96 f_2@@96) (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@96 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@96 f_2@@96))
))) (forall ((o2@@97 T@Ref) (f_2@@97 T@Field_7946_4397) ) (!  (=> (select (|PolymorphicMapType_4872_7946_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@97 f_2@@97) (= (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@4) o2@@97 f_2@@97) (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@97 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@97 f_2@@97))
))) (forall ((o2@@98 T@Ref) (f_2@@98 T@Field_7946_645) ) (!  (=> (select (|PolymorphicMapType_4872_7946_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@98 f_2@@98) (= (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@4) o2@@98 f_2@@98) (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@98 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@98 f_2@@98))
))) (forall ((o2@@99 T@Ref) (f_2@@99 T@Field_7946_7947) ) (!  (=> (select (|PolymorphicMapType_4872_7946_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@99 f_2@@99) (= (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@4) o2@@99 f_2@@99) (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@99 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@99 f_2@@99))
))) (forall ((o2@@100 T@Ref) (f_2@@100 T@Field_7959_7964) ) (!  (=> (select (|PolymorphicMapType_4872_7946_20071#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@100 f_2@@100) (= (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@4) o2@@100 f_2@@100) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@100 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@100 f_2@@100))
))) (forall ((o2@@101 T@Ref) (f_2@@101 T@Field_8699_1228) ) (!  (=> (select (|PolymorphicMapType_4872_8699_1228#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@101 f_2@@101) (= (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@4) o2@@101 f_2@@101) (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@101 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@101 f_2@@101))
))) (forall ((o2@@102 T@Ref) (f_2@@102 T@Field_8699_53) ) (!  (=> (select (|PolymorphicMapType_4872_8699_53#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@102 f_2@@102) (= (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@4) o2@@102 f_2@@102) (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@102 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@102 f_2@@102))
))) (forall ((o2@@103 T@Ref) (f_2@@103 T@Field_8699_4397) ) (!  (=> (select (|PolymorphicMapType_4872_8699_4397#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@103 f_2@@103) (= (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@4) o2@@103 f_2@@103) (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@103 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@103 f_2@@103))
))) (forall ((o2@@104 T@Ref) (f_2@@104 T@Field_8699_645) ) (!  (=> (select (|PolymorphicMapType_4872_8699_645#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@104 f_2@@104) (= (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@4) o2@@104 f_2@@104) (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@104 f_2@@104)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@104 f_2@@104))
))) (forall ((o2@@105 T@Ref) (f_2@@105 T@Field_8699_8700) ) (!  (=> (select (|PolymorphicMapType_4872_8699_7947#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@105 f_2@@105) (= (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@4) o2@@105 f_2@@105) (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@105 f_2@@105)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@105 f_2@@105))
))) (forall ((o2@@106 T@Ref) (f_2@@106 T@Field_8712_8717) ) (!  (=> (select (|PolymorphicMapType_4872_8699_21317#PolymorphicMapType_4872| (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@4) null (WandMaskField_2351 pm_f@@4))) o2@@106 f_2@@106) (= (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@4) o2@@106 f_2@@106) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@106 f_2@@106)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@4) o2@@106 f_2@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_2351_22406 pm_f@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_4323) (Heap1 T@PolymorphicMapType_4323) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4323) (Mask@@5 T@PolymorphicMapType_4344) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4323) (Heap1@@0 T@PolymorphicMapType_4323) (Heap2 T@PolymorphicMapType_4323) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8712_8717) ) (!  (not (select (|PolymorphicMapType_4872_8699_21317#PolymorphicMapType_4872| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_8699_21317#PolymorphicMapType_4872| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8699_8700) ) (!  (not (select (|PolymorphicMapType_4872_8699_7947#PolymorphicMapType_4872| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_8699_7947#PolymorphicMapType_4872| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8699_645) ) (!  (not (select (|PolymorphicMapType_4872_8699_645#PolymorphicMapType_4872| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_8699_645#PolymorphicMapType_4872| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8699_4397) ) (!  (not (select (|PolymorphicMapType_4872_8699_4397#PolymorphicMapType_4872| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_8699_4397#PolymorphicMapType_4872| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8699_53) ) (!  (not (select (|PolymorphicMapType_4872_8699_53#PolymorphicMapType_4872| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_8699_53#PolymorphicMapType_4872| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8699_1228) ) (!  (not (select (|PolymorphicMapType_4872_8699_1228#PolymorphicMapType_4872| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_8699_1228#PolymorphicMapType_4872| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7959_7964) ) (!  (not (select (|PolymorphicMapType_4872_7946_20071#PolymorphicMapType_4872| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_7946_20071#PolymorphicMapType_4872| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7946_7947) ) (!  (not (select (|PolymorphicMapType_4872_7946_7947#PolymorphicMapType_4872| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_7946_7947#PolymorphicMapType_4872| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7946_645) ) (!  (not (select (|PolymorphicMapType_4872_7946_645#PolymorphicMapType_4872| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_7946_645#PolymorphicMapType_4872| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7946_4397) ) (!  (not (select (|PolymorphicMapType_4872_7946_4397#PolymorphicMapType_4872| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_7946_4397#PolymorphicMapType_4872| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_7946_53) ) (!  (not (select (|PolymorphicMapType_4872_7946_53#PolymorphicMapType_4872| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_7946_53#PolymorphicMapType_4872| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_7946_1228) ) (!  (not (select (|PolymorphicMapType_4872_7946_1228#PolymorphicMapType_4872| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_7946_1228#PolymorphicMapType_4872| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_2351_7964) ) (!  (not (select (|PolymorphicMapType_4872_2351_18825#PolymorphicMapType_4872| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_2351_18825#PolymorphicMapType_4872| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_2351_7947) ) (!  (not (select (|PolymorphicMapType_4872_2351_7947#PolymorphicMapType_4872| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_2351_7947#PolymorphicMapType_4872| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_7725_645) ) (!  (not (select (|PolymorphicMapType_4872_2351_645#PolymorphicMapType_4872| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_2351_645#PolymorphicMapType_4872| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4396_4397) ) (!  (not (select (|PolymorphicMapType_4872_2351_4397#PolymorphicMapType_4872| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_2351_4397#PolymorphicMapType_4872| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4383_53) ) (!  (not (select (|PolymorphicMapType_4872_2351_53#PolymorphicMapType_4872| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_2351_53#PolymorphicMapType_4872| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7816_1228) ) (!  (not (select (|PolymorphicMapType_4872_2351_1228#PolymorphicMapType_4872| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4872_2351_1228#PolymorphicMapType_4872| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((this$ T@Ref) ) (! (IsPredicateField_2360_2361 (Lala$MonitorInvariant this$))
 :qid |stdinbpl.220:15|
 :skolemid |23|
 :pattern ( (Lala$MonitorInvariant this$))
)))
(assert (forall ((this$_1 T@Ref) ) (! (IsPredicateField_2384_2385 (Lalainv$ this$_1))
 :qid |stdinbpl.269:15|
 :skolemid |29|
 :pattern ( (Lalainv$ this$_1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4323) (this$@@0 T@Ref) ) (! (|Lala$MonitorInvariant#everUsed_2360| (Lala$MonitorInvariant this$@@0))
 :qid |stdinbpl.239:15|
 :skolemid |27|
 :pattern ( (|Lala$MonitorInvariant#trigger_2360| Heap@@6 (Lala$MonitorInvariant this$@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4323) (this$_1@@0 T@Ref) ) (! (|Lalainv$#everUsed_2384| (Lalainv$ this$_1@@0))
 :qid |stdinbpl.288:15|
 :skolemid |33|
 :pattern ( (|Lalainv$#trigger_2384| Heap@@7 (Lalainv$ this$_1@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4323) (ExhaleHeap@@5 T@PolymorphicMapType_4323) (Mask@@6 T@PolymorphicMapType_4344) (pm_f@@5 T@Field_8699_8700) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8699_7947 Mask@@6 null pm_f@@5) (IsPredicateField_2384_2385 pm_f@@5)) (= (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@8) null (PredicateMaskField_2384 pm_f@@5)) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@5) null (PredicateMaskField_2384 pm_f@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsPredicateField_2384_2385 pm_f@@5) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@5) null (PredicateMaskField_2384 pm_f@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4323) (ExhaleHeap@@6 T@PolymorphicMapType_4323) (Mask@@7 T@PolymorphicMapType_4344) (pm_f@@6 T@Field_7946_7947) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_7946_7947 Mask@@7 null pm_f@@6) (IsPredicateField_2360_2361 pm_f@@6)) (= (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@9) null (PredicateMaskField_2360 pm_f@@6)) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@6) null (PredicateMaskField_2360 pm_f@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsPredicateField_2360_2361 pm_f@@6) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@6) null (PredicateMaskField_2360 pm_f@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4323) (ExhaleHeap@@7 T@PolymorphicMapType_4323) (Mask@@8 T@PolymorphicMapType_4344) (pm_f@@7 T@Field_2351_7947) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_2351_7947 Mask@@8 null pm_f@@7) (IsPredicateField_2351_16830 pm_f@@7)) (= (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@10) null (PredicateMaskField_2351 pm_f@@7)) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@7) null (PredicateMaskField_2351 pm_f@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_2351_16830 pm_f@@7) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@7) null (PredicateMaskField_2351 pm_f@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4323) (ExhaleHeap@@8 T@PolymorphicMapType_4323) (Mask@@9 T@PolymorphicMapType_4344) (pm_f@@8 T@Field_8699_8700) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_8699_7947 Mask@@9 null pm_f@@8) (IsWandField_8699_23120 pm_f@@8)) (= (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@11) null (WandMaskField_8699 pm_f@@8)) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@8) null (WandMaskField_8699 pm_f@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_8699_23120 pm_f@@8) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@8) null (WandMaskField_8699 pm_f@@8)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4323) (ExhaleHeap@@9 T@PolymorphicMapType_4323) (Mask@@10 T@PolymorphicMapType_4344) (pm_f@@9 T@Field_7946_7947) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_7946_7947 Mask@@10 null pm_f@@9) (IsWandField_7946_22763 pm_f@@9)) (= (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@12) null (WandMaskField_7946 pm_f@@9)) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@9) null (WandMaskField_7946 pm_f@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsWandField_7946_22763 pm_f@@9) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@9) null (WandMaskField_7946 pm_f@@9)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4323) (ExhaleHeap@@10 T@PolymorphicMapType_4323) (Mask@@11 T@PolymorphicMapType_4344) (pm_f@@10 T@Field_2351_7947) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_2351_7947 Mask@@11 null pm_f@@10) (IsWandField_2351_22406 pm_f@@10)) (= (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@13) null (WandMaskField_2351 pm_f@@10)) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@10) null (WandMaskField_2351 pm_f@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsWandField_2351_22406 pm_f@@10) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@10) null (WandMaskField_2351 pm_f@@10)))
)))
(assert (forall ((this$@@1 T@Ref) (this$2 T@Ref) ) (!  (=> (= (Lala$MonitorInvariant this$@@1) (Lala$MonitorInvariant this$2)) (= this$@@1 this$2))
 :qid |stdinbpl.230:15|
 :skolemid |25|
 :pattern ( (Lala$MonitorInvariant this$@@1) (Lala$MonitorInvariant this$2))
)))
(assert (forall ((this$@@2 T@Ref) (this$2@@0 T@Ref) ) (!  (=> (= (|Lala$MonitorInvariant#sm| this$@@2) (|Lala$MonitorInvariant#sm| this$2@@0)) (= this$@@2 this$2@@0))
 :qid |stdinbpl.234:15|
 :skolemid |26|
 :pattern ( (|Lala$MonitorInvariant#sm| this$@@2) (|Lala$MonitorInvariant#sm| this$2@@0))
)))
(assert (forall ((this$_1@@1 T@Ref) (this$_12 T@Ref) ) (!  (=> (= (Lalainv$ this$_1@@1) (Lalainv$ this$_12)) (= this$_1@@1 this$_12))
 :qid |stdinbpl.279:15|
 :skolemid |31|
 :pattern ( (Lalainv$ this$_1@@1) (Lalainv$ this$_12))
)))
(assert (forall ((this$_1@@2 T@Ref) (this$_12@@0 T@Ref) ) (!  (=> (= (|Lalainv$#sm| this$_1@@2) (|Lalainv$#sm| this$_12@@0)) (= this$_1@@2 this$_12@@0))
 :qid |stdinbpl.283:15|
 :skolemid |32|
 :pattern ( (|Lalainv$#sm| this$_1@@2) (|Lalainv$#sm| this$_12@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4323) (ExhaleHeap@@11 T@PolymorphicMapType_4323) (Mask@@12 T@PolymorphicMapType_4344) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@14) o_1 $allocated) (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@11) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@11) o_1 $allocated))
)))
(assert (forall ((p T@Field_8699_8700) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8699_8699 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8699_8699 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_7946_7947) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7946_7946 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7946_7946 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_2351_7947) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_4383_4383 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4383_4383 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_2346_645 old$methodPermission)))
(assert  (not (IsWandField_2346_645 old$methodPermission)))
(assert  (not (IsPredicateField_2349_1213 joinable$)))
(assert  (not (IsWandField_2349_1213 joinable$)))
(assert  (not (IsPredicateField_2351_1228 Lalax$)))
(assert  (not (IsWandField_2351_1228 Lalax$)))
(assert  (not (IsPredicateField_2353_2354 par$Lalakoko$this$_2)))
(assert  (not (IsWandField_2353_2354 par$Lalakoko$this$_2)))
(assert  (not (IsPredicateField_2346_645 par$Lalakoko$k$)))
(assert  (not (IsWandField_2346_645 par$Lalakoko$k$)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4323) (ExhaleHeap@@12 T@PolymorphicMapType_4323) (Mask@@13 T@PolymorphicMapType_4344) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@15 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4344) (o_2@@17 T@Ref) (f_4@@17 T@Field_7959_7964) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| Mask@@14) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_7946_35238 f_4@@17))) (not (IsWandField_7946_35254 f_4@@17))) (<= (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| Mask@@14) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| Mask@@14) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4344) (o_2@@18 T@Ref) (f_4@@18 T@Field_7946_645) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| Mask@@15) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_7946_645 f_4@@18))) (not (IsWandField_7946_645 f_4@@18))) (<= (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| Mask@@15) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| Mask@@15) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4344) (o_2@@19 T@Ref) (f_4@@19 T@Field_7946_4397) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| Mask@@16) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_7946_4397 f_4@@19))) (not (IsWandField_7946_4397 f_4@@19))) (<= (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| Mask@@16) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| Mask@@16) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4344) (o_2@@20 T@Ref) (f_4@@20 T@Field_7946_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| Mask@@17) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_7946_53 f_4@@20))) (not (IsWandField_7946_53 f_4@@20))) (<= (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| Mask@@17) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| Mask@@17) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4344) (o_2@@21 T@Ref) (f_4@@21 T@Field_7946_7947) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| Mask@@18) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2360_2361 f_4@@21))) (not (IsWandField_7946_22763 f_4@@21))) (<= (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| Mask@@18) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| Mask@@18) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4344) (o_2@@22 T@Ref) (f_4@@22 T@Field_7946_1228) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| Mask@@19) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7946_1228 f_4@@22))) (not (IsWandField_7946_1228 f_4@@22))) (<= (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| Mask@@19) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| Mask@@19) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4344) (o_2@@23 T@Ref) (f_4@@23 T@Field_8712_8717) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| Mask@@20) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2384_34239 f_4@@23))) (not (IsWandField_2384_34255 f_4@@23))) (<= (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| Mask@@20) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| Mask@@20) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4344) (o_2@@24 T@Ref) (f_4@@24 T@Field_8699_645) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| Mask@@21) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_2384_645 f_4@@24))) (not (IsWandField_2384_645 f_4@@24))) (<= (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| Mask@@21) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| Mask@@21) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4344) (o_2@@25 T@Ref) (f_4@@25 T@Field_8699_4397) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| Mask@@22) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_2384_4397 f_4@@25))) (not (IsWandField_2384_4397 f_4@@25))) (<= (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| Mask@@22) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| Mask@@22) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4344) (o_2@@26 T@Ref) (f_4@@26 T@Field_8699_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| Mask@@23) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_2384_53 f_4@@26))) (not (IsWandField_2384_53 f_4@@26))) (<= (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| Mask@@23) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| Mask@@23) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4344) (o_2@@27 T@Ref) (f_4@@27 T@Field_8699_8700) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| Mask@@24) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_2384_2385 f_4@@27))) (not (IsWandField_8699_23120 f_4@@27))) (<= (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| Mask@@24) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| Mask@@24) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4344) (o_2@@28 T@Ref) (f_4@@28 T@Field_8699_1228) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| Mask@@25) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_2384_1228 f_4@@28))) (not (IsWandField_2384_1228 f_4@@28))) (<= (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| Mask@@25) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| Mask@@25) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4344) (o_2@@29 T@Ref) (f_4@@29 T@Field_2351_7964) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| Mask@@26) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_2351_33240 f_4@@29))) (not (IsWandField_2351_33256 f_4@@29))) (<= (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| Mask@@26) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| Mask@@26) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4344) (o_2@@30 T@Ref) (f_4@@30 T@Field_7725_645) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| Mask@@27) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_2346_645 f_4@@30))) (not (IsWandField_2346_645 f_4@@30))) (<= (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| Mask@@27) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| Mask@@27) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4344) (o_2@@31 T@Ref) (f_4@@31 T@Field_4396_4397) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| Mask@@28) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_2353_2354 f_4@@31))) (not (IsWandField_2353_2354 f_4@@31))) (<= (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| Mask@@28) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| Mask@@28) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4344) (o_2@@32 T@Ref) (f_4@@32 T@Field_4383_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| Mask@@29) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_2349_1213 f_4@@32))) (not (IsWandField_2349_1213 f_4@@32))) (<= (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| Mask@@29) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| Mask@@29) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_4344) (o_2@@33 T@Ref) (f_4@@33 T@Field_2351_7947) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| Mask@@30) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_2351_16830 f_4@@33))) (not (IsWandField_2351_22406 f_4@@33))) (<= (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| Mask@@30) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| Mask@@30) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_4344) (o_2@@34 T@Ref) (f_4@@34 T@Field_7816_1228) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| Mask@@31) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_2351_1228 f_4@@34))) (not (IsWandField_2351_1228 f_4@@34))) (<= (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| Mask@@31) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| Mask@@31) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_4344) (o_2@@35 T@Ref) (f_4@@35 T@Field_8712_8717) ) (! (= (HasDirectPerm_8699_16585 Mask@@32 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| Mask@@32) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8699_16585 Mask@@32 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_4344) (o_2@@36 T@Ref) (f_4@@36 T@Field_8699_8700) ) (! (= (HasDirectPerm_8699_7947 Mask@@33 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| Mask@@33) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8699_7947 Mask@@33 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_4344) (o_2@@37 T@Ref) (f_4@@37 T@Field_8699_645) ) (! (= (HasDirectPerm_8699_645 Mask@@34 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| Mask@@34) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8699_645 Mask@@34 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_4344) (o_2@@38 T@Ref) (f_4@@38 T@Field_8699_4397) ) (! (= (HasDirectPerm_8699_4397 Mask@@35 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| Mask@@35) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8699_4397 Mask@@35 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_4344) (o_2@@39 T@Ref) (f_4@@39 T@Field_8699_53) ) (! (= (HasDirectPerm_8699_53 Mask@@36 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| Mask@@36) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8699_53 Mask@@36 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_4344) (o_2@@40 T@Ref) (f_4@@40 T@Field_8699_1228) ) (! (= (HasDirectPerm_8699_1228 Mask@@37 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| Mask@@37) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8699_1228 Mask@@37 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_4344) (o_2@@41 T@Ref) (f_4@@41 T@Field_7959_7964) ) (! (= (HasDirectPerm_7946_15203 Mask@@38 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| Mask@@38) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7946_15203 Mask@@38 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_4344) (o_2@@42 T@Ref) (f_4@@42 T@Field_7946_7947) ) (! (= (HasDirectPerm_7946_7947 Mask@@39 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| Mask@@39) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7946_7947 Mask@@39 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_4344) (o_2@@43 T@Ref) (f_4@@43 T@Field_7946_645) ) (! (= (HasDirectPerm_7946_645 Mask@@40 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| Mask@@40) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7946_645 Mask@@40 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_4344) (o_2@@44 T@Ref) (f_4@@44 T@Field_7946_4397) ) (! (= (HasDirectPerm_7946_4397 Mask@@41 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| Mask@@41) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7946_4397 Mask@@41 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_4344) (o_2@@45 T@Ref) (f_4@@45 T@Field_7946_53) ) (! (= (HasDirectPerm_7946_53 Mask@@42 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| Mask@@42) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7946_53 Mask@@42 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_4344) (o_2@@46 T@Ref) (f_4@@46 T@Field_7946_1228) ) (! (= (HasDirectPerm_7946_1228 Mask@@43 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| Mask@@43) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7946_1228 Mask@@43 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_4344) (o_2@@47 T@Ref) (f_4@@47 T@Field_2351_7964) ) (! (= (HasDirectPerm_2351_13804 Mask@@44 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| Mask@@44) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2351_13804 Mask@@44 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_4344) (o_2@@48 T@Ref) (f_4@@48 T@Field_2351_7947) ) (! (= (HasDirectPerm_2351_7947 Mask@@45 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| Mask@@45) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2351_7947 Mask@@45 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_4344) (o_2@@49 T@Ref) (f_4@@49 T@Field_7725_645) ) (! (= (HasDirectPerm_2351_645 Mask@@46 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| Mask@@46) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2351_645 Mask@@46 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_4344) (o_2@@50 T@Ref) (f_4@@50 T@Field_4396_4397) ) (! (= (HasDirectPerm_2351_4397 Mask@@47 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| Mask@@47) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2351_4397 Mask@@47 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_4344) (o_2@@51 T@Ref) (f_4@@51 T@Field_4383_53) ) (! (= (HasDirectPerm_2351_53 Mask@@48 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| Mask@@48) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2351_53 Mask@@48 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_4344) (o_2@@52 T@Ref) (f_4@@52 T@Field_7816_1228) ) (! (= (HasDirectPerm_2351_1228 Mask@@49 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| Mask@@49) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2351_1228 Mask@@49 o_2@@52 f_4@@52))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4323) (ExhaleHeap@@13 T@PolymorphicMapType_4323) (Mask@@50 T@PolymorphicMapType_4344) (o_1@@0 T@Ref) (f_2@@107 T@Field_8712_8717) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@50) (=> (HasDirectPerm_8699_16585 Mask@@50 o_1@@0 f_2@@107) (= (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@16) o_1@@0 f_2@@107) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@13) o_1@@0 f_2@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@50) (select (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| ExhaleHeap@@13) o_1@@0 f_2@@107))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4323) (ExhaleHeap@@14 T@PolymorphicMapType_4323) (Mask@@51 T@PolymorphicMapType_4344) (o_1@@1 T@Ref) (f_2@@108 T@Field_8699_8700) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@51) (=> (HasDirectPerm_8699_7947 Mask@@51 o_1@@1 f_2@@108) (= (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@17) o_1@@1 f_2@@108) (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@14) o_1@@1 f_2@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@51) (select (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| ExhaleHeap@@14) o_1@@1 f_2@@108))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4323) (ExhaleHeap@@15 T@PolymorphicMapType_4323) (Mask@@52 T@PolymorphicMapType_4344) (o_1@@2 T@Ref) (f_2@@109 T@Field_8699_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@52) (=> (HasDirectPerm_8699_645 Mask@@52 o_1@@2 f_2@@109) (= (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@18) o_1@@2 f_2@@109) (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@15) o_1@@2 f_2@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@52) (select (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| ExhaleHeap@@15) o_1@@2 f_2@@109))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4323) (ExhaleHeap@@16 T@PolymorphicMapType_4323) (Mask@@53 T@PolymorphicMapType_4344) (o_1@@3 T@Ref) (f_2@@110 T@Field_8699_4397) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@53) (=> (HasDirectPerm_8699_4397 Mask@@53 o_1@@3 f_2@@110) (= (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@19) o_1@@3 f_2@@110) (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@16) o_1@@3 f_2@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@53) (select (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| ExhaleHeap@@16) o_1@@3 f_2@@110))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4323) (ExhaleHeap@@17 T@PolymorphicMapType_4323) (Mask@@54 T@PolymorphicMapType_4344) (o_1@@4 T@Ref) (f_2@@111 T@Field_8699_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@54) (=> (HasDirectPerm_8699_53 Mask@@54 o_1@@4 f_2@@111) (= (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@20) o_1@@4 f_2@@111) (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@17) o_1@@4 f_2@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@54) (select (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| ExhaleHeap@@17) o_1@@4 f_2@@111))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4323) (ExhaleHeap@@18 T@PolymorphicMapType_4323) (Mask@@55 T@PolymorphicMapType_4344) (o_1@@5 T@Ref) (f_2@@112 T@Field_8699_1228) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@55) (=> (HasDirectPerm_8699_1228 Mask@@55 o_1@@5 f_2@@112) (= (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@21) o_1@@5 f_2@@112) (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@18) o_1@@5 f_2@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@55) (select (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| ExhaleHeap@@18) o_1@@5 f_2@@112))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4323) (ExhaleHeap@@19 T@PolymorphicMapType_4323) (Mask@@56 T@PolymorphicMapType_4344) (o_1@@6 T@Ref) (f_2@@113 T@Field_7959_7964) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@56) (=> (HasDirectPerm_7946_15203 Mask@@56 o_1@@6 f_2@@113) (= (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@22) o_1@@6 f_2@@113) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@19) o_1@@6 f_2@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@56) (select (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| ExhaleHeap@@19) o_1@@6 f_2@@113))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4323) (ExhaleHeap@@20 T@PolymorphicMapType_4323) (Mask@@57 T@PolymorphicMapType_4344) (o_1@@7 T@Ref) (f_2@@114 T@Field_7946_7947) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@57) (=> (HasDirectPerm_7946_7947 Mask@@57 o_1@@7 f_2@@114) (= (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@23) o_1@@7 f_2@@114) (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@20) o_1@@7 f_2@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@57) (select (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| ExhaleHeap@@20) o_1@@7 f_2@@114))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4323) (ExhaleHeap@@21 T@PolymorphicMapType_4323) (Mask@@58 T@PolymorphicMapType_4344) (o_1@@8 T@Ref) (f_2@@115 T@Field_7946_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@58) (=> (HasDirectPerm_7946_645 Mask@@58 o_1@@8 f_2@@115) (= (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@24) o_1@@8 f_2@@115) (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@21) o_1@@8 f_2@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@58) (select (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| ExhaleHeap@@21) o_1@@8 f_2@@115))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4323) (ExhaleHeap@@22 T@PolymorphicMapType_4323) (Mask@@59 T@PolymorphicMapType_4344) (o_1@@9 T@Ref) (f_2@@116 T@Field_7946_4397) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@59) (=> (HasDirectPerm_7946_4397 Mask@@59 o_1@@9 f_2@@116) (= (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@25) o_1@@9 f_2@@116) (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@22) o_1@@9 f_2@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@59) (select (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| ExhaleHeap@@22) o_1@@9 f_2@@116))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4323) (ExhaleHeap@@23 T@PolymorphicMapType_4323) (Mask@@60 T@PolymorphicMapType_4344) (o_1@@10 T@Ref) (f_2@@117 T@Field_7946_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@60) (=> (HasDirectPerm_7946_53 Mask@@60 o_1@@10 f_2@@117) (= (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@26) o_1@@10 f_2@@117) (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@23) o_1@@10 f_2@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@60) (select (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| ExhaleHeap@@23) o_1@@10 f_2@@117))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4323) (ExhaleHeap@@24 T@PolymorphicMapType_4323) (Mask@@61 T@PolymorphicMapType_4344) (o_1@@11 T@Ref) (f_2@@118 T@Field_7946_1228) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@61) (=> (HasDirectPerm_7946_1228 Mask@@61 o_1@@11 f_2@@118) (= (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@27) o_1@@11 f_2@@118) (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@24) o_1@@11 f_2@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@61) (select (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| ExhaleHeap@@24) o_1@@11 f_2@@118))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4323) (ExhaleHeap@@25 T@PolymorphicMapType_4323) (Mask@@62 T@PolymorphicMapType_4344) (o_1@@12 T@Ref) (f_2@@119 T@Field_2351_7964) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@62) (=> (HasDirectPerm_2351_13804 Mask@@62 o_1@@12 f_2@@119) (= (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@28) o_1@@12 f_2@@119) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@25) o_1@@12 f_2@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@62) (select (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| ExhaleHeap@@25) o_1@@12 f_2@@119))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4323) (ExhaleHeap@@26 T@PolymorphicMapType_4323) (Mask@@63 T@PolymorphicMapType_4344) (o_1@@13 T@Ref) (f_2@@120 T@Field_2351_7947) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@63) (=> (HasDirectPerm_2351_7947 Mask@@63 o_1@@13 f_2@@120) (= (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@29) o_1@@13 f_2@@120) (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@26) o_1@@13 f_2@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@63) (select (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| ExhaleHeap@@26) o_1@@13 f_2@@120))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4323) (ExhaleHeap@@27 T@PolymorphicMapType_4323) (Mask@@64 T@PolymorphicMapType_4344) (o_1@@14 T@Ref) (f_2@@121 T@Field_7725_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@64) (=> (HasDirectPerm_2351_645 Mask@@64 o_1@@14 f_2@@121) (= (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@30) o_1@@14 f_2@@121) (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@27) o_1@@14 f_2@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@64) (select (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| ExhaleHeap@@27) o_1@@14 f_2@@121))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_4323) (ExhaleHeap@@28 T@PolymorphicMapType_4323) (Mask@@65 T@PolymorphicMapType_4344) (o_1@@15 T@Ref) (f_2@@122 T@Field_4396_4397) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@65) (=> (HasDirectPerm_2351_4397 Mask@@65 o_1@@15 f_2@@122) (= (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@31) o_1@@15 f_2@@122) (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@28) o_1@@15 f_2@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@65) (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| ExhaleHeap@@28) o_1@@15 f_2@@122))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_4323) (ExhaleHeap@@29 T@PolymorphicMapType_4323) (Mask@@66 T@PolymorphicMapType_4344) (o_1@@16 T@Ref) (f_2@@123 T@Field_4383_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@66) (=> (HasDirectPerm_2351_53 Mask@@66 o_1@@16 f_2@@123) (= (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@32) o_1@@16 f_2@@123) (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@29) o_1@@16 f_2@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@66) (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| ExhaleHeap@@29) o_1@@16 f_2@@123))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_4323) (ExhaleHeap@@30 T@PolymorphicMapType_4323) (Mask@@67 T@PolymorphicMapType_4344) (o_1@@17 T@Ref) (f_2@@124 T@Field_7816_1228) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@67) (=> (HasDirectPerm_2351_1228 Mask@@67 o_1@@17 f_2@@124) (= (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@33) o_1@@17 f_2@@124) (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@30) o_1@@17 f_2@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@67) (select (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| ExhaleHeap@@30) o_1@@17 f_2@@124))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_7959_7964) ) (! (= (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_7946_645) ) (! (= (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_7946_4397) ) (! (= (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_7946_53) ) (! (= (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_7946_7947) ) (! (= (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_7946_1228) ) (! (= (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_8712_8717) ) (! (= (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_8699_645) ) (! (= (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_8699_4397) ) (! (= (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_8699_53) ) (! (= (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_8699_8700) ) (! (= (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_8699_1228) ) (! (= (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_2351_7964) ) (! (= (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_7725_645) ) (! (= (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_4396_4397) ) (! (= (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_4383_53) ) (! (= (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_2351_7947) ) (! (= (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_7816_1228) ) (! (= (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4344) (SummandMask1 T@PolymorphicMapType_4344) (SummandMask2 T@PolymorphicMapType_4344) (o_2@@71 T@Ref) (f_4@@71 T@Field_7959_7964) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4344_7946_31123#PolymorphicMapType_4344| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4344) (SummandMask1@@0 T@PolymorphicMapType_4344) (SummandMask2@@0 T@PolymorphicMapType_4344) (o_2@@72 T@Ref) (f_4@@72 T@Field_7946_645) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4344_7946_645#PolymorphicMapType_4344| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4344) (SummandMask1@@1 T@PolymorphicMapType_4344) (SummandMask2@@1 T@PolymorphicMapType_4344) (o_2@@73 T@Ref) (f_4@@73 T@Field_7946_4397) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4344_7946_4397#PolymorphicMapType_4344| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4344) (SummandMask1@@2 T@PolymorphicMapType_4344) (SummandMask2@@2 T@PolymorphicMapType_4344) (o_2@@74 T@Ref) (f_4@@74 T@Field_7946_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4344_7946_53#PolymorphicMapType_4344| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4344) (SummandMask1@@3 T@PolymorphicMapType_4344) (SummandMask2@@3 T@PolymorphicMapType_4344) (o_2@@75 T@Ref) (f_4@@75 T@Field_7946_7947) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4344_7946_2385#PolymorphicMapType_4344| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4344) (SummandMask1@@4 T@PolymorphicMapType_4344) (SummandMask2@@4 T@PolymorphicMapType_4344) (o_2@@76 T@Ref) (f_4@@76 T@Field_7946_1228) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4344_7946_1228#PolymorphicMapType_4344| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4344) (SummandMask1@@5 T@PolymorphicMapType_4344) (SummandMask2@@5 T@PolymorphicMapType_4344) (o_2@@77 T@Ref) (f_4@@77 T@Field_8712_8717) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4344_2384_30617#PolymorphicMapType_4344| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4344) (SummandMask1@@6 T@PolymorphicMapType_4344) (SummandMask2@@6 T@PolymorphicMapType_4344) (o_2@@78 T@Ref) (f_4@@78 T@Field_8699_645) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4344_2384_645#PolymorphicMapType_4344| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4344) (SummandMask1@@7 T@PolymorphicMapType_4344) (SummandMask2@@7 T@PolymorphicMapType_4344) (o_2@@79 T@Ref) (f_4@@79 T@Field_8699_4397) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4344_2384_4397#PolymorphicMapType_4344| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4344) (SummandMask1@@8 T@PolymorphicMapType_4344) (SummandMask2@@8 T@PolymorphicMapType_4344) (o_2@@80 T@Ref) (f_4@@80 T@Field_8699_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4344_2384_53#PolymorphicMapType_4344| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_4344) (SummandMask1@@9 T@PolymorphicMapType_4344) (SummandMask2@@9 T@PolymorphicMapType_4344) (o_2@@81 T@Ref) (f_4@@81 T@Field_8699_8700) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4344_2384_2385#PolymorphicMapType_4344| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_4344) (SummandMask1@@10 T@PolymorphicMapType_4344) (SummandMask2@@10 T@PolymorphicMapType_4344) (o_2@@82 T@Ref) (f_4@@82 T@Field_8699_1228) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4344_2384_1228#PolymorphicMapType_4344| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_4344) (SummandMask1@@11 T@PolymorphicMapType_4344) (SummandMask2@@11 T@PolymorphicMapType_4344) (o_2@@83 T@Ref) (f_4@@83 T@Field_2351_7964) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_4344_2351_30126#PolymorphicMapType_4344| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_4344) (SummandMask1@@12 T@PolymorphicMapType_4344) (SummandMask2@@12 T@PolymorphicMapType_4344) (o_2@@84 T@Ref) (f_4@@84 T@Field_7725_645) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_4344_2351_645#PolymorphicMapType_4344| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_4344) (SummandMask1@@13 T@PolymorphicMapType_4344) (SummandMask2@@13 T@PolymorphicMapType_4344) (o_2@@85 T@Ref) (f_4@@85 T@Field_4396_4397) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_4344_2351_4397#PolymorphicMapType_4344| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_4344) (SummandMask1@@14 T@PolymorphicMapType_4344) (SummandMask2@@14 T@PolymorphicMapType_4344) (o_2@@86 T@Ref) (f_4@@86 T@Field_4383_53) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_4344_2351_53#PolymorphicMapType_4344| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_4344) (SummandMask1@@15 T@PolymorphicMapType_4344) (SummandMask2@@15 T@PolymorphicMapType_4344) (o_2@@87 T@Ref) (f_4@@87 T@Field_2351_7947) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_4344_2351_2385#PolymorphicMapType_4344| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_4344) (SummandMask1@@16 T@PolymorphicMapType_4344) (SummandMask2@@16 T@PolymorphicMapType_4344) (o_2@@88 T@Ref) (f_4@@88 T@Field_7816_1228) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_4344_2351_1228#PolymorphicMapType_4344| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((this$@@3 T@Ref) ) (! (= (getPredWandId_2360_2361 (Lala$MonitorInvariant this$@@3)) 0)
 :qid |stdinbpl.224:15|
 :skolemid |24|
 :pattern ( (Lala$MonitorInvariant this$@@3))
)))
(assert (forall ((this$_1@@3 T@Ref) ) (! (= (getPredWandId_2384_2385 (Lalainv$ this$_1@@3)) 1)
 :qid |stdinbpl.273:15|
 :skolemid |30|
 :pattern ( (Lalainv$ this$_1@@3))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_4323) (o T@Ref) (f_3 T@Field_7946_645) (v Real) ) (! (succHeap Heap@@34 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@34) (store (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@34) o f_3 v) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@34) (store (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@34) o f_3 v) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@34) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_4323) (o@@0 T@Ref) (f_3@@0 T@Field_7959_7964) (v@@0 T@PolymorphicMapType_4872) ) (! (succHeap Heap@@35 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@35) (store (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@35) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@35) (store (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@35) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@35) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_4323) (o@@1 T@Ref) (f_3@@1 T@Field_7946_1228) (v@@1 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@36) (store (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@36) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@36) (store (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@36) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@36) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_4323) (o@@2 T@Ref) (f_3@@2 T@Field_7946_7947) (v@@2 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@37) (store (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@37) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@37) (store (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@37) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@37) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_4323) (o@@3 T@Ref) (f_3@@3 T@Field_7946_4397) (v@@3 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@38) (store (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@38) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@38) (store (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@38) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@38) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_4323) (o@@4 T@Ref) (f_3@@4 T@Field_7946_53) (v@@4 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@39) (store (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@39) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@39) (store (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@39) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@39) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_4323) (o@@5 T@Ref) (f_3@@5 T@Field_8699_645) (v@@5 Real) ) (! (succHeap Heap@@40 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@40) (store (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@40) o@@5 f_3@@5 v@@5)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@40) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@40) (store (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@40) o@@5 f_3@@5 v@@5)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_4323) (o@@6 T@Ref) (f_3@@6 T@Field_8712_8717) (v@@6 T@PolymorphicMapType_4872) ) (! (succHeap Heap@@41 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@41) (store (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@41) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@41) (store (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@41) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@41) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_4323) (o@@7 T@Ref) (f_3@@7 T@Field_8699_1228) (v@@7 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@42) (store (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@42) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@42) (store (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@42) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@42) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_4323) (o@@8 T@Ref) (f_3@@8 T@Field_8699_8700) (v@@8 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@43) (store (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@43) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@43) (store (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@43) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@43) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_4323) (o@@9 T@Ref) (f_3@@9 T@Field_8699_4397) (v@@9 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@44) (store (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@44) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@44) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@44) (store (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@44) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_4323) (o@@10 T@Ref) (f_3@@10 T@Field_8699_53) (v@@10 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@45) (store (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@45) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@45) (store (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@45) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@45) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_4323) (o@@11 T@Ref) (f_3@@11 T@Field_7725_645) (v@@11 Real) ) (! (succHeap Heap@@46 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@46) (store (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@46) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@46) (store (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@46) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@46) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_4323) (o@@12 T@Ref) (f_3@@12 T@Field_2351_7964) (v@@12 T@PolymorphicMapType_4872) ) (! (succHeap Heap@@47 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@47) (store (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@47) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@47) (store (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@47) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@47) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_4323) (o@@13 T@Ref) (f_3@@13 T@Field_7816_1228) (v@@13 Int) ) (! (succHeap Heap@@48 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@48) (store (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@48) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@48) (store (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@48) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@48) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_4323) (o@@14 T@Ref) (f_3@@14 T@Field_2351_7947) (v@@14 T@FrameType) ) (! (succHeap Heap@@49 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@49) (store (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@49) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@49) (store (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@49) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@49) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_4323) (o@@15 T@Ref) (f_3@@15 T@Field_4396_4397) (v@@15 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@50) (store (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@50) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@50) (store (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@50) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@50) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_4323) (o@@16 T@Ref) (f_3@@16 T@Field_4383_53) (v@@16 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_4323 (store (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@51) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4323 (store (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@51) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2384_2385#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2351_1228#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2388_11248#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2351_645#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2351_7947#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_2351_13846#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_1228#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_53#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_4397#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_645#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_7947#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_7946_15245#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_8699_1228#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_8699_53#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_8699_4397#PolymorphicMapType_4323| Heap@@51) (|PolymorphicMapType_4323_8699_645#PolymorphicMapType_4323| Heap@@51)))
)))
(assert (forall ((this$@@4 T@Ref) ) (! (= (PredicateMaskField_2360 (Lala$MonitorInvariant this$@@4)) (|Lala$MonitorInvariant#sm| this$@@4))
 :qid |stdinbpl.216:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_2360 (Lala$MonitorInvariant this$@@4)))
)))
(assert (forall ((this$_1@@4 T@Ref) ) (! (= (PredicateMaskField_2384 (Lalainv$ this$_1@@4)) (|Lalainv$#sm| this$_1@@4))
 :qid |stdinbpl.265:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_2384 (Lalainv$ this$_1@@4)))
)))
(assert (< globalK$ FullPerm))
(assert (< NoPerm globalK$))
(assert (forall ((o@@17 T@Ref) (f T@Field_4396_4397) (Heap@@52 T@PolymorphicMapType_4323) ) (!  (=> (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@52) o@@17 $allocated) (select (|PolymorphicMapType_4323_2217_53#PolymorphicMapType_4323| Heap@@52) (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@52) o@@17 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4323_2220_2221#PolymorphicMapType_4323| Heap@@52) o@@17 f))
)))
(assert (forall ((p@@3 T@Field_8699_8700) (v_1@@2 T@FrameType) (q T@Field_8699_8700) (w@@2 T@FrameType) (r T@Field_8699_8700) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8699_8699 p@@3 v_1@@2 q w@@2) (InsidePredicate_8699_8699 q w@@2 r u)) (InsidePredicate_8699_8699 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8699_8699 p@@3 v_1@@2 q w@@2) (InsidePredicate_8699_8699 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_8699_8700) (v_1@@3 T@FrameType) (q@@0 T@Field_8699_8700) (w@@3 T@FrameType) (r@@0 T@Field_7946_7947) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8699_8699 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_8699_7946 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_8699_7946 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8699_8699 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_8699_7946 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_8699_8700) (v_1@@4 T@FrameType) (q@@1 T@Field_8699_8700) (w@@4 T@FrameType) (r@@1 T@Field_2351_7947) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8699_8699 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_8699_4383 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_8699_4383 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8699_8699 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_8699_4383 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_8699_8700) (v_1@@5 T@FrameType) (q@@2 T@Field_7946_7947) (w@@5 T@FrameType) (r@@2 T@Field_8699_8700) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8699_7946 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_7946_8699 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_8699_8699 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8699_7946 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_7946_8699 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_8699_8700) (v_1@@6 T@FrameType) (q@@3 T@Field_7946_7947) (w@@6 T@FrameType) (r@@3 T@Field_7946_7947) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8699_7946 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_7946_7946 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_8699_7946 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8699_7946 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_7946_7946 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_8699_8700) (v_1@@7 T@FrameType) (q@@4 T@Field_7946_7947) (w@@7 T@FrameType) (r@@4 T@Field_2351_7947) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8699_7946 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_7946_4383 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_8699_4383 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8699_7946 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_7946_4383 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_8699_8700) (v_1@@8 T@FrameType) (q@@5 T@Field_2351_7947) (w@@8 T@FrameType) (r@@5 T@Field_8699_8700) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8699_4383 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4383_8699 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_8699_8699 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8699_4383 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4383_8699 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_8699_8700) (v_1@@9 T@FrameType) (q@@6 T@Field_2351_7947) (w@@9 T@FrameType) (r@@6 T@Field_7946_7947) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8699_4383 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4383_7946 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_8699_7946 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8699_4383 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4383_7946 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_8699_8700) (v_1@@10 T@FrameType) (q@@7 T@Field_2351_7947) (w@@10 T@FrameType) (r@@7 T@Field_2351_7947) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_8699_4383 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4383_4383 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_8699_4383 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8699_4383 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4383_4383 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_7946_7947) (v_1@@11 T@FrameType) (q@@8 T@Field_8699_8700) (w@@11 T@FrameType) (r@@8 T@Field_8699_8700) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_7946_8699 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_8699_8699 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_7946_8699 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7946_8699 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_8699_8699 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_7946_7947) (v_1@@12 T@FrameType) (q@@9 T@Field_8699_8700) (w@@12 T@FrameType) (r@@9 T@Field_7946_7947) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_7946_8699 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_8699_7946 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_7946_7946 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7946_8699 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_8699_7946 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_7946_7947) (v_1@@13 T@FrameType) (q@@10 T@Field_8699_8700) (w@@13 T@FrameType) (r@@10 T@Field_2351_7947) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_7946_8699 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_8699_4383 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_7946_4383 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7946_8699 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_8699_4383 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_7946_7947) (v_1@@14 T@FrameType) (q@@11 T@Field_7946_7947) (w@@14 T@FrameType) (r@@11 T@Field_8699_8700) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_7946_7946 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_7946_8699 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_7946_8699 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7946_7946 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_7946_8699 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_7946_7947) (v_1@@15 T@FrameType) (q@@12 T@Field_7946_7947) (w@@15 T@FrameType) (r@@12 T@Field_7946_7947) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_7946_7946 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_7946_7946 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_7946_7946 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7946_7946 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_7946_7946 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_7946_7947) (v_1@@16 T@FrameType) (q@@13 T@Field_7946_7947) (w@@16 T@FrameType) (r@@13 T@Field_2351_7947) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_7946_7946 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_7946_4383 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_7946_4383 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7946_7946 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_7946_4383 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_7946_7947) (v_1@@17 T@FrameType) (q@@14 T@Field_2351_7947) (w@@17 T@FrameType) (r@@14 T@Field_8699_8700) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_7946_4383 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4383_8699 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_7946_8699 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7946_4383 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4383_8699 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_7946_7947) (v_1@@18 T@FrameType) (q@@15 T@Field_2351_7947) (w@@18 T@FrameType) (r@@15 T@Field_7946_7947) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_7946_4383 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4383_7946 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_7946_7946 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7946_4383 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4383_7946 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_7946_7947) (v_1@@19 T@FrameType) (q@@16 T@Field_2351_7947) (w@@19 T@FrameType) (r@@16 T@Field_2351_7947) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_7946_4383 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4383_4383 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_7946_4383 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7946_4383 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4383_4383 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_2351_7947) (v_1@@20 T@FrameType) (q@@17 T@Field_8699_8700) (w@@20 T@FrameType) (r@@17 T@Field_8699_8700) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_4383_8699 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_8699_8699 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_4383_8699 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4383_8699 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_8699_8699 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_2351_7947) (v_1@@21 T@FrameType) (q@@18 T@Field_8699_8700) (w@@21 T@FrameType) (r@@18 T@Field_7946_7947) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_4383_8699 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_8699_7946 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_4383_7946 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4383_8699 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_8699_7946 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_2351_7947) (v_1@@22 T@FrameType) (q@@19 T@Field_8699_8700) (w@@22 T@FrameType) (r@@19 T@Field_2351_7947) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_4383_8699 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_8699_4383 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_4383_4383 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4383_8699 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_8699_4383 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_2351_7947) (v_1@@23 T@FrameType) (q@@20 T@Field_7946_7947) (w@@23 T@FrameType) (r@@20 T@Field_8699_8700) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_4383_7946 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_7946_8699 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_4383_8699 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4383_7946 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_7946_8699 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_2351_7947) (v_1@@24 T@FrameType) (q@@21 T@Field_7946_7947) (w@@24 T@FrameType) (r@@21 T@Field_7946_7947) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_4383_7946 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_7946_7946 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_4383_7946 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4383_7946 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_7946_7946 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_2351_7947) (v_1@@25 T@FrameType) (q@@22 T@Field_7946_7947) (w@@25 T@FrameType) (r@@22 T@Field_2351_7947) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_4383_7946 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_7946_4383 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_4383_4383 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4383_7946 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_7946_4383 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_2351_7947) (v_1@@26 T@FrameType) (q@@23 T@Field_2351_7947) (w@@26 T@FrameType) (r@@23 T@Field_8699_8700) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_4383_4383 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4383_8699 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_4383_8699 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4383_4383 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4383_8699 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_2351_7947) (v_1@@27 T@FrameType) (q@@24 T@Field_2351_7947) (w@@27 T@FrameType) (r@@24 T@Field_7946_7947) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_4383_4383 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4383_7946 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_4383_7946 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4383_4383 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4383_7946 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_2351_7947) (v_1@@28 T@FrameType) (q@@25 T@Field_2351_7947) (w@@28 T@FrameType) (r@@25 T@Field_2351_7947) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_4383_4383 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4383_4383 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_4383_4383 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4383_4383 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4383_4383 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |Lala$MonitorInvariant#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
